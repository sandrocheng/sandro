package com.sandro.ImageTrans;

import java.util.Random;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
/**
 * Bound Services
 * @author sandrocheng
 *
 */
public class BoundService extends Service {

	// Binder given to clients
    private final IBinder mBinder = new LocalBinder();
    // Random number generator
    private final Random mGenerator = new Random();

	
	@Override
	public IBinder onBind(Intent intent) {
		return mBinder;
	}
	
    public class LocalBinder extends Binder {
    	public BoundService getService() {
            // Return this instance of LocalService so clients can call public methods
            return BoundService.this;
        }
    }
    
    
    
    @Override
	public void onDestroy() {
		super.onDestroy();
		Log.i("bound", "BoundService destroy");
	}



	/** method for clients */
    public int getRandomNumber() {
      return mGenerator.nextInt(100);
    }

}
