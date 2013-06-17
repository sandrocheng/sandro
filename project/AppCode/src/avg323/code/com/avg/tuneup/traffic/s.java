package com.avg.tuneup.traffic;

import android.app.AlarmManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.TrafficStats;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.format.Formatter;
import com.avg.a.d;
import com.avg.a.g;
import com.avg.toolkit.RecurringTasks.AlarmReceiver;
import com.avg.toolkit.f;
import com.avg.toolkit.f.a;
import com.avg.tuneup.j;
import com.avg.tuneup.traffic.widget.TrafficWidgetPlugin;
import com.avg.ui.general.o;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;

public class s
{
  public static final int[] a = { 30000, 60000, 300000, 900000, 1800000 };
  private static final String[] b = { "rmnet0", "pdp0", "ppp0", "rmnet_sdio0", "rmnet_sdio1", "rmnet_sdio2", "ppp1", "pdp_ip0", "rmnet1", "rmnet2", "rmnet3", "cdma_rmnet4" };
  private static s c = null;
  private static long[] e = { 0L, 0L };
  private v d;
  private Context f;
  private Boolean g = Boolean.valueOf(false);
  private boolean h = false;
  private ApplicationInfo i;

  private s(Context paramContext)
  {
    this.d = new v(paramContext, "tdb", null, 1);
    this.f = paramContext;
    this.g = Boolean.valueOf(false);
    this.h = o();
    this.i = new ApplicationInfo();
    this.i.uid = 1013;
    this.i.packageName = "android.process.media";
    this.i.name = paramContext.getString(g.traffic_media_streaming);
  }

  // ERROR //
  private long a(String paramString)
  {
    // Byte code:
    //   0: ldc2_w 126
    //   3: lstore_2
    //   4: aconst_null
    //   5: astore 4
    //   7: aload_0
    //   8: aload_1
    //   9: invokespecial 130	com/avg/tuneup/traffic/s:b	(Ljava/lang/String;)Ljava/io/RandomAccessFile;
    //   12: astore 4
    //   14: aload 4
    //   16: ifnull +41 -> 57
    //   19: aload 4
    //   21: invokevirtual 136	java/io/RandomAccessFile:readLine	()Ljava/lang/String;
    //   24: invokestatic 141	java/lang/Long:valueOf	(Ljava/lang/String;)Ljava/lang/Long;
    //   27: invokevirtual 145	java/lang/Long:longValue	()J
    //   30: lstore 10
    //   32: lload 10
    //   34: lstore_2
    //   35: aload 4
    //   37: ifnull +8 -> 45
    //   40: aload 4
    //   42: invokevirtual 148	java/io/RandomAccessFile:close	()V
    //   45: lload_2
    //   46: lreturn
    //   47: astore 12
    //   49: aload 12
    //   51: invokestatic 153	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   54: goto -9 -> 45
    //   57: aload 4
    //   59: ifnull -14 -> 45
    //   62: aload 4
    //   64: invokevirtual 148	java/io/RandomAccessFile:close	()V
    //   67: goto -22 -> 45
    //   70: astore 9
    //   72: aload 9
    //   74: invokestatic 153	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   77: goto -32 -> 45
    //   80: astore 7
    //   82: aload 4
    //   84: ifnull -39 -> 45
    //   87: aload 4
    //   89: invokevirtual 148	java/io/RandomAccessFile:close	()V
    //   92: goto -47 -> 45
    //   95: astore 8
    //   97: aload 8
    //   99: invokestatic 153	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   102: goto -57 -> 45
    //   105: astore 5
    //   107: aload 4
    //   109: ifnull +8 -> 117
    //   112: aload 4
    //   114: invokevirtual 148	java/io/RandomAccessFile:close	()V
    //   117: aload 5
    //   119: athrow
    //   120: astore 6
    //   122: aload 6
    //   124: invokestatic 153	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   127: goto -10 -> 117
    //
    // Exception table:
    //   from	to	target	type
    //   40	45	47	java/io/IOException
    //   62	67	70	java/io/IOException
    //   7	32	80	java/lang/Exception
    //   87	92	95	java/io/IOException
    //   7	32	105	finally
    //   112	117	120	java/io/IOException
  }

