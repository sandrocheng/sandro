package com.avast.android.mobilesecurity.app.trafficinfo;

import android.annotation.TargetApi;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.TrafficStats;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.os.SystemClock;
import com.avast.android.generic.util.ae;
import com.avast.android.generic.util.m;
import com.avast.android.generic.util.t;
import com.avast.android.mobilesecurity.r;
import java.util.HashMap;

public class NetworkStatsService extends Service
{
  public static boolean a = false;
  public static long b = -999999999L;
  private static long c = 600000L;
  private static long d = c;
  private static long e = 60000L;
  private static PowerManager.WakeLock f;
  private static volatile d o;
  private static final Object q = new Object();
  private static final Object r = new Object();
  private static final Object s = new Object();
  private boolean g = false;
  private HashMap h = new HashMap();
  private PackageManager i = null;
  private AlarmManager j;
  private ConnectivityManager k;
  private PendingIntent l;
  private boolean m = false;
  private volatile Looper n;
  private c p = new c();

  private c a(NetworkInfo paramNetworkInfo)
  {
    c localc1 = new c();
    c localc2;
    if (paramNetworkInfo == null)
    {
      localc1.a = e.c;
      localc1.c = f.a;
      localc1.d = -1;
      localc1.b = e.c;
      localc2 = localc1;
      return localc2;
    }
    if (paramNetworkInfo.isConnected());
    for (e locale1 = e.b; ; locale1 = e.c)
    {
      localc1.a = locale1;
      if ((paramNetworkInfo.getType() != 7) && (paramNetworkInfo.getType() != 9) && (paramNetworkInfo.getType() != 1))
        break label121;
      localc1.b = e.c;
      localc1.c = f.b;
      localc1.d = paramNetworkInfo.getType();
      localc2 = localc1;
      break;
    }
    label121: if (paramNetworkInfo.isRoaming());
    for (e locale2 = e.b; ; locale2 = e.c)
    {
      localc1.b = locale2;
      localc1.c = f.c;
      break;
    }
  }

  public static void a(Context paramContext)
  {
    try
    {
      ((AlarmManager)paramContext.getSystemService("alarm")).cancel(PendingIntent.getBroadcast(paramContext, 0, new Intent("com.avast.android.mobilesecurity.action.NETWORK_STATS_POLL"), 0));
      label27: return;
    }
    catch (Exception localException)
    {
      break label27;
    }
  }

  public static void a(Context paramContext, Intent paramIntent)
  {
    if (!c());
    while (true)
    {
      return;
      synchronized (s)
      {
        if (f == null)
          f = ((PowerManager)paramContext.getSystemService("power")).newWakeLock(1, "AWS NW Stats");
        f.acquire();
        paramIntent.setClass(paramContext, NetworkStatsService.class);
        paramContext.startService(paramIntent);
      }
    }
  }

