package com.sandro.smstotxlqqmail.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import com.sandro.smstotxlqqmail.R;
import com.sandro.smstotxlqqmail.dao.Dao;
import com.sandro.smstotxlqqmail.util.MailSender;
import com.sandro.smstotxlqqmail.util.MailSender.SendMailListener;

public class MainActivity extends Activity {

	private TextView tv ;
	
	private Button emailBtn;
	
	private Dao dao;
	
	private static final int DIALOG_TEXT_ENTRY = 7;
	
	private MailThread mailThread;
	
	private String mail = "";
	
	private String password = "";
	
	private static final int START_MAIL_TESTING = 1;
	
	private static final int MAIL_TESTING_END = 2;
	
	/**
	 * 进度条
	 */
	private ProgressDialog mSpinner;
	
	private Dialog mailResultDialog;
	
	private Handler mHandler = new Handler(){

		@Override
		public void handleMessage(Message msg) {
			
			switch(msg.what){
			case START_MAIL_TESTING:
				mSpinner = new ProgressDialog(MainActivity.this);
				mSpinner.requestWindowFeature(Window.FEATURE_NO_TITLE);
				mSpinner.setMessage("测试邮件发送中");
				mSpinner.setOnKeyListener(new DialogInterface.OnKeyListener() {
					@Override
					public boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
						return false;
					}

				});
				mSpinner.show();
				mailThread.start();
				break;
			case MAIL_TESTING_END:
				if (mSpinner != null) {
					try {
						mSpinner.dismiss();
						mSpinner.cancel();
					} catch (Exception e) {
					}
					mSpinner = null;
				}
				handleMailResult((MailObj)msg.obj);
				break;
			}
			super.handleMessage(msg);
		}
	};
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		dao = Dao.getInstance();
		setContentView(R.layout.main_layout);
		initComponents();
		IntentFilter mIntentFilter = new IntentFilter();   
		mIntentFilter.addAction(Intent.ACTION_BATTERY_CHANGED);   
		registerReceiver(mIntentReceiver, mIntentFilter);
	}

	private void initComponents() {
		tv = (TextView)this.findViewById(R.id.tv);
		emailBtn = (Button)this.findViewById(R.id.mail_setting_btn);
		emailBtn.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                showDialog(DIALOG_TEXT_ENTRY);
            }
        });		
		if(dao.getEmail() != null && dao.getPassword()!=null){
			emailBtn.setVisibility(View.GONE);
		}else{
			emailBtn.setVisibility(View.VISIBLE);
		}

	}
	
    @Override
    protected Dialog onCreateDialog(int id){
		switch (id) {
		case DIALOG_TEXT_ENTRY:
			LayoutInflater factory = LayoutInflater.from(this);
			final View textEntryView = factory.inflate(
					R.layout.alert_dialog_text_entry, null);
			final EditText mailEdit = (EditText)textEntryView.findViewById(R.id.username_edit);
			final EditText passwordEdit = (EditText)textEntryView.findViewById(R.id.password_edit);
			mailEdit.setText(this.mail);
			passwordEdit.setText(this.password);
			return new AlertDialog.Builder(MainActivity.this)
					.setTitle("email设置")
					.setView(textEntryView)
					.setPositiveButton("ok",
							new DialogInterface.OnClickListener() {
								public void onClick(DialogInterface dialog,
										int whichButton) {
									mail = mailEdit.getText().toString();
									password = passwordEdit.getText().toString();
									mailThread = new MailThread();
									mHandler.sendEmptyMessage(START_MAIL_TESTING);
								}
							})
					.setNegativeButton("cancel",null).create();
		}
		return null;
    }
    
    private void handleMailResult(MailObj obj){
		LayoutInflater factory = LayoutInflater.from(this);
		final View dialogView = factory.inflate(
				R.layout.mail_result_dialog_layout, null);
		TextView tv = (TextView)dialogView.findViewById(R.id.mailResult);
		tv.setText(obj.result);
		if(mailResultDialog!=null && mailResultDialog.isShowing()){
			mailResultDialog.dismiss();
			mailResultDialog = null;
		}
		mailResultDialog = new AlertDialog.Builder(MainActivity.this)
		.setTitle("email测试失败")
		.setView(dialogView)
		.setPositiveButton("ok",
				new DialogInterface.OnClickListener() {
					public void onClick(DialogInterface dialog,
							int whichButton) {
						mailResultDialog.dismiss();
					}
				})
		.create();
		mailResultDialog.setCancelable(true);
		mailResultDialog.show();
    	if(obj.success){
    		mailResultDialog.setTitle("测试成功");
    		dao.setEmail(this.mail);
    		dao.setPassword(password);
    		emailBtn.setVisibility(View.GONE);
    	}
    }
    
    private class MailThread extends Thread{

    	private MailThread(){
    	}
    	
    	@Override
    	public void run(){
			MailSender sm = new MailSender(new SendMailListener(){
				@Override
				public void sendMailDone(boolean success, String result) {
					Message msg = mHandler.obtainMessage(MAIL_TESTING_END);
					msg.obj = new MailObj(success,result);
					mHandler.sendMessage(msg);
				}
			},mail,password);
			sm.Send("test", "test");
    	}
    }

    private class MailObj{
    	private boolean success;
    	private String result;
    	
    	private MailObj(boolean success,String result){
    		this.success = success;
    		this.result = result;
    	}
    }
    
	@Override
	protected void onDestroy() {
		this.unregisterReceiver(mIntentReceiver);
		super.onDestroy();
	}
	
	private BroadcastReceiver mIntentReceiver = new BroadcastReceiver(){

		@Override
		public void onReceive(Context context, Intent intent) {
			String action = intent.getAction();
			if (action.equals(Intent.ACTION_BATTERY_CHANGED)){
				tv.setText("当前电量 ：" + intent.getIntExtra(BatteryManager.EXTRA_LEVEL, 0));
			}
		}
		
	};
	
}
