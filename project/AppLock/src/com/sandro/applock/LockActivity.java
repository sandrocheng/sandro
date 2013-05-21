package com.sandro.applock;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;

public class LockActivity extends Activity implements OnClickListener{
	
	private ActivityManager mActivityManager = null;
	
	public static final String 	INTENT_EXTRA_APP_NAME = "INTENT_EXTRA_APP_NAME";
	public static final String 	INTENT_EXTRA_PACKAGE_NAME = "INTENT_EXTRA_PACKAGE_NAME";
	
	private String appName = "";
	
	private String packageName = "";
	
	private TextView tv;
	

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.lock_layout);
		mActivityManager = (ActivityManager) getSystemService(Context.ACTIVITY_SERVICE); 
		appName = this.getIntent().getStringExtra(INTENT_EXTRA_APP_NAME);
		packageName = this.getIntent().getStringExtra(INTENT_EXTRA_PACKAGE_NAME);
		tv = (TextView)this.findViewById(R.id.app_tv);
		setAppName();
		findViewById(R.id.app_run).setOnClickListener(this);
		findViewById(R.id.app_del).setOnClickListener(this);
	}

	
	@Override
	protected void onNewIntent(Intent intent) {
		super.onNewIntent(intent);
		appName = intent.getStringExtra(INTENT_EXTRA_APP_NAME);
		packageName = intent.getStringExtra(INTENT_EXTRA_PACKAGE_NAME);
		setAppName();
	}
	
	private void setAppName(){
		if(appName == null)
			return;
		tv.setText(appName + " 是风险软件");
	}


	@Override
	protected void onDestroy() {
		super.onDestroy();
	}
	
	 @Override
	public void onBackPressed() {
		Intent intent = new Intent("android.intent.action.MAIN");
		intent.addCategory("android.intent.category.HOME");
		intent.setFlags(Intent.FLAG_ACTIVITY_NO_HISTORY);
		startActivity(intent);
		if(packageName!=null && packageName.trim().length()>0){
			mActivityManager.killBackgroundProcesses(packageName);
		}
		super.onBackPressed();
	}

	/**
	 * 跳转到当前App管理页面
	 * 
	 * @param packageName
	 * @return
	 */
	private Intent gotoAppControd(String packageName) {
		Intent intent = new Intent();
		int sdkVerson = 0;
		try {
			sdkVerson = android.os.Build.VERSION.SDK_INT;
		} catch (Exception exception) {
		}
		if (sdkVerson >= 9) {
			intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
			Uri uri = Uri.fromParts("package", packageName, null);
			intent.setData(uri);
		} else {
			String pkg;
			if (sdkVerson > 7) {
				pkg = "pkg";
			} else {
				pkg = "com.android.settings.ApplicationPkgName";
				// "android.intent.action.VIEW"
				intent.setAction(Intent.ACTION_VIEW);
				intent.setClassName("com.android.settings",
						"com.android.settings.InstalledAppDetails");
				intent.putExtra(pkg, packageName);
			}
		}
		return intent;
	}
	    
	@Override
	public void onClick(View v) {
		switch(v.getId()){
		case R.id.app_run:
			this.finish();
			break;
		case R.id.app_del:
			if(packageName!=null && packageName.trim().length()>0){
				Intent intent = gotoAppControd(packageName);
				startActivity(intent);
				this.finish();
			}
			break;
		}
	}

}