  private void a(Intent paramIntent)
  {
    while (true)
    {
      try
      {
        a();
        if (paramIntent == null)
          break label712;
        str = paramIntent.getAction();
        synchronized (q)
        {
          t.a("AvastMobileSecurityNetworkInfo", "Handling network info intent " + str);
          if (!this.g)
          {
            this.j = ((AlarmManager)getSystemService("alarm"));
            this.k = ((ConnectivityManager)getSystemService("connectivity"));
            this.i = getPackageManager();
            this.p = a(this.k.getActiveNetworkInfo());
            try
            {
              g();
              i2 = 1;
              i1 = 1;
              this.g = true;
              c localc = a(this.k.getActiveNetworkInfo());
              if (str == null)
              {
                e locale1 = localc.a;
                e locale2 = this.p.a;
                i3 = 0;
                if (locale1 != locale2)
                {
                  t.a("AvastMobileSecurityNetworkInfo", "Connectivity state change " + this.p.a + " -> " + localc.a);
                  if (!a)
                    break label717;
                  t.a("AvastMobileSecurityNetworkInfoUid", "Connectivity state change " + this.p.a + " -> " + localc.a);
                  break label717;
                }
                if (localc.c != this.p.c)
                {
                  t.a("AvastMobileSecurityNetworkInfo", "Network type change " + this.p.c + " -> " + localc.c);
                  if (!a)
                    break label723;
                  t.a("AvastMobileSecurityNetworkInfoUid", "Network type change " + this.p.c + " -> " + localc.c);
                  break label723;
                }
                if (localc.b != this.p.b)
                {
                  t.a("AvastMobileSecurityNetworkInfo", "Roaming change " + this.p.b + " -> " + localc.b);
                  if (!a)
                    break label729;
                  t.a("AvastMobileSecurityNetworkInfoUid", "Roaming change " + this.p.b + " -> " + localc.b);
                  break label729;
                }
                this.p.a("AvastMobileSecurityNetworkInfo");
                if (!a)
                  break label735;
                this.p.a("AvastMobileSecurityNetworkInfoUid");
                break label735;
                if (i1 != 0)
                  b();
                if (i2 != 0)
                  d();
                if (i3 != 0)
                  this.p = localc;
                return;
              }
            }
            catch (Exception localException)
            {
              t.a("AvastAntiTheft", "Issue reading network stats service data", localException);
              this.g = false;
              m();
              continue;
              if (str.equals("com.avast.android.mobilesecurity.action.CLEAN_DATA"))
              {
                h();
                m();
                continue;
              }
              if (str.equals("android.intent.action.BOOT_COMPLETED"))
                break label746;
            }
            if (str.equals("android.intent.action.QUICKBOOT_POWERON"))
              break label746;
            if ((str.equals("android.net.conn.CONNECTIVITY_CHANGE")) || (str.equals("android.intent.action.SERVICE_STATE")))
              continue;
            if (str.equals("com.avast.android.mobilesecurity.action.NETWORK_STATS_POLL"))
            {
              i1 = 1;
              continue;
            }
            if (!str.equals("android.intent.action.ACTION_SHUTDOWN"))
              continue;
            synchronized (q)
            {
              k();
            }
          }
        }
      }
      finally
      {
        m();
      }
      int i1 = 0;
      int i2 = 0;
      continue;
      label712: String str = null;
      continue;
      label717: int i3 = 1;
      continue;
      label723: i3 = 1;
      continue;
      label729: i3 = 1;
      continue;
      label735: if (i3 != 0)
      {
        i1 = 1;
        continue;
        label746: i1 = 1;
      }
    }
  }

  @TargetApi(8)
  public static boolean c()
  {
    try
    {
      long l1 = TrafficStats.getTotalTxBytes();
      boolean bool2 = l1 < -1L;
      bool1 = false;
      if (!bool2);
      while (true)
      {
        return bool1;
        bool1 = true;
      }
    }
    catch (Error localError)
    {
      while (true)
        boolean bool1 = false;
    }
  }

  private void d()
  {
    if (this.l != null)
      this.j.cancel(this.l);
    this.l = PendingIntent.getBroadcast(this, 0, new Intent("com.avast.android.mobilesecurity.action.NETWORK_STATS_POLL"), 0);
    t.a("AvastMobileSecurityNetworkInfo", "Alarm manager poll interval is " + d);
    long l1 = SystemClock.elapsedRealtime();
    this.j.setRepeating(3, l1 + d, d, this.l);
  }

