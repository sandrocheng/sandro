package com.avg.toolkit;

import android.content.Intent;
import android.os.Bundle;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.SparseArray;
import java.io.InputStream;
import java.util.List;
import java.util.Properties;
import java.util.concurrent.Callable;

public class i extends f
{
  private void c(Bundle paramBundle)
  {
    boolean bool = ((Boolean)paramBundle.get("result")).booleanValue();
    if (paramBundle.containsKey("__SAH"));
    try
    {
      Messenger localMessenger = (Messenger)paramBundle.get("__SAH");
      if (localMessenger != null)
      {
        Message localMessage = Message.obtain();
        localMessage.obj = Boolean.valueOf(bool);
        localMessenger.send(localMessage);
      }
      if (bool)
      {
        com.avg.toolkit.e.a locala = com.avg.toolkit.e.e.a();
        for (int i = 0; i < this.g.size(); i++)
          ((e)this.g.valueAt(i)).b(locala);
      }
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        com.avg.toolkit.f.a.a("RemoteException: " + localRemoteException.getLocalizedMessage());
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  protected void a()
  {
    this.i = new com.avg.toolkit.UID.a(this);
    this.i.c();
    a(this.i);
    this.h = new com.avg.toolkit.e.e(this, a.a("res/raw/vendor.png"), a.a("res/raw/vendor_footer.png"));
    a(this.h);
    this.h.c();
    this.d = this.h.d();
    HandlerThread localHandlerThread = new HandlerThread("ITKSvc");
    localHandlerThread.start();
    this.f = localHandlerThread.getLooper();
    this.e = new j(this, this.f);
  }

  public void a(com.avg.toolkit.e.a parama)
  {
  }

  public void a(List paramList)
  {
  }

  public void a(boolean paramBoolean)
  {
    this.d = true;
    this.h.e();
    for (int i = 0; i < this.g.size(); i++)
      ((e)this.g.valueAt(i)).a(paramBoolean);
  }

  protected void a_()
  {
    com.avg.toolkit.e.a locala = com.avg.toolkit.e.e.a();
    Callable localCallable = a.a("res/raw/conf.properties");
    Properties localProperties = new Properties();
    try
    {
      localProperties.load((InputStream)localCallable.call());
      a(new com.avg.toolkit.a.a(this, locala, localProperties, this.i));
      a(new com.avg.toolkit.Marketing.a(this, locala));
      a(new com.avg.toolkit.c.a(this, locala, localProperties));
      if (this.d)
        a(false);
      return;
    }
    catch (Exception localException)
    {
      throw new Error(localException);
    }
  }

  public void a_(Bundle paramBundle)
  {
  }

  public void b(Bundle paramBundle)
  {
    int i = -1;
    if (paramBundle != null);
    try
    {
      int j = paramBundle.getInt("__SAC2", -1);
      i = j;
      switch (i)
      {
      default:
        com.avg.toolkit.f.a.a();
        return;
      case 1001:
      case 1002:
      case 1003:
      case 1004:
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        com.avg.toolkit.f.a.a(localException);
        continue;
        a_();
        continue;
        a(true);
        continue;
        if (this.d)
        {
          a(paramBundle);
          continue;
          c(paramBundle);
        }
      }
    }
  }

  public void b(com.avg.toolkit.e.a parama)
  {
  }

  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.i
 * JD-Core Version:    0.6.2
 */