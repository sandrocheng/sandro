package com.avast.android.mobilesecurity.app.account;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.database.Cursor;
import android.net.Uri;
import com.avast.android.generic.internet.c.a.ad;
import com.avast.android.generic.internet.c.a.ae;
import com.avast.android.generic.internet.c.a.ag;
import com.avast.android.generic.internet.c.a.ah;
import com.avast.android.generic.internet.c.a.aj;
import com.avast.android.generic.internet.c.a.ak;
import com.avast.android.generic.internet.c.a.am;
import com.avast.android.generic.internet.c.a.an;
import com.avast.android.generic.internet.c.a.ap;
import com.avast.android.generic.internet.c.a.aq;
import com.avast.android.generic.internet.c.a.as;
import com.avast.android.generic.internet.c.a.at;
import com.avast.android.generic.internet.c.a.av;
import com.avast.android.generic.internet.c.a.ax;
import com.avast.android.generic.internet.c.a.az;
import com.avast.android.generic.util.e;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.n;
import com.avast.android.mobilesecurity.service.UpdateService;
import com.avast.android.mobilesecurity.t;
import java.io.IOException;

public class c
{
  private final byte a = 10;
  private final String b = "AMS2";
  private final long c = 1L;
  private final long d = 65536L;
  private final long e = 131072L;
  private final long f = 262144L;
  private com.avast.android.generic.internet.c.c g;
  private t h;
  private Context i;

  public c(com.avast.android.generic.internet.c.c paramc, t paramt, Context paramContext)
  {
    this.g = paramc;
    this.h = paramt;
    this.i = paramContext;
  }

  private void a(an paraman)
  {
    az[] arrayOfaz = az.values();
    int j = arrayOfaz.length;
    int k = 0;
    ak localak;
    int n;
    label77: av localav;
    int i2;
    int i1;
    if (k < j)
    {
      az localaz = arrayOfaz[k];
      m.b("AuidInfoSender", "Creating AntivirusActivity message for time period: " + localaz.name());
      localak = aj.d();
      localak.a(localaz);
      av[] arrayOfav = av.values();
      int m = arrayOfav.length;
      n = 0;
      if (n < m)
      {
        localav = arrayOfav[n];
        Uri localUri = com.avast.android.mobilesecurity.g.a(localaz);
        Cursor localCursor = this.i.getContentResolver().query(localUri, null, "scan_type=" + localav.a(), null, null);
        if (localCursor == null)
          break label317;
        if (!localCursor.moveToFirst())
          break label308;
        i2 = localCursor.getInt(localCursor.getColumnIndex("infected"));
        i1 = localCursor.getInt(localCursor.getColumnIndex("scanned"));
        label189: localCursor.close();
      }
    }
    while (true)
    {
      m.b("AuidInfoSender", "Creating InfectionCounts message for scan type: " + localav.name() + ", infected: " + i2 + ", scanned: " + i1);
      aq localaq = ap.h();
      localaq.a(localav);
      localaq.b(i2);
      localaq.a(i1);
      localak.a(localaq.c());
      n++;
      break label77;
      paraman.a(localak.c());
      k++;
      break;
      return;
      label308: i1 = 0;
      i2 = 0;
      break label189;
      label317: i1 = 0;
      i2 = 0;
    }
  }

  private am b()
  {
    an localan = am.x();
    localan.a(c());
    localan.a(e());
    localan.c(e());
    localan.a(f());
    localan.b(g());
    localan.d(g());
    localan.a(this.h.p());
    localan.b(h());
    localan.b(this.h.aC());
    localan.c(this.h.X());
    Object[] arrayOfObject = new Object[6];
    arrayOfObject[0] = localan.e();
    arrayOfObject[1] = Integer.valueOf(localan.f());
    arrayOfObject[2] = Long.valueOf(localan.k());
    arrayOfObject[3] = Integer.valueOf(localan.l());
    arrayOfObject[4] = Boolean.valueOf(localan.m());
    arrayOfObject[5] = Boolean.valueOf(localan.n());
    m.b("AuidInfoSender", String.format("Creating AntivirusStatus message, security status: %s, program version: %d, build number: %d, definitions version: %d, community iq: %s, firawall: %s", arrayOfObject));
    a(localan);
    b(localan);
    return localan.c();
  }

