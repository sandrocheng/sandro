package org.antivirus.core;

import android.content.Context;
import android.os.Bundle;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;
import java.util.List;
import org.antivirus.core.a.n;
import org.antivirus.core.scanners.c;
import org.antivirus.core.scanners.g;

public class Engine
{
  public static final long DAILY_INTERVAL = 86400000L;
  public static final long WEEKLY_INTERVAL = 604800000L;
  HandlerThread a;
  n b;
  private org.antivirus.core.b.a c = null;
  public EngineSettings mEngineSettings;
  public org.antivirus.core.scanners.a mScanManager;

  public Engine(Context paramContext, org.antivirus.core.b.a parama, List paramList, ArrayList paramArrayList, boolean paramBoolean)
  {
    org.antivirus.core.c.b.b = paramArrayList;
    this.c = parama;
    this.mEngineSettings = new EngineSettings(paramContext);
    this.mEngineSettings.setDefaultValuesIfNeeded(paramContext);
    this.a = new HandlerThread("CM");
    this.a.start();
    this.b = new n(paramContext, this.mEngineSettings, this.c, this.a.getLooper(), paramList, paramBoolean);
    this.mScanManager = new org.antivirus.core.scanners.a(paramContext, this.b, this.mEngineSettings);
  }

  public void enable()
  {
    this.b.b();
  }

  public g getScanResults(c paramc)
  {
    return this.mScanManager.b(paramc);
  }

  public void sendCommMessage(int paramInt, Bundle paramBundle)
  {
    try
    {
      Message localMessage = Message.obtain();
      localMessage.what = paramInt;
      if (paramBundle != null)
        localMessage.obj = paramBundle;
      localMessage.setTarget(this.b);
      this.b.sendMessage(localMessage);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }

  public void setAvgFeatures(org.antivirus.core.b.a parama)
  {
    this.c = parama;
    this.b.a(this.c);
  }

  public void stop()
  {
    if (this.a != null)
    {
      this.a.getLooper().quit();
      this.a = null;
    }
    if (this.mScanManager != null)
      this.mScanManager.b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.Engine
 * JD-Core Version:    0.6.2
 */