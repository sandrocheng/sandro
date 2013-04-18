package com.ijinshan.kinghelper.firewall.core;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.widget.Toast;
import com.keniu.security.e;
import com.keniu.security.f.ab;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import king.org.apache.commons.codec.digest.DigestUtils;

public final class i
{
  public static final int a = 0;
  public static final int b = 1;
  public static final int c = 2;
  public static final int d = 3;
  public static final int e = 4;
  public static final int f = 5;
  public static final int g = 6;
  public static final int h = 9;
  public static final int i = 10;
  public static final int j = 12;
  public static final int k = 13;
  public static final int l = 14;
  public static final int m = 15;
  public static final int n = 16;
  public static final int o = 17;
  public static final int p = 18;
  public static final int q = 19;
  public static final int r = 20;
  public static final int s = 21;
  protected static final boolean t = true;
  protected static final String u = "FirewallReport";
  private static final String v = "http://mosecurity.stat.jxphone.com/spdc/?param=";

  public static final void a(Context paramContext, String paramString1, String paramString2, int paramInt, String paramString3)
  {
    if (paramString3 != null);
    for (String str = paramString3.toString(); ; str = "")
    {
      new j(c(paramContext, paramString1, paramString2, paramInt, str)).start();
      return;
    }
  }

  public static boolean a(Context paramContext, long paramLong)
  {
    com.ijinshan.kinghelper.firewall.a.a.a(paramContext);
    Cursor localCursor = com.ijinshan.kinghelper.firewall.a.a.d((int)paramLong);
    if (localCursor != null)
      if (localCursor.moveToNext())
      {
        if (com.ijinshan.kinghelper.a.j.c(paramContext))
          Toast.makeText(paramContext, 2131427632, 0).show();
      }
      else
        localCursor.close();
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      Toast.makeText(paramContext, 2131427633, 0).show();
      break;
    }
  }

  private static boolean a(Context paramContext, Uri paramUri)
  {
    Cursor localCursor = paramContext.getContentResolver().query(paramUri, null, null, null, null);
    if (localCursor != null)
      if (localCursor.moveToNext())
      {
        b(paramContext, localCursor.getString(localCursor.getColumnIndex("address")), localCursor.getString(localCursor.getColumnIndex("body")), 5, "");
        if (com.ijinshan.kinghelper.a.j.c(paramContext))
          Toast.makeText(paramContext, 2131427632, 0).show();
      }
      else
      {
        localCursor.close();
      }
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      Toast.makeText(paramContext, 2131427633, 0).show();
      break;
    }
  }

  public static final void b(Context paramContext, String paramString1, String paramString2, int paramInt, String paramString3)
  {
    if (paramString3 != null);
    for (String str = paramString3.toString(); ; str = "")
    {
      new k(c(paramContext, paramString1, paramString2, paramInt, str)).start();
      return;
    }
  }

  public static boolean b(Context paramContext, long paramLong)
  {
    com.ijinshan.kinghelper.firewall.a.a.a(paramContext);
    Cursor localCursor = com.ijinshan.kinghelper.firewall.a.a.c((int)paramLong);
    int i2;
    boolean bool;
    if (localCursor != null)
      if (localCursor.moveToNext())
      {
        String str = localCursor.getString(localCursor.getColumnIndex("firewall_log_description"));
        if (str != null)
        {
          String[] arrayOfString = paramContext.getResources().getStringArray(2131165184);
          int i1 = arrayOfString.length;
          i2 = 0;
          if (i2 < i1)
            if (arrayOfString[i2].equals(str))
              bool = true;
        }
      }
    while (true)
    {
      return bool;
      i2++;
      break;
      b(paramContext, localCursor.getString(localCursor.getColumnIndex("address")), localCursor.getString(localCursor.getColumnIndex("body")), 19, "");
      if (com.ijinshan.kinghelper.a.j.c(paramContext))
        Toast.makeText(paramContext, 2131427634, 0).show();
      while (true)
      {
        localCursor.close();
        bool = true;
        break;
        Toast.makeText(paramContext, 2131427635, 0).show();
      }
      bool = false;
    }
  }

  private static boolean b(Context paramContext, Uri paramUri)
  {
    Cursor localCursor = paramContext.getContentResolver().query(paramUri, null, null, null, null);
    if (localCursor != null)
      if (localCursor.moveToNext())
      {
        b(paramContext, localCursor.getString(localCursor.getColumnIndex("number")), null, 4, "");
        if (com.ijinshan.kinghelper.a.j.c(paramContext))
          Toast.makeText(paramContext, 2131427632, 0).show();
      }
      else
      {
        localCursor.close();
      }
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      Toast.makeText(paramContext, 2131427633, 0).show();
      break;
    }
  }

  private static String c(Context paramContext, String paramString1, String paramString2, int paramInt, String paramString3)
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    String str1 = com.ijinshan.kinghelper.a.i.a(paramString1);
    String str2 = ab.a().n();
    String str3 = "";
    if (!TextUtils.isEmpty(paramString3))
      str3 = new String(com.ijinshan.kinghelper.a.a.a(paramString3.getBytes(), 11)).trim();
    String str4 = "";
    if (!TextUtils.isEmpty(paramString2))
      str4 = new String(com.ijinshan.kinghelper.a.a.a(paramString2.getBytes(), 11)).trim();
    localStringBuilder1.append("type=").append(String.valueOf(paramInt));
    localStringBuilder1.append("&num=").append(URLEncoder.encode(str1));
    localStringBuilder1.append("&ctent=").append(URLEncoder.encode(str4));
    localStringBuilder1.append("&time=").append(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(System.currentTimeMillis())));
    localStringBuilder1.append("&drect=").append("i");
    localStringBuilder1.append("&note=").append(URLEncoder.encode(str3));
    localStringBuilder1.append("&dver=2");
    localStringBuilder1.append("&imei=").append(com.ijinshan.kinghelper.a.j.a(paramContext));
    localStringBuilder1.append("&imsi=").append(String.valueOf(com.ijinshan.kinghelper.a.j.b(paramContext)));
    long l1 = System.currentTimeMillis() / 3600000L;
    String str5 = DigestUtils.md5Hex(localStringBuilder1.toString() + "." + l1).substring(3, 11);
    StringBuilder localStringBuilder2 = new StringBuilder();
    localStringBuilder2.append("s=0500000001|");
    localStringBuilder2.append("idx=1&verx=1");
    localStringBuilder2.append("&check=").append(str5);
    localStringBuilder2.append("&").append(localStringBuilder1.toString());
    localStringBuilder2.append("&ver=").append(e.a(paramContext));
    localStringBuilder2.append("&verlib=").append(str2);
    return "http://mosecurity.stat.jxphone.com/spdc/?param=" + localStringBuilder2.toString().replaceAll("|", "").replaceAll("&", "|").replaceAll(" ", "%20");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.core.i
 * JD-Core Version:    0.6.2
 */