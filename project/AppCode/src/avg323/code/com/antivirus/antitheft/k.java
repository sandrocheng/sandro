package com.antivirus.antitheft;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.provider.Settings.System;
import android.text.TextUtils;
import com.antivirus.AVService;
import com.antivirus.ui.antitheft.StopShoutActivity;
import com.antivirus.wipe.ak;
import java.util.HashMap;

public class k
{
  BroadcastReceiver a = new l(this);
  MediaPlayer b = null;
  com.antivirus.core.b c;
  private final int d = 1;
  private final int e = 2;
  private final int f = 3;
  private final int g = 4;
  private final int h = 5;
  private final int i = 6;
  private final int j = 9;
  private final int k = 10;
  private final int l = 11;
  private final int m = 12;
  private final int n = 13;
  private final int o = 14;
  private HashMap p = new HashMap();
  private com.avg.toolkit.UID.a q;
  private long r = 0L;
  private boolean s = false;
  private int t = 0;
  private NotificationManager u;

  public k(com.antivirus.core.b paramb, com.avg.toolkit.UID.a parama)
  {
    this.c = paramb;
    this.p.put("findmyphone", Integer.valueOf(1));
    this.p.put("lockmyphone", Integer.valueOf(2));
    this.p.put("unlockmyphone", Integer.valueOf(14));
    this.p.put("wipemyphone", Integer.valueOf(3));
    this.p.put("scanmyphone", Integer.valueOf(4));
    this.p.put("unroammyphone", Integer.valueOf(5));
    this.p.put("foundmyphone", Integer.valueOf(6));
    this.p.put("screammyphone", Integer.valueOf(9));
    this.p.put("lightmyphone", Integer.valueOf(10));
    this.p.put("connectmyphone", Integer.valueOf(11));
    this.p.put("featuremyphone", Integer.valueOf(12));
    this.p.put("locatemyphone", Integer.valueOf(13));
    this.q = parama;
  }

  private void a(Context paramContext, boolean paramBoolean)
  {
    a(paramContext, paramBoolean, null, null);
  }

  private void a(Context paramContext, boolean paramBoolean, String paramString1, String paramString2)
  {
    if (!com.antivirus.c.d())
    {
      b.a(paramContext, null);
      return;
    }
    while (true)
    {
      String str1;
      try
      {
        str1 = Settings.System.getString(paramContext.getContentResolver(), "location_providers_allowed");
        if (str1 != null)
          break label359;
        str2 = "";
        long l1 = 300000L;
        long l2 = 60000L;
        long l3 = l1 / l2;
        long l5;
        w localw;
        Handler localHandler;
        try
        {
          if (!TextUtils.isEmpty(paramString1))
          {
            l1 = Long.parseLong(paramString1);
            if (l1 <= 0L)
              l1 = 300000L;
          }
          if (!TextUtils.isEmpty(paramString2))
          {
            long l9 = Long.parseLong(paramString2);
            l2 = l9;
            if (l2 <= 0L)
              l2 = 60000L;
          }
          if (l3 <= 0L)
            l3 = 1L;
          long l7 = l3;
          long l8 = l2;
          l4 = l7;
          l5 = l1;
          l6 = l8;
          localw = new w();
          localw.a(paramContext, this.c);
          b.a(paramContext, localw);
          if (paramBoolean)
            new ad(paramContext).a(2131034114);
          HandlerThread localHandlerThread = new HandlerThread("LR");
          localHandlerThread.start();
          localHandler = new Handler(localHandlerThread.getLooper());
          p localp = new p(this, paramContext, localw);
          int i1 = 0;
          if (i1 < l4)
          {
            localHandler.postDelayed(localp, l6 * (i1 + 1));
            i1++;
            continue;
          }
        }
        catch (Exception localException2)
        {
          com.avg.toolkit.f.a.a(localException2);
          long l4 = 300000L / 60000L;
          l5 = 300000L;
          long l6 = 60000L;
          continue;
        }
        if (!str2.contains("gps"))
        {
          if (Integer.parseInt(Build.VERSION.SDK) < 5)
            break label350;
          b(paramContext);
          localHandler.postDelayed(new q(this, paramContext), l5);
        }
        localw.a(paramContext, this.c, l5);
      }
      catch (Exception localException1)
      {
        com.avg.toolkit.f.a.a(localException1);
      }
      break;
      label350: b(paramContext, true);
      continue;
      label359: String str2 = str1;
    }
  }