  public static s a(Context paramContext)
  {
    if (c == null);
    try
    {
      if (c == null)
        c = new s(paramContext);
      return c;
    }
    finally
    {
    }
  }

  private void a(double[] paramArrayOfDouble, boolean paramBoolean)
  {
    DecimalFormat localDecimalFormat = new DecimalFormat("#.#");
    if (paramArrayOfDouble[0] >= 100.0D)
      localDecimalFormat.applyPattern("#");
    String str1 = this.f.getString(g.traffic_network_usage).replace("[number]", localDecimalFormat.format(paramArrayOfDouble[0]));
    String str2 = str1 + " " + this.f.getString(g.warning);
    int j = g();
    String str3;
    if (j <= 0)
      str3 = this.f.getString(g.traffic_network_usage_notification_midnight).replace("[used]", Formatter.formatFileSize(this.f, ()paramArrayOfDouble[1]));
    while (true)
    {
      String str4 = str3.replace("[total]", Formatter.formatFileSize(this.f, j.c())).replace("[number]", j + "");
      Bundle localBundle = new Bundle();
      String str5;
      if (o.c())
      {
        str5 = "com.antivirus.ui.tablet.DualPaneActivity";
        localBundle.putInt("EXTRA_GOTO", 3);
      }
      try
      {
        while (true)
        {
          Class localClass = Class.forName(str5);
          localObject = localClass;
          Intent localIntent = new Intent(this.f, (Class)localObject);
          localIntent.setAction("antivirus.notification.DATA_USAGE");
          localIntent.putExtras(localBundle);
          localIntent.setFlags(608305152);
          localIntent.putExtra("from_notification", 1);
          PendingIntent localPendingIntent = PendingIntent.getActivity(this.f, 0, localIntent, 0);
          localNotification = new Notification(d.notification_traffic_warning, str2, 0L);
          localNotification.defaults = (0x4 | localNotification.defaults);
          if (!paramBoolean)
            break label454;
          localNotification.flags = 10;
          localNotification.setLatestEventInfo(this.f, str2, str4, localPendingIntent);
          ((NotificationManager)this.f.getSystemService("notification")).notify(12, localNotification);
          if ((paramArrayOfDouble[0] < j.j()) || (paramArrayOfDouble[0] >= 100.0D))
            break label464;
          j.f(1);
          return;
          if (j == 1)
          {
            str3 = this.f.getString(g.traffic_network_usage_notification_day).replace("[used]", Formatter.formatFileSize(this.f, ()paramArrayOfDouble[1]));
            break;
          }
          str3 = this.f.getString(g.traffic_network_usage_notification).replace("[used]", Formatter.formatFileSize(this.f, ()paramArrayOfDouble[1]));
          break;
          str5 = "com.antivirus.ui.performance.traffic.AvTrafficMeterActivity";
        }
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        while (true)
        {
          Notification localNotification;
          Object localObject = TrafficMeterActivity.class;
          continue;
          label454: localNotification.flags = 16;
          continue;
          label464: if (paramArrayOfDouble[0] >= 100.0D)
            j.f(2);
        }
      }
    }
  }

