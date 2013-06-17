package com.antivirus.core.g;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.concurrent.Callable;

public class e
  implements com.avg.toolkit.e
{
  Class a;
  Context b;
  Handler c;
  final String d = "http://lvb.avg.com/api.aspx";
  final String e = "Thl&2!uHi?mI";
  final String f = "b1559c0f42c744528a5a41609dbeda52";
  final String g = "335378936";
  final String h = "0";
  final String i = "103";
  final String j = "81";
  final String k = "b1559c0f42c744528a5a41609dbeda52Thl&2!uHi?mI813353789360%s335378936103";
  final b l;
  private final int m = 100;
  private f n;
  private String o = null;
  private String p = null;
  private a q = new a(100);
  private com.antivirus.core.c.b r;
  private Callable s;

  public e(Context paramContext, Callable paramCallable, Class paramClass, Handler paramHandler, boolean paramBoolean)
  {
    this.c = paramHandler;
    this.b = paramContext.getApplicationContext();
    this.a = paramClass;
    this.s = paramCallable;
    this.l = new b("http://lvb.avg.com/api.aspx");
    this.l.a("ver", "2");
    this.l.a("pv", "10");
    this.l.a("il", "en");
    this.l.a("adv", "0");
    this.l.a("icv", "0");
    this.l.a("iv", "1.0");
    this.l.a("p", "0");
    this.l.a("idp", "0");
    this.l.a("lt", "0");
    this.l.a("pt", "0");
    this.l.a("st", "CloudClientTest");
    this.l.a("phdv", "0");
    this.l.a("lsurldv", "0");
    this.l.a("dv", "0");
    this.l.a("uid", "b1559c0f42c744528a5a41609dbeda52");
    this.l.a("l", "cs-CZ");
    this.l.a("tz", "+0100");
    this.l.a("os", "Google(R)+Android(R)+AVG+Mobilation+LinkScanner,+0.0.0001+Service+Pack+0+Build+00001");
    this.l.a("sp", "2+0");
    this.l.a("p1", "103");
    this.l.a("p2", "81");
    this.l.a("sid", "0");
    this.l.a("rt", "0");
    this.l.a("vs", "1");
    this.l.a("m", "0");
    this.l.a("mid", "b1559c0f42c744528a5a41609dbeda52");
    this.l.a("did", "0");
    this.l.a("rc", "0");
    this.l.a("ts", "335378936");
    this.l.a("cx", "60");
    if (paramBoolean)
      a();
  }

  private void a(Context paramContext, String paramString)
  {
    if ((this.a != null) && (this.o != null) && (!paramString.equals(this.p)))
    {
      this.p = paramString;
      Intent localIntent = new Intent(paramContext, this.a);
      localIntent.setFlags(469762048);
      localIntent.putExtra("md5sum", paramString);
      paramContext.startActivity(localIntent);
    }
  }

  private boolean d()
  {
    try
    {
      MessageDigest.getInstance("MD5");
      bool = true;
      return bool;
    }
    catch (Exception localException)
    {
      while (true)
        bool = false;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      while (true)
        boolean bool = false;
    }
  }

  public void a()
  {
    if (this.b == null)
      com.avg.toolkit.f.a.a("Can't register url observer - context is null");
    while (true)
    {
      return;
      if (this.r == null)
      {
        this.r = new com.antivirus.core.c.b(this.b, this.c);
        if (Build.VERSION.SDK_INT > 13)
          this.b.getContentResolver().registerContentObserver(this.r.b, true, this.r);
        else
          this.b.getContentResolver().registerContentObserver(this.r.a, true, this.r);
      }
    }
  }

  public void a(Bundle paramBundle)
  {
  }

  public void a(com.avg.toolkit.e.a parama)
  {
  }

  public void a(String paramString)
  {
    this.q.put(paramString, Boolean.valueOf(true));
  }

  public void a(List paramList)
  {
  }

  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
      b(new com.antivirus.core.b(this.b).v());
  }

  public int b()
  {
    return 3000;
  }

  public void b(Bundle paramBundle)
  {
    int i1 = -1;
    if (paramBundle != null);
    try
    {
      int i2 = paramBundle.getInt("__SAC2", -1);
      i1 = i2;
      switch (i1)
      {
      default:
        com.avg.toolkit.f.a.a();
        return;
      case 3:
      case 1:
      case 2:
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        com.avg.toolkit.f.a.a(localException);
        continue;
        e(paramBundle);
        continue;
        c(paramBundle);
        continue;
        d(paramBundle);
      }
    }
  }

  public void b(com.avg.toolkit.e.a parama)
  {
  }

  void b(boolean paramBoolean)
  {
    if (paramBoolean)
      a();
    while (true)
    {
      return;
      c();
    }
  }

  public boolean b(String paramString)
  {
    boolean bool;
    if (!d())
      bool = false;
    while (true)
    {
      return bool;
      if ((this.o != null) && (paramString != null) && (paramString.equals(this.o)))
      {
        bool = false;
        continue;
      }
      if (paramString == null)
        paramString = "";
      this.o = paramString;
      if (TextUtils.isEmpty(paramString))
      {
        bool = false;
        continue;
      }
      String str1 = Uri.parse(paramString).getHost();
      if (TextUtils.isEmpty(str1))
      {
        bool = false;
        continue;
      }
      int i1 = str1.lastIndexOf(".");
      if (i1 != -1)
      {
        int i2 = str1.lastIndexOf(".", i1 - 1);
        if (i2 != -1)
          str1 = str1.substring(i2 + 1);
      }
      if (!TextUtils.isEmpty(str1))
      {
        if (this.n == null)
          this.n = new f();
        if (this.n.a(this.b, str1, this.s))
        {
          bool = false;
          continue;
        }
      }
      if (paramString.endsWith("/"))
        paramString = paramString.substring(0, -1 + paramString.length());
      String str2 = a.a.a.a.b.a.c(String.format("b1559c0f42c744528a5a41609dbeda52Thl&2!uHi?mI813353789360%s335378936103", new Object[] { paramString }));
      if (this.q.containsKey(str2))
      {
        if (((Boolean)this.q.get(str2)).booleanValue())
          break label384;
        a(this.b, str2);
        bool = true;
        continue;
      }
      this.l.c();
      this.l.b("url0", paramString);
      this.l.b("v", str2);
      try
      {
        this.l.a(d.b);
        String str3 = this.l.b();
        if ((this.l.a()) && ((str3.contains("<action>1</action>")) || (str3.contains("<catID>1</catID>"))))
        {
          a(this.b, str2);
          this.q.put(str2, Boolean.valueOf(false));
          bool = true;
          continue;
        }
        this.q.put(str2, Boolean.valueOf(true));
        label384: bool = false;
      }
      catch (Exception localException)
      {
        while (true)
          com.avg.toolkit.f.a.a(localException);
      }
    }
  }

  public void c()
  {
    if ((this.r != null) && (this.b != null))
    {
      this.b.getContentResolver().unregisterContentObserver(this.r);
      this.r.a();
      this.r = null;
    }
  }

  void c(Bundle paramBundle)
  {
    b(paramBundle.getString("__SAD"));
  }

  void d(Bundle paramBundle)
  {
    a(paramBundle.getString("__SAD"));
  }

  void e(Bundle paramBundle)
  {
    b(paramBundle.getBoolean("isUrlAntiPhishingEnabled"));
  }

  public void onDestroy()
  {
    c();
    this.c = null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.g.e
 * JD-Core Version:    0.6.2
 */