package com.avg.toolkit.b;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.avg.toolkit.e;
import java.util.List;

public class f
  implements e
{
  HandlerThread a = new HandlerThread("CM");
  public a b;
  HandlerThread c;
  i d;

  public f(Context paramContext, com.avg.toolkit.e.a parama, com.avg.toolkit.UID.a parama1)
  {
    this.a.start();
    this.b = new a(paramContext, parama, this.a.getLooper(), parama1);
    this.c = new HandlerThread(f.class.getName() + "UI");
    this.c.start();
    this.d = new i(paramContext, parama, this.c.getLooper(), parama1);
  }

  public static boolean a(Context paramContext)
  {
    try
    {
      String str = Build.PRODUCT;
      if ((str != null) && (!str.equalsIgnoreCase("9774D56D682E549C")) && (!str.equalsIgnoreCase("google_sdk")))
      {
        NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
        if ((localNetworkInfo != null) && (localNetworkInfo.isAvailable()))
        {
          boolean bool2 = localNetworkInfo.isConnected();
          if (bool2)
          {
            bool1 = true;
            break label90;
          }
        }
        bool1 = false;
      }
    }
    catch (Exception localException)
    {
      com.avg.toolkit.f.a.a(localException);
      bool1 = false;
    }
    boolean bool1 = true;
    label90: return bool1;
  }

  public void a(Bundle paramBundle)
  {
  }

  public void a(com.avg.toolkit.e.a parama)
  {
  }

  public void a(List paramList)
  {
  }

  public void a(boolean paramBoolean)
  {
    this.b.b();
  }

  public int b()
  {
    return 4000;
  }

  public void b(Bundle paramBundle)
  {
    while (true)
    {
      try
      {
        Message localMessage = Message.obtain();
        if (paramBundle != null)
        {
          i = paramBundle.getInt("__SAC2", -1);
          localMessage.obj = paramBundle;
          bool = ((Bundle)localMessage.obj).getBoolean("isUI");
          localMessage.what = i;
          if (bool)
          {
            localMessage.setTarget(this.d);
            this.d.sendMessage(localMessage);
          }
          else
          {
            localMessage.setTarget(this.b);
            this.b.sendMessage(localMessage);
          }
        }
      }
      catch (Exception localException)
      {
        com.avg.toolkit.f.a.a(localException);
      }
      boolean bool = false;
      int i = 0;
    }
  }

  public void b(com.avg.toolkit.e.a parama)
  {
    this.b.a(parama);
  }

  public void b(List paramList)
  {
    this.b.a(paramList);
    this.d.a(paramList);
  }

  public void c(com.avg.toolkit.e.a parama)
  {
    this.b.a(parama);
  }

  public void onDestroy()
  {
    try
    {
      if (this.a != null)
        this.a.getLooper().quit();
      if (this.c != null)
        this.c.getLooper().quit();
      this.a = null;
      this.c = null;
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.b.f
 * JD-Core Version:    0.6.2
 */