  private boolean a(double paramDouble, boolean paramBoolean)
  {
    int j = j.j();
    int k = j.l();
    if (((paramDouble >= j) && (paramDouble < 100.0D) && (k == 0)) || ((paramDouble >= 100.0D) && (k != 2)) || ((paramDouble >= j) && (paramBoolean)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private RandomAccessFile b(String paramString)
  {
    File localFile = new File(paramString);
    RandomAccessFile localRandomAccessFile;
    if ((!localFile.exists()) || (!localFile.canRead()))
      localRandomAccessFile = null;
    while (true)
    {
      return localRandomAccessFile;
      try
      {
        localRandomAccessFile = new RandomAccessFile(localFile, "r");
      }
      catch (IOException localIOException)
      {
        a.a(localIOException);
        localRandomAccessFile = null;
      }
    }
  }

  // ERROR //
  private void b(boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aload_0
    //   3: invokevirtual 349	com/avg/tuneup/traffic/s:d	()Ljava/util/List;
    //   6: astore_3
    //   7: aconst_null
    //   8: astore 4
    //   10: aload_0
    //   11: getfield 85	com/avg/tuneup/traffic/s:d	Lcom/avg/tuneup/traffic/v;
    //   14: invokevirtual 353	com/avg/tuneup/traffic/v:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   17: astore 10
    //   19: aload 10
    //   21: astore 6
    //   23: aload 6
    //   25: ifnull +7 -> 32
    //   28: aload_3
    //   29: ifnonnull +35 -> 64
    //   32: aload 6
    //   34: ifnonnull +9 -> 43
    //   37: ldc_w 355
    //   40: invokestatic 357	com/avg/toolkit/f/a:a	(Ljava/lang/String;)V
    //   43: aload_3
    //   44: ifnonnull +9 -> 53
    //   47: ldc_w 359
    //   50: invokestatic 357	com/avg/toolkit/f/a:a	(Ljava/lang/String;)V
    //   53: aload 6
    //   55: ifnull +8 -> 63
    //   58: aload 6
    //   60: invokevirtual 364	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   63: return
    //   64: aload 6
    //   66: invokevirtual 367	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   69: iconst_m1
    //   70: aload_3
    //   71: invokeinterface 372 1 0
    //   76: iadd
    //   77: istore 12
    //   79: iload 12
    //   81: iflt +76 -> 157
    //   84: aload_0
    //   85: getfield 85	com/avg/tuneup/traffic/s:d	Lcom/avg/tuneup/traffic/v;
    //   88: aload_3
    //   89: iload 12
    //   91: invokeinterface 376 2 0
    //   96: checkcast 93	android/content/pm/ApplicationInfo
    //   99: getfield 106	android/content/pm/ApplicationInfo:packageName	Ljava/lang/String;
    //   102: aload_0
    //   103: ldc_w 378
    //   106: aload_3
    //   107: iload 12
    //   109: invokeinterface 376 2 0
    //   114: checkcast 93	android/content/pm/ApplicationInfo
    //   117: getfield 100	android/content/pm/ApplicationInfo:uid	I
    //   120: invokevirtual 381	com/avg/tuneup/traffic/s:a	(Ljava/lang/String;I)J
    //   123: aload_0
    //   124: ldc_w 378
    //   127: aload_3
    //   128: iload 12
    //   130: invokeinterface 376 2 0
    //   135: checkcast 93	android/content/pm/ApplicationInfo
    //   138: getfield 100	android/content/pm/ApplicationInfo:uid	I
    //   141: invokevirtual 383	com/avg/tuneup/traffic/s:b	(Ljava/lang/String;I)J
    //   144: aload_0
    //   145: getfield 76	com/avg/tuneup/traffic/s:h	Z
    //   148: invokevirtual 386	com/avg/tuneup/traffic/v:a	(Ljava/lang/String;JJZ)V
    //   151: iinc 12 255
    //   154: goto -75 -> 79
    //   157: iload_1
    //   158: ifeq +30 -> 188
    //   161: getstatic 391	android/os/Build$VERSION:SDK_INT	I
    //   164: bipush 8
    //   166: if_icmplt +45 -> 211
    //   169: aload_0
    //   170: getfield 85	com/avg/tuneup/traffic/s:d	Lcom/avg/tuneup/traffic/v;
    //   173: getstatic 58	com/avg/tuneup/traffic/s:b	[Ljava/lang/String;
    //   176: iconst_0
    //   177: aaload
    //   178: invokestatic 396	android/net/TrafficStats:getMobileRxBytes	()J
    //   181: invokestatic 399	android/net/TrafficStats:getMobileTxBytes	()J
    //   184: iconst_1
    //   185: invokevirtual 386	com/avg/tuneup/traffic/v:a	(Ljava/lang/String;JJZ)V
    //   188: aload 6
    //   190: invokevirtual 402	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   193: aload 6
    //   195: ifnull -132 -> 63
    //   198: aload 6
    //   200: invokevirtual 364	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   203: goto -140 -> 63
    //   206: astore 13
    //   208: goto -145 -> 63
    //   211: getstatic 58	com/avg/tuneup/traffic/s:b	[Ljava/lang/String;
    //   214: astore 14
    //   216: aload 14
    //   218: arraylength
    //   219: istore 15
    //   221: iload_2
    //   222: iload 15
    //   224: if_icmpge -36 -> 188
    //   227: aload 14
    //   229: iload_2
    //   230: aaload
    //   231: astore 16
    //   233: aload_0
    //   234: getfield 85	com/avg/tuneup/traffic/s:d	Lcom/avg/tuneup/traffic/v;
    //   237: aload 16
    //   239: aload_0
    //   240: ldc_w 404
    //   243: aload 16
    //   245: ldc_w 406
    //   248: invokevirtual 409	com/avg/tuneup/traffic/s:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    //   251: aload_0
    //   252: ldc_w 404
    //   255: aload 16
    //   257: ldc_w 411
    //   260: invokevirtual 409	com/avg/tuneup/traffic/s:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    //   263: iconst_1
    //   264: invokevirtual 386	com/avg/tuneup/traffic/v:a	(Ljava/lang/String;JJZ)V
    //   267: iinc 2 1
    //   270: goto -49 -> 221
    //   273: astore 8
    //   275: aload 8
    //   277: invokestatic 153	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   280: aload 4
    //   282: ifnull -219 -> 63
    //   285: aload 4
    //   287: invokevirtual 364	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   290: goto -227 -> 63
    //   293: astore 9
    //   295: goto -232 -> 63
    //   298: astore 5
    //   300: aconst_null
    //   301: astore 6
    //   303: aload 6
    //   305: ifnull +8 -> 313
    //   308: aload 6
    //   310: invokevirtual 364	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   313: aload 5
    //   315: athrow
    //   316: astore 11
    //   318: goto -255 -> 63
    //   321: astore 7
    //   323: goto -10 -> 313
    //   326: astore 5
    //   328: goto -25 -> 303
    //   331: astore 5
    //   333: aload 4
    //   335: astore 6
    //   337: goto -34 -> 303
    //   340: astore 8
    //   342: aload 6
    //   344: astore 4
    //   346: goto -71 -> 275
    //
    // Exception table:
    //   from	to	target	type
    //   198	203	206	java/lang/Exception
    //   10	19	273	java/lang/Exception
    //   285	290	293	java/lang/Exception
    //   10	19	298	finally
    //   58	63	316	java/lang/Exception
    //   308	313	321	java/lang/Exception
    //   37	53	326	finally
    //   64	193	326	finally
    //   211	267	326	finally
    //   275	280	331	finally
    //   37	53	340	java/lang/Exception
    //   64	193	340	java/lang/Exception
    //   211	267	340	java/lang/Exception
  }

  public static boolean b(Context paramContext)
  {
    int j = paramContext.getPackageManager().checkPermission("android.permission.READ_PHONE_STATE", paramContext.getPackageName());
    boolean bool1 = false;
    if (j == -1)
      return bool1;
    String str1 = ((TelephonyManager)paramContext.getSystemService("phone")).getLine1Number();
    String str2 = ((TelephonyManager)paramContext.getSystemService("phone")).getSimSerialNumber();
    if ((e()) || (paramContext.getPackageManager().hasSystemFeature("android.hardware.telephony")) || ((str2 != null) && (!"".equals(str2))) || ((str1 != null) && (!"".equals(str1))));
    for (boolean bool2 = true; ; bool2 = false)
    {
      bool1 = bool2;
      break;
    }
  }

  private double[] c(boolean paramBoolean)
  {
    double[] arrayOfDouble;
    while (true)
    {
      boolean bool;
      synchronized (this.g)
      {
        if (this.g.booleanValue())
        {
          arrayOfDouble = null;
        }
        else
        {
          this.g = Boolean.valueOf(true);
          b(paramBoolean);
          arrayOfDouble = new double[2];
          if (paramBoolean)
          {
            bool = j.m();
            arrayOfDouble = b();
            if (arrayOfDouble != null)
            {
              if ((!j.i()) || (!a(arrayOfDouble[0], bool)))
                break label123;
              a(arrayOfDouble, bool);
              f.a(this.f, 25000, 8, TrafficWidgetPlugin.k());
            }
          }
          this.g = Boolean.valueOf(false);
        }
      }
      label123: if (bool)
        a(arrayOfDouble);
    }
    return arrayOfDouble;
  }

  public static boolean e()
  {
    return j.a();
  }

  private boolean o()
  {
    this.h = false;
    NetworkInfo localNetworkInfo = ((ConnectivityManager)this.f.getSystemService("connectivity")).getActiveNetworkInfo();
    if (localNetworkInfo != null)
    {
      localNetworkInfo.isConnected();
      if (localNetworkInfo.getType() == 0)
        this.h = true;
    }
    return this.h;
  }

  public long a(String paramString, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 8);
    StringBuilder localStringBuilder;
    for (long l = TrafficStats.getUidRxBytes(paramInt); ; l = a(localStringBuilder.toString()))
    {
      return l;
      localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramString).append(paramInt).append("/tcp_rcv");
    }
  }

  public long a(String paramString1, String paramString2, String paramString3)
  {
    if (Build.VERSION.SDK_INT >= 8);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString1).append(paramString2).append(paramString3);
    return a(localStringBuilder.toString());
  }

