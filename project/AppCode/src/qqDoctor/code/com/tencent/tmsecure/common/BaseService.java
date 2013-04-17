package com.tencent.tmsecure.common;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;

public abstract class BaseService
{
  private IBinder a;

  public final boolean equals(Object paramObject)
  {
    if ((paramObject != null) && (getClass() == paramObject.getClass()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  protected IBinder getBinder()
  {
    try
    {
      if (this.a == null)
        this.a = onBind();
      IBinder localIBinder = this.a;
      return localIBinder;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public abstract IBinder onBind();

  public void onCreate(Context paramContext)
  {
  }

  public void onDestory()
  {
  }

  public void onStart(Intent paramIntent)
  {
  }

  protected final void stopSelf()
  {
    TMSService.stopService(this);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.common.BaseService
 * JD-Core Version:    0.6.2
 */