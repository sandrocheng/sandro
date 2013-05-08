package com.tencent.onesecurity.ui.activity;

import java.util.ArrayList;
import java.util.List;

import android.app.ListActivity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.ArrayAdapter;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.dao.DBHelper;
import com.tencent.onesecurity.safebox.dao.SafeBoxDBHelper;

public class MainActivity extends ListActivity{

	private List<String> processData = new ArrayList<String>();
	
	private ArrayAdapter<String> dataAdapter;
	
	private Handler mHandler = new Handler(){

		@Override
		public void handleMessage(Message msg) {
			super.handleMessage(msg);
			switch (msg.what) {
			case 100:
				String msgStr = (String)msg.obj;
				dataAdapter.add(msgStr);
				break;
			}
		}

	};
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		super.setContentView(R.layout.activity_main);
		
		dataAdapter = new ArrayAdapter<String>(this,
				android.R.layout.simple_list_item_1, processData);
		setListAdapter(dataAdapter);
		
		new Thread("DBCreateThread"){

			@Override
			public void run() {
				startCreateDB();
			}
			
		}.start();
	}
	
	private void sendHandlerMsg(String str){
		Message msg = this.mHandler.obtainMessage(100);
		msg.obj = str;
		msg.sendToTarget();
	}
	
	private void startCreateDB(){
		sendHandlerMsg("SafeBoxDB is creating");
		SafeBoxDBHelper.getInstance().createDB();
		SafeBoxDBHelper.getInstance().createData();
		sendHandlerMsg("SafeBoxDB  was created");

		sendHandlerMsg("oneSecurityDB is creating");
		DBHelper.getInstance().createDB();
		DBHelper.getInstance().createData();
		sendHandlerMsg("oneSecurityDB was created");

		sendHandlerMsg("allDBs were created");
	}

	@Override
	protected void onDestroy() {
		super.onDestroy();
	}


}
