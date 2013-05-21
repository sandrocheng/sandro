package com.guangli.applock;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethod;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.Toast;

import com.guangli.applock.BrowseApplicationInfoAdapter.OnClickBoxListener;
import com.guangli.applock.BrowseApplicationInfoAdapter.ViewHolder;

public class AppLockActivity extends Activity implements OnClickListener,OnClickBoxListener,OnItemClickListener{
    /**
     * @author lance.liang
     * this activity is for pw setting ,app lock setting
     *  本应由的主界面，首次进入时设置密码；以后进入 输入密码方能显示应由列表进行枷锁设置  
    */
	Button btn_confirm,btn_ok;
	EditText pw,confirmEditText,pwInput;//when init input twice pw,next time entry invalidate pw;
	ListView appListView; //list apps;
	private List<AppInfo> mListAppInfo; 
	SharedPreferences sharedPreferences;
	SharedPreferences.Editor editor;
	BrowseApplicationInfoAdapter adapter;
	LinearLayout pwLayout; //the pw init layout
	LinearLayout applocklLayout; // the app list layout
	LinearLayout pwInputLayout; // the pw invalidate layout
	Button btn_editPw; 
	String pw_stroed;
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.app_lock_setting);
        initRes();
        sharedPreferences = getSharedPreferences(Meta.SP_FILE,MODE_WORLD_READABLE);
        editor = sharedPreferences.edit();
        mListAppInfo = new ArrayList<AppInfo>();
        queryapps();
        adapter = new BrowseApplicationInfoAdapter(this, mListAppInfo);
        adapter.setOnClickBoxListener(this);
        appListView.setAdapter(adapter);
        appListView.setOnItemClickListener(this);
        pw_stroed = sharedPreferences.getString(Meta.PW, "");
        if(!pw_stroed.equals("")){
        	pwLayout.setVisibility(View.GONE);
        	applocklLayout.setVisibility(View.GONE);
        	pwInputLayout.setVisibility(View.VISIBLE);
        	btn_ok.setOnClickListener(new OnClickListener() {
				
				public void onClick(View v) {
                  if(pw_stroed.equals(pwInput.getText().toString())){
                	  applocklLayout.setVisibility(View.VISIBLE);
                  	  pwInputLayout.setVisibility(View.GONE);
                  	  hideInputMethod();
                  } else {
                	  Toast.makeText(AppLockActivity.this,getString(R.string.password_error),Toast.LENGTH_LONG).show();
                  }
				}
			});
        } 
        
       
    }
    /**
     * 初始化ui资源
     */
    private void initRes() {
    	btn_confirm = (Button) findViewById(R.id.btn_confirm);
        btn_confirm.setOnClickListener(this);
        btn_editPw = (Button) findViewById(R.id.btn_editPw);
        btn_editPw.setOnClickListener(this);
        btn_ok = (Button) findViewById(R.id.btn_ok);
        pw = (EditText) findViewById(R.id.password);
        pwInput = (EditText) findViewById(R.id.pw);
        confirmEditText = (EditText) findViewById(R.id.passwordComfirm);
        pwLayout = (LinearLayout) findViewById(R.id.passwordlayout);
        applocklLayout = (LinearLayout) findViewById(R.id.applistlayout);
        pwInputLayout = (LinearLayout) findViewById(R.id.layoutPwInput);
        appListView = (ListView) findViewById(R.id.applist);
	}
    
	public void onClick(View v) {
		switch (v.getId()) {
		default:
			pwLayout.setVisibility(View.GONE);
        	applocklLayout.setVisibility(View.GONE);
        	pwInputLayout.setVisibility(View.VISIBLE);
        	pwInput.setText("");
            btn_ok.setOnClickListener(new OnClickListener() {
				public void onClick(View v) {
                  if(pw_stroed.equals(pwInput.getText().toString())){
                	  pwLayout.setVisibility(View.VISIBLE);
                  	  pwInputLayout.setVisibility(View.GONE);
                  	  hideInputMethod();
                  } else {
                	  Toast.makeText(AppLockActivity.this,getString(R.string.password_error),Toast.LENGTH_LONG).show();
                  }
				}
			});
			break;

		case R.id.btn_confirm:
			//data check of rihtful
			invaldiateNewPassword();
			break;
		}
		hideInputMethod();
	}
	/**
	 * 新密码验证
	 */
	private void invaldiateNewPassword(){
		String pwString = pw.getText().toString();
		String confirmString = confirmEditText.getText().toString();
		if(pwString.length()<1 && confirmString.length()<1){
			Toast .makeText(this, getString(R.string.no_empty), 1000).show();
			
			return ;
		}
		if(!pwString.equals(confirmString)){
			Toast.makeText(this, getString(R.string.twice_diff), 1000).show();
			return ;
		}
		pw_stroed = pwString;
		editor.putString(Meta.PW,pwString);
		pwLayout.setVisibility(View.GONE);
		applocklLayout.setVisibility(View.VISIBLE);
	}
	
	//setupService
	private void setupService(){
		 Intent intent = new Intent(AppStartListenerService.ACTION_FOREGROUND);
		 intent.setClass(this,AppStartListenerService.class);
		 editor.commit();
		 this.startService(intent);
	}
	
	/**
	 * 查询应用
	 * PackageManager：用这个类检索安装在我们的设备上的应用包的各种信息，
	 * 可以通过getPackageManager()方法获取PackageManager的实例对象。
	 */
	private void queryapps(){
		
		PackageManager pmManager = this.getPackageManager();
		Intent mainIntent = new Intent(Intent.ACTION_MAIN,null);
		mainIntent.addCategory(Intent.CATEGORY_LAUNCHER);
		//查询获取所以ResolveInfo对象
		List<ResolveInfo> resolveInfos = pmManager.queryIntentActivities(mainIntent, PackageManager.SIGNATURE_MATCH);
        //调用系统排序，根据name
		Collections.sort(resolveInfos,new ResolveInfo.DisplayNameComparator(pmManager));
		if(mListAppInfo!=null) {
			mListAppInfo.clear();
			
			for (ResolveInfo info:resolveInfos) {
			 String packagename = info.activityInfo.packageName;
			 if(packagename.equals("com.guangli.applock")) continue;
		     String activityname = info.activityInfo.name;
		     String  lable = (String) info.loadLabel(pmManager);
		     Drawable iconDrawable = info.loadIcon(pmManager);
		     AppInfo appInfo = new AppInfo();
		     appInfo.setAppIcon(iconDrawable);
		     appInfo.setAppLabel(lable);
		     appInfo.setAppName(activityname);
		     appInfo.setPkgName(packagename);
		     boolean locked = sharedPreferences.getBoolean(packagename+Meta.LOKCED, false);
		     appInfo.setChecked(locked);
		     if(locked){
		    	 appInfo.setLockeIcon(getResources().getDrawable(R.drawable.lock));
		     } else {
		    	 appInfo.setLockeIcon(getResources().getDrawable(R.drawable.unlock));
		     }
		     Intent luanchIntent = new Intent();
		     luanchIntent.setComponent(new ComponentName(packagename,activityname));
		     appInfo.setIntent(luanchIntent);
		     mListAppInfo.add(appInfo);
			}
		}
	}
	//clicke the clickbox
	public void OnClickBox(int position, boolean checked) {
		// TODO Auto-generated method stub
		
		AppInfo appInfo = (AppInfo) adapter.getItem(position);
        appInfo.setChecked(checked);
        if(checked){
	    	 appInfo.setLockeIcon(getResources().getDrawable(R.drawable.lock));
	     } else {
	    	 appInfo.setLockeIcon(getResources().getDrawable(R.drawable.unlock));
	     }
        int count = appListView.getChildCount();
        for(int i=0;i<count;i++){
        	 View v = appListView.getChildAt(i);
     		 BrowseApplicationInfoAdapter.ViewHolder holder = (ViewHolder) v.getTag();
     		 if(holder.checkbox.isChecked()){
     			holder.lock.setImageResource(R.drawable.lock);
     			
     		 }else {
     			holder.lock.setImageResource(R.drawable.unlock);
     		 }
     		 
        }
        editor.putBoolean(appInfo.getPkgName()+Meta.LOKCED,checked);
        mListAppInfo.set(position, appInfo);
		adapter.setDatas(mListAppInfo);
		Log.e("OnClickBox", "--"+position);
		
	}
	
	private void hideInputMethod(){
		InputMethodManager inputMethodManager = (InputMethodManager) getSystemService(INPUT_METHOD_SERVICE);
		inputMethodManager.toggleSoftInput(0,InputMethodManager.HIDE_NOT_ALWAYS);
	}
	@Override
	protected void onStop() {
		setupService();
		super.onStop();
	}

	public void onItemClick(AdapterView<?> arg0, View arg1, int arg2, long arg3) {
		// TODO Auto-generated method stub
		
	}

	
 }