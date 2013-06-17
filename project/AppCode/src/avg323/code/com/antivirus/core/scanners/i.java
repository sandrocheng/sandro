package com.antivirus.core.scanners;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import com.avg.toolkit.f.a;

public class i extends Thread
{
  public h a;
  protected k[] b;
  protected boolean c;
  protected j d;
  protected Messenger e;
  protected Context f;
  protected c g;
  private int h = 0;
  private com.antivirus.core.b i;
  private Handler j;
  private boolean k;

  public i(Context paramContext, Handler paramHandler, j paramj, c paramc, boolean paramBoolean)
  {
    this.f = paramContext;
    this.i = new com.antivirus.core.b(paramContext);
    this.j = paramHandler;
    this.g = paramc;
    this.a = new h();
    this.a.c();
    this.k = paramBoolean;
    this.d = paramj;
  }

  public int a(Messenger paramMessenger, n paramn)
  {
    this.e = paramMessenger;
    int m = 0;
    while (true)
      if (m < this.b.length)
        try
        {
          this.b[m].a(paramMessenger, paramn);
          m++;
        }
        catch (Exception localException)
        {
          while (true)
            a.a(localException);
        }
    return this.h;
  }

  public void a()
  {
    this.c = true;
    k[] arrayOfk = this.b;
    if (arrayOfk == null)
      return;
    int m = 0;
    while (m < arrayOfk.length)
      try
      {
        arrayOfk[m].a();
        m++;
      }
      catch (Exception localException)
      {
        while (true)
          a.a(localException);
      }
  }

  public void a(int paramInt, m paramm)
  {
    k[] arrayOfk = new k[5];
    for (int m = 0; m < 5; m++)
      arrayOfk[m] = null;
    m localm;
    int n;
    if ((paramInt & 0x1) != 0)
    {
      com.antivirus.core.b localb2 = this.i;
      Handler localHandler2 = this.j;
      if ((paramm != null) && ((paramm instanceof ScannerPackagesConfig)))
      {
        localm = paramm;
        z localz = new z(localb2, localHandler2, null, localm);
        this.a.c = ((ScannerPackagesResult)localz.a);
        n = 1;
        arrayOfk[0] = localz;
      }
    }
    while (true)
    {
      int i1;
      if ((paramInt & 0x2) != 0)
      {
        o localo = new o(this.i, null, 7);
        this.a.e = ((s)localo.a);
        i1 = n + 1;
        arrayOfk[n] = localo;
      }
      while (true)
      {
        label174: int i2;
        if ((paramInt & 0x4) != 0)
        {
          com.antivirus.core.b localb1 = this.i;
          Handler localHandler1 = this.j;
          if ((paramm != null) && ((paramm instanceof ScannerFilesConfig)))
          {
            v localv = new v(localb1, localHandler1, null, paramm);
            this.a.f = ((ScannerFilesResult)localv.a);
            i2 = i1 + 1;
            arrayOfk[i1] = localv;
          }
        }
        while (true)
        {
          int i3;
          if ((paramInt & 0x8) != 0)
          {
            ad localad = new ad(this.i);
            this.a.g = ((ScannerSmsResult)localad.a);
            i3 = i2 + 1;
            arrayOfk[i2] = localad;
          }
          while (true)
          {
            int i4;
            if ((paramInt & 0x10) != 0)
            {
              af localaf = new af(this.i, this.j);
              this.a.d = ((ag)localaf.a);
              i4 = i3 + 1;
              arrayOfk[i3] = localaf;
            }
            while (true)
            {
              this.b = new k[i4];
              int i5 = 0;
              while (true)
                if (i5 < i4)
                {
                  this.b[i5] = arrayOfk[i5];
                  i5++;
                  continue;
                  localm = null;
                  break;
                  paramm = null;
                  break label174;
                }
              return;
              i4 = i3;
            }
            i3 = i2;
          }
          i2 = i1;
        }
        i1 = n;
      }
      n = 0;
    }
  }

  public void run()
  {
    com.antivirus.core.e.b localb = new com.antivirus.core.e.b();
    try
    {
      if (this.e != null)
      {
        Message localMessage5 = Message.obtain();
        localMessage5.what = 1;
        localMessage5.obj = Integer.valueOf(-2);
        this.e.send(localMessage5);
      }
      synchronized (com.antivirus.core.e.b.a)
      {
        localb.a(this.f);
        m = 0;
        if ((!this.c) && (!localb.c(this.f)))
          m = (m + 9) % 100;
      }
    }
    catch (Exception localException2)
    {
      try
      {
        while (true)
        {
          int m;
          if (this.e != null)
          {
            Message localMessage4 = Message.obtain();
            localMessage4.what = 2;
            Bundle localBundle2 = new Bundle();
            localBundle2.putInt("percent", m);
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
            a.a(localException6);
          }
          continue;
          localObject2 = finally;
          throw localObject2;
          localException1 = localException1;
          a.a(localException1);
        }
        try
        {
          Messenger localMessenger = this.e;
          n = 0;
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
            int i1 = this.b.length;
            if (n >= i1);
          }
        }
        catch (Exception localException2)
        {
          try
          {
            int n;
            k localk = this.b[n];
            localClass = localk.getClass();
            if (localClass == z.class);
            for (this.h = 1; ; this.h = 2)
            {
              if (this.e != null)
              {
                Message localMessage2 = Message.obtain();
                localMessage2.what = 1;
                localMessage2.obj = Integer.valueOf(this.h);
                this.e.send(localMessage2);
              }
              localk.a(this.f, this.k);
              n++;
              break;
              localException2 = localException2;
              a.a(localException2);
              n = 0;
              break;
              if (localClass != o.class)
                break label426;
            }
          }
          catch (Exception localException4)
          {
            while (true)
            {
              Class localClass;
              a.a(localException4);
              continue;
              label426: if (localClass == v.class)
              {
                this.h = 4;
              }
              else if (localClass == ad.class)
              {
                this.h = 8;
              }
              else if (localClass == af.class)
              {
                this.h = 16;
              }
              else
              {
                a.a("unknown scanner!");
                this.h = 0;
              }
            }
          }
          this.b = null;
          if (!this.c)
          {
            j localj = this.d;
            if (localj == null);
          }
          try
          {
            this.d.a(this.a, this.g);
            if (this.e != null)
            {
              Message localMessage1 = Message.obtain();
              localMessage1.what = 1;
              localMessage1.obj = Integer.valueOf(-3);
              this.e.send(localMessage1);
            }
            return;
          }
          catch (Exception localException3)
          {
            while (true)
              a.a(localException3);
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
 * Qualified Name:     com.antivirus.core.scanners.i
 * JD-Core Version:    0.6.2
 */