  public void a()
  {
    this.d = null;
  }

  public void a(long paramLong)
  {
    j.b(paramLong);
    j.f(0);
    c();
  }

  public void a(double[] paramArrayOfDouble)
  {
    int j = g();
    String str1;
    if (j <= 0)
      str1 = "" + this.f.getString(g.traffic_network_usage_notification_midnight).replace("[used]", Formatter.formatFileSize(this.f, ()paramArrayOfDouble[1]));
    while (true)
    {
      String str2 = str1.replace("[total]", Formatter.formatFileSize(this.f, j.c())).replace("[number]", g() + "");
      DecimalFormat localDecimalFormat = new DecimalFormat("#.#");
      Bundle localBundle = new Bundle();
      String str3;
      if (o.c())
      {
        str3 = "com.antivirus.ui.tablet.DualPaneActivity";
        localBundle.putInt("EXTRA_GOTO", 3);
      }
      try
      {
        while (true)
        {
          Class localClass = Class.forName(str3);
          localObject = localClass;
          Intent localIntent = new Intent(this.f, (Class)localObject);
          localIntent.setAction("antivirus.notification.DATA_USAGE");
          localIntent.putExtras(localBundle);
          localIntent.setFlags(608305152);
          PendingIntent localPendingIntent = PendingIntent.getActivity(this.f, 0, localIntent, 0);
          String str4 = this.f.getString(g.traffic_network_usage).replace("[number]", localDecimalFormat.format(paramArrayOfDouble[0]));
          Notification localNotification = new Notification(d.notification_traffic, str4, 0L);
          localNotification.flags = 10;
          localNotification.setLatestEventInfo(this.f, str4, str2, localPendingIntent);
          ((NotificationManager)this.f.getSystemService("notification")).notify(12, localNotification);
          return;
          if (j == 1)
          {
            str1 = "" + this.f.getString(g.traffic_network_usage_notification_day).replace("[used]", Formatter.formatFileSize(this.f, ()paramArrayOfDouble[1]));
            break;
          }
          str1 = "" + this.f.getString(g.traffic_network_usage_notification).replace("[used]", Formatter.formatFileSize(this.f, ()paramArrayOfDouble[1]));
          break;
          str3 = "com.antivirus.ui.performance.traffic.AvTrafficMeterActivity";
        }
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        while (true)
          Object localObject = TrafficMeterActivity.class;
      }
    }
  }

