package com.sandro.ImageTrans;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.widget.Toast;

public class MessengerService extends Service {
    /** Command to the service to display a message */
    private static final int MSG_SAY_HELLO = 1;
    
    /**
     * Target we publish for clients to send messages to IncomingHandler.
     */
    final Messenger mMessenger = new Messenger(new IncomingHandler());
    
    private Messenger clientMessenger;
    
    private boolean work = false;

    /**
     * Handler of incoming messages from clients.
     */
    private class IncomingHandler extends Handler {
        @Override
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case MSG_SAY_HELLO:
                    Toast.makeText(getApplicationContext(), "hello from client", Toast.LENGTH_SHORT).show();
                    if(msg.replyTo == null){
                    	Log.w("MessangerTest", "IncomingHandler msg.replyTo is null ");
                    }
                    clientMessenger = msg.replyTo;
                    break;
                default:
                    super.handleMessage(msg);
            }
        }
    }

    
    
    @Override
	public void onCreate() {
    	work = true;
		new Thread(){

			@Override
			public void run() {
				while (work) {
					try {
						Thread.sleep(3000);
						if (clientMessenger != null) {
							Message msg = Message.obtain(null, 2, 0, 0);
							clientMessenger.send(msg);
							Log.i("MessangerTest", "MessengerService onCreate clientMessenger send msg ");
						}else{
							Log.w("MessangerTest", "MessengerService onCreate clientMessenger is null ");
						}
					} catch (InterruptedException e) {
						Log.e("MessangerTest", "MessengerService onCreate InterruptedException " + e.toString());
					} catch (RemoteException e) {
						Log.e("MessangerTest", "MessengerService onCreate RemoteException " + e.toString());
					}
				}
			}

		}.start();
		super.onCreate();
	}



	@Override
	public void onDestroy() {
    	work = false;
		super.onDestroy();
	}



	/**
     * When binding to the service, we return an interface to our messenger
     * for sending messages to the service.
     */
    @Override
    public IBinder onBind(Intent intent) {
        Toast.makeText(getApplicationContext(), "binding", Toast.LENGTH_SHORT).show();
        return mMessenger.getBinder();
    }
}
