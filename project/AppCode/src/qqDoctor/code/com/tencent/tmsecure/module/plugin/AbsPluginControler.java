package com.tencent.tmsecure.module.plugin;

import android.app.Activity;
import android.os.IBinder;
import com.tencent.tmsecure.common.BaseService;
import com.tencent.tmsecure.common.BaseServiceConnection;
import com.tencent.tmsecure.common.TMSService;

public abstract class AbsPluginControler
{
  private BaseServiceConnection a = new BaseServiceConnection(AbsPluginControler.class);

  public final IBinder bindService(Class<? extends BaseService> paramClass)
  {
    return TMSService.bindService(paramClass, this.a);
  }

  public final void startActivity(Activity paramActivity, PluginIntent paramPluginIntent)
  {
    startActivityForResult(paramActivity, -1, paramPluginIntent);
  }

  public abstract void startActivityForResult(Activity paramActivity, int paramInt, PluginIntent paramPluginIntent);

  public final BaseService startService(BaseService paramBaseService)
  {
    return TMSService.startService(paramBaseService);
  }

  public final void stopService(BaseService paramBaseService)
  {
    TMSService.stopService(paramBaseService.getClass());
  }

  public final void stopService(Class<? extends BaseService> paramClass)
  {
    TMSService.stopService(paramClass);
  }

  public final void unBindService(Class<? extends BaseService> paramClass)
  {
    TMSService.unBindService(paramClass, this.a);
    this.a = null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.plugin.AbsPluginControler
 * JD-Core Version:    0.6.2
 */