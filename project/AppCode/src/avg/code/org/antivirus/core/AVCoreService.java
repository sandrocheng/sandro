package org.antivirus.core;

import android.app.Service;
import android.content.ComponentName;
import android.os.Bundle;
import android.os.HandlerThread;
import android.os.Looper;

public abstract class AVCoreService extends Service
{
  public static ComponentName SERVICE_IDENTIFIER;
  public static final String c_action = "__SAC";
  public static final int c_actionAlarm = 3;
  public static final int c_actionCommMessage = 7;
  public static final String c_actionData = "__SAD";
  public static final int c_actionFix = 25;
  public static final String c_actionHandler = "__SAH";
  public static final int c_actionInit = 1;
  public static final int c_actionInitFromBootReciever = 2;
  public static final int c_actionLogging = 6;
  public static final int c_actionNewLicense = 5;
  public static final int c_actionRemovePackage = 20;
  public static final int c_actionScan = 22;
  public static final int c_actionScanCancel = 27;
  public static final int c_actionScanPackage = 23;
  public static final int c_actionScanSms = 24;
  public static final int c_actionUpdate = 4;
  public static final int c_actionUrlFilterUrlBypass = 11;
  public static final int c_actionUrlFilterUrlCheck = 10;
  public static final int c_actionVerify = 26;
  public static final int c_actionWebServerResultBadPackage = 19;
  protected boolean a;
  protected Engine b;
  protected org.antivirus.core.b.e c;
  protected org.antivirus.core.d.e d;
  protected volatile Looper e;

  public void onCreate()
  {
    super.onCreate();
    HandlerThread localHandlerThread = new HandlerThread("AVService");
    localHandlerThread.start();
    this.e = localHandlerThread.getLooper();
  }

  public void onDestroy()
  {
    try
    {
      if (this.b != null)
      {
        this.b.stop();
        this.b = null;
      }
      if (this.e != null)
      {
        this.e.quit();
        this.e = null;
      }
      super.onDestroy();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }

  public void sendCommMessage(int paramInt, Bundle paramBundle)
  {
    if (this.b != null)
      this.b.sendCommMessage(paramInt, paramBundle);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.AVCoreService
 * JD-Core Version:    0.6.2
 */