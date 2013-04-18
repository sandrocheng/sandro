package com.keniu.security.f;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;
import com.keniu.security.MoSecurityApplication;
import com.keniu.security.main.MainActivity;
import com.keniu.security.monitor.b;
import com.keniu.security.util.at;
import com.keniu.security.util.au;

public final class a
  implements b, Runnable
{
  private static final long e = 7200000L;
  private static a f;
  private Toast a;
  private t b;
  private p c;
  private w d;

  public static a a()
  {
    try
    {
      if (f == null)
        f = new a();
      a locala = f;
      return locala;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private static boolean c()
  {
    MoSecurityApplication localMoSecurityApplication = MoSecurityApplication.a();
    com.keniu.security.a locala = com.keniu.security.a.a(localMoSecurityApplication);
    boolean bool;
    if (!locala.ad())
      bool = false;
    while (true)
    {
      return bool;
      if (!at.c(localMoSecurityApplication))
      {
        bool = false;
      }
      else if ((System.currentTimeMillis() - locala.as() >= 1296000000L) || (at.b(localMoSecurityApplication)))
      {
        locala.e(System.currentTimeMillis());
        bool = true;
      }
      else
      {
        bool = false;
      }
    }
  }

  private static boolean d()
  {
    MoSecurityApplication localMoSecurityApplication = MoSecurityApplication.a();
    com.keniu.security.a locala = com.keniu.security.a.a(localMoSecurityApplication);
    if ((at.b(localMoSecurityApplication)) && (locala.ad()) && (locala.ae()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private void e()
  {
    com.keniu.security.monitor.a.a().a(com.keniu.security.monitor.a.q, this);
  }

  public final int a(int paramInt, Object paramObject1, Object paramObject2)
  {
    int i = 2131428357;
    if (paramObject2 == this.c)
      if (this.c.i() == 8)
      {
        if (this.c.j() == 0)
        {
          MoSecurityApplication localMoSecurityApplication3 = MoSecurityApplication.a();
          String str2 = ab.a().l();
          Intent localIntent2 = new Intent(localMoSecurityApplication3, MainActivity.class);
          Bundle localBundle2 = new Bundle();
          localBundle2.putBoolean("autoupdateapk", true);
          localBundle2.putString("autoupdateapkpath", str2);
          localIntent2.putExtras(localBundle2);
          localIntent2.setFlags(268435456);
          PendingIntent localPendingIntent2 = PendingIntent.getActivity(localMoSecurityApplication3, 3, localIntent2, 0);
          String str3 = localMoSecurityApplication3.getString(i);
          au.a(localMoSecurityApplication3, i, i, str3, localPendingIntent2, 262, 2130837714);
        }
        e();
      }
    do
      while (true)
      {
        return 1;
        if (paramObject2 != this.d)
          break;
        if (this.d.i() == 8)
        {
          if (this.d.j() == 0)
            this.a.show();
          e();
        }
      }
    while ((paramObject2 != this.b) || (this.b.i() != 2));
    ab localab = ab.a();
    v localv;
    label288: int j;
    label363: label381: MoSecurityApplication localMoSecurityApplication2;
    label454: PendingIntent localPendingIntent1;
    if (this.b.j() == 0)
    {
      localv = this.b.a();
      if ((localv.b != 0) || (localv.e != 0))
      {
        MoSecurityApplication localMoSecurityApplication1 = MoSecurityApplication.a();
        com.keniu.security.a locala = com.keniu.security.a.a(localMoSecurityApplication1);
        int k;
        if ((at.b(localMoSecurityApplication1)) && (locala.ad()) && (locala.ae()))
        {
          k = 1;
          if (k == 0)
            break label454;
          if (localv.b == 0)
            break label381;
          if (this.c == null)
            this.c = new p();
          p localp = this.c;
          h localh2 = t.b();
          localp.a(localh2, t.c());
          localab.a(this.c);
        }
        for (j = 0; ; j = 0)
        {
          if (j == 0)
            break label570;
          e();
          break;
          k = 0;
          break label288;
          if (localv.e == 0)
            break label566;
          if (this.d == null)
            this.d = new w();
          w localw = this.d;
          h localh1 = t.d();
          localw.a(localh1, t.e());
          localab.a(this.d);
        }
        localMoSecurityApplication2 = MoSecurityApplication.a();
        Intent localIntent1 = new Intent(localMoSecurityApplication2, MainActivity.class);
        Bundle localBundle1 = new Bundle();
        localBundle1.putBoolean("autoupdateservice", true);
        localIntent1.putExtras(localBundle1);
        localIntent1.setFlags(268435456);
        localPendingIntent1 = PendingIntent.getActivity(localMoSecurityApplication2.getApplicationContext(), 4, localIntent1, 0);
        if ((localv.b == 0) || (localv.e == 0))
          break label572;
        i = 2131428356;
      }
    }
    while (true)
    {
      String str1 = localMoSecurityApplication2.getString(i);
      au.a(localMoSecurityApplication2, i, i, str1, localPendingIntent1, 262, 2130837714);
      label566: j = 1;
      break label363;
      label570: break;
      label572: if (localv.b == 0)
        i = 2131428358;
    }
  }

  public final void b()
  {
    this.a = Toast.makeText(MoSecurityApplication.a(), 2131428359, 1);
    ab.a().a(this, 7200000L);
  }

  public final void run()
  {
    ab localab = ab.a();
    MoSecurityApplication localMoSecurityApplication = MoSecurityApplication.a();
    com.keniu.security.a locala = com.keniu.security.a.a(localMoSecurityApplication);
    if ((locala.ad()) && (at.c(localMoSecurityApplication)) && ((System.currentTimeMillis() - locala.as() >= 1296000000L) || (at.b(localMoSecurityApplication))))
      locala.e(System.currentTimeMillis());
    for (int i = 1; ; i = 0)
    {
      if (i != 0)
      {
        com.keniu.security.monitor.a.a().a(com.keniu.security.monitor.a.q, this, 1342177279);
        if (this.b == null)
          this.b = new t(false);
        localab.a(this.b);
      }
      localab.a(this, 7200000L);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.f.a
 * JD-Core Version:    0.6.2
 */