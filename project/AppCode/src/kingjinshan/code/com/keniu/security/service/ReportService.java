package com.keniu.security.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;

public class ReportService extends Service
{
  private static final String a = "MoSecurity.ReportService";

  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onCreate()
  {
    super.onCreate();
  }

  public void onStart(Intent paramIntent, int paramInt)
  {
    super.onStart(paramIntent, paramInt);
    Log.d("MoSecurity.ReportService", "Begin Running ReportService");
    new Thread(new c(this)).start();
    stopSelf();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.service.ReportService
 * JD-Core Version:    0.6.2
 */