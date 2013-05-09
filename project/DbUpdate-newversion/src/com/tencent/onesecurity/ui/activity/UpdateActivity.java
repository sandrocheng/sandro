package com.tencent.onesecurity.ui.activity;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.widget.TextView;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.service.UpdateService;

public class UpdateActivity extends Activity{
	
	private Messenger mServiceMessenger;
	
	Handler mHandler = new ClientHandler();
	
	private final Messenger mMessenger = new Messenger(mHandler);
	
    private ServiceConnection mConnection = new Connection();
    
    private TextView tv;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.update_layout);
		Intent intent = new Intent(this,UpdateService.class);
		bindService(intent, mConnection, Context.BIND_AUTO_CREATE);
		tv = (TextView)this.findViewById(R.id.iv_progess);
	}

	@Override
	protected void onDestroy() {
		this.unbindService(mConnection);
		super.onDestroy();
	}

	private class ClientHandler extends Handler {
        @Override
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case UpdateService.RESRESH_COUNT:
                	tv.setText(msg.arg1 + "/" + msg.arg2);
                	break;
                case UpdateService.MESSAGE_UPDATE_FINISH:
        			Intent intent = new Intent(UpdateActivity.this,MainActivity.class);
        			UpdateActivity.this.startActivity(intent);
                	UpdateActivity.this.finish();
                default:
                    super.handleMessage(msg);
            }
        }
    }
	
	private class Connection implements ServiceConnection{
        public void onServiceConnected(ComponentName className,
                IBinder service) {
        	mServiceMessenger = new Messenger(service);
            try {
                Message msg = Message.obtain(null,UpdateService.MESSAGE_SAY_HELLO);
                msg.replyTo = mMessenger;
                mServiceMessenger.send(msg);
            } catch (RemoteException e) {
            }            
        }

        public void onServiceDisconnected(ComponentName className) {
        	mServiceMessenger = null;
        }		
	}
}
