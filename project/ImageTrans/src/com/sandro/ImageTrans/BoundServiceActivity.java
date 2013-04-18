package com.sandro.ImageTrans;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;

import com.sandro.ImageTrans.BoundService.LocalBinder;

/**
 * bindservice的activity
 * 进程内部调用service使用binder获取service实例，调用service中的公共方法
 * @author sandrocheng
 *
 */
public class BoundServiceActivity extends Activity implements OnClickListener{

	private TextView tv;
	
	private BoundService boundService;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		Intent intent = new Intent(this, BoundService.class);
		this.bindService(intent, mConnection, Context.BIND_AUTO_CREATE);
		setContentView(R.layout.binder_activity_layout);
		findViewById(R.id.service_method_invoke).setOnClickListener(this);
		tv = (TextView) findViewById(R.id.content_view);
	}
	
	

	@Override
	protected void onDestroy() {
		unbindService(mConnection);
		super.onDestroy();
		Log.i("bound", "BoundServiceActivity destroy");
	}

	@Override
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.service_method_invoke:
			tv.setText(this.boundService.getRandomNumber()+"");
			break;
		}
	}
	
	/** Defines callbacks for service binding, passed to bindService() */
    private ServiceConnection mConnection = new ServiceConnection() {

        @Override
        public void onServiceConnected(ComponentName className,
                IBinder service) {
            // We've bound to LocalService, cast the IBinder and get LocalService instance
            LocalBinder binder = (LocalBinder) service;
            boundService = binder.getService();
        }

        @Override
        public void onServiceDisconnected(ComponentName name) {
        	Log.i("bound", "BoundServiceActivity onServiceDisconnected ComponentName : " + name.toShortString());
        }
    };

	
}
