package com.antivirus;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.SparseArray;
import com.antivirus.apploader.d;
import com.antivirus.ui.urlFilter.UrlWarningActivity;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.concurrent.Callable;

public class AVService extends com.avg.toolkit.f
{
  public com.antivirus.core.b a;
  public com.avg.toolkit.e.e b;
  public com.antivirus.core.d.a.a c;
  private com.avg.toolkit.RecurringTasks.b j;
  private com.avg.widget.g k;
  private g l;
  private final IBinder m = new a(this);
  private boolean n = false;

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
          ((com.avg.toolkit.e)this.g.valueAt(i)).b(locala);
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

  @Deprecated
  private ArrayList d()
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    try
    {
      for (Field localField : f.class.getDeclaredFields())
        if ((localField != null) && (localField.getName() != null) && (localField.getName().startsWith("secdb_")))
          localArrayList1.add(localField.getName());
    }
    catch (Exception localException1)
    {
      com.avg.toolkit.f.a.a(localException1);
      Collections.sort(localArrayList1);
      Iterator localIterator = localArrayList1.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        try
        {
          localArrayList2.add(Integer.valueOf(f.class.getDeclaredField(str).getInt(null)));
        }
        catch (Exception localException2)
        {
          com.avg.toolkit.f.a.a(localException2);
        }
      }
    }
    return localArrayList2;
  }

  protected void a()
  {
    this.g = new SparseArray();
    this.i = new com.avg.toolkit.UID.a(this);
    this.i.c();
    a(this.i);
    this.b = new com.avg.toolkit.e.e(this, com.avg.toolkit.a.a(getApplicationContext(), 2131034122), com.avg.toolkit.a.a(this, 2131034123));
    a(this.b);
    this.b.c();
    this.d = this.b.d();
    com.avg.toolkit.e.a locala1 = com.avg.toolkit.e.e.a();
    this.a = new com.antivirus.core.b(this);
    this.a.a(this);
    this.c = new com.antivirus.core.d.a.a(this, locala1, this.i);
    a(this.c);
    a(new com.antivirus.b.a(this, locala1, this.i));
    a(new com.antivirus.d.a(this));
    a(new com.antivirus.core.a.a());
    HandlerThread localHandlerThread = new HandlerThread("AVService");
    localHandlerThread.start();
    this.f = localHandlerThread.getLooper();
    this.e = new b(this, this.f);
    Handler localHandler = this.e;
    com.avg.toolkit.e.a locala2 = com.avg.toolkit.e.e.a();
    if (!c.e());
    for (boolean bool = true; ; bool = false)
    {
      this.k = new com.antivirus.widget.a(this, localHandler, locala2, bool);
      a(this.k);
      this.l = new g(getApplicationContext(), this.c.b, this.a, com.avg.toolkit.a.a(getApplicationContext(), d()), this.k);
      a(this.l);
      return;
    }
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
    for (int i = 0; i < this.g.size(); i++)
      ((com.avg.toolkit.e)this.g.valueAt(i)).a(paramBoolean);
    this.j = new com.avg.toolkit.RecurringTasks.b(getApplicationContext(), "SVCDT", 86400000L, true, false, 1000, false);
  }

  protected void a_()
  {
    if (this.n);
    while (true)
    {
      return;
      this.n = true;
      a(new com.antivirus.e.b(this, this.e));
      a(new com.antivirus.antitheft.a(this, this.a, this.i));
      a(new com.antivirus.errors.a(this));
      Callable localCallable = com.avg.toolkit.a.a(this, 2131034113);
      Properties localProperties = new Properties();
      ArrayList localArrayList;
      try
      {
        localProperties.load((InputStream)localCallable.call());
        a(new com.avg.toolkit.c.a(this, com.avg.toolkit.e.e.a(), localProperties));
        a(new com.avg.toolkit.a.a(getApplicationContext(), com.avg.toolkit.e.e.a(), localProperties, this.i));
        a(new com.antivirus.applocker.f(this));
        a(new com.antivirus.core.g.e(this, com.avg.toolkit.a.a(getApplicationContext(), 2131034124), UrlWarningActivity.class, this.e, this.a.v()));
        a(new com.antivirus.callmessagefilter.callblocker.a(this));
        a(new d(this));
        a(new com.antivirus.ui.help.f());
        com.avg.toolkit.d.a.a(this);
        localArrayList = new ArrayList();
        for (int i = 0; i < this.g.size(); i++)
          ((com.avg.toolkit.e)this.g.valueAt(i)).a(localArrayList);
      }
      catch (Exception localException)
      {
        throw new Error(localException);
      }
      this.c.b(localArrayList);
      if (this.d)
        a(false);
    }
  }

  public void a_(Bundle paramBundle)
  {
    if (!this.j.a(getApplicationContext(), paramBundle));
    while (true)
    {
      return;
      this.b.c();
      com.avg.toolkit.e.a locala = com.avg.toolkit.e.e.a();
      for (int i = 0; i < this.g.size(); i++)
        ((com.avg.toolkit.e)this.g.valueAt(i)).a(locala);
      this.j.a(this);
    }
  }

  public void b(Bundle paramBundle)
  {
    int i = -1;
    if (paramBundle != null);
    try
    {
      int i1 = paramBundle.getInt("__SAC2", -1);
      i = i1;
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

  boolean c()
  {
    return this.d;
  }

  public IBinder onBind(Intent paramIntent)
  {
    a(this, 1000, 1001, null);
    return this.m;
  }

  public void onDestroy()
  {
    try
    {
      this.g.clear();
      super.onDestroy();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
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
 * Qualified Name:     com.antivirus.AVService
 * JD-Core Version:    0.6.2
 */