  // ERROR //
  private void e()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 81	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:p	Lcom/avast/android/mobilesecurity/app/trafficinfo/c;
    //   4: getfield 89	com/avast/android/mobilesecurity/app/trafficinfo/c:a	Lcom/avast/android/mobilesecurity/app/trafficinfo/e;
    //   7: getstatic 108	com/avast/android/mobilesecurity/app/trafficinfo/e:b	Lcom/avast/android/mobilesecurity/app/trafficinfo/e;
    //   10: if_acmpne +407 -> 417
    //   13: ldc 185
    //   15: ldc_w 307
    //   18: invokestatic 202	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   21: new 309	java/util/Date
    //   24: dup
    //   25: invokespecial 310	java/util/Date:<init>	()V
    //   28: astore_1
    //   29: invokestatic 301	android/os/SystemClock:elapsedRealtime	()J
    //   32: lstore_2
    //   33: aload_0
    //   34: getfield 74	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:i	Landroid/content/pm/PackageManager;
    //   37: iconst_0
    //   38: invokevirtual 316	android/content/pm/PackageManager:getInstalledApplications	(I)Ljava/util/List;
    //   41: astore 4
    //   43: new 318	java/util/HashSet
    //   46: dup
    //   47: invokespecial 319	java/util/HashSet:<init>	()V
    //   50: astore 5
    //   52: aload 5
    //   54: ldc2_w 288
    //   57: invokestatic 325	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   60: invokeinterface 330 2 0
    //   65: pop
    //   66: aload 4
    //   68: invokeinterface 336 1 0
    //   73: astore 7
    //   75: aload 7
    //   77: invokeinterface 341 1 0
    //   82: ifeq +31 -> 113
    //   85: aload 5
    //   87: aload 7
    //   89: invokeinterface 345 1 0
    //   94: checkcast 347	android/content/pm/ApplicationInfo
    //   97: getfield 350	android/content/pm/ApplicationInfo:uid	I
    //   100: i2l
    //   101: invokestatic 325	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   104: invokeinterface 330 2 0
    //   109: pop
    //   110: goto -35 -> 75
    //   113: aload_0
    //   114: ldc_w 352
    //   117: invokestatic 357	com/avast/android/generic/ad:a	(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    //   120: checkcast 352	com/avast/android/mobilesecurity/t
    //   123: invokevirtual 360	com/avast/android/mobilesecurity/t:aL	()I
    //   126: istore 8
    //   128: aload 5
    //   130: invokeinterface 361 1 0
    //   135: astore 9
    //   137: iconst_0
    //   138: istore 10
    //   140: aload 9
    //   142: invokeinterface 341 1 0
    //   147: ifeq +244 -> 391
    //   150: aload 9
    //   152: invokeinterface 345 1 0
    //   157: checkcast 321	java/lang/Long
    //   160: astore 11
    //   162: aload_0
    //   163: getfield 72	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:h	Ljava/util/HashMap;
    //   166: aload 11
    //   168: invokevirtual 364	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   171: istore 12
    //   173: aconst_null
    //   174: astore 13
    //   176: iload 12
    //   178: ifeq +17 -> 195
    //   181: aload_0
    //   182: getfield 72	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:h	Ljava/util/HashMap;
    //   185: aload 11
    //   187: invokevirtual 368	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   190: checkcast 370	com/avast/android/mobilesecurity/app/trafficinfo/a
    //   193: astore 13
    //   195: aload 13
    //   197: ifnonnull +155 -> 352
    //   200: new 370	com/avast/android/mobilesecurity/app/trafficinfo/a
    //   203: dup
    //   204: aload 11
    //   206: invokevirtual 373	java/lang/Long:longValue	()J
    //   209: aload_0
    //   210: getfield 81	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:p	Lcom/avast/android/mobilesecurity/app/trafficinfo/c;
    //   213: iload 8
    //   215: aload_1
    //   216: lload_2
    //   217: invokespecial 376	com/avast/android/mobilesecurity/app/trafficinfo/a:<init>	(JLcom/avast/android/mobilesecurity/app/trafficinfo/c;ILjava/util/Date;J)V
    //   220: astore 18
    //   222: aload_0
    //   223: getfield 72	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:h	Ljava/util/HashMap;
    //   226: aload 11
    //   228: aload 18
    //   230: invokevirtual 380	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   233: pop
    //   234: aload 18
    //   236: astore 13
    //   238: aload 13
    //   240: invokevirtual 382	com/avast/android/mobilesecurity/app/trafficinfo/a:a	()Z
    //   243: istore 17
    //   245: iload 17
    //   247: ifeq +176 -> 423
    //   250: iconst_1
    //   251: istore 16
    //   253: getstatic 49	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:a	Z
    //   256: ifeq +89 -> 345
    //   259: aload 11
    //   261: invokevirtual 373	java/lang/Long:longValue	()J
    //   264: getstatic 53	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:b	J
    //   267: lcmp
    //   268: ifne +77 -> 345
    //   271: ldc 232
    //   273: new 187	java/lang/StringBuilder
    //   276: dup
    //   277: invokespecial 188	java/lang/StringBuilder:<init>	()V
    //   280: ldc_w 384
    //   283: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   286: getstatic 53	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:b	J
    //   289: invokevirtual 296	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   292: ldc_w 386
    //   295: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   298: invokevirtual 197	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   301: invokestatic 202	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   304: aload 13
    //   306: ldc 232
    //   308: iconst_0
    //   309: invokevirtual 389	com/avast/android/mobilesecurity/app/trafficinfo/a:a	(Ljava/lang/String;Z)V
    //   312: ldc 232
    //   314: new 187	java/lang/StringBuilder
    //   317: dup
    //   318: invokespecial 188	java/lang/StringBuilder:<init>	()V
    //   321: ldc_w 384
    //   324: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   327: getstatic 53	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:b	J
    //   330: invokevirtual 296	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   333: ldc_w 391
    //   336: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   339: invokevirtual 197	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   342: invokestatic 202	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   345: iload 16
    //   347: istore 10
    //   349: goto -209 -> 140
    //   352: aload 13
    //   354: aload_0
    //   355: getfield 81	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:p	Lcom/avast/android/mobilesecurity/app/trafficinfo/c;
    //   358: iload 8
    //   360: aload_1
    //   361: lload_2
    //   362: invokevirtual 394	com/avast/android/mobilesecurity/app/trafficinfo/a:a	(Lcom/avast/android/mobilesecurity/app/trafficinfo/c;ILjava/util/Date;J)V
    //   365: goto -127 -> 238
    //   368: astore 14
    //   370: aload 14
    //   372: astore 15
    //   374: iload 10
    //   376: istore 16
    //   378: ldc 185
    //   380: ldc_w 396
    //   383: aload 15
    //   385: invokestatic 251	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   388: goto -43 -> 345
    //   391: aload_0
    //   392: iconst_1
    //   393: putfield 76	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:m	Z
    //   396: aload_0
    //   397: invokespecial 398	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:j	()V
    //   400: iload 10
    //   402: ifeq +7 -> 409
    //   405: aload_0
    //   406: invokespecial 400	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:f	()V
    //   409: ldc 185
    //   411: ldc_w 402
    //   414: invokestatic 202	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   417: return
    //   418: astore 15
    //   420: goto -42 -> 378
    //   423: iload 10
    //   425: istore 16
    //   427: goto -174 -> 253
    //
    // Exception table:
    //   from	to	target	type
    //   200	245	368	java/lang/Exception
    //   352	365	368	java/lang/Exception
    //   253	345	418	java/lang/Exception
  }

  // ERROR //
  private void f()
  {
    // Byte code:
    //   0: getstatic 60	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:q	Ljava/lang/Object;
    //   3: astore_1
    //   4: aload_1
    //   5: monitorenter
    //   6: aload_0
    //   7: getfield 76	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:m	Z
    //   10: ifeq +358 -> 368
    //   13: invokestatic 407	java/lang/System:currentTimeMillis	()J
    //   16: lstore_3
    //   17: ldc 185
    //   19: new 187	java/lang/StringBuilder
    //   22: dup
    //   23: invokespecial 188	java/lang/StringBuilder:<init>	()V
    //   26: ldc_w 409
    //   29: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: lload_3
    //   33: invokevirtual 296	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   36: ldc_w 411
    //   39: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: invokevirtual 197	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   45: invokestatic 202	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   48: invokestatic 407	java/lang/System:currentTimeMillis	()J
    //   51: lstore 5
    //   53: new 413	java/util/ArrayList
    //   56: dup
    //   57: invokespecial 414	java/util/ArrayList:<init>	()V
    //   60: astore 7
    //   62: aload_0
    //   63: getfield 72	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:h	Ljava/util/HashMap;
    //   66: invokevirtual 418	java/util/HashMap:keySet	()Ljava/util/Set;
    //   69: invokeinterface 361 1 0
    //   74: astore 16
    //   76: iconst_0
    //   77: istore 11
    //   79: aload 16
    //   81: invokeinterface 341 1 0
    //   86: ifeq +285 -> 371
    //   89: aload 16
    //   91: invokeinterface 345 1 0
    //   96: checkcast 321	java/lang/Long
    //   99: astore 21
    //   101: aload_0
    //   102: getfield 72	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:h	Ljava/util/HashMap;
    //   105: aload 21
    //   107: invokevirtual 368	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   110: checkcast 370	com/avast/android/mobilesecurity/app/trafficinfo/a
    //   113: astore 22
    //   115: aload 22
    //   117: invokevirtual 382	com/avast/android/mobilesecurity/app/trafficinfo/a:a	()Z
    //   120: ifeq +39 -> 159
    //   123: ldc 185
    //   125: new 187	java/lang/StringBuilder
    //   128: dup
    //   129: invokespecial 188	java/lang/StringBuilder:<init>	()V
    //   132: ldc_w 420
    //   135: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   138: aload 21
    //   140: invokevirtual 228	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   143: invokevirtual 197	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   146: invokestatic 202	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   149: aload 22
    //   151: aload 7
    //   153: invokevirtual 423	com/avast/android/mobilesecurity/app/trafficinfo/a:a	(Ljava/util/ArrayList;)V
    //   156: iinc 11 1
    //   159: getstatic 49	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:a	Z
    //   162: ifeq -83 -> 79
    //   165: aload 21
    //   167: invokevirtual 373	java/lang/Long:longValue	()J
    //   170: getstatic 53	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:b	J
    //   173: lcmp
    //   174: ifne -95 -> 79
    //   177: ldc 232
    //   179: new 187	java/lang/StringBuilder
    //   182: dup
    //   183: invokespecial 188	java/lang/StringBuilder:<init>	()V
    //   186: ldc_w 425
    //   189: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   192: aload 21
    //   194: invokevirtual 228	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   197: ldc_w 386
    //   200: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   203: invokevirtual 197	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   206: invokestatic 202	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   209: aload 22
    //   211: ldc 232
    //   213: iconst_0
    //   214: invokevirtual 389	com/avast/android/mobilesecurity/app/trafficinfo/a:a	(Ljava/lang/String;Z)V
    //   217: ldc 232
    //   219: new 187	java/lang/StringBuilder
    //   222: dup
    //   223: invokespecial 188	java/lang/StringBuilder:<init>	()V
    //   226: ldc_w 425
    //   229: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   232: aload 21
    //   234: invokevirtual 228	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   237: ldc_w 391
    //   240: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   243: invokevirtual 197	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   246: invokestatic 202	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   249: goto -170 -> 79
    //   252: astore 8
    //   254: iload 11
    //   256: istore 9
    //   258: ldc 185
    //   260: ldc_w 427
    //   263: aload 8
    //   265: invokestatic 251	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   268: iload 9
    //   270: istore 11
    //   272: invokestatic 407	java/lang/System:currentTimeMillis	()J
    //   275: lstore 12
    //   277: ldc 185
    //   279: new 187	java/lang/StringBuilder
    //   282: dup
    //   283: invokespecial 188	java/lang/StringBuilder:<init>	()V
    //   286: ldc_w 429
    //   289: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   292: lload 12
    //   294: invokevirtual 296	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   297: ldc_w 431
    //   300: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   303: lload 12
    //   305: lload_3
    //   306: lsub
    //   307: invokevirtual 296	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   310: ldc_w 433
    //   313: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   316: invokevirtual 197	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   319: invokestatic 202	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   322: aload_0
    //   323: invokespecial 398	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:j	()V
    //   326: iload 11
    //   328: ifle +35 -> 363
    //   331: new 133	android/content/Intent
    //   334: dup
    //   335: invokespecial 434	android/content/Intent:<init>	()V
    //   338: astore 14
    //   340: aload 14
    //   342: ldc_w 436
    //   345: invokevirtual 440	android/content/Intent:setAction	(Ljava/lang/String;)Landroid/content/Intent;
    //   348: pop
    //   349: aload 14
    //   351: invokestatic 443	com/avast/android/generic/util/ae:a	(Landroid/content/Intent;)V
    //   354: aload_0
    //   355: aload 14
    //   357: ldc_w 445
    //   360: invokevirtual 449	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:sendBroadcast	(Landroid/content/Intent;Ljava/lang/String;)V
    //   363: aload_0
    //   364: iconst_0
    //   365: putfield 76	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:m	Z
    //   368: aload_1
    //   369: monitorexit
    //   370: return
    //   371: aload_0
    //   372: invokevirtual 453	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:getContentResolver	()Landroid/content/ContentResolver;
    //   375: ldc_w 455
    //   378: aload 7
    //   380: invokevirtual 461	android/content/ContentResolver:applyBatch	(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    //   383: pop
    //   384: invokestatic 407	java/lang/System:currentTimeMillis	()J
    //   387: lstore 19
    //   389: ldc 185
    //   391: new 187	java/lang/StringBuilder
    //   394: dup
    //   395: invokespecial 188	java/lang/StringBuilder:<init>	()V
    //   398: ldc_w 463
    //   401: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   404: lload 19
    //   406: lload 5
    //   408: lsub
    //   409: invokevirtual 296	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   412: ldc_w 465
    //   415: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   418: invokevirtual 197	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   421: invokestatic 202	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   424: goto -152 -> 272
    //   427: astore 10
    //   429: aload 10
    //   431: athrow
    //   432: astore_2
    //   433: aload_1
    //   434: monitorexit
    //   435: aload_2
    //   436: athrow
    //   437: astore 17
    //   439: ldc_w 467
    //   442: ldc_w 469
    //   445: aload 17
    //   447: invokestatic 251	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   450: aload 17
    //   452: athrow
    //   453: astore 8
    //   455: iconst_0
    //   456: istore 9
    //   458: goto -200 -> 258
    //
    // Exception table:
    //   from	to	target	type
    //   79	249	252	java/lang/Exception
    //   384	424	252	java/lang/Exception
    //   439	453	252	java/lang/Exception
    //   62	76	427	finally
    //   79	249	427	finally
    //   258	268	427	finally
    //   371	384	427	finally
    //   384	424	427	finally
    //   439	453	427	finally
    //   6	62	432	finally
    //   272	370	432	finally
    //   429	435	432	finally
    //   371	384	437	java/lang/Exception
    //   62	76	453	java/lang/Exception
  }

  // ERROR //
  @TargetApi(8)
  private void g()
  {
    // Byte code:
    //   0: getstatic 60	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:q	Ljava/lang/Object;
    //   3: astore_1
    //   4: aload_1
    //   5: monitorenter
    //   6: invokestatic 407	java/lang/System:currentTimeMillis	()J
    //   9: lstore_3
    //   10: ldc 185
    //   12: new 187	java/lang/StringBuilder
    //   15: dup
    //   16: invokespecial 188	java/lang/StringBuilder:<init>	()V
    //   19: ldc_w 471
    //   22: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   25: lload_3
    //   26: invokevirtual 296	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   29: ldc_w 411
    //   32: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: invokevirtual 197	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   38: invokestatic 202	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   41: invokestatic 287	android/net/TrafficStats:getTotalTxBytes	()J
    //   44: lstore 5
    //   46: invokestatic 474	android/net/TrafficStats:getTotalRxBytes	()J
    //   49: lstore 7
    //   51: lload 5
    //   53: ldc2_w 288
    //   56: lcmp
    //   57: ifne +8 -> 65
    //   60: aload_1
    //   61: monitorexit
    //   62: goto +483 -> 545
    //   65: aload_0
    //   66: getfield 72	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:h	Ljava/util/HashMap;
    //   69: invokevirtual 477	java/util/HashMap:clear	()V
    //   72: aload_0
    //   73: ldc_w 352
    //   76: invokestatic 357	com/avast/android/generic/ad:a	(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    //   79: checkcast 352	com/avast/android/mobilesecurity/t
    //   82: invokevirtual 360	com/avast/android/mobilesecurity/t:aL	()I
    //   85: istore 9
    //   87: aload_0
    //   88: invokevirtual 453	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:getContentResolver	()Landroid/content/ContentResolver;
    //   91: invokestatic 482	com/avast/android/mobilesecurity/r:a	()Landroid/net/Uri;
    //   94: getstatic 485	com/avast/android/mobilesecurity/r:a	[Ljava/lang/String;
    //   97: aconst_null
    //   98: aconst_null
    //   99: aconst_null
    //   100: invokevirtual 489	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   103: astore 10
    //   105: aload 10
    //   107: ifnull +53 -> 160
    //   110: aload 10
    //   112: invokeinterface 494 1 0
    //   117: istore 23
    //   119: iload 23
    //   121: ifeq +27 -> 148
    //   124: aload 10
    //   126: aload_0
    //   127: getfield 72	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:h	Ljava/util/HashMap;
    //   130: invokestatic 497	com/avast/android/mobilesecurity/app/trafficinfo/a:a	(Landroid/database/Cursor;Ljava/util/HashMap;)Lcom/avast/android/mobilesecurity/app/trafficinfo/a;
    //   133: pop
    //   134: aload 10
    //   136: invokeinterface 500 1 0
    //   141: istore 26
    //   143: iload 26
    //   145: ifne -21 -> 124
    //   148: aload 10
    //   150: ifnull +10 -> 160
    //   153: aload 10
    //   155: invokeinterface 503 1 0
    //   160: invokestatic 407	java/lang/System:currentTimeMillis	()J
    //   163: lstore 11
    //   165: ldc 185
    //   167: new 187	java/lang/StringBuilder
    //   170: dup
    //   171: invokespecial 188	java/lang/StringBuilder:<init>	()V
    //   174: ldc_w 505
    //   177: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   180: lload 11
    //   182: invokevirtual 296	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   185: ldc_w 507
    //   188: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   191: invokevirtual 197	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   194: invokestatic 202	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   197: aload_0
    //   198: getfield 72	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:h	Ljava/util/HashMap;
    //   201: ldc2_w 288
    //   204: invokestatic 325	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   207: invokevirtual 364	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   210: istore 13
    //   212: iconst_0
    //   213: istore 14
    //   215: iload 13
    //   217: ifeq +53 -> 270
    //   220: aload_0
    //   221: getfield 72	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:h	Ljava/util/HashMap;
    //   224: ldc2_w 288
    //   227: invokestatic 325	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   230: invokevirtual 368	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   233: checkcast 370	com/avast/android/mobilesecurity/app/trafficinfo/a
    //   236: astore 19
    //   238: lload 5
    //   240: aload 19
    //   242: getfield 508	com/avast/android/mobilesecurity/app/trafficinfo/a:b	J
    //   245: lcmp
    //   246: iflt +300 -> 546
    //   249: lload 7
    //   251: aload 19
    //   253: getfield 509	com/avast/android/mobilesecurity/app/trafficinfo/a:c	J
    //   256: lcmp
    //   257: istore 20
    //   259: iconst_0
    //   260: istore 14
    //   262: iload 20
    //   264: ifge +6 -> 270
    //   267: goto +279 -> 546
    //   270: new 309	java/util/Date
    //   273: dup
    //   274: invokespecial 310	java/util/Date:<init>	()V
    //   277: astore 15
    //   279: invokestatic 301	android/os/SystemClock:elapsedRealtime	()J
    //   282: lstore 16
    //   284: aload_0
    //   285: getfield 72	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:h	Ljava/util/HashMap;
    //   288: invokevirtual 513	java/util/HashMap:values	()Ljava/util/Collection;
    //   291: invokeinterface 516 1 0
    //   296: astore 18
    //   298: aload 18
    //   300: invokeinterface 341 1 0
    //   305: ifeq +69 -> 374
    //   308: aload 18
    //   310: invokeinterface 345 1 0
    //   315: checkcast 370	com/avast/android/mobilesecurity/app/trafficinfo/a
    //   318: iconst_1
    //   319: aload_0
    //   320: getfield 81	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:p	Lcom/avast/android/mobilesecurity/app/trafficinfo/c;
    //   323: aload 15
    //   325: lload 16
    //   327: iload 14
    //   329: iload 9
    //   331: invokevirtual 519	com/avast/android/mobilesecurity/app/trafficinfo/a:a	(ZLcom/avast/android/mobilesecurity/app/trafficinfo/c;Ljava/util/Date;JZI)V
    //   334: goto -36 -> 298
    //   337: astore_2
    //   338: aload_1
    //   339: monitorexit
    //   340: aload_2
    //   341: athrow
    //   342: astore 25
    //   344: ldc 185
    //   346: ldc_w 521
    //   349: aload 25
    //   351: invokestatic 251	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   354: goto -220 -> 134
    //   357: astore 21
    //   359: aload 10
    //   361: ifnull +10 -> 371
    //   364: aload 10
    //   366: invokeinterface 503 1 0
    //   371: aload 21
    //   373: athrow
    //   374: aload_0
    //   375: invokespecial 398	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:j	()V
    //   378: getstatic 49	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:a	Z
    //   381: ifeq +107 -> 488
    //   384: aload_0
    //   385: getfield 72	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:h	Ljava/util/HashMap;
    //   388: getstatic 53	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:b	J
    //   391: invokestatic 325	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   394: invokevirtual 364	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   397: ifeq +102 -> 499
    //   400: ldc 232
    //   402: new 187	java/lang/StringBuilder
    //   405: dup
    //   406: invokespecial 188	java/lang/StringBuilder:<init>	()V
    //   409: ldc_w 523
    //   412: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   415: getstatic 53	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:b	J
    //   418: invokevirtual 296	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   421: ldc_w 386
    //   424: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   427: invokevirtual 197	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   430: invokestatic 202	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   433: aload_0
    //   434: getfield 72	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:h	Ljava/util/HashMap;
    //   437: getstatic 53	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:b	J
    //   440: invokestatic 325	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   443: invokevirtual 368	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   446: checkcast 370	com/avast/android/mobilesecurity/app/trafficinfo/a
    //   449: ldc 232
    //   451: iconst_0
    //   452: invokevirtual 389	com/avast/android/mobilesecurity/app/trafficinfo/a:a	(Ljava/lang/String;Z)V
    //   455: ldc 232
    //   457: new 187	java/lang/StringBuilder
    //   460: dup
    //   461: invokespecial 188	java/lang/StringBuilder:<init>	()V
    //   464: ldc_w 523
    //   467: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   470: getstatic 53	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:b	J
    //   473: invokevirtual 296	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   476: ldc_w 391
    //   479: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   482: invokevirtual 197	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   485: invokestatic 202	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   488: aload_0
    //   489: iload 14
    //   491: putfield 76	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:m	Z
    //   494: aload_1
    //   495: monitorexit
    //   496: goto +49 -> 545
    //   499: ldc 232
    //   501: new 187	java/lang/StringBuilder
    //   504: dup
    //   505: invokespecial 188	java/lang/StringBuilder:<init>	()V
    //   508: ldc_w 523
    //   511: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   514: getstatic 53	com/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService:b	J
    //   517: invokevirtual 296	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   520: ldc_w 525
    //   523: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   526: invokevirtual 197	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   529: invokestatic 202	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   532: goto -44 -> 488
    //   535: astore 24
    //   537: goto -377 -> 160
    //   540: astore 22
    //   542: goto -171 -> 371
    //   545: return
    //   546: iconst_1
    //   547: istore 14
    //   549: goto -279 -> 270
    //
    // Exception table:
    //   from	to	target	type
    //   6	105	337	finally
    //   153	160	337	finally
    //   160	340	337	finally
    //   364	371	337	finally
    //   371	532	337	finally
    //   124	134	342	java/lang/Exception
    //   110	119	357	finally
    //   124	134	357	finally
    //   134	143	357	finally
    //   344	354	357	finally
    //   153	160	535	java/lang/Exception
    //   364	371	540	java/lang/Exception
  }

  private void h()
  {
    synchronized (q)
    {
      try
      {
        i();
        return;
      }
      catch (Exception localException)
      {
        while (true)
          t.a("AvastMobileSecurityNetworkInfo", "Clean data failed", localException);
      }
    }
  }

  private void i()
  {
    if (this.h != null)
      this.h.clear();
    getContentResolver().delete(r.a(), null, null);
    Intent localIntent = new Intent();
    localIntent.setAction("com.avast.android.mobilesecurity.trafficinfo.STATS_DB_UPDATED");
    ae.a(localIntent);
    sendBroadcast(localIntent, "com.avast.android.generic.CENTRAL_SERVICE_PERMISSION");
    stopSelf();
  }

  private void j()
  {
    if (m.a())
    {
      t.a("AvastMobileSecurityNetworkInfo", "--- NETWORK POLL DUMP ---");
      a locala = (a)this.h.get(Long.valueOf(-1L));
      if (locala != null)
        locala.a("AvastMobileSecurityNetworkInfo", true);
      t.a("AvastMobileSecurityNetworkInfo", "--- END NETWORK POLL DUMP ---");
    }
  }

  private void k()
  {
    synchronized (q)
    {
      if (this.g)
      {
        l();
        this.g = false;
      }
      return;
    }
  }

  private void l()
  {
    synchronized (r)
    {
      this.n.quit();
      o = null;
      f();
      m();
      return;
    }
  }

  private void m()
  {
    try
    {
      synchronized (s)
      {
        if (f != null)
          f.release();
        label18: return;
      }
    }
    catch (Exception localException)
    {
      break label18;
    }
  }

  public void a()
  {
    if (a);
    while (true)
    {
      return;
      ApplicationInfo localApplicationInfo;
      try
      {
        localApplicationInfo = getPackageManager().getApplicationInfo("com.avast.dummy.traffictester", 0);
        if (localApplicationInfo != null)
          break label51;
        throw new Exception();
      }
      catch (Exception localException)
      {
        a = false;
        b = -999999999L;
        d = c;
      }
      continue;
      label51: a = true;
      b = localApplicationInfo.uid;
      d = e;
      t.a("AvastMobileSecurityNetworkInfoUid", "Found traffic tester app with UID " + b + ", enabling UID tracing.");
    }
  }

  protected void b()
  {
    if (!this.g);
    while (true)
    {
      return;
      synchronized (q)
      {
        e();
      }
    }
  }

  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onDestroy()
  {
    k();
  }

  public void onStart(Intent paramIntent, int paramInt)
  {
    synchronized (r)
    {
      if (o == null)
      {
        HandlerThread localHandlerThread = new HandlerThread("NetworkStatsService");
        localHandlerThread.start();
        this.n = localHandlerThread.getLooper();
        o = new d(this, this.n);
      }
      Message localMessage = o.obtainMessage();
      localMessage.arg1 = paramInt;
      localMessage.obj = paramIntent;
      o.sendMessage(localMessage);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.trafficinfo.NetworkStatsService
 * JD-Core Version:    0.6.2
 */