package com.avast.android.generic.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

public class DummyService extends Service
{
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onStart(Intent paramIntent, int paramInt)
  {
    stopSelf();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.service.DummyService
 * JD-Core Version:    0.6.2
 */