  private void b(an paraman)
  {
    Cursor localCursor = this.i.getContentResolver().query(n.a(), null, null, null, null);
    String str1;
    String str2;
    int i2;
    String str3;
    if (localCursor != null)
      if (localCursor.moveToFirst())
      {
        int j = localCursor.getColumnIndex("date");
        int k = localCursor.getColumnIndex("uri");
        int m = localCursor.getColumnIndex("virus_name");
        int n = localCursor.getColumnIndex("scan_type");
        str1 = localCursor.getString(k);
        if (str1 == null)
          str1 = "";
        str2 = localCursor.getString(m);
        if (str2 == null)
          str2 = "";
        int i1 = str2.indexOf('|');
        if (i1 > 0)
          str2 = str2.substring(0, i1);
        i2 = localCursor.getInt(j);
        int i3 = localCursor.getInt(n);
        str3 = "";
        switch (d.a[av.a(i3).ordinal()])
        {
        default:
        case 1:
        case 2:
        }
      }
    while (true)
    {
      at localat = as.j();
      localat.a(com.google.a.c.a(str1));
      localat.b(com.google.a.c.a(str2));
      localat.a(i2);
      localat.c(com.google.a.c.a(str3));
      m.b("AuidInfoSender", "Creating LastDetectedViruses message for uri: " + str1 + ", what: " + str2 + ", when: " + i2 + ", where: " + str3);
      paraman.a(localat.c());
      if (localCursor.moveToNext())
        break;
      localCursor.close();
      return;
      str3 = this.i.getString(2131493354);
      continue;
      str3 = this.i.getString(2131493604);
    }
  }

  private ax c()
  {
    boolean bool = UpdateService.f(this.i);
    ax localax;
    if (i())
      localax = ax.d;
    while (true)
    {
      return localax;
      if (bool)
        localax = ax.c;
      else
        localax = ax.b;
    }
  }

  private byte[] d()
  {
    return new byte[] { 0, 10, 0, 0 };
  }

  private int e()
  {
    PackageManager localPackageManager = this.i.getPackageManager();
    try
    {
      PackageInfo localPackageInfo = localPackageManager.getPackageInfo(this.i.getPackageName(), 0);
      String[] arrayOfString = localPackageInfo.versionName.split("\\.");
      int k = arrayOfString.length;
      j = 0;
      if (k == 3)
        j = 0 + (Integer.valueOf(arrayOfString[0]).intValue() << 24) + (Integer.valueOf(arrayOfString[1]).intValue() << 16) + Integer.valueOf(arrayOfString[2]).intValue();
      return j;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        int j = 0;
    }
  }

  private int f()
  {
    int j = 0;
    PackageManager localPackageManager = this.i.getPackageManager();
    try
    {
      j = localPackageManager.getPackageInfo(this.i.getPackageName(), 0).versionCode;
      label26: return j;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      break label26;
    }
  }

