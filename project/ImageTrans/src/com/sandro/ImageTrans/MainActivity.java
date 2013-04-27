package com.sandro.ImageTrans;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;

import com.sandro.util.CustomProgressBarDialog;
import com.sandro.util.CutstomProgressDialog;
import com.sandro.util.DeviceUtil;

public class MainActivity extends Activity implements OnClickListener{

	private CustomProgressBarDialog dialog ;
	
	private int progress = 0;
	
	private boolean startSinglePage = false;
	
	private Handler mProgressHandler;
	
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        DeviceUtil.initBasicData(this);
        
        findViewById(R.id.animation_activity).setOnClickListener(this);
        findViewById(R.id.traffic_stats_activity).setOnClickListener(this);
        findViewById(R.id.binder_activity).setOnClickListener(this);
        findViewById(R.id.single_page).setOnClickListener(this);
        findViewById(R.id.flipper_code).setOnClickListener(this);
        findViewById(R.id.move_code).setOnClickListener(this);
        findViewById(R.id.move_code2).setOnClickListener(this);
        findViewById(R.id.cutstom_rogress_dialog).setOnClickListener(this);
        findViewById(R.id.btn_translucent_blur).setOnClickListener(this);
        findViewById(R.id.btn_alpha_bitmap).setOnClickListener(this);
        findViewById(R.id.btn_progress_dialog).setOnClickListener(this); 
        findViewById(R.id.btn_virus).setOnClickListener(this); 
        findViewById(R.id.btn_xfermode).setOnClickListener(this); 
        findViewById(R.id.btn_clip_test).setOnClickListener(this);
        findViewById(R.id.btn_text_size).setOnClickListener(this);
        findViewById(R.id.power_test).setOnClickListener(this);
        findViewById(R.id.system_power_page).setOnClickListener(this);
        
        mProgressHandler = new Handler() {
            @Override
            public void handleMessage(Message msg) {
                super.handleMessage(msg);
                progress ++;
                dialog.incrementTo(progress* 100/17);
                dialog.setTitle("Encrypting... " +  progress + "/17");
                if(progress >= 17){
                	progress = 0;
                }
                mProgressHandler.sendEmptyMessageDelayed(0, 100);
            }
        };
    }
    
	@Override
	protected void onDestroy() {
		if(startSinglePage){
			startSinglePage = false;
			Intent intentService = new Intent(this, CoreService.class);
			intentService.setAction(CoreService.ACTION_START_SINGLE_PAGE);
			this.startService(intentService);
		}
		super.onDestroy();
	}

	@Override
	public void onClick(View v) {
		Intent intent= new Intent();
		switch (v.getId()){
		case R.id.animation_activity:
			intent.setClass(MainActivity.this, AnimationActivity.class);
			startActivity(intent);	
			break;
		case R.id.traffic_stats_activity:
			intent.setClass(MainActivity.this, TrafficStatsActivity.class);
			startActivity(intent);	
			break;
		case R.id.binder_activity:
			intent.setClass(MainActivity.this, BoundServiceActivity.class);
			startActivity(intent);	
			break;
		case R.id.single_page:
			startSinglePage = true;
			this.finish();
			break;
		case R.id.system_power_page:
			intent = new Intent(Intent.ACTION_MAIN, null);
			intent.addCategory(Intent.CATEGORY_LAUNCHER);
			final ComponentName cn = new ComponentName("com.android.settings","com.android.settings.fuelgauge.PowerUsageSummary");
			intent.setComponent(cn);
			intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
			startActivity(intent);
			break;
		case R.id.power_test:
			intent.setClass(MainActivity.this, PowerActivity.class);
			startActivity(intent);	
			break;
		case R.id.btn_text_size:
			intent.setClass(MainActivity.this, TextSizeActivity.class);
			startActivity(intent);
			break;
		case R.id.btn_clip_test:
			intent.setClass(MainActivity.this, ClipTestActivity.class);
			startActivity(intent);			
			break;
		case R.id.btn_xfermode:
			intent.setClass(MainActivity.this, XferModeActivity.class);
			startActivity(intent);
			break;
		case R.id.btn_virus:
			intent.setClass(MainActivity.this, ViausCartonsActivity.class);
			startActivity(intent);
			break;
		case R.id.btn_alpha_bitmap:
			intent.setClass(MainActivity.this, AlphaBitmapActivity.class);
			startActivity(intent);
			break;
		case R.id.btn_translucent_blur:
			intent.setClass(MainActivity.this, TranslucentBlurActivity.class);
			startActivity(intent);
			break;
		case R.id.flipper_code:
			intent.setClass(MainActivity.this, ImageTransActivity.class);
			startActivity(intent);
			break;
		case R.id.move_code:
			intent.setClass(MainActivity.this, WindowMoveActivity.class);
			startActivity(intent);
			break;	
		case R.id.move_code2:
			intent.setClass(MainActivity.this, ViewMoveActivity.class);
			startActivity(intent);
			break;
		case R.id.cutstom_rogress_dialog:
	        CutstomProgressDialog dia = new CutstomProgressDialog(this);
	        dia.show();
			break;
		case R.id.btn_progress_dialog:
			dialog = new CustomProgressBarDialog(MainActivity.this,"Encrypting... 0/17");
			dialog.show();
			mProgressHandler.sendEmptyMessage(0);
			break;
		}
	}

}
