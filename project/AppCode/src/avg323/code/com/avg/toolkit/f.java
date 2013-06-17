package com.avg.toolkit;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.SparseArray;

public abstract class f extends Service
  implements e, g
{
  protected boolean d;
  protected volatile Handler e;
  protected volatile Looper f;
  protected SparseArray g;
  protected com.avg.toolkit.e.e h;
  protected com.avg.toolkit.UID.a i;

  public static void a(Context paramContext, int paramInt1, int paramInt2, Bundle paramBundle)
  {
    Intent localIntent = new Intent("com.avg.toolkit.TKS_ACTION");
    localIntent.setPackage(paramContext.getPackageName());
    localIntent.putExtra("__SAC", paramInt1);
    localIntent.putExtra("__SAC2", paramInt2);
    if (paramBundle != null)
      localIntent.putExtras(paramBundle);
    paramContext.startService(localIntent);
  }

  public e a(int paramInt)
  {
    return (g)this.g.get(paramInt);
  }

  protected abstract void a();

  public void a(Bundle paramBundle)
  {
    if (!this.d);
    while (true)
    {
      return;
      int j = paramBundle.getInt("alarm_code");
      if (j == 1000)
        a_(paramBundle);
      else
        ((g)this.g.get(j)).a(paramBundle);
    }
  }

  public void a(Bundle paramBundle, int paramInt)
  {
    if (this.g.get(paramInt) != null)
      ((g)this.g.get(paramInt)).b(paramBundle);
  }

  protected void a(e parame)
  {
    int j = parame.b();
    if (this.g.get(j, null) == null)
      this.g.append(j, parame);
    while (true)
    {
      return;
      com.avg.toolkit.f.a.a();
    }
  }

  protected abstract void a_();

  public abstract void a_(Bundle paramBundle);

  public int b()
  {
    return 1000;
  }

  boolean c()
  {
    return this.d;
  }

  public final void onCreate()
  {
    super.onCreate();
    this.d = false;
    this.g = new SparseArray();
    a();
    Message localMessage = this.e.obtainMessage();
    Bundle localBundle = new Bundle();
    localBundle.putInt("__SAC", 1000);
    localBundle.putInt("__SAC2", 1001);
    localMessage.obj = localBundle;
    this.e.sendMessage(localMessage);
  }

  public void onDestroy()
  {
    int j = 0;
    try
    {
      while (j < this.g.size())
      {
        ((g)this.g.valueAt(j)).onDestroy();
        j++;
      }
      this.g.clear();
    }
    catch (Exception localException1)
    {
      try
      {
        while (true)
        {
          if (this.f != null)
          {
            this.f.quit();
            this.f = null;
          }
          super.onDestroy();
          return;
          localException1 = localException1;
          com.avg.toolkit.f.a.a(localException1);
        }
      }
      catch (Exception localException2)
      {
        while (true)
          com.avg.toolkit.f.a.a(localException2);
      }
    }
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    if (paramIntent != null)
    {
      Message localMessage = this.e.obtainMessage();
      localMessage.arg1 = paramInt2;
      localMessage.obj = paramIntent.getExtras();
      this.e.sendMessage(localMessage);
    }
    return 1;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.f
 * JD-Core Version:    0.6.2
 */