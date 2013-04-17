package com.tencent.tmsecure.module.plugin;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

public abstract class AbsPluginService extends Service
{
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.plugin.AbsPluginService
 * JD-Core Version:    0.6.2
 */