package com.sandro.applock;

import android.app.ListActivity;
import android.os.Bundle;

public class MainActivity extends ListActivity {
	
//	private Handler mHandler = new ClientHandler();
//
//	private final Messenger mMessenger = new Messenger(mHandler);
//	
//	private Messenger mServiceMessenger;
	
//	private ServiceConnection mConnection = new CoreServiceConnection();
	
//	List<String> logData = new ArrayList<String>();
	
//	ArrayAdapter<String> dataAdapter;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
//		Intent intent = new Intent(this, CoreService.class);
//		bindService(intent, mConnection, Context.BIND_AUTO_CREATE);
//		dataAdapter = new ArrayAdapter<String>(this,
//				android.R.layout.simple_list_item_1, logData);
//		setListAdapter(dataAdapter);
	}

	@Override
	protected void onDestroy() {
//		this.unbindService(mConnection);
		super.onDestroy();
	}
	
//	private class ClientHandler extends Handler {
//		@Override
//		public void handleMessage(Message msg) {
//			switch (msg.what) {
//			case CoreService.MESSAGE_GET_LOG:
//				String log = (String)msg.obj;
//				
//				dataAdapter.add("[" + dataAdapter.getCount() + "] " + log);
//				
//				if(dataAdapter.getCount()>1000){
//					dataAdapter.clear();
//				}
//				break;
//			default:
//				super.handleMessage(msg);
//				break;
//
//			}
//		}
//	}
//	
//	private class CoreServiceConnection implements ServiceConnection {
//		public void onServiceConnected(ComponentName className, IBinder service) {
//			mServiceMessenger = new Messenger(service);
//			try {
//				Message msg = Message.obtain(null,
//						CoreService.MESSAGE_SAY_HELLO);
//				msg.replyTo = mMessenger;
//				mServiceMessenger.send(msg);
//			} catch (RemoteException e) {
//			}
//		}
//
//		public void onServiceDisconnected(ComponentName className) {
//			mServiceMessenger = null;
//		}
//	}
}