  public double[] a(boolean paramBoolean)
  {
    return a(paramBoolean, 5);
  }

  public double[] a(boolean paramBoolean, int paramInt)
  {
    int j = 0;
    double[] arrayOfDouble = c(paramBoolean);
    while (true)
      if ((arrayOfDouble == null) && (j < paramInt))
        try
        {
          Thread.sleep(400L);
          j++;
          arrayOfDouble = c(paramBoolean);
        }
        catch (Exception localException)
        {
          while (true)
            a.a(localException);
        }
    return arrayOfDouble;
  }

  public long[] a(int paramInt)
  {
    e[0] = a("/proc/uid_stat/", paramInt);
    e[1] = b("/proc/uid_stat/", paramInt);
    return e;
  }

  public long[] a(int paramInt, String paramString)
  {
    long[] arrayOfLong;
    switch (paramInt)
    {
    case 2:
    default:
      arrayOfLong = null;
    case 0:
    case 1:
    case 3:
    }
    while (true)
    {
      return arrayOfLong;
      arrayOfLong = e;
      continue;
      arrayOfLong = e;
      continue;
      e = this.d.b(paramString);
      arrayOfLong = e;
    }
  }

  public long b(String paramString, int paramInt)
  {
    long l;
    if (Build.VERSION.SDK_INT >= 8)
      l = TrafficStats.getUidTxBytes(paramInt);
    while (true)
    {
      return l;
      l = 0L;
      StringBuilder localStringBuilder = new StringBuilder();
      if (paramString != null)
      {
        localStringBuilder.append(paramString).append(paramInt).append("/tcp_snd");
        l = a(localStringBuilder.toString());
      }
    }
  }

