package com.tinyscreen.quteWatcher;

import java.io.File;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Html;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.Window;
import android.widget.TextView;
import android.widget.Toast;

import com.tinyscreen.mail.MailInfoUtil;
import com.tinyscreen.mail.MailSenderInfo;
import com.tinyscreen.mail.SimpleMailSender;
import com.tinyscreen.quteWatcher.Data.FileData;

/**
 * qute debug监控器
 * 测试团队安装该监控器，在测试时如果发现crash问题，监控器会记录所有log数据，便于开发定位问题
 * @author sandroCheng
 *
 */
public class QuteWatcherActivity extends Activity {
	
	private TextView tv ;
	
	private static final int SEND_MAIL = 0;
	
	/**
	 * 进度条
	 */
	private ProgressDialog mSpinner;
	
    @Override
    public void onCreate(Bundle savedInstanceState) {
		setContentView(R.layout.layout_debug);
    	tv = (TextView) findViewById(R.id.debugLine);
    	super.onCreate(savedInstanceState);
    }
  
	@Override
	protected void onResume(){
		super.onResume();
		String str = FileData.getLogStr();
    	tv.setText(Html.fromHtml(str));		
//    	android.util.Log.i("QuteWatcherActivity", "str : " + str);
	} 
	
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		MenuInflater inflater = this.getMenuInflater();
		inflater.inflate(R.layout.menu,menu);
		return super.onCreateOptionsMenu(menu);
	}
	
	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		int id = item.getItemId();
		switch (id) {
		case R.id.sendEmail: 
			sendTextMail();
			break;
		case R.id.cleanData:
			cleanData();
			break;
		case R.id.refesh:
			String str = FileData.getLogStr();
	    	tv.setText(Html.fromHtml(str));	
			break;
		default:
			break;
		}
		return super.onOptionsItemSelected(item);
	}

	private void cleanData() {
		FileData.cleanData();
		tv.setText(Html.fromHtml(FileData.getLogStr()));
	}
	
	/**
	 * 发送邮件
	 */
	private void sendTextMail(){
		mSpinner = new ProgressDialog(this);
		mSpinner.requestWindowFeature(Window.FEATURE_NO_TITLE);
		mSpinner.setMessage("邮件发送中");
		mSpinner.setOnKeyListener(new DialogInterface.OnKeyListener() {
			@Override
			public boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
				return false;
			}
		});
		mSpinner.show();
        new Thread() {
            @Override 
            public void run() {
    			FileData.saveFile();
    			File[] files = FileData.getZipFiles();
    			MailSenderInfo mailInfo = MailInfoUtil.getMailInfo(QuteWatcherActivity.this);
    			mailInfo.setContent(FileData.getFileData());   	
        		boolean result = SimpleMailSender.sendHtmlMail(mailInfo,files);// 发送html格式		 
            	Message message = mHandler.obtainMessage(SEND_MAIL,result);
    			mHandler.sendMessage(message);	                
            }
        }.start();		
	}
	
	protected Handler mHandler = new Handler() {
		public void handleMessage(Message msg){
			switch (msg.what){
			case SEND_MAIL:	
				String resultStr = "邮件发送成功";
				boolean result = (Boolean)msg.obj;
				if(result){
					cleanData(); 
				}else{
					resultStr = "邮件发送失败";
				}
				Toast.makeText(QuteWatcherActivity.this, resultStr, Toast.LENGTH_LONG).show();
				if (mSpinner != null) {
					try {
						mSpinner.dismiss();
						mSpinner.cancel();
					} catch (Exception e) {
					}
					mSpinner = null;
				}
				
				break;
			} 
		}
	};

}