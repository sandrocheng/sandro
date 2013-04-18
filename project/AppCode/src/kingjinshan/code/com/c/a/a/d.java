package com.c.a.a;

import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Random;
import java.util.Vector;
import java.util.zip.DeflaterOutputStream;

public final class d
{
  private static long a = 15000L;
  private static long b = 5000L;
  private static long c = 60000L;
  private static short d = 1000;
  private static d v;
  private boolean e;
  private int f;
  private long g;
  private Context h;
  private Hashtable i;
  private Location j;
  private long k;
  private TelephonyManager l;
  private WifiManager m;
  private String n;
  private String o;
  private String p;
  private int q;
  private int r;
  private Vector s = new Vector();
  private Hashtable t = new Hashtable();
  private i u = new i();
  private Handler w = new m(this);
  private e x = null;

  private d(Context paramContext)
  {
    this.h = paramContext;
    this.e = false;
    this.j = null;
    this.k = 0L;
    this.q = 0;
    this.i = new Hashtable();
  }

  public static int a()
  {
    return 2;
  }

  public static d a(Context paramContext)
  {
    if (v == null)
      v = new d(paramContext);
    v.h = paramContext;
    return v;
  }

  private static String a(String paramString, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      localStringBuilder.append(g("\b\026goLOMdv\004\005\016vl\005N\017ro\024\001\020=|\031\rMcp\005\t\026zp\030O]t}KPP5k\006]S 9\025\b_fk\020MZ5v\025\024_!9\035\005\033.")).append(URLEncoder.encode(paramString, g("\025\026u2N"))).append("&idx=").append(paramInt);
      label39: return localStringBuilder.toString();
    }
    catch (Exception localException)
    {
      break label39;
    }
  }

  public static boolean a(Criteria paramCriteria)
  {
    boolean bool;
    if ((paramCriteria.getAccuracy() != 0) && (paramCriteria.getAccuracy() < 2))
      bool = false;
    while (true)
    {
      return bool;
      int i1 = paramCriteria.getPowerRequirement();
      if ((i1 != 0) && (i1 <= 0))
      {
        bool = false;
      }
      else
      {
        paramCriteria.isAltitudeRequired();
        if (paramCriteria.isSpeedRequired())
          bool = false;
        else if (paramCriteria.isBearingRequired())
          bool = false;
        else
          bool = true;
      }
    }
  }

  public static String b()
  {
    return "cell";
  }

  public static int c()
  {
    return 1;
  }

  private static String d(String paramString)
  {
    Object localObject = "";
    if ((paramString != null) && (paramString.length() > 0));
    try
    {
      int i1 = paramString.indexOf("|");
      if (i1 > 0)
      {
        String str = paramString.substring(0, i1);
        localObject = str;
      }
      label38: return localObject;
    }
    catch (Exception localException)
    {
      break label38;
    }
  }

  public static boolean d()
  {
    return false;
  }

  private void e(String paramString)
  {
    while (true)
    {
      try
      {
        boolean bool = h.a(paramString);
        if (!bool)
          return;
        int i1 = this.s.size();
        int i2;
        ag localag;
        if (i1 > 0)
        {
          if (paramString.equals(((h)this.s.get(i1 - 1)).b))
            continue;
          break label211;
          if (i2 >= 0)
          {
            ((h)this.s.get(i2)).a.d();
            this.s.remove(i2);
            i2--;
            continue;
          }
        }
      }
      catch (Exception localException1)
      {
        try
        {
          localag = new ag(this.h);
          this.q = (1 + this.q);
          localag.a(a(paramString, this.q));
          localag.a(this.q);
          localag.a(new l(this));
          localag.a(new k(this, paramString));
          this.s.add(new h(localag, paramString));
          localag.a(new Object[0]);
        }
        catch (Exception localException2)
        {
        }
        continue;
      }
      finally
      {
      }
      label211: i2 = i1 - 1;
    }
  }

  public static boolean e()
  {
    return true;
  }

  private static Location f(String paramString)
  {
    Object localObject = null;
    if (paramString != null);
    try
    {
      Vector localVector = o.a(o.a(paramString, "|"));
      int i1 = localVector.size();
      localObject = null;
      if (i1 > 1)
        arrayOfString = (String[])localVector.get(1);
    }
    catch (Exception localException1)
    {
      try
      {
        localLocation = new Location("cell");
      }
      catch (NumberFormatException localException1)
      {
        try
        {
          String[] arrayOfString;
          localLocation.setTime(System.currentTimeMillis());
          String str1 = arrayOfString[0];
          String str2 = arrayOfString[1];
          int i2 = str1.indexOf(",");
          localLocation.setLongitude(o.a(str1.substring(0, i2)) / 100000.0D);
          localLocation.setLatitude(o.a(str1.substring(i2 + 1)) / 100000.0D);
          localLocation.setAccuracy(Float.parseFloat(str2));
          if (arrayOfString.length > 2)
          {
            Bundle localBundle = new Bundle();
            localBundle.putString("city", arrayOfString[2]);
            if (arrayOfString.length > 3)
              localBundle.putString("address", arrayOfString[3]);
            localLocation.setExtras(localBundle);
          }
          for (localObject = localLocation; ; localObject = null)
          {
            return localObject;
            localException1 = localException1;
          }
        }
        catch (Exception localException2)
        {
          while (true)
          {
            localObject = localLocation;
            continue;
            localNumberFormatException2 = localNumberFormatException2;
            localObject = null;
          }
        }
        catch (NumberFormatException localNumberFormatException1)
        {
          while (true)
          {
            Location localLocation;
            localObject = localLocation;
          }
        }
      }
    }
  }

  public static boolean f()
  {
    return true;
  }

  private static String g(String paramString)
  {
    char[] arrayOfChar = paramString.toCharArray();
    int i1 = arrayOfChar.length;
    int i2 = 0;
    if (i2 < i1)
    {
      int i3;
      switch (i2 % 5)
      {
      default:
        i3 = 118;
      case 0:
      case 1:
      case 2:
      case 3:
      }
      while (true)
      {
        arrayOfChar[i2] = ((char)(i3 ^ arrayOfChar[i2]));
        i2++;
        break;
        i3 = 96;
        continue;
        i3 = 98;
        continue;
        i3 = 19;
        continue;
        i3 = 31;
      }
    }
    return new String(arrayOfChar);
  }

  public static boolean g()
  {
    return false;
  }

  public static boolean h()
  {
    return true;
  }

  private static byte[] h(String paramString)
  {
    try
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      DeflaterOutputStream localDeflaterOutputStream = new DeflaterOutputStream(localByteArrayOutputStream);
      localDeflaterOutputStream.write(paramString.getBytes());
      localDeflaterOutputStream.close();
      try
      {
        localByteArrayOutputStream.close();
        label33: byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
        arrayOfByte1 = arrayOfByte2;
        return arrayOfByte1;
      }
      catch (IOException localIOException)
      {
        break label33;
      }
    }
    catch (Exception localException)
    {
      while (true)
        byte[] arrayOfByte1 = null;
    }
  }

  public static boolean i()
  {
    return false;
  }

  public static boolean j()
  {
    return false;
  }

  private String p()
  {
    try
    {
      r localr = r.a(this.h);
      if (localr.b());
      try
      {
        localr.wait(1000L);
        return s.a();
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        new StringBuilder().append("Exception: ").append(localException.getMessage()).toString();
        p.a();
      }
    }
  }

  private void q()
  {
    try
    {
      if (this.m.isWifiEnabled())
        this.m.startScan();
      label18: return;
    }
    catch (Exception localException)
    {
      break label18;
    }
  }

  // ERROR //
  private String r()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 87	com/c/a/a/d:x	Lcom/c/a/a/e;
    //   4: ifnull +40 -> 44
    //   7: aload_0
    //   8: getfield 87	com/c/a/a/d:x	Lcom/c/a/a/e;
    //   11: getfield 345	com/c/a/a/e:a	Landroid/os/Handler;
    //   14: ifnull +30 -> 44
    //   17: aload_0
    //   18: getfield 87	com/c/a/a/d:x	Lcom/c/a/a/e;
    //   21: getfield 345	com/c/a/a/e:a	Landroid/os/Handler;
    //   24: iconst_2
    //   25: invokevirtual 351	android/os/Handler:removeMessages	(I)V
    //   28: aload_0
    //   29: getfield 87	com/c/a/a/d:x	Lcom/c/a/a/e;
    //   32: getfield 345	com/c/a/a/e:a	Landroid/os/Handler;
    //   35: iconst_2
    //   36: getstatic 59	com/c/a/a/d:d	S
    //   39: i2l
    //   40: invokevirtual 357	android/os/Handler:sendEmptyMessageDelayed	(IJ)Z
    //   43: pop
    //   44: new 70	java/util/Hashtable
    //   47: dup
    //   48: invokespecial 71	java/util/Hashtable:<init>	()V
    //   51: astore_1
    //   52: new 122	java/lang/StringBuilder
    //   55: dup
    //   56: invokespecial 123	java/lang/StringBuilder:<init>	()V
    //   59: astore_2
    //   60: aload_0
    //   61: getfield 106	com/c/a/a/d:m	Landroid/net/wifi/WifiManager;
    //   64: invokevirtual 580	android/net/wifi/WifiManager:getScanResults	()Ljava/util/List;
    //   67: astore 4
    //   69: aload 4
    //   71: ifnull +311 -> 382
    //   74: aload 4
    //   76: aload_0
    //   77: getfield 78	com/c/a/a/d:u	Lcom/c/a/a/i;
    //   80: invokestatic 586	java/util/Collections:sort	(Ljava/util/List;Ljava/util/Comparator;)V
    //   83: aload 4
    //   85: invokeinterface 240 1 0
    //   90: astore 5
    //   92: aload 5
    //   94: invokeinterface 246 1 0
    //   99: ifeq +283 -> 382
    //   102: aload 5
    //   104: invokeinterface 250 1 0
    //   109: checkcast 588	android/net/wifi/ScanResult
    //   112: astore 6
    //   114: aload_2
    //   115: aload 6
    //   117: getfield 591	android/net/wifi/ScanResult:BSSID	Ljava/lang/String;
    //   120: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   123: ldc_w 265
    //   126: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   129: pop
    //   130: ldc_w 329
    //   133: astore 8
    //   135: aload 6
    //   137: getfield 594	android/net/wifi/ScanResult:SSID	Ljava/lang/String;
    //   140: invokestatic 596	com/c/a/a/d:h	(Ljava/lang/String;)[B
    //   143: astore 22
    //   145: aload 22
    //   147: ifnull +39 -> 186
    //   150: aload 22
    //   152: ldc_w 598
    //   155: invokestatic 603	com/c/a/a/c:a	([BLjava/lang/String;)Ljava/lang/String;
    //   158: astore 8
    //   160: aload 8
    //   162: ldc_w 605
    //   165: ldc_w 329
    //   168: invokevirtual 608	java/lang/String:replaceAll	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   171: ldc_w 610
    //   174: ldc_w 329
    //   177: invokevirtual 608	java/lang/String:replaceAll	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   180: astore 23
    //   182: aload 23
    //   184: astore 8
    //   186: aload_2
    //   187: aload 8
    //   189: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   192: ldc_w 265
    //   195: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   198: aload 6
    //   200: getfield 613	android/net/wifi/ScanResult:level	I
    //   203: invokevirtual 145	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   206: ldc_w 265
    //   209: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   212: aload 6
    //   214: getfield 616	android/net/wifi/ScanResult:frequency	I
    //   217: invokevirtual 145	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   220: ldc_w 265
    //   223: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   226: pop
    //   227: aload 6
    //   229: getfield 619	android/net/wifi/ScanResult:capabilities	Ljava/lang/String;
    //   232: invokestatic 625	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   235: ifeq +170 -> 405
    //   238: aload_2
    //   239: iconst_1
    //   240: invokevirtual 145	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   243: pop
    //   244: new 122	java/lang/StringBuilder
    //   247: dup
    //   248: invokespecial 123	java/lang/StringBuilder:<init>	()V
    //   251: aload 6
    //   253: getfield 591	android/net/wifi/ScanResult:BSSID	Ljava/lang/String;
    //   256: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   259: ldc_w 265
    //   262: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   265: aload 8
    //   267: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   270: invokevirtual 149	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   273: astore 12
    //   275: aload_0
    //   276: getfield 73	com/c/a/a/d:t	Ljava/util/Hashtable;
    //   279: aload 12
    //   281: invokevirtual 628	java/util/Hashtable:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   284: checkcast 630	com/c/a/a/j
    //   287: astore 13
    //   289: aload 13
    //   291: ifnull +123 -> 414
    //   294: aload 13
    //   296: getfield 632	com/c/a/a/j:a	I
    //   299: aload 6
    //   301: getfield 613	android/net/wifi/ScanResult:level	I
    //   304: if_icmpeq +150 -> 454
    //   307: aload 13
    //   309: aload 6
    //   311: getfield 613	android/net/wifi/ScanResult:level	I
    //   314: putfield 632	com/c/a/a/j:a	I
    //   317: aload 13
    //   319: invokestatic 278	android/os/SystemClock:elapsedRealtime	()J
    //   322: putfield 633	com/c/a/a/j:b	J
    //   325: aload 13
    //   327: astore 15
    //   329: aload_1
    //   330: aload 12
    //   332: aload 15
    //   334: invokevirtual 637	java/util/Hashtable:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   337: pop
    //   338: invokestatic 278	android/os/SystemClock:elapsedRealtime	()J
    //   341: aload 15
    //   343: getfield 633	com/c/a/a/j:b	J
    //   346: lsub
    //   347: ldc2_w 352
    //   350: ldiv
    //   351: lstore 17
    //   353: aload_2
    //   354: ldc_w 265
    //   357: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   360: lload 17
    //   362: invokevirtual 640	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   365: pop
    //   366: aload_2
    //   367: ldc_w 258
    //   370: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   373: pop
    //   374: goto -282 -> 92
    //   377: astore_3
    //   378: aload_3
    //   379: invokevirtual 268	java/lang/Exception:printStackTrace	()V
    //   382: aload_2
    //   383: invokevirtual 149	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   386: putstatic 375	com/c/a/a/s:w	Ljava/lang/String;
    //   389: aload_0
    //   390: getfield 73	com/c/a/a/d:t	Ljava/util/Hashtable;
    //   393: invokevirtual 643	java/util/Hashtable:clear	()V
    //   396: aload_0
    //   397: aload_1
    //   398: putfield 73	com/c/a/a/d:t	Ljava/util/Hashtable;
    //   401: getstatic 375	com/c/a/a/s:w	Ljava/lang/String;
    //   404: areturn
    //   405: aload_2
    //   406: iconst_0
    //   407: invokevirtual 145	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   410: pop
    //   411: goto -167 -> 244
    //   414: new 630	com/c/a/a/j
    //   417: dup
    //   418: iconst_0
    //   419: invokespecial 646	com/c/a/a/j:<init>	(B)V
    //   422: astore 14
    //   424: aload 14
    //   426: aload 6
    //   428: getfield 613	android/net/wifi/ScanResult:level	I
    //   431: putfield 632	com/c/a/a/j:a	I
    //   434: aload 14
    //   436: invokestatic 278	android/os/SystemClock:elapsedRealtime	()J
    //   439: putfield 633	com/c/a/a/j:b	J
    //   442: aload 14
    //   444: astore 15
    //   446: goto -117 -> 329
    //   449: astore 9
    //   451: goto -265 -> 186
    //   454: aload 13
    //   456: astore 15
    //   458: goto -129 -> 329
    //
    // Exception table:
    //   from	to	target	type
    //   60	135	377	java/lang/Exception
    //   186	374	377	java/lang/Exception
    //   405	442	377	java/lang/Exception
    //   135	182	449	java/lang/Exception
  }

  public final String a(LocationListener paramLocationListener)
  {
    String str;
    if ((paramLocationListener != null) && (this.i != null))
    {
      Random localRandom = new Random();
      str = "CELL_LISTENER_" + localRandom.nextInt();
      this.i.put(str, paramLocationListener);
    }
    while (true)
    {
      return str;
      str = null;
    }
  }

  public final void a(Location paramLocation)
  {
    new StringBuilder().append("location=").append(paramLocation).toString();
    p.a();
    if (this.i != null)
    {
      Enumeration localEnumeration = this.i.elements();
      while (localEnumeration.hasMoreElements())
      {
        LocationListener localLocationListener = (LocationListener)localEnumeration.nextElement();
        if (localLocationListener != null)
          try
          {
            localLocationListener.onLocationChanged(paramLocation);
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
          }
      }
    }
  }

  public final boolean a(String paramString)
  {
    if ((paramString == null) || (paramString.equals("")));
    for (boolean bool = false; ; bool = true)
    {
      return bool;
      if (this.i != null)
        this.i.remove(paramString);
    }
  }

  public final int k()
  {
    return this.f;
  }

  public final long l()
  {
    return this.g;
  }

  public final void m()
  {
    if (SystemClock.elapsedRealtime() - this.k > c)
    {
      this.j = null;
      this.n = null;
      this.o = null;
    }
    this.k = 0L;
    this.f = -1;
    if (!this.e)
    {
      this.e = true;
      if (this.i != null)
      {
        Enumeration localEnumeration = this.i.elements();
        while (localEnumeration.hasMoreElements())
        {
          LocationListener localLocationListener = (LocationListener)localEnumeration.nextElement();
          if (localLocationListener != null)
            try
            {
              localLocationListener.onProviderEnabled("cell");
            }
            catch (Exception localException2)
            {
              localException2.printStackTrace();
            }
        }
      }
      if (this.x != null)
        break label155;
      this.x = new e(this, "LocationService");
      this.x.start();
    }
    try
    {
      while (true)
      {
        r.a(this.h).a();
        label154: return;
        label155: if (this.x.a != null)
        {
          this.x.a.removeMessages(1);
          this.x.a.sendEmptyMessage(1);
        }
      }
    }
    catch (Exception localException1)
    {
      break label154;
    }
  }

  public final void n()
  {
    this.e = false;
    if ((this.x != null) && (this.x.a != null))
      this.x.a.removeMessages(1);
    if (this.i != null)
    {
      Enumeration localEnumeration = this.i.elements();
      while (localEnumeration.hasMoreElements())
      {
        LocationListener localLocationListener = (LocationListener)localEnumeration.nextElement();
        if (localLocationListener != null)
          try
          {
            localLocationListener.onProviderDisabled("cell");
          }
          catch (Exception localException2)
          {
            localException2.printStackTrace();
          }
      }
    }
    try
    {
      r.a(this.h).d();
      label103: return;
    }
    catch (Exception localException1)
    {
      break label103;
    }
  }

  public final void o()
  {
    if (this.i != null)
      this.i.clear();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.c.a.a.d
 * JD-Core Version:    0.6.2
 */