  public double[] b()
  {
    long[] arrayOfLong = b(3);
    if (arrayOfLong != null);
    for (double d1 = arrayOfLong[0] + arrayOfLong[1]; ; d1 = 0.0D)
    {
      double d2 = j.c();
      double[] arrayOfDouble = new double[2];
      arrayOfDouble[0] = 0.0D;
      if (d2 != 0.0D)
        arrayOfDouble[0] = (100.0D * d1 / d2);
      arrayOfDouble[1] = d1;
      return arrayOfDouble;
    }
  }

  public long[] b(int paramInt)
  {
    long[] arrayOfLong1 = { 0L, 0L };
    switch (paramInt)
    {
    case 2:
    default:
      arrayOfLong1 = null;
    case 0:
    case 1:
    case 3:
    }
    label121: 
    while (true)
    {
      return arrayOfLong1;
      String[] arrayOfString = b;
      int j = arrayOfString.length;
      for (int k = 0; ; k++)
      {
        if (k >= j)
          break label121;
        String str = arrayOfString[k];
        if (this.d == null)
        {
          arrayOfLong1 = null;
          break;
        }
        long[] arrayOfLong2 = this.d.b(str);
        arrayOfLong1[0] += arrayOfLong2[0];
        arrayOfLong1[1] += arrayOfLong2[1];
      }
    }
  }