  // ERROR //
  private int g()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 50	com/avast/android/mobilesecurity/app/account/c:i	Landroid/content/Context;
    //   4: aconst_null
    //   5: invokestatic 418	com/avast/android/mobilesecurity/engine/i:a	(Landroid/content/Context;Ljava/lang/Integer;)Lcom/avast/android/mobilesecurity/engine/al;
    //   8: astore_1
    //   9: iconst_0
    //   10: istore_2
    //   11: aload_1
    //   12: ifnull +106 -> 118
    //   15: aload_1
    //   16: getfield 422	com/avast/android/mobilesecurity/engine/al:a	Ljava/lang/String;
    //   19: ldc_w 424
    //   22: invokevirtual 401	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   25: astore_3
    //   26: aload_3
    //   27: arraylength
    //   28: istore 4
    //   30: iconst_0
    //   31: istore_2
    //   32: iload 4
    //   34: iconst_2
    //   35: if_icmpne +83 -> 118
    //   38: aload_3
    //   39: iconst_0
    //   40: aaload
    //   41: invokestatic 429	com/avast/android/generic/util/e:a	(Ljava/lang/String;)[B
    //   44: astore 7
    //   46: aload 7
    //   48: arraylength
    //   49: istore 8
    //   51: iconst_0
    //   52: istore_2
    //   53: iload 8
    //   55: iconst_3
    //   56: if_icmpne +62 -> 118
    //   59: aload 7
    //   61: iconst_0
    //   62: baload
    //   63: istore 9
    //   65: iconst_0
    //   66: iload 9
    //   68: bipush 24
    //   70: ishl
    //   71: ior
    //   72: istore 10
    //   74: iload 10
    //   76: aload 7
    //   78: iconst_1
    //   79: baload
    //   80: bipush 16
    //   82: ishl
    //   83: ior
    //   84: istore 10
    //   86: iload 10
    //   88: aload 7
    //   90: iconst_2
    //   91: baload
    //   92: bipush 8
    //   94: ishl
    //   95: ior
    //   96: istore 10
    //   98: aload_3
    //   99: iconst_1
    //   100: aaload
    //   101: invokestatic 404	java/lang/Integer:valueOf	(Ljava/lang/String;)Ljava/lang/Integer;
    //   104: invokevirtual 407	java/lang/Integer:intValue	()I
    //   107: istore 12
    //   109: iload 10
    //   111: iload 12
    //   113: bipush 15
    //   115: iand
    //   116: ior
    //   117: istore_2
    //   118: iload_2
    //   119: ireturn
    //   120: astore 5
    //   122: ldc 59
    //   124: ldc_w 431
    //   127: aload 5
    //   129: invokestatic 434	com/avast/android/generic/util/m:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   132: pop
    //   133: goto -15 -> 118
    //   136: astore 11
    //   138: iload 10
    //   140: istore_2
    //   141: aload 11
    //   143: astore 5
    //   145: goto -23 -> 122
    //
    // Exception table:
    //   from	to	target	type
    //   38	65	120	java/io/IOException
    //   74	109	136	java/io/IOException
  }

  private long h()
  {
    long l = 0L;
    if (!this.h.S())
      l = 1L | (l | 0x40000);
    if (!this.h.ag())
      l = 1L | (l | 0x10000);
    if (!this.h.aj())
      l = 1L | (l | 0x20000);
    return l;
  }

  private boolean i()
  {
    if ((!this.h.S()) || (!this.h.ag()) || (!this.h.aj()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private ag j()
  {
    ah localah = ag.d();
    IntentFilter localIntentFilter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
    Intent localIntent = this.i.registerReceiver(null, localIntentFilter);
    if (localIntent != null)
    {
      int j = localIntent.getIntExtra("level", -1);
      int k = localIntent.getIntExtra("scale", -1);
      if ((j != -1) && (k != -1))
        localah.a(j / k);
    }
    return localah.c();
  }

  public boolean a()
  {
    try
    {
      ae localae = ad.P();
      localae.a(com.google.a.c.a(this.h.x()));
      localae.c(com.google.a.c.a(d()));
      localae.d(com.google.a.c.a("AMS2"));
      localae.a(this.h.t() / 1000L);
      try
      {
        localae.e(com.google.a.c.a(e.a(this.h.r())));
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = localae.e().b();
        arrayOfObject[1] = Long.valueOf(localae.f());
        m.b("AuidInfoSender", String.format("Creating AUIDinfo message for AUID: %s, last update: %d", arrayOfObject));
        localae.a(b());
        localae.a(j());
        return this.g.a(localae.c());
      }
      catch (IOException localIOException)
      {
        while (true)
          m.a("AuidInfoSender", "Could not encode GUID.", localIOException);
      }
    }
    catch (com.avast.android.generic.internet.c.g localg)
    {
      throw localg;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      throw localIllegalStateException;
    }
    catch (Exception localException)
    {
      throw new com.avast.android.generic.internet.c.g(localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.account.c
 * JD-Core Version:    0.6.2
 */