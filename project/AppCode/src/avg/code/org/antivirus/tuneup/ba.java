package org.antivirus.tuneup;

import android.app.AlarmManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.database.sqlite.SQLiteDatabase;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.format.Formatter;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;
import org.antivirus.AVService;
import org.antivirus.AVSettings;
import org.antivirus.Strings;
import org.antivirus.core.Logger;
import org.antivirus.core.compatibility.FroyoTools;
import org.antivirus.core.receivers.AlarmReceiver;
import org.antivirus.widget.a.k;

public class ba
{
  public static final int[] a = { 30000, 60000, 300000, 900000, 1800000 };
  private static final String[] b = { "rmnet0", "pdp0", "ppp0", "rmnet_sdio0", "rmnet_sdio1", "rmnet_sdio2", "ppp1", "pdp_ip0", "rmnet1", "rmnet2", "rmnet3", "cdma_rmnet4" };
  private static final String[] c = { "eth0", "tiwlan0", "wlan0", "athwlan0", "eth1" };
  private static ba d = null;
  private static long[] f = { 0L, 0L };
  private bd e;
  private Context g;
  private Boolean h = Boolean.valueOf(false);
  private boolean i = false;
  private ApplicationInfo j;

  private ba(Context paramContext)
  {
    this.e = new bd(paramContext, "tdb");
    this.g = paramContext;
    this.h = Boolean.valueOf(false);
    this.i = m();
    this.j = new ApplicationInfo();
    this.j.uid = 1013;
    this.j.packageName = "android.process.media";
    this.j.name = Strings.getString(2131296725);
  }