  private void a(Bundle paramBundle, Context paramContext, String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString2 == null))
      a(paramContext, true);
    while (true)
    {
      return;
      a(paramContext, true, paramString1, paramString2);
    }
  }

  private void b()
  {
    if (this.u != null)
      new com.avg.ui.general.c.c(this.u, 9000, 0L);
  }

  private void b(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setClassName("com.android.settings", "com.android.settings.widget.SettingsAppWidgetProvider");
    localIntent.addCategory("android.intent.category.ALTERNATIVE");
    localIntent.setData(Uri.parse("3"));
    paramContext.sendOrderedBroadcast(localIntent, null, this.a, null, -1, null, null);
  }

  private void b(Context paramContext, boolean paramBoolean)
  {
    Uri localUri;
    ContentValues localContentValues;
    if (Integer.parseInt(Build.VERSION.SDK) <= 5)
    {
      localUri = Uri.parse("content://settings/SECURE");
      localContentValues = new ContentValues();
      localContentValues.put("name", "location_providers_allowed");
      if (!paramBoolean)
        break label79;
      localContentValues.put("value", "network,gps");
      paramContext.getContentResolver().insert(localUri, localContentValues);
    }
    while (true)
    {
      paramContext.getContentResolver().insert(localUri, localContentValues);
      c(paramContext);
      return;
      label79: localContentValues.put("value", "");
    }
  }

  private void b(Bundle paramBundle, Context paramContext, String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString2 == null))
      a(paramContext, false);
    while (true)
    {
      return;
      a(paramContext, false, paramString1, paramString2);
    }
  }

  private void c(Context paramContext)
  {
    WifiManager localWifiManager = (WifiManager)paramContext.getSystemService("wifi");
    boolean bool1 = localWifiManager.isWifiEnabled();
    if (!bool1);
    for (boolean bool2 = true; ; bool2 = false)
    {
      localWifiManager.setWifiEnabled(bool2);
      localWifiManager.setWifiEnabled(bool1);
      return;
    }
  }

  private void c(Bundle paramBundle, Context paramContext, String paramString1, String paramString2)
  {
    com.antivirus.c.f(false);
  }

  private void d(Bundle paramBundle, Context paramContext, String paramString1, String paramString2)
  {
    if ((paramBundle.getString("from") != null) && (paramBundle.getString("from").equals("sms")))
      if (com.antivirus.c.p())
        b.a(paramContext);
    while (true)
    {
      return;
      if (com.antivirus.c.p())
        com.antivirus.c.f(false);
    }
  }

  private void e(Bundle paramBundle, Context paramContext, String paramString1, String paramString2)
  {
    if ((paramBundle.getString("fromsms") != null) && (paramBundle.getString("fromsms").equals("random")))
      if (!com.antivirus.c.p())
        b.a(paramContext);
    while (true)
    {
      return;
      if (!com.antivirus.c.p())
      {
        com.antivirus.c.f(true);
        com.antivirus.c.h(paramString1);
        if (paramString2 != null)
          com.antivirus.c.e(paramString2);
        AVService.a(paramContext, 9000, 9002, null);
      }
    }
  }

  private void f(Bundle paramBundle, Context paramContext, String paramString1, String paramString2)
  {
    AVService.a(paramContext, 2000, 107, null);
  }

  private void g(Bundle paramBundle, Context paramContext, String paramString1, String paramString2)
  {
  }

  private void h(Bundle paramBundle, Context paramContext, String paramString1, String paramString2)
  {
    if ((paramBundle.getString("from") != null) && (paramBundle.getString("from").equals("sms")));
    while (true)
    {
      return;
      ak localak = new ak(paramContext);
      ak.a();
      localak.g();
      localak.h();
      localak.i();
      ak.j();
    }
  }

  private void i(Bundle paramBundle, Context paramContext, String paramString1, String paramString2)
  {
    new Thread(new m(this, paramContext)).start();
  }

  private void j(Bundle paramBundle, Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      new Thread(new o(this)).start();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  // ERROR //
  public void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 336	com/antivirus/antitheft/k:b	()V
    //   4: aload_0
    //   5: getfield 79	com/antivirus/antitheft/k:b	Landroid/media/MediaPlayer;
    //   8: ifnull +22 -> 30
    //   11: aload_0
    //   12: getfield 79	com/antivirus/antitheft/k:b	Landroid/media/MediaPlayer;
    //   15: invokevirtual 396	android/media/MediaPlayer:stop	()V
    //   18: aload_0
    //   19: getfield 79	com/antivirus/antitheft/k:b	Landroid/media/MediaPlayer;
    //   22: invokevirtual 399	android/media/MediaPlayer:release	()V
    //   25: aload_0
    //   26: aconst_null
    //   27: putfield 79	com/antivirus/antitheft/k:b	Landroid/media/MediaPlayer;
    //   30: return
    //   31: astore_2
    //   32: aload_0
    //   33: getfield 79	com/antivirus/antitheft/k:b	Landroid/media/MediaPlayer;
    //   36: invokevirtual 399	android/media/MediaPlayer:release	()V
    //   39: aload_0
    //   40: aconst_null
    //   41: putfield 79	com/antivirus/antitheft/k:b	Landroid/media/MediaPlayer;
    //   44: goto -14 -> 30
    //   47: astore_1
    //   48: aload_0
    //   49: getfield 79	com/antivirus/antitheft/k:b	Landroid/media/MediaPlayer;
    //   52: invokevirtual 399	android/media/MediaPlayer:release	()V
    //   55: aload_0
    //   56: aconst_null
    //   57: putfield 79	com/antivirus/antitheft/k:b	Landroid/media/MediaPlayer;
    //   60: aload_1
    //   61: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   11	18	31	java/lang/Exception
    //   11	18	47	finally
  }

  protected void a(Context paramContext)
  {
    if (this.u == null)
      this.u = ((NotificationManager)paramContext.getSystemService("notification"));
    Notification localNotification = new Notification(2130837609, com.antivirus.m.a(paramContext, 2131296725), System.currentTimeMillis());
    localNotification.flags = (0x2 | localNotification.flags);
    PendingIntent localPendingIntent = PendingIntent.getActivity(paramContext, 0, new Intent(paramContext, StopShoutActivity.class), 134217728);
    localNotification.setLatestEventInfo(paramContext, com.antivirus.m.a(paramContext, 2131296726), com.antivirus.m.a(paramContext, 2131296727), localPendingIntent);
    this.u.notify(9000, localNotification);
  }

  public void a(Bundle paramBundle, Context paramContext)
  {
    int i1 = 2;
    if (paramBundle == null);
    while (true)
    {
      return;
      String str = paramBundle.getString("body");
      if ((!TextUtils.isEmpty(str)) && (str.toLowerCase().contains("myphone")))
        try
        {
          String[] arrayOfString = str.replaceFirst("^\\s+", "").split("\\s");
          if ((arrayOfString != null) && (arrayOfString.length > 1))
          {
            Bundle localBundle = new Bundle();
            localBundle.putString(arrayOfString[0], arrayOfString[1]);
            if (arrayOfString.length > i1)
            {
              StringBuilder localStringBuilder = new StringBuilder();
              while (i1 < arrayOfString.length)
              {
                localStringBuilder.append(arrayOfString[i1]);
                localStringBuilder.append(" ");
                i1++;
              }
              localBundle.putString("body", localStringBuilder.toString());
            }
            localBundle.putString("fromsms", "random");
            b(localBundle, paramContext);
          }
        }
        catch (Exception localException)
        {
          com.avg.toolkit.f.a.a(localException);
        }
    }
  }

  // ERROR //
  public void b(Bundle paramBundle, Context paramContext)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +4 -> 5
    //   4: return
    //   5: aload_1
    //   6: ldc_w 355
    //   9: invokevirtual 489	android/os/Bundle:containsKey	(Ljava/lang/String;)Z
    //   12: istore 4
    //   14: iload 4
    //   16: ifeq +64 -> 80
    //   19: aload_2
    //   20: ldc_w 491
    //   23: invokevirtual 322	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   26: checkcast 493	android/net/ConnectivityManager
    //   29: invokevirtual 497	android/net/ConnectivityManager:getActiveNetworkInfo	()Landroid/net/NetworkInfo;
    //   32: astore 14
    //   34: aload 14
    //   36: ifnull +14 -> 50
    //   39: aload 14
    //   41: invokevirtual 503	android/net/NetworkInfo:getState	()Landroid/net/NetworkInfo$State;
    //   44: getstatic 509	android/net/NetworkInfo$State:CONNECTED	Landroid/net/NetworkInfo$State;
    //   47: if_acmpeq +33 -> 80
    //   50: aload_2
    //   51: ldc_w 318
    //   54: invokevirtual 322	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   57: checkcast 324	android/net/wifi/WifiManager
    //   60: checkcast 324	android/net/wifi/WifiManager
    //   63: astore 15
    //   65: aload 15
    //   67: invokevirtual 327	android/net/wifi/WifiManager:isWifiEnabled	()Z
    //   70: ifne +10 -> 80
    //   73: aload 15
    //   75: iconst_1
    //   76: invokevirtual 331	android/net/wifi/WifiManager:setWifiEnabled	(Z)Z
    //   79: pop
    //   80: aload_1
    //   81: invokevirtual 513	android/os/Bundle:keySet	()Ljava/util/Set;
    //   84: invokeinterface 519 1 0
    //   89: astore 5
    //   91: aload 5
    //   93: invokeinterface 524 1 0
    //   98: ifeq -94 -> 4
    //   101: aload 5
    //   103: invokeinterface 528 1 0
    //   108: checkcast 223	java/lang/String
    //   111: astore 6
    //   113: aload 6
    //   115: ifnull -24 -> 91
    //   118: aload_1
    //   119: aload 6
    //   121: invokevirtual 343	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   124: astore 7
    //   126: aload 7
    //   128: ifnull -37 -> 91
    //   131: aload 7
    //   133: invokevirtual 453	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   136: astore 8
    //   138: aload_0
    //   139: getfield 121	com/antivirus/antitheft/k:q	Lcom/avg/toolkit/UID/a;
    //   142: invokevirtual 532	com/avg/toolkit/UID/a:a	()Ljava/lang/String;
    //   145: astore 9
    //   147: aload 9
    //   149: ifnull -58 -> 91
    //   152: aload 9
    //   154: invokevirtual 453	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   157: astore 10
    //   159: aload_0
    //   160: getfield 68	com/antivirus/antitheft/k:p	Ljava/util/HashMap;
    //   163: aload 6
    //   165: invokevirtual 453	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   168: invokevirtual 536	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   171: ifnull -80 -> 91
    //   174: aload 8
    //   176: aload 10
    //   178: invokevirtual 349	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   181: ifne +29 -> 210
    //   184: aload 8
    //   186: aload 10
    //   188: bipush 246
    //   190: aload 10
    //   192: invokevirtual 540	java/lang/String:length	()I
    //   195: iadd
    //   196: aload 10
    //   198: invokevirtual 540	java/lang/String:length	()I
    //   201: invokevirtual 544	java/lang/String:substring	(II)Ljava/lang/String;
    //   204: invokevirtual 547	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   207: ifeq -116 -> 91
    //   210: aload_1
    //   211: ldc_w 549
    //   214: invokevirtual 343	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   217: astore 11
    //   219: aload_1
    //   220: ldc_w 551
    //   223: invokevirtual 343	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   226: astore 12
    //   228: aload_0
    //   229: getfield 68	com/antivirus/antitheft/k:p	Ljava/util/HashMap;
    //   232: aload 6
    //   234: invokevirtual 453	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   237: invokevirtual 536	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   240: checkcast 89	java/lang/Integer
    //   243: invokevirtual 554	java/lang/Integer:intValue	()I
    //   246: tableswitch	default:+249 -> 495, 1:+70->316, 2:+171->417, 3:+210->456, 4:+184->430, 5:+197->443, 6:+145->391, 7:+249->495, 8:+249->495, 9:+223->469, 10:+236->482, 11:+-155->91, 12:+249->495, 13:+101->347, 14:+158->404
    //   317: aload_1
    //   318: aload_2
    //   319: aload 11
    //   321: aload 12
    //   323: invokespecial 556	com/antivirus/antitheft/k:a	(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   326: goto -235 -> 91
    //   329: astore_3
    //   330: aload_3
    //   331: invokestatic 219	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   334: goto -330 -> 4
    //   337: astore 13
    //   339: aload 13
    //   341: invokestatic 219	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   344: goto -264 -> 80
    //   347: invokestatic 418	java/lang/System:currentTimeMillis	()J
    //   350: aload_0
    //   351: getfield 77	com/antivirus/antitheft/k:r	J
    //   354: lsub
    //   355: ldc2_w 557
    //   358: lcmp
    //   359: ifgt +12 -> 371
    //   362: aload_0
    //   363: getfield 77	com/antivirus/antitheft/k:r	J
    //   366: lconst_0
    //   367: lcmp
    //   368: ifge -277 -> 91
    //   371: aload_0
    //   372: invokestatic 418	java/lang/System:currentTimeMillis	()J
    //   375: putfield 77	com/antivirus/antitheft/k:r	J
    //   378: aload_0
    //   379: aload_1
    //   380: aload_2
    //   381: aload 11
    //   383: aload 12
    //   385: invokespecial 560	com/antivirus/antitheft/k:b	(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   388: goto -297 -> 91
    //   391: aload_0
    //   392: aload_1
    //   393: aload_2
    //   394: aload 11
    //   396: aload 12
    //   398: invokespecial 562	com/antivirus/antitheft/k:c	(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   401: goto -310 -> 91
    //   404: aload_0
    //   405: aload_1
    //   406: aload_2
    //   407: aload 11
    //   409: aload 12
    //   411: invokespecial 564	com/antivirus/antitheft/k:d	(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   414: goto -323 -> 91
    //   417: aload_0
    //   418: aload_1
    //   419: aload_2
    //   420: aload 11
    //   422: aload 12
    //   424: invokespecial 566	com/antivirus/antitheft/k:e	(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   427: goto -336 -> 91
    //   430: aload_0
    //   431: aload_1
    //   432: aload_2
    //   433: aload 11
    //   435: aload 12
    //   437: invokespecial 568	com/antivirus/antitheft/k:f	(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   440: goto -349 -> 91
    //   443: aload_0
    //   444: aload_1
    //   445: aload_2
    //   446: aload 11
    //   448: aload 12
    //   450: invokespecial 570	com/antivirus/antitheft/k:g	(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   453: goto -362 -> 91
    //   456: aload_0
    //   457: aload_1
    //   458: aload_2
    //   459: aload 11
    //   461: aload 12
    //   463: invokespecial 572	com/antivirus/antitheft/k:h	(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   466: goto -375 -> 91
    //   469: aload_0
    //   470: aload_1
    //   471: aload_2
    //   472: aload 11
    //   474: aload 12
    //   476: invokespecial 574	com/antivirus/antitheft/k:i	(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   479: goto -388 -> 91
    //   482: aload_0
    //   483: aload_1
    //   484: aload_2
    //   485: aload 11
    //   487: aload 12
    //   489: invokespecial 576	com/antivirus/antitheft/k:j	(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   492: goto -401 -> 91
    //   495: goto -404 -> 91
    //
    // Exception table:
    //   from	to	target	type
    //   5	14	329	java/lang/Exception
    //   80	326	329	java/lang/Exception
    //   339	492	329	java/lang/Exception
    //   19	80	337	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.antitheft.k
 * JD-Core Version:    0.6.2
 */