package com.keniu.security.commumgr.a;

import android.content.Context;
import com.hoi.a.a;
import com.jxphone.mosecurity.c.j;
import com.jxphone.mosecurity.c.l;
import com.jxphone.mosecurity.c.n;
import com.keniu.security.commumgr.e;
import com.keniu.security.f;
import com.keniu.security.util.aa;
import com.keniu.security.util.av;
import java.net.URLEncoder;
import java.sql.Date;
import java.text.SimpleDateFormat;

public final class t
{
  public static final int a = 0;
  public static final int b = 1;
  public static final int c = 2;
  public static final int d = 3;
  public static final int e = 4;
  public static final int f = 5;
  public static final int g = 6;
  public static final int h = 7;
  private static final int i = 2;
  private static final int j = 1;
  private static final boolean k;
  private int l = 0;
  private String m = "";
  private String n = "";
  private long o = 0L;
  private boolean p = false;
  private String q = "";

  public t(int paramInt)
  {
    this.l = paramInt;
  }

  private static final String a(int paramInt)
  {
    String[] arrayOfString = { "Unknow", "PhoneNum", "Sms", "SmsSp", "SysCallLog", "SysSmsLog" };
    if (paramInt < arrayOfString.length);
    for (String str = arrayOfString[paramInt]; ; str = "???")
      return str;
  }

  private void a(n paramn)
  {
    String str1;
    String str2;
    if (paramn.c() == null)
    {
      str1 = "";
      if (paramn.b() != null)
        break label106;
      str2 = "";
      label20: this.m = paramn.d();
      this.n = (str1.replace("┇", "|") + "┇" + str2.replace("┇", "|"));
      this.o = paramn.e().getTime();
      if (paramn.a() != 1)
        break label114;
    }
    label106: label114: for (boolean bool = true; ; bool = false)
    {
      this.p = bool;
      return;
      str1 = paramn.c();
      break;
      str2 = paramn.b();
      break label20;
    }
  }

  private void a(String paramString)
  {
    this.q = paramString.trim();
  }

  private void a(String paramString1, String paramString2, long paramLong, boolean paramBoolean)
  {
    this.m = paramString1;
    this.n = paramString2;
    this.o = paramLong;
    this.p = paramBoolean;
  }

  public static String c()
  {
    return "param";
  }

  public final String a()
  {
    return this.m;
  }

  public final String a(Context paramContext)
  {
    String str1 = av.b(paramContext);
    String str2 = av.c(paramContext);
    e locale = new e(paramContext);
    String str3 = this.m;
    if (str3.startsWith("+86"))
      str3 = str3.substring(3);
    String str4 = new String(a.c(this.n.getBytes(), 11)).trim();
    String str5 = new String(a.c(this.q.getBytes(), 11)).trim();
    String str6 = "&num=" + URLEncoder.encode(str3);
    StringBuilder localStringBuilder1 = new StringBuilder().append("&ctent=");
    String str7;
    String str9;
    StringBuilder localStringBuilder2;
    if (locale.b())
    {
      str7 = URLEncoder.encode(str4);
      String str8 = str7;
      str9 = "&note=" + URLEncoder.encode(str5);
      localStringBuilder2 = new StringBuilder().append("type=").append(this.l).append(str6).append(str8).append("&time=").append(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Long.valueOf(this.o))).append("&drect=");
      if (!this.p)
        break label437;
    }
    label437: for (String str10 = "i"; ; str10 = "o")
    {
      String str11 = str10 + str9 + "&dver=" + 2 + "&imei=" + str1 + "&imsi=" + str2;
      long l1 = System.currentTimeMillis() / 3600000L;
      String str12 = aa.a(str11 + "." + l1);
      StringBuilder localStringBuilder3 = new StringBuilder().append("s=0500000001|");
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = Integer.valueOf(f.a.c);
      arrayOfObject[1] = Integer.valueOf(1);
      arrayOfObject[2] = str12;
      arrayOfObject[3] = str11;
      return String.format("idx=%d&verx=%d&check=%s&%s", arrayOfObject).replace("|", "").replace("&", "|").replace(" ", "%20");
      str7 = "";
      break;
    }
  }

  public final void a(j paramj)
  {
    this.m = paramj.d();
    if (paramj.f() != 2);
    for (boolean bool = true; ; bool = false)
    {
      this.p = bool;
      this.n = "";
      this.o = paramj.c();
      return;
    }
  }

  public final void a(l paraml)
  {
    this.m = paraml.b();
    this.n = paraml.c();
    this.o = paraml.d();
    if (paraml.f() != 2);
    for (boolean bool = true; ; bool = false)
    {
      this.p = bool;
      return;
    }
  }

  public final void a(String paramString1, String paramString2)
  {
    this.m = paramString1;
    this.q = paramString2.trim();
    this.o = System.currentTimeMillis();
  }

  public final String b(Context paramContext)
  {
    return "param" + "=" + a(paramContext);
  }

  public final boolean b()
  {
    int[] arrayOfInt = { 2, 3, 5, 7 };
    int i1 = 0;
    if (i1 < arrayOfInt.length)
      if (this.l != arrayOfInt[i1]);
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      i1++;
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.commumgr.a.t
 * JD-Core Version:    0.6.2
 */