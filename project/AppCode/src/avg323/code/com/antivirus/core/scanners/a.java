package com.antivirus.core.scanners;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.antivirus.core.d.a.f;
import com.avg.toolkit.e;
import java.util.ArrayList;
import java.util.List;

public class a
  implements e
{
  private com.antivirus.core.c.a a;
  protected Context b;
  protected com.antivirus.core.b c;
  protected Handler d;
  private i[] e = new i[c.values().length];
  private h[] f = new h[c.values().length];

  public a(Context paramContext, Handler paramHandler, com.antivirus.core.b paramb, ArrayList paramArrayList)
  {
    this.b = paramContext;
    this.d = paramHandler;
    this.c = paramb;
    com.antivirus.core.e.b.b = paramArrayList;
    String str = ((TelephonyManager)paramContext.getSystemService("phone")).getNetworkCountryIso().toUpperCase();
    this.c.g(str);
  }

  private void a()
  {
    if (this.a != null);
    try
    {
      this.a.b();
      this.a = null;
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  private static boolean a(long paramLong)
  {
    if ((86400000L == paramLong) || (604800000L == paramLong));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public int a(Messenger paramMessenger, n paramn, c paramc)
  {
    try
    {
      i locali = this.e[paramc.ordinal()];
      if (locali != null)
      {
        int j = locali.a(paramMessenger, paramn);
        i = j;
        return i;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        com.avg.toolkit.f.a.a(localException);
        int i = -1;
      }
    }
  }

  public void a(int paramInt, Bundle paramBundle)
  {
    try
    {
      Message localMessage = Message.obtain();
      localMessage.what = paramInt;
      if (paramBundle != null)
        localMessage.obj = paramBundle;
      localMessage.setTarget(this.d);
      this.d.sendMessage(localMessage);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  public void a(Bundle paramBundle)
  {
  }

  public void a(c paramc)
  {
    try
    {
      i locali = this.e[paramc.ordinal()];
      if (locali != null)
        locali.a();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  public void a(c paramc, ScannerFilesResult paramScannerFilesResult)
  {
    h localh = null;
    if (paramc != null)
    {
      c localc = c.a;
      localh = null;
      if (paramc == localc)
        localh = b(c.a);
    }
    v.a(this.b, localh, paramScannerFilesResult);
  }

  public void a(c paramc, ScannerPackagesResult paramScannerPackagesResult)
  {
    z localz = new z(this.c, this.d, null, null);
    h localh = null;
    if (paramc != null)
    {
      c localc = c.a;
      localh = null;
      if (paramc == localc)
        localh = b(c.a);
    }
    localz.a(this.b, localh, paramScannerPackagesResult);
  }

  public void a(c paramc, ag paramag)
  {
    af localaf = new af(this.c, this.d);
    if ((paramc != null) && (paramc == c.a))
    {
      h localh = b(c.a);
      localaf.a(this.b, localh, paramag);
    }
  }

  public void a(j paramj, int paramInt, m paramm, Messenger paramMessenger, c paramc, boolean paramBoolean)
  {
    System.currentTimeMillis();
    if (!new com.antivirus.core.e.b().a(this.b))
      a(2004, null);
    a(paramc);
    b localb = new b(this, paramj);
    i locali = new i(this.b, this.d, localb, paramc, paramBoolean);
    this.e[paramc.ordinal()] = locali;
    locali.a(paramInt, paramm);
    locali.a(paramMessenger, null);
    locali.start();
  }

  public void a(com.avg.toolkit.e.a parama)
  {
  }

  public void a(String paramString1, String paramString2, c paramc, ScannerSmsResult paramScannerSmsResult)
  {
    ad localad = new ad(this.c);
    h localh = null;
    if (paramc != null)
    {
      c localc = c.a;
      localh = null;
      if (paramc == localc)
        localh = b(c.a);
    }
    localad.a(this.b, localh, paramScannerSmsResult, paramString1, paramString2);
  }

  public void a(List paramList)
  {
    paramList.add(com.antivirus.core.d.a.c.class);
    paramList.add(com.antivirus.core.d.a.h.class);
    paramList.add(f.class);
    paramList.add(com.antivirus.core.d.a.i.class);
  }

  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
      this.c.e(604800000L);
    e();
    d();
  }

  public int b()
  {
    return 2000;
  }

  public h b(c paramc)
  {
    h localh1 = null;
    if (paramc != null)
      localh1 = this.f[paramc.ordinal()];
    h localh2;
    if (localh1 == null)
      if (c.a.equals(paramc))
      {
        localh2 = new h();
        localh2.a(this.b);
      }
    while (true)
    {
      return localh2;
      StringBuilder localStringBuilder1 = new StringBuilder().append("getScanResults ");
      Object localObject;
      int i;
      label86: StringBuilder localStringBuilder2;
      if (paramc == null)
      {
        localObject = "null";
        com.avg.toolkit.f.a.a(localObject);
        i = 0;
        if (i >= this.f.length)
          break label168;
        localStringBuilder2 = new StringBuilder().append("mScanResults in Index: ").append(i);
        if (this.f[i] != null)
          break label160;
      }
      label160: for (String str = " null"; ; str = " not null")
      {
        com.avg.toolkit.f.a.a(str);
        i++;
        break label86;
        localObject = Integer.valueOf(paramc.ordinal());
        break;
      }
      label168: localh2 = localh1;
    }
  }

  void b(int paramInt, c paramc, Object paramObject)
  {
    if (paramInt == 1)
      b(paramc, (ScannerPackagesResult)paramObject);
    while (true)
    {
      return;
      if (paramInt == 16)
        a(paramc, (ag)paramObject);
      else
        com.avg.toolkit.f.a.a();
    }
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
      case 5:
      case 6:
      case 8:
      case 9:
      case 7:
      case 10:
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        com.avg.toolkit.f.a.a(localException);
        continue;
        d();
        continue;
        e(paramBundle);
        continue;
        b(paramBundle.getInt("__SAD"), (c)paramBundle.get("ScannerClient"), paramBundle.getParcelable("ScannerResult"));
        continue;
        f(paramBundle);
        continue;
        c();
        continue;
        g(paramBundle);
      }
    }
  }

  public void b(c paramc, ScannerPackagesResult paramScannerPackagesResult)
  {
    z localz = new z(this.c, this.d, null, null);
    if ((paramc != null) && (paramc == c.a))
    {
      h localh = b(c.a);
      localz.b(this.b, localh, paramScannerPackagesResult);
    }
  }

  public void b(com.avg.toolkit.e.a parama)
  {
  }

  public void c()
  {
    try
    {
      a(2004, null);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  public void d()
  {
    try
    {
      long l = this.c.g();
      if ((-1L != l) && (!a(l)))
      {
        com.avg.toolkit.f.a.a();
        this.c.e(604800000L);
      }
    }
    catch (Exception localException)
    {
      com.avg.toolkit.f.a.a(localException);
    }
  }

  public void e()
  {
    if (this.c.n());
    while (true)
    {
      try
      {
        if (this.a == null)
        {
          this.a = new com.antivirus.core.c.a(this.b);
          this.a.a();
        }
        return;
      }
      catch (Exception localException)
      {
        com.avg.toolkit.f.a.a(localException);
        this.a = null;
        continue;
      }
      a();
    }
  }

  void e(Bundle paramBundle)
  {
    e();
  }

  void f(Bundle paramBundle)
  {
    a((c)paramBundle.get("__SAD"));
  }

  void g(Bundle paramBundle)
  {
    try
    {
      String str1 = paramBundle.getString("package_name");
      if (!TextUtils.isEmpty(str1))
      {
        String str2 = str1.replace("package:", "");
        if (!str2.equals(this.b.getPackageName()))
        {
          boolean bool = paramBundle.getBoolean("updating", false);
          if (!bool)
            try
            {
              Bundle localBundle = new Bundle();
              localBundle.putString("pkg", str2);
              localBundle.putString("action", "D");
              a(2007, localBundle);
            }
            catch (Exception localException2)
            {
              com.avg.toolkit.f.a.a(localException2);
            }
        }
      }
    }
    catch (Exception localException1)
    {
      com.avg.toolkit.f.a.a(localException1);
    }
  }

  public void onDestroy()
  {
    a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.scanners.a
 * JD-Core Version:    0.6.2
 */