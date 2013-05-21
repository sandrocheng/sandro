
package com.guangli.applock;

import java.lang.reflect.Method;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
/**
 * 
 * @author lance.liang
 * @version 1.0
 * <h>密码输入界面。当启加锁的应用被启动时，弹出此Activity进行拦截，提示输入密码。</h>
 */
public class PasswordInutActivity extends Activity implements OnClickListener{

	EditText pwdEditText;
	Button  confirmButton;
	SharedPreferences sPreferences;
	boolean haveChecked;
	String packename;
	int id;
	ImageView appIcon;
	TextView  appLable;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.password_input);
		pwdEditText = (EditText) findViewById(R.id.pw);
		confirmButton = (Button) findViewById(R.id.btn_confirm);
		appIcon = (ImageView) findViewById(R.id.appIcon);
		appLable = (TextView) findViewById(R.id.appLable);
		confirmButton.setOnClickListener(this);
		sPreferences = getSharedPreferences(Meta.SP_FILE, Activity.MODE_WORLD_READABLE);
		packename = getIntent().getStringExtra("name");
		id = getIntent().getIntExtra("id",0);
		initAppInfo();
	}
	/**
	 * 
	 * 获取被拦截的应用信息
	 * 
	 */
	private void initAppInfo(){
		PackageManager pManager = getPackageManager();
		try {
			ApplicationInfo info = pManager.getApplicationInfo(packename, PackageManager.GET_META_DATA);
		    appIcon.setImageDrawable(info.loadIcon(pManager));
		    appLable.setText(info.loadLabel(pManager));
		    
		} catch (NameNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	/**
	 * 按钮点击事件
	 */
	public void onClick(View v) {
		checked();
	}
	/**
	 * 密码验证
	 */
	private void checked(){
		String pw = pwdEditText.getText().toString();
		if(!pw.equals(sPreferences.getString(Meta.PW,""))){
		  //password error
			Toast.makeText(this,getString(R.string.password_error), Toast.LENGTH_LONG).show();
		    return ;
		}
		haveChecked = true;
		setupService();
		this.finish();
	}
	
    
	/**
	 * 启动用于监听服务
	 */
    private void setupService(){
			Intent intent = new Intent();
			intent.putExtra("passApp",packename);
			intent.setClass(this,AppStartListenerService.class);
			this.startService(intent);
		}
	/**
	 * 
	 */
	 private void killAppProcess(){
		 ActivityManager am = (ActivityManager) getSystemService(ACTIVITY_SERVICE);
		// am.killBackgroundProcesses(packename);
		 try {
			Method method = Class.forName("android.app.ActivityManager")
					 .getMethod("forceStopPackage",String.class);
			method.invoke(am,packename);
			
		} catch (SecurityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	 }
	 /**
	  * 强制跳转到home页面
	  */
	 @Override
	public void onBackPressed() {
		 if(!haveChecked){
				//restart this activity
				//startActivity(getIntent());
				//killAppProcess();
				
				Intent intent =  new Intent("android.intent.action.MAIN");
				intent.addCategory("android.intent.category.HOME");
				intent.setFlags(Intent.FLAG_ACTIVITY_NO_HISTORY);
				startActivity(intent);
				setupService();
				
			}
	}
	 @Override
		protected void onStop() {
			
		 
			super.onStop();
		}
	 
}