  // ERROR //
  public void c()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: getfield 85	com/avg/tuneup/traffic/s:d	Lcom/avg/tuneup/traffic/v;
    //   6: invokevirtual 353	com/avg/tuneup/traffic/v:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   9: astore 5
    //   11: aload 5
    //   13: astore_3
    //   14: aload_3
    //   15: invokevirtual 367	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   18: aload_0
    //   19: getfield 85	com/avg/tuneup/traffic/s:d	Lcom/avg/tuneup/traffic/v;
    //   22: ldc_w 541
    //   25: invokevirtual 542	com/avg/tuneup/traffic/v:a	(Ljava/lang/String;)V
    //   28: aload_0
    //   29: getfield 85	com/avg/tuneup/traffic/s:d	Lcom/avg/tuneup/traffic/v;
    //   32: aload_3
    //   33: invokevirtual 545	com/avg/tuneup/traffic/v:a	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   36: getstatic 391	android/os/Build$VERSION:SDK_INT	I
    //   39: bipush 8
    //   41: if_icmplt +120 -> 161
    //   44: aload_0
    //   45: getfield 85	com/avg/tuneup/traffic/s:d	Lcom/avg/tuneup/traffic/v;
    //   48: getstatic 58	com/avg/tuneup/traffic/s:b	[Ljava/lang/String;
    //   51: iconst_0
    //   52: aaload
    //   53: invokestatic 396	android/net/TrafficStats:getMobileRxBytes	()J
    //   56: invokestatic 399	android/net/TrafficStats:getMobileTxBytes	()J
    //   59: invokevirtual 548	com/avg/tuneup/traffic/v:a	(Ljava/lang/String;JJ)V
    //   62: aload_0
    //   63: invokevirtual 349	com/avg/tuneup/traffic/s:d	()Ljava/util/List;
    //   66: astore 10
    //   68: aload 10
    //   70: ifnull +157 -> 227
    //   73: iconst_m1
    //   74: aload 10
    //   76: invokeinterface 372 1 0
    //   81: iadd
    //   82: istore 11
    //   84: iload 11
    //   86: iflt +141 -> 227
    //   89: aload_0
    //   90: getfield 85	com/avg/tuneup/traffic/s:d	Lcom/avg/tuneup/traffic/v;
    //   93: aload 10
    //   95: iload 11
    //   97: invokeinterface 376 2 0
    //   102: checkcast 93	android/content/pm/ApplicationInfo
    //   105: getfield 106	android/content/pm/ApplicationInfo:packageName	Ljava/lang/String;
    //   108: aload_0
    //   109: ldc_w 378
    //   112: aload 10
    //   114: iload 11
    //   116: invokeinterface 376 2 0
    //   121: checkcast 93	android/content/pm/ApplicationInfo
    //   124: getfield 100	android/content/pm/ApplicationInfo:uid	I
    //   127: invokevirtual 381	com/avg/tuneup/traffic/s:a	(Ljava/lang/String;I)J
    //   130: aload_0
    //   131: ldc_w 378
    //   134: aload 10
    //   136: iload 11
    //   138: invokeinterface 376 2 0
    //   143: checkcast 93	android/content/pm/ApplicationInfo
    //   146: getfield 100	android/content/pm/ApplicationInfo:uid	I
    //   149: invokevirtual 383	com/avg/tuneup/traffic/s:b	(Ljava/lang/String;I)J
    //   152: invokevirtual 548	com/avg/tuneup/traffic/v:a	(Ljava/lang/String;JJ)V
    //   155: iinc 11 255
    //   158: goto -74 -> 84
    //   161: getstatic 58	com/avg/tuneup/traffic/s:b	[Ljava/lang/String;
    //   164: astore 6
    //   166: aload 6
    //   168: arraylength
    //   169: istore 7
    //   171: iconst_0
    //   172: istore 8
    //   174: iload 8
    //   176: iload 7
    //   178: if_icmpge -116 -> 62
    //   181: aload 6
    //   183: iload 8
    //   185: aaload
    //   186: astore 9
    //   188: aload_0
    //   189: getfield 85	com/avg/tuneup/traffic/s:d	Lcom/avg/tuneup/traffic/v;
    //   192: aload 9
    //   194: aload_0
    //   195: ldc_w 404
    //   198: aload 9
    //   200: ldc_w 406
    //   203: invokevirtual 409	com/avg/tuneup/traffic/s:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    //   206: aload_0
    //   207: ldc_w 404
    //   210: aload 9
    //   212: ldc_w 411
    //   215: invokevirtual 409	com/avg/tuneup/traffic/s:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    //   218: invokevirtual 548	com/avg/tuneup/traffic/v:a	(Ljava/lang/String;JJ)V
    //   221: iinc 8 1
    //   224: goto -50 -> 174
    //   227: aload_3
    //   228: invokevirtual 402	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   231: aload_3
    //   232: ifnull +7 -> 239
    //   235: aload_3
    //   236: invokevirtual 364	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   239: return
    //   240: astore 4
    //   242: aload 4
    //   244: invokestatic 153	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   247: aload_1
    //   248: ifnull -9 -> 239
    //   251: aload_1
    //   252: invokevirtual 364	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   255: goto -16 -> 239
    //   258: astore_2
    //   259: aconst_null
    //   260: astore_3
    //   261: aload_3
    //   262: ifnull +7 -> 269
    //   265: aload_3
    //   266: invokevirtual 364	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   269: aload_2
    //   270: athrow
    //   271: astore_2
    //   272: goto -11 -> 261
    //   275: astore_2
    //   276: aload_1
    //   277: astore_3
    //   278: goto -17 -> 261
    //   281: astore 4
    //   283: aload_3
    //   284: astore_1
    //   285: goto -43 -> 242
    //
    // Exception table:
    //   from	to	target	type
    //   2	11	240	java/lang/Exception
    //   2	11	258	finally
    //   14	231	271	finally
    //   242	247	275	finally
    //   14	231	281	java/lang/Exception
  }

  public List d()
  {
    PackageManager localPackageManager = this.f.getPackageManager();
    Object localObject = null;
    if (localPackageManager != null);
    try
    {
      List localList = this.f.getPackageManager().getInstalledApplications(0);
      localObject = localList;
      if (localObject != null)
        localObject.add(this.i);
      return localObject;
    }
    catch (Exception localException)
    {
      while (true)
      {
        a.a(localException);
        localObject = null;
      }
    }
  }

  public Calendar f()
  {
    int j = 2;
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(j.k());
    GregorianCalendar localGregorianCalendar = new GregorianCalendar(localCalendar.get(1), localCalendar.get(j), localCalendar.get(5));
    int k = j.f();
    switch (j.e())
    {
    case 2:
    default:
    case 0:
    case 1:
    }
    while (true)
    {
      localGregorianCalendar.add(j, k);
      return localGregorianCalendar;
      j = 6;
      continue;
      j = 3;
    }
  }

  public int g()
  {
    int j = (int)((f().getTimeInMillis() - System.currentTimeMillis()) / 1000L / 60L / 60L / 24L);
    if (j < 0)
      j = 0;
    return j;
  }

  public void h()
  {
    j.a(false);
    j.b(-1L);
    ((NotificationManager)this.f.getSystemService("notification")).cancel(12);
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("__SAD", false);
    f.a(this.f, 11000, 2, localBundle);
    f.a(this.f, 25000, 8, TrafficWidgetPlugin.k());
  }

  public void i()
  {
    new Thread(new t(this)).start();
  }

  public void j()
  {
    new Thread(new u(this)).start();
  }

  public void k()
  {
    m();
    l();
  }

  public void l()
  {
    Intent localIntent = new Intent(this.f, AlarmReceiver.class);
    localIntent.putExtra("alarm_code", 11000);
    localIntent.putExtra("alarm_code2", 2);
    PendingIntent localPendingIntent = PendingIntent.getBroadcast(this.f, 2, localIntent, 134217728);
    Calendar localCalendar = f();
    AlarmManager localAlarmManager = (AlarmManager)this.f.getSystemService("alarm");
    localAlarmManager.cancel(localPendingIntent);
    localAlarmManager.set(0, localCalendar.getTimeInMillis(), localPendingIntent);
  }

  public void m()
  {
    int j = j.h();
    if ((j < 0) || (j >= a.length))
      j = 1;
    int k = a[j];
    if (k < 30000)
      k = 30000;
    this.h = o();
    if (!this.h)
      if (k <= 600000);
    for (int m = k; ; m = k)
    {
      Intent localIntent = new Intent(this.f, AlarmReceiver.class);
      localIntent.putExtra("alarm_code", 11000);
      localIntent.putExtra("alarm_code2", 1);
      PendingIntent localPendingIntent = PendingIntent.getBroadcast(this.f, 1, localIntent, 134217728);
      AlarmManager localAlarmManager = (AlarmManager)this.f.getSystemService("alarm");
      localAlarmManager.cancel(localPendingIntent);
      localAlarmManager.setRepeating(3, SystemClock.elapsedRealtime(), m, localPendingIntent);
      return;
      k = 600000;
      break;
    }
  }

  public void n()
  {
    Intent localIntent1 = new Intent(this.f, AlarmReceiver.class);
    localIntent1.putExtra("alarm_code", 11000);
    localIntent1.putExtra("alarm_code2", 1);
    PendingIntent localPendingIntent1 = PendingIntent.getBroadcast(this.f, 1, localIntent1, 134217728);
    Intent localIntent2 = new Intent(this.f, AlarmReceiver.class);
    localIntent2.putExtra("alarm_code", 11000);
    localIntent2.putExtra("alarm_code2", 2);
    PendingIntent localPendingIntent2 = PendingIntent.getBroadcast(this.f, 2, localIntent2, 134217728);
    ((NotificationManager)this.f.getSystemService("notification")).cancel(12);
    AlarmManager localAlarmManager = (AlarmManager)this.f.getSystemService("alarm");
    localAlarmManager.cancel(localPendingIntent1);
    localAlarmManager.cancel(localPendingIntent2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.traffic.s
 * JD-Core Version:    0.6.2
 */