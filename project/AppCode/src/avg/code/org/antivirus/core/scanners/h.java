package org.antivirus.core.scanners;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import org.antivirus.core.EngineSettings;
import org.antivirus.core.Logger;
import org.antivirus.core.c.b;

public final class h extends Thread
{
  public g a;
  protected j[] b;
  protected boolean c;
  protected i d;
  protected Messenger e;
  protected Context f;
  protected c g;
  private int h = 0;
  private EngineSettings i;
  private Handler j;

  public h(Context paramContext, Handler paramHandler, i parami, c paramc)
  {
    this.f = paramContext;
    this.i = new EngineSettings(paramContext);
    this.j = paramHandler;
    this.g = paramc;
    this.a = new g();
    this.a.b = System.currentTimeMillis();
    this.d = parami;
  }

  public final int a(Messenger paramMessenger, m paramm)
  {
    this.e = paramMessenger;
    int k = 0;
    while (true)
      if (k < this.b.length)
        try
        {
          this.b[k].a(paramMessenger, paramm);
          k++;
        }
        catch (Exception localException)
        {
          while (true)
            Logger.log(localException);
        }
    return this.h;
  }

  public final void a()
  {
    this.c = true;
    j[] arrayOfj = this.b;
    if (arrayOfj == null)
      return;
    int k = 0;
    while (k < arrayOfj.length)
      try
      {
        arrayOfj[k].a();
        k++;
      }
      catch (Exception localException)
      {
        while (true)
          Logger.log(localException);
      }
  }

  public final void a(int paramInt, l paraml)
  {
    j[] arrayOfj = new j[5];
    for (int k = 0; k < 5; k++)
      arrayOfj[k] = null;
    l locall;
    int m;
    if ((paramInt & 0x1) != 0)
    {
      EngineSettings localEngineSettings2 = this.i;
      Handler localHandler2 = this.j;
      if ((paraml != null) && ((paraml instanceof ScannerPackagesConfig)))
      {
        locall = paraml;
        w localw = new w(localEngineSettings2, localHandler2, locall);
        this.a.c = ((ScannerPackagesResult)localw.a);
        m = 1;
        arrayOfj[0] = localw;
      }
    }
    while (true)
    {
      int n;
      if ((paramInt & 0x2) != 0)
      {
        n localn = new n(this.i);
        this.a.e = ((r)localn.a);
        n = m + 1;
        arrayOfj[m] = localn;
      }
      while (true)
      {
        label170: int i1;
        if ((paramInt & 0x4) != 0)
        {
          EngineSettings localEngineSettings1 = this.i;
          Handler localHandler1 = this.j;
          if ((paraml != null) && ((paraml instanceof ScannerFilesConfig)))
          {
            s locals = new s(localEngineSettings1, localHandler1, paraml);
            this.a.f = ((ScannerFilesResult)locals.a);
            i1 = n + 1;
            arrayOfj[n] = locals;
          }
        }
        while (true)
        {
          int i2;
          if ((paramInt & 0x8) != 0)
          {
            aa localaa = new aa(this.i);
            this.a.g = ((ScannerSmsResult)localaa.a);
            i2 = i1 + 1;
            arrayOfj[i1] = localaa;
          }
          while (true)
          {
            int i3;
            if ((paramInt & 0x10) != 0)
            {
              ac localac = new ac(this.i, this.j);
              this.a.d = ((ad)localac.a);
              i3 = i2 + 1;
              arrayOfj[i2] = localac;
            }
            while (true)
            {
              this.b = new j[i3];
              int i4 = 0;
              while (true)
                if (i4 < i3)
                {
                  this.b[i4] = arrayOfj[i4];
                  i4++;
                  continue;
                  locall = null;
                  break;
                  paraml = null;
                  break label170;
                }
              return;
              i3 = i2;
            }
            i2 = i1;
          }
          i1 = n;
        }
        n = m;
      }
      m = 0;
    }
  }

  public final void run()
  {
    b localb = new b();
    try
    {
      if (this.e != null)
      {
        Message localMessage5 = Message.obtain();
        localMessage5.what = 1;
        localMessage5.obj = Integer.valueOf(-2);
        this.e.send(localMessage5);
      }
      synchronized (b.a)
      {
        localb.a(this.f);
        k = 0;
        if ((!this.c) && (!localb.c(this.f)))
          k = (k + 9) % 100;
      }
    }
    catch (Exception localException2)
    {
      try
      {
        while (true)
        {
          int k;
          if (this.e != null)
          {
            Message localMessage4 = Message.obtain();
            localMessage4.what = 2;
            Bundle localBundle2 = new Bundle();
            localBundle2.putInt("percent", k);
            localBundle2.putBoolean("threat", false);
            localBundle2.putString("package-name", "");
            localMessage4.setData(localBundle2);
            localMessage4.obj = null;
            this.e.send(localMessage4);
          }
          try
          {
            label166: Thread.sleep(3000L);
          }
          catch (Exception localException6)
          {
            Logger.log(localException6);
          }
          continue;
          localObject2 = finally;
          throw localObject2;
          localException1 = localException1;
          Logger.log(localException1);
        }
        try
        {
          Messenger localMessenger = this.e;
          m = 0;
          if (localMessenger != null)
          {
            Message localMessage3 = Message.obtain();
            localMessage3.what = 2;
            Bundle localBundle1 = new Bundle();
            localBundle1.putInt("percent", 0);
            localBundle1.putBoolean("threat", false);
            localBundle1.putString("package-name", "");
            localMessage3.setData(localBundle1);
            localMessage3.obj = null;
            this.e.send(localMessage3);
          }
          if (!this.c)
          {
            int n = this.b.length;
            if (m >= n);
          }
        }
        catch (Exception localException2)
        {
          try
          {
            int m;
            j localj = this.b[m];
            localClass = localj.getClass();
            if (localClass == w.class);
            for (this.h = 1; ; this.h = 2)
            {
              if (this.e != null)
              {
                Message localMessage2 = Message.obtain();
                localMessage2.what = 1;
                localMessage2.obj = Integer.valueOf(this.h);
                this.e.send(localMessage2);
              }
              localj.a(this.f);
              m++;
              break;
              localException2 = localException2;
              Logger.log(localException2);
              m = 0;
              break;
              if (localClass != n.class)
                break label422;
            }
          }
          catch (Exception localException4)
          {
            while (true)
            {
              Class localClass;
              Logger.log(localException4);
              continue;
              label422: if (localClass == s.class)
              {
                this.h = 4;
              }
              else if (localClass == aa.class)
              {
                this.h = 8;
              }
              else if (localClass == ac.class)
              {
                this.h = 16;
              }
              else
              {
                Logger.error("unknown scanner!");
                this.h = 0;
              }
            }
          }
          this.b = null;
          if (!this.c)
          {
            i locali = this.d;
            if (locali == null);
          }
          try
          {
            this.d.onScanDone(this.a, this.g);
            if (this.e != null)
            {
              Message localMessage1 = Message.obtain();
              localMessage1.what = 1;
              localMessage1.obj = Integer.valueOf(-1);
              this.e.send(localMessage1);
            }
            return;
          }
          catch (Exception localException3)
          {
            while (true)
              Logger.log(localException3);
          }
        }
      }
      catch (Exception localException5)
      {
        break label166;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.scanners.h
 * JD-Core Version:    0.6.2
 */