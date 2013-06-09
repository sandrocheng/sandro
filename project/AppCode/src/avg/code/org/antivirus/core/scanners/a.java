package org.antivirus.core.scanners;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import org.antivirus.core.EngineSettings;
import org.antivirus.core.Logger;
import org.antivirus.core.observers.SMSContentObserver;

public final class a
{
  public Context a;
  public EngineSettings b;
  protected Handler c;
  h[] d = new h[c.values().length];
  g[] e = new g[c.values().length];
  private SMSContentObserver f;

  public a(Context paramContext, Handler paramHandler, EngineSettings paramEngineSettings)
  {
    this.a = paramContext;
    this.c = paramHandler;
    this.b = paramEngineSettings;
    a();
  }

  public final int a(Messenger paramMessenger, m paramm, c paramc)
  {
    try
    {
      h localh = this.d[paramc.ordinal()];
      if (localh != null)
      {
        int j = localh.a(paramMessenger, paramm);
        i = j;
        return i;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        Logger.log(localException);
        int i = -1;
      }
    }
  }

  public final void a()
  {
    if (this.b.isAutoScanSMS());
    while (true)
    {
      try
      {
        if (this.f == null)
        {
          this.f = new SMSContentObserver(this.a);
          this.f.registerSelf();
        }
        return;
      }
      catch (Exception localException)
      {
        Logger.log(localException);
        this.f = null;
        continue;
      }
      b();
    }
  }

  public final void a(Bundle paramBundle)
  {
    try
    {
      Message localMessage = Message.obtain();
      localMessage.what = 1065;
      if (paramBundle != null)
        localMessage.obj = paramBundle;
      localMessage.setTarget(this.c);
      this.c.sendMessage(localMessage);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }

  public final void a(c paramc)
  {
    try
    {
      h localh = this.d[paramc.ordinal()];
      if (localh != null)
        localh.a();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }

  public final void a(c paramc, ScannerPackagesResult paramScannerPackagesResult)
  {
    new w(this.b, this.c, null);
    if ((paramc != null) && (paramc == c.a))
      b(c.a);
    w.a(this.a, paramScannerPackagesResult);
  }

  public final void a(c paramc, ad paramad)
  {
    new ac(this.b, this.c);
    if ((paramc != null) && (paramc == c.a))
    {
      g localg = b(c.a);
      ac.a(this.a, localg, paramad);
    }
  }

  public final void a(i parami, int paramInt, l paraml, Messenger paramMessenger, c paramc)
  {
    System.currentTimeMillis();
    a(paramc);
    b localb = new b(this, parami);
    h localh = new h(this.a, this.c, localb, paramc);
    this.d[paramc.ordinal()] = localh;
    localh.a(paramInt, paraml);
    localh.a(paramMessenger, null);
    localh.start();
  }

  public final g b(c paramc)
  {
    g localg1 = this.e[paramc.ordinal()];
    g localg2;
    if (localg1 == null)
      if (c.a.equals(paramc))
      {
        localg2 = new g();
        localg2.a(this.a);
      }
    while (true)
    {
      return localg2;
      StringBuilder localStringBuilder1 = new StringBuilder("getScanResults ");
      Object localObject;
      int i;
      label77: StringBuilder localStringBuilder2;
      if (paramc == null)
      {
        localObject = "null";
        Logger.error(localObject);
        i = 0;
        if (i >= this.e.length)
          break label155;
        localStringBuilder2 = new StringBuilder("mScanResults in Index: ").append(i);
        if (this.e[i] != null)
          break label148;
      }
      label148: for (String str = " null"; ; str = " not null")
      {
        Logger.error(str);
        i++;
        break label77;
        localObject = Integer.valueOf(paramc.ordinal());
        break;
      }
      label155: localg2 = localg1;
    }
  }

  public final void b()
  {
    if (this.f != null);
    try
    {
      this.f.unregisterSelf();
      this.f = null;
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }

  public final void b(c paramc, ScannerPackagesResult paramScannerPackagesResult)
  {
    new w(this.b, this.c, null);
    if ((paramc != null) && (paramc == c.a))
    {
      g localg = b(c.a);
      w.a(this.a, localg, paramScannerPackagesResult);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.scanners.a
 * JD-Core Version:    0.6.2
 */