  private static long a(String paramString, int paramInt)
  {
    if (Integer.parseInt(Build.VERSION.SDK) >= 8);
    StringBuilder localStringBuilder;
    for (long l = FroyoTools.getMobileRxUidBytes(paramInt); ; l = b(localStringBuilder.toString()))
    {
      return l;
      localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramString).append(paramInt).append("/tcp_rcv");
    }
  }

  private static long a(String paramString1, String paramString2, String paramString3)
  {
    Integer.parseInt(Build.VERSION.SDK);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString1).append(paramString2).append(paramString3);
    return b(localStringBuilder.toString());
  }

  public static ba a(Context paramContext)
  {
    if (d == null);
    try
    {
      if (d == null)
        d = new ba(paramContext);
      return d;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static long[] a(int paramInt)
  {
    f[0] = a("/proc/uid_stat/", paramInt);
    f[1] = b("/proc/uid_stat/", paramInt);
    return f;
  }

  // ERROR //
  private static long b(String paramString)
  {
    // Byte code:
    //   0: ldc2_w 182
    //   3: lstore_1
    //   4: aconst_null
    //   5: astore_3
    //   6: aload_0
    //   7: invokestatic 186	org/antivirus/tuneup/ba:c	(Ljava/lang/String;)Ljava/io/RandomAccessFile;
    //   10: astore_3
    //   11: aload_3
    //   12: ifnull +38 -> 50
    //   15: aload_3
    //   16: invokevirtual 191	java/io/RandomAccessFile:readLine	()Ljava/lang/String;
    //   19: invokestatic 196	java/lang/Long:valueOf	(Ljava/lang/String;)Ljava/lang/Long;
    //   22: invokevirtual 200	java/lang/Long:longValue	()J
    //   25: lstore 9
    //   27: lload 9
    //   29: lstore_1
    //   30: aload_3
    //   31: ifnull +7 -> 38
    //   34: aload_3
    //   35: invokevirtual 203	java/io/RandomAccessFile:close	()V
    //   38: lload_1
    //   39: lreturn
    //   40: astore 11
    //   42: aload 11
    //   44: invokestatic 209	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   47: goto -9 -> 38
    //   50: aload_3
    //   51: ifnull -13 -> 38
    //   54: aload_3
    //   55: invokevirtual 203	java/io/RandomAccessFile:close	()V
    //   58: goto -20 -> 38
    //   61: astore 8
    //   63: aload 8
    //   65: invokestatic 209	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   68: goto -30 -> 38
    //   71: astore 6
    //   73: aload_3
    //   74: ifnull -36 -> 38
    //   77: aload_3
    //   78: invokevirtual 203	java/io/RandomAccessFile:close	()V
    //   81: goto -43 -> 38
    //   84: astore 7
    //   86: aload 7
    //   88: invokestatic 209	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   91: goto -53 -> 38
    //   94: astore 4
    //   96: aload_3
    //   97: ifnull +7 -> 104
    //   100: aload_3
    //   101: invokevirtual 203	java/io/RandomAccessFile:close	()V
    //   104: aload 4
    //   106: athrow
    //   107: astore 5
    //   109: aload 5
    //   111: invokestatic 209	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   114: goto -10 -> 104
    //
    // Exception table:
    //   from	to	target	type
    //   34	38	40	java/io/IOException
    //   54	58	61	java/io/IOException
    //   6	27	71	java/lang/Exception
    //   77	81	84	java/io/IOException
    //   6	27	94	finally
    //   100	104	107	java/io/IOException
  }

  private static long b(String paramString, int paramInt)
  {
    long l;
    if (Integer.parseInt(Build.VERSION.SDK) >= 8)
      l = FroyoTools.getMobileTxUidBytes(paramInt);
    while (true)
    {
      return l;
      l = 0L;
      StringBuilder localStringBuilder = new StringBuilder();
      if (paramString != null)
      {
        localStringBuilder.append(paramString).append(paramInt).append("/tcp_snd");
        l = b(localStringBuilder.toString());
      }
    }
  }

  private double[] b(boolean paramBoolean)
  {
    Object localObject3;
    List localList;
    SQLiteDatabase localSQLiteDatabase;
    synchronized (this.h)
    {
      if (this.h.booleanValue())
      {
        localObject3 = null;
        break label1243;
      }
      this.h = Boolean.valueOf(true);
      localList = c();
      localSQLiteDatabase = this.e.getWritableDatabase();
      localSQLiteDatabase.beginTransaction();
    }
    boolean bool1;
    double[] arrayOfDouble;
    label808: label814: label878: label888: 
    do
      while (true)
      {
        int i3;
        String str6;
        Notification localNotification2;
        try
        {
          int i4 = -1 + localList.size();
          if (i4 >= 0)
          {
            this.e.a(((ApplicationInfo)localList.get(i4)).packageName, a("/proc/uid_stat/", ((ApplicationInfo)localList.get(i4)).uid), b("/proc/uid_stat/", ((ApplicationInfo)localList.get(i4)).uid), this.i);
            i4--;
            continue;
            localObject1 = finally;
            throw localObject1;
          }
          if (paramBoolean)
          {
            if (Integer.parseInt(Build.VERSION.SDK) >= 8)
              this.e.a(b[0], FroyoTools.getMobileRxBytes(), FroyoTools.getMobileTxBytes(), true);
          }
          else
          {
            localSQLiteDatabase.setTransactionSuccessful();
            localSQLiteDatabase.endTransaction();
            localObject3 = new double[2];
            if (paramBoolean)
            {
              bool1 = AVSettings.isQuotaOngoingNotification();
              arrayOfDouble = b();
              if (arrayOfDouble != null)
              {
                if (!AVSettings.isQuotaWarningNotificationOn())
                  break;
                double d2 = arrayOfDouble[0];
                int n = AVSettings.getDataPlanNotificationThreshold();
                int i1 = AVSettings.getQuotaUsageWarningId();
                if (((d2 < n) || (d2 >= 100.0D) || (i1 != 0)) && ((d2 < 100.0D) || (i1 == 2)) && ((d2 < n) || (!bool1)))
                  break label808;
                i2 = 1;
                if (i2 == 0)
                  break;
                DecimalFormat localDecimalFormat2 = new DecimalFormat("#.#");
                if (arrayOfDouble[0] >= 100.0D)
                  localDecimalFormat2.applyPattern("#");
                String str4 = Strings.getString(2131296555).replace("[number]", localDecimalFormat2.format(arrayOfDouble[0]));
                String str5 = str4 + " " + Strings.getString(2131296602);
                i3 = f();
                if (i3 > 0)
                  break label814;
                str6 = Strings.getString(2131296606).replace("[used]", Formatter.formatFileSize(this.g, ()arrayOfDouble[1]));
                String str7 = str6.replace("[total]", Formatter.formatFileSize(this.g, AVSettings.getDataQuotaBytes())).replace("[number]", i3);
                Intent localIntent2 = new Intent(this.g, TrafficMeterActivity.class);
                localIntent2.setFlags(608305152);
                localIntent2.putExtra("from_notification", 1);
                PendingIntent localPendingIntent2 = PendingIntent.getActivity(this.g, 0, localIntent2, 0);
                localNotification2 = new Notification(2130837745, str5, 0L);
                localNotification2.defaults = (0x4 | localNotification2.defaults);
                if (!bool1)
                  break label878;
                localNotification2.flags = 10;
                localNotification2.setLatestEventInfo(this.g, str5, str7, localPendingIntent2);
                ((NotificationManager)this.g.getSystemService("notification")).notify(12, localNotification2);
                if ((arrayOfDouble[0] < AVSettings.getDataPlanNotificationThreshold()) || (arrayOfDouble[0] >= 100.0D))
                  break label888;
                AVSettings.setQuotaUsageWarningId(1);
                boolean bool2 = AVSettings.isTrafficCounterOn();
                Bundle localBundle = new Bundle();
                localBundle.putBoolean("dataPlanSet", bool2);
                if (bool2)
                {
                  double d1 = arrayOfDouble[0];
                  int m = AVSettings.getDataPlanNotificationThreshold();
                  localBundle.putDouble("dataPercentLeft", d1);
                  localBundle.putInt("dataThreshold", m);
                }
                k.a(this.g).b(localBundle);
              }
              localObject3 = arrayOfDouble;
            }
            this.h = Boolean.valueOf(false);
            break label1243;
          }
          int i5 = 0;
          if (i5 < b.length)
          {
            this.e.a(b[i5], a("/sys/class/net/", b[i5], "/statistics/rx_bytes"), a("/sys/class/net/", b[i5], "/statistics/tx_bytes"), true);
            i5++;
            continue;
          }
          continue;
        }
        catch (Exception localException)
        {
          Logger.log(localException);
          new StringBuilder("!!!!!!!!!!!!!! exception in: updateTrafficStatsDB: ").append(localException.toString()).toString();
          localSQLiteDatabase.endTransaction();
          continue;
        }
        finally
        {
          localSQLiteDatabase.endTransaction();
        }
        int i2 = 0;
        continue;
        if (i3 == 1)
        {
          str6 = Strings.getString(2131296605).replace("[used]", Formatter.formatFileSize(this.g, ()arrayOfDouble[1]));
        }
        else
        {
          str6 = Strings.getString(2131296556).replace("[used]", Formatter.formatFileSize(this.g, ()arrayOfDouble[1]));
          continue;
          localNotification2.flags = 16;
          continue;
          if (arrayOfDouble[0] >= 100.0D)
            AVSettings.setQuotaUsageWarningId(2);
        }
      }
    while (!bool1);
    int k = f();
    String str1;
    if (k <= 0)
      str1 = "" + Strings.getString(2131296606).replace("[used]", Formatter.formatFileSize(this.g, ()arrayOfDouble[1]));
    while (true)
    {
      String str2 = str1.replace("[total]", Formatter.formatFileSize(this.g, AVSettings.getDataQuotaBytes())).replace("[number]", f());
      DecimalFormat localDecimalFormat1 = new DecimalFormat("#.#");
      Intent localIntent1 = new Intent(this.g, TrafficMeterActivity.class);
      localIntent1.setFlags(608305152);
      PendingIntent localPendingIntent1 = PendingIntent.getActivity(this.g, 0, localIntent1, 0);
      String str3 = Strings.getString(2131296555).replace("[number]", localDecimalFormat1.format(arrayOfDouble[0]));
      Notification localNotification1 = new Notification(2130837744, str3, 0L);
      localNotification1.flags = 10;
      localNotification1.setLatestEventInfo(this.g, str3, str2, localPendingIntent1);
      ((NotificationManager)this.g.getSystemService("notification")).notify(12, localNotification1);
      break;
      if (k == 1)
        str1 = "" + Strings.getString(2131296605).replace("[used]", Formatter.formatFileSize(this.g, ()arrayOfDouble[1]));
      else
        str1 = "" + Strings.getString(2131296556).replace("[used]", Formatter.formatFileSize(this.g, ()arrayOfDouble[1]));
    }
    label1243: return localObject3;
  }

  private static RandomAccessFile c(String paramString)
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
        Logger.log(localIOException);
        localRandomAccessFile = null;
      }
    }
  }

  public static final boolean d()
  {
    return AVSettings.isTrafficCounterOn();
  }

  public static Calendar e()
  {
    int k = 2;
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(AVSettings.getDataPlanBillingDate());
    GregorianCalendar localGregorianCalendar = new GregorianCalendar(localCalendar.get(1), localCalendar.get(k), localCalendar.get(5));
    int m = AVSettings.getDataCycleValues();
    switch (AVSettings.getDataCycleUnits())
    {
    case 2:
    default:
    case 0:
    case 1:
    }
    while (true)
    {
      localGregorianCalendar.add(k, m);
      return localGregorianCalendar;
      k = 6;
      continue;
      k = 3;
    }
  }

  public static int f()
  {
    int k = (int)((e().getTimeInMillis() - System.currentTimeMillis()) / 1000L / 60L / 60L / 24L);
    if (k < 0)
      k = 0;
    return k;
  }

  private boolean m()
  {
    this.i = false;
    NetworkInfo localNetworkInfo = ((ConnectivityManager)this.g.getSystemService("connectivity")).getActiveNetworkInfo();
    if (localNetworkInfo != null)
    {
      localNetworkInfo.isConnected();
      if (localNetworkInfo.getType() == 0)
        this.i = true;
    }
    return this.i;
  }

  public final void a()
  {
    this.e = null;
  }

  public final void a(long paramLong)
  {
    AVSettings.setDataPlanBillingDate(paramLong);
    AVSettings.setQuotaUsageWarningId(0);
    SQLiteDatabase localSQLiteDatabase = this.e.getWritableDatabase();
    localSQLiteDatabase.beginTransaction();
    while (true)
    {
      try
      {
        this.e.a("mobiletraffictotaltable");
        bd.a(localSQLiteDatabase);
        if (Integer.parseInt(Build.VERSION.SDK) >= 8)
        {
          this.e.a(b[0], FroyoTools.getMobileRxBytes(), FroyoTools.getMobileTxBytes());
          List localList = c();
          int m = -1 + localList.size();
          if (m >= 0)
          {
            this.e.a(((ApplicationInfo)localList.get(m)).packageName, a("/proc/uid_stat/", ((ApplicationInfo)localList.get(m)).uid), b("/proc/uid_stat/", ((ApplicationInfo)localList.get(m)).uid));
            m--;
            continue;
            if (k < b.length)
            {
              this.e.a(b[k], a("/sys/class/net/", b[k], "/statistics/rx_bytes"), a("/sys/class/net/", b[k], "/statistics/tx_bytes"));
              k++;
              continue;
            }
            continue;
          }
          localSQLiteDatabase.setTransactionSuccessful();
          return;
        }
      }
      catch (Exception localException)
      {
        Logger.log(localException);
        localSQLiteDatabase.endTransaction();
        continue;
      }
      finally
      {
        localSQLiteDatabase.endTransaction();
      }
      int k = 0;
    }
  }

  public final double[] a(boolean paramBoolean)
  {
    return a(paramBoolean, 5);
  }

  public final double[] a(boolean paramBoolean, int paramInt)
  {
    int k = 0;
    double[] arrayOfDouble = b(paramBoolean);
    while (true)
      if ((arrayOfDouble == null) && (k < paramInt))
        try
        {
          Thread.sleep(400L);
          label25: k++;
          arrayOfDouble = b(paramBoolean);
        }
        catch (Exception localException)
        {
          break label25;
        }
    return arrayOfDouble;
  }

  public final long[] a(String paramString)
  {
    long[] arrayOfLong = this.e.b(paramString);
    f = arrayOfLong;
    return arrayOfLong;
  }

  public final double[] b()
  {
    long[] arrayOfLong1 = { 0L, 0L };
    for (int k = 0; k < b.length; k++)
    {
      long[] arrayOfLong2 = this.e.b(b[k]);
      arrayOfLong1[0] += arrayOfLong2[0];
      arrayOfLong1[1] += arrayOfLong2[1];
    }
    double d1 = arrayOfLong1[0] + arrayOfLong1[1];
    double d2 = AVSettings.getDataQuotaBytes();
    double[] arrayOfDouble = new double[2];
    arrayOfDouble[0] = 0.0D;
    if (d2 != 0.0D)
      arrayOfDouble[0] = (100.0D * d1 / d2);
    arrayOfDouble[1] = d1;
    return arrayOfDouble;
  }

  public final List c()
  {
    List localList = this.g.getPackageManager().getInstalledApplications(0);
    localList.add(this.j);
    return localList;
  }

  public final void g()
  {
    AVSettings.setTrafficCounterOn(false);
    AVSettings.setDataPlanBillingDate(-1L);
    ((NotificationManager)this.g.getSystemService("notification")).cancel(12);
    Intent localIntent = new Intent(this.g, AVService.class);
    localIntent.putExtra("__SAC", 111);
    localIntent.putExtra("__SAD", false);
    this.g.startService(localIntent);
    k.a(this.g).b(null);
  }

  public final void h()
  {
    new Thread(new bb(this)).start();
  }

  public final void i()
  {
    new Thread(new bc(this)).start();
  }

  public final void j()
  {
    k();
    Intent localIntent = new Intent(this.g, AlarmReceiver.class);
    localIntent.putExtra("alarm_code", 5);
    localIntent.putExtra("antivirus", "antivirus");
    PendingIntent localPendingIntent = PendingIntent.getBroadcast(this.g, 5, localIntent, 134217728);
    Calendar localCalendar = e();
    AlarmManager localAlarmManager = (AlarmManager)this.g.getSystemService("alarm");
    localAlarmManager.cancel(localPendingIntent);
    localAlarmManager.set(0, localCalendar.getTimeInMillis(), localPendingIntent);
  }

  public final void k()
  {
    int k = AVSettings.getDataRefreshRate();
    if ((k < 0) || (k >= a.length))
      k = 1;
    int m = a[k];
    if (m < 30000)
      m = 30000;
    this.i = m();
    if (!this.i)
      if (m <= 600000);
    for (int n = m; ; n = m)
    {
      Intent localIntent = new Intent(this.g, AlarmReceiver.class);
      localIntent.putExtra("alarm_code", 4);
      localIntent.putExtra("antivirus", "antivirus");
      PendingIntent localPendingIntent = PendingIntent.getBroadcast(this.g, 4, localIntent, 134217728);
      AlarmManager localAlarmManager = (AlarmManager)this.g.getSystemService("alarm");
      localAlarmManager.cancel(localPendingIntent);
      localAlarmManager.setRepeating(3, SystemClock.elapsedRealtime(), n, localPendingIntent);
      return;
      m = 600000;
      break;
    }
  }

  public final void l()
  {
    Intent localIntent1 = new Intent(this.g, AlarmReceiver.class);
    localIntent1.putExtra("alarm_code", 4);
    localIntent1.putExtra("antivirus", "antivirus");
    PendingIntent localPendingIntent1 = PendingIntent.getBroadcast(this.g, 4, localIntent1, 134217728);
    Intent localIntent2 = new Intent(this.g, AlarmReceiver.class);
    localIntent2.putExtra("alarm_code", 5);
    localIntent2.putExtra("antivirus", "antivirus");
    PendingIntent localPendingIntent2 = PendingIntent.getBroadcast(this.g, 5, localIntent2, 134217728);
    ((NotificationManager)this.g.getSystemService("notification")).cancel(12);
    AlarmManager localAlarmManager = (AlarmManager)this.g.getSystemService("alarm");
    localAlarmManager.cancel(localPendingIntent1);
    localAlarmManager.cancel(localPendingIntent2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.ba
 * JD-Core Version:    0.6.2
 */