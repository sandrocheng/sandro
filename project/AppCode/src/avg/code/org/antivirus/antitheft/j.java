package org.antivirus.antitheft;

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
import java.util.HashMap;
import org.antivirus.AVSettings;
import org.antivirus.core.Engine;
import org.antivirus.core.EngineSettings;
import org.antivirus.core.Logger;

public final class j
{
  BroadcastReceiver a = new k(this);
  MediaPlayer b = null;
  Engine c;
  EngineSettings d;
  private final int e = 1;
  private final int f = 2;
  private final int g = 3;
  private final int h = 4;
  private final int i = 5;
  private final int j = 6;
  private final int k = 9;
  private final int l = 10;
  private final int m = 11;
  private final int n = 12;
  private final int o = 13;
  private final int p = 14;
  private HashMap q = new HashMap();
  private long r = 0L;

  public j(Engine paramEngine, EngineSettings paramEngineSettings)
  {
    this.c = paramEngine;
    this.d = paramEngineSettings;
    this.q.put("FindMyPhone", Integer.valueOf(1));
    this.q.put("LockMyPhone", Integer.valueOf(2));
    this.q.put("UnLockMyPhone", Integer.valueOf(14));
    this.q.put("WipeMyPhone", Integer.valueOf(3));
    this.q.put("ScanMyPhone", Integer.valueOf(4));
    this.q.put("UnroamMyPhone", Integer.valueOf(5));
    this.q.put("FoundMyPhone", Integer.valueOf(6));
    this.q.put("ScreamMyPhone", Integer.valueOf(9));
    this.q.put("LightMyPhone", Integer.valueOf(10));
    this.q.put("ConnectMyPhone", Integer.valueOf(11));
    this.q.put("FeatureMyPhone", Integer.valueOf(12));
    this.q.put("LocateMyPhone", Integer.valueOf(13));
  }

  static void a(Context paramContext, boolean paramBoolean)
  {
    ContentValues localContentValues;
    WifiManager localWifiManager;
    boolean bool1;
    if (Integer.parseInt(Build.VERSION.SDK) <= 5)
    {
      Uri localUri = Uri.parse("content://settings/SECURE");
      localContentValues = new ContentValues();
      localContentValues.put("name", "location_providers_allowed");
      if (!paramBoolean)
        break label110;
      localContentValues.put("value", "network,gps");
      paramContext.getContentResolver().insert(localUri, localContentValues);
      paramContext.getContentResolver().insert(localUri, localContentValues);
      localWifiManager = (WifiManager)paramContext.getSystemService("wifi");
      bool1 = localWifiManager.isWifiEnabled();
      if (bool1)
        break label121;
    }
    label110: label121: for (boolean bool2 = true; ; bool2 = false)
    {
      localWifiManager.setWifiEnabled(bool2);
      localWifiManager.setWifiEnabled(bool1);
      return;
      localContentValues.put("value", "");
      break;
    }
  }

  private void a(Context paramContext, boolean paramBoolean, String paramString1, String paramString2)
  {
    if (!AVSettings.shouldSendLocation())
    {
      b.a(this.c, null);
      return;
    }
    while (true)
    {
      try
      {
        String str = Settings.System.getString(paramContext.getContentResolver(), "location_providers_allowed");
        if (str == null)
          str = "";
        long l1 = 300000L;
        long l2 = 60000L;
        long l3 = 5L;
        long l5;
        u localu;
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
          if (5L <= 0L)
            l3 = 1L;
          long l7 = l3;
          long l8 = l2;
          l4 = l7;
          l5 = l1;
          l6 = l8;
          localu = new u();
          localu.a(paramContext, this.d);
          b.a(this.c, localu);
          if (paramBoolean)
            new ab(paramContext).a();
          HandlerThread localHandlerThread = new HandlerThread("LR");
          localHandlerThread.start();
          localHandler = new Handler(localHandlerThread.getLooper());
          n localn = new n(this, localu);
          int i1 = 0;
          if (i1 < l4)
          {
            localHandler.postDelayed(localn, l6 * (i1 + 1));
            i1++;
            continue;
          }
        }
        catch (Exception localException2)
        {
          Logger.log(localException2);
          long l4 = 5L;
          l5 = 300000L;
          long l6 = 60000L;
          continue;
        }
        if (!str.contains("gps"))
        {
          if (Integer.parseInt(Build.VERSION.SDK) < 5)
            break label349;
          a(paramContext);
          localHandler.postDelayed(new o(this, paramContext), l5);
        }
        localu.a(paramContext, this.d, l5);
      }
      catch (Exception localException1)
      {
        Logger.log(localException1);
      }
      break;
      label349: a(paramContext, true);
    }
  }

  private void b(Context paramContext, boolean paramBoolean)
  {
    a(paramContext, paramBoolean, null, null);
  }

  // ERROR //
  public final void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 74	org/antivirus/antitheft/j:b	Landroid/media/MediaPlayer;
    //   4: ifnull +22 -> 26
    //   7: aload_0
    //   8: getfield 74	org/antivirus/antitheft/j:b	Landroid/media/MediaPlayer;
    //   11: invokevirtual 285	android/media/MediaPlayer:stop	()V
    //   14: aload_0
    //   15: getfield 74	org/antivirus/antitheft/j:b	Landroid/media/MediaPlayer;
    //   18: invokevirtual 288	android/media/MediaPlayer:release	()V
    //   21: aload_0
    //   22: aconst_null
    //   23: putfield 74	org/antivirus/antitheft/j:b	Landroid/media/MediaPlayer;
    //   26: return
    //   27: astore_2
    //   28: aload_0
    //   29: getfield 74	org/antivirus/antitheft/j:b	Landroid/media/MediaPlayer;
    //   32: invokevirtual 288	android/media/MediaPlayer:release	()V
    //   35: aload_0
    //   36: aconst_null
    //   37: putfield 74	org/antivirus/antitheft/j:b	Landroid/media/MediaPlayer;
    //   40: goto -14 -> 26
    //   43: astore_1
    //   44: aload_0
    //   45: getfield 74	org/antivirus/antitheft/j:b	Landroid/media/MediaPlayer;
    //   48: invokevirtual 288	android/media/MediaPlayer:release	()V
    //   51: aload_0
    //   52: aconst_null
    //   53: putfield 74	org/antivirus/antitheft/j:b	Landroid/media/MediaPlayer;
    //   56: aload_1
    //   57: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   7	14	27	java/lang/Exception
    //   7	14	43	finally
  }

  final void a(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setClassName("com.android.settings", "com.android.settings.widget.SettingsAppWidgetProvider");
    localIntent.addCategory("android.intent.category.ALTERNATIVE");
    localIntent.setData(Uri.parse("3"));
    paramContext.sendOrderedBroadcast(localIntent, null, this.a, null, -1, null, null);
  }

  public final boolean a(Bundle paramBundle, Context paramContext)
  {
    int i1 = 2;
    if (paramBundle == null);
    while (true)
    {
      return false;
      String str = paramBundle.getString("body");
      if ((!TextUtils.isEmpty(str)) && (str.contains("MyPhone")))
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
          Logger.log(localException);
        }
    }
  }

  // ERROR //
  public final void b(Bundle paramBundle, Context paramContext)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +4 -> 5
    //   4: return
    //   5: aload_1
    //   6: ldc_w 356
    //   9: invokevirtual 365	android/os/Bundle:containsKey	(Ljava/lang/String;)Z
    //   12: istore 4
    //   14: iload 4
    //   16: ifeq +63 -> 79
    //   19: aload_2
    //   20: ldc_w 367
    //   23: invokevirtual 163	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   26: checkcast 369	android/net/ConnectivityManager
    //   29: invokevirtual 373	android/net/ConnectivityManager:getActiveNetworkInfo	()Landroid/net/NetworkInfo;
    //   32: astore 22
    //   34: aload 22
    //   36: ifnull +14 -> 50
    //   39: aload 22
    //   41: invokevirtual 379	android/net/NetworkInfo:getState	()Landroid/net/NetworkInfo$State;
    //   44: getstatic 385	android/net/NetworkInfo$State:CONNECTED	Landroid/net/NetworkInfo$State;
    //   47: if_acmpeq +32 -> 79
    //   50: aload_2
    //   51: ldc 159
    //   53: invokevirtual 163	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   56: checkcast 165	android/net/wifi/WifiManager
    //   59: checkcast 165	android/net/wifi/WifiManager
    //   62: astore 23
    //   64: aload 23
    //   66: invokevirtual 169	android/net/wifi/WifiManager:isWifiEnabled	()Z
    //   69: ifne +10 -> 79
    //   72: aload 23
    //   74: iconst_1
    //   75: invokevirtual 173	android/net/wifi/WifiManager:setWifiEnabled	(Z)Z
    //   78: pop
    //   79: aload_1
    //   80: invokevirtual 389	android/os/Bundle:keySet	()Ljava/util/Set;
    //   83: invokeinterface 395 1 0
    //   88: astore 5
    //   90: aload 5
    //   92: invokeinterface 400 1 0
    //   97: ifeq -93 -> 4
    //   100: aload 5
    //   102: invokeinterface 404 1 0
    //   107: checkcast 263	java/lang/String
    //   110: astore 6
    //   112: aload 6
    //   114: ifnull -24 -> 90
    //   117: aload_1
    //   118: aload 6
    //   120: invokevirtual 323	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   123: astore 7
    //   125: aload 7
    //   127: ifnull -37 -> 90
    //   130: aload_2
    //   131: aload_0
    //   132: getfield 78	org/antivirus/antitheft/j:d	Lorg/antivirus/core/EngineSettings;
    //   135: invokestatic 410	org/antivirus/core/telephony/TelephonyInfo:getUniqueId	(Landroid/content/Context;Lorg/antivirus/core/EngineSettings;)Ljava/lang/String;
    //   138: astore 8
    //   140: aload_0
    //   141: getfield 63	org/antivirus/antitheft/j:q	Ljava/util/HashMap;
    //   144: aload 6
    //   146: invokevirtual 414	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   149: ifnull -59 -> 90
    //   152: aload 8
    //   154: ifnull -64 -> 90
    //   157: aload 7
    //   159: aload 8
    //   161: invokevirtual 418	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   164: ifne +29 -> 193
    //   167: aload 7
    //   169: aload 8
    //   171: bipush 246
    //   173: aload 8
    //   175: invokevirtual 422	java/lang/String:length	()I
    //   178: iadd
    //   179: aload 8
    //   181: invokevirtual 422	java/lang/String:length	()I
    //   184: invokevirtual 426	java/lang/String:substring	(II)Ljava/lang/String;
    //   187: invokevirtual 429	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   190: ifeq -100 -> 90
    //   193: aload_1
    //   194: ldc_w 431
    //   197: invokevirtual 323	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   200: astore 9
    //   202: aload_1
    //   203: ldc_w 433
    //   206: invokevirtual 323	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   209: astore 10
    //   211: aload_0
    //   212: getfield 63	org/antivirus/antitheft/j:q	Ljava/util/HashMap;
    //   215: aload 6
    //   217: invokevirtual 414	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   220: checkcast 82	java/lang/Integer
    //   223: invokevirtual 436	java/lang/Integer:intValue	()I
    //   226: tableswitch	default:+478 -> 704, 1:+481->707, 2:+232->458, 3:+365->591, 4:+330->556, 5:+-136->90, 6:+173->399, 7:+478->704, 8:+478->704, 9:+425->651, 10:+447->673, 11:+478->704, 12:+478->704, 13:+110->336, 14:+180->406
    //   297: aload_2
    //   298: iconst_1
    //   299: invokespecial 438	org/antivirus/antitheft/j:b	(Landroid/content/Context;Z)V
    //   302: goto -212 -> 90
    //   305: astore_3
    //   306: aload_3
    //   307: invokestatic 259	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   310: goto -306 -> 4
    //   313: astore 21
    //   315: aload 21
    //   317: invokestatic 259	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   320: goto -241 -> 79
    //   323: aload_0
    //   324: aload_2
    //   325: iconst_1
    //   326: aload 9
    //   328: aload 10
    //   330: invokespecial 280	org/antivirus/antitheft/j:a	(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    //   333: goto -243 -> 90
    //   336: invokestatic 444	java/lang/System:currentTimeMillis	()J
    //   339: aload_0
    //   340: getfield 72	org/antivirus/antitheft/j:r	J
    //   343: lsub
    //   344: ldc2_w 445
    //   347: lcmp
    //   348: ifgt +12 -> 360
    //   351: aload_0
    //   352: getfield 72	org/antivirus/antitheft/j:r	J
    //   355: lconst_0
    //   356: lcmp
    //   357: ifge -267 -> 90
    //   360: aload_0
    //   361: invokestatic 444	java/lang/System:currentTimeMillis	()J
    //   364: putfield 72	org/antivirus/antitheft/j:r	J
    //   367: aload 9
    //   369: ifnull +8 -> 377
    //   372: aload 10
    //   374: ifnonnull +12 -> 386
    //   377: aload_0
    //   378: aload_2
    //   379: iconst_0
    //   380: invokespecial 438	org/antivirus/antitheft/j:b	(Landroid/content/Context;Z)V
    //   383: goto -293 -> 90
    //   386: aload_0
    //   387: aload_2
    //   388: iconst_0
    //   389: aload 9
    //   391: aload 10
    //   393: invokespecial 280	org/antivirus/antitheft/j:a	(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    //   396: goto -306 -> 90
    //   399: iconst_0
    //   400: invokestatic 450	org/antivirus/AVSettings:setPermLock	(Z)V
    //   403: goto -313 -> 90
    //   406: aload_1
    //   407: ldc_w 452
    //   410: invokevirtual 323	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   413: ifnull +32 -> 445
    //   416: aload_1
    //   417: ldc_w 452
    //   420: invokevirtual 323	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   423: ldc_w 454
    //   426: invokevirtual 418	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   429: ifeq +16 -> 445
    //   432: invokestatic 457	org/antivirus/AVSettings:getPermLock	()Z
    //   435: ifeq -345 -> 90
    //   438: aload_2
    //   439: invokestatic 458	org/antivirus/antitheft/b:a	(Landroid/content/Context;)V
    //   442: goto -352 -> 90
    //   445: invokestatic 457	org/antivirus/AVSettings:getPermLock	()Z
    //   448: ifeq -358 -> 90
    //   451: iconst_0
    //   452: invokestatic 450	org/antivirus/AVSettings:setPermLock	(Z)V
    //   455: goto -365 -> 90
    //   458: aload_1
    //   459: ldc_w 356
    //   462: invokevirtual 323	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   465: ifnull +32 -> 497
    //   468: aload_1
    //   469: ldc_w 356
    //   472: invokevirtual 323	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   475: ldc_w 358
    //   478: invokevirtual 418	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   481: ifeq +16 -> 497
    //   484: invokestatic 457	org/antivirus/AVSettings:getPermLock	()Z
    //   487: ifne -397 -> 90
    //   490: aload_2
    //   491: invokestatic 458	org/antivirus/antitheft/b:a	(Landroid/content/Context;)V
    //   494: goto -404 -> 90
    //   497: invokestatic 457	org/antivirus/AVSettings:getPermLock	()Z
    //   500: ifne -410 -> 90
    //   503: iconst_1
    //   504: invokestatic 450	org/antivirus/AVSettings:setPermLock	(Z)V
    //   507: aload 9
    //   509: invokestatic 461	org/antivirus/AVSettings:setPremPass	(Ljava/lang/String;)V
    //   512: aload 10
    //   514: ifnull +8 -> 522
    //   517: aload 10
    //   519: invokestatic 464	org/antivirus/AVSettings:setLostMsg	(Ljava/lang/String;)V
    //   522: new 290	android/content/Intent
    //   525: dup
    //   526: aload_2
    //   527: ldc_w 466
    //   530: invokespecial 469	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   533: astore 18
    //   535: aload 18
    //   537: ldc_w 471
    //   540: bipush 103
    //   542: invokevirtual 475	android/content/Intent:putExtra	(Ljava/lang/String;I)Landroid/content/Intent;
    //   545: pop
    //   546: aload_2
    //   547: aload 18
    //   549: invokevirtual 479	android/content/Context:startService	(Landroid/content/Intent;)Landroid/content/ComponentName;
    //   552: pop
    //   553: goto -463 -> 90
    //   556: new 290	android/content/Intent
    //   559: dup
    //   560: aload_2
    //   561: ldc_w 466
    //   564: invokespecial 469	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   567: astore 15
    //   569: aload 15
    //   571: ldc_w 471
    //   574: sipush 321
    //   577: invokevirtual 475	android/content/Intent:putExtra	(Ljava/lang/String;I)Landroid/content/Intent;
    //   580: pop
    //   581: aload_2
    //   582: aload 15
    //   584: invokevirtual 479	android/content/Context:startService	(Landroid/content/Intent;)Landroid/content/ComponentName;
    //   587: pop
    //   588: goto -498 -> 90
    //   591: aload_1
    //   592: ldc_w 452
    //   595: invokevirtual 323	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   598: ifnull +19 -> 617
    //   601: aload_1
    //   602: ldc_w 452
    //   605: invokevirtual 323	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   608: ldc_w 454
    //   611: invokevirtual 418	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   614: ifne -524 -> 90
    //   617: new 481	org/antivirus/wipe/ai
    //   620: dup
    //   621: aload_2
    //   622: invokespecial 482	org/antivirus/wipe/ai:<init>	(Landroid/content/Context;)V
    //   625: astore 12
    //   627: invokestatic 484	org/antivirus/wipe/ai:a	()Z
    //   630: pop
    //   631: aload 12
    //   633: invokevirtual 486	org/antivirus/wipe/ai:b	()V
    //   636: invokestatic 488	org/antivirus/wipe/ai:c	()Z
    //   639: pop
    //   640: aload 12
    //   642: invokevirtual 490	org/antivirus/wipe/ai:d	()V
    //   645: invokestatic 492	org/antivirus/wipe/ai:e	()V
    //   648: goto -558 -> 90
    //   651: new 494	java/lang/Thread
    //   654: dup
    //   655: new 496	org/antivirus/antitheft/l
    //   658: dup
    //   659: aload_0
    //   660: aload_2
    //   661: invokespecial 497	org/antivirus/antitheft/l:<init>	(Lorg/antivirus/antitheft/j;Landroid/content/Context;)V
    //   664: invokespecial 500	java/lang/Thread:<init>	(Ljava/lang/Runnable;)V
    //   667: invokevirtual 501	java/lang/Thread:start	()V
    //   670: goto -580 -> 90
    //   673: new 494	java/lang/Thread
    //   676: dup
    //   677: new 503	org/antivirus/antitheft/m
    //   680: dup
    //   681: aload_0
    //   682: invokespecial 504	org/antivirus/antitheft/m:<init>	(Lorg/antivirus/antitheft/j;)V
    //   685: invokespecial 500	java/lang/Thread:<init>	(Ljava/lang/Runnable;)V
    //   688: invokevirtual 501	java/lang/Thread:start	()V
    //   691: goto -601 -> 90
    //   694: astore 11
    //   696: aload 11
    //   698: invokestatic 259	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   701: goto -611 -> 90
    //   704: goto -614 -> 90
    //   707: aload 9
    //   709: ifnull -413 -> 296
    //   712: aload 10
    //   714: ifnonnull -391 -> 323
    //   717: goto -421 -> 296
    //
    // Exception table:
    //   from	to	target	type
    //   5	14	305	java/lang/Exception
    //   79	302	305	java/lang/Exception
    //   315	670	305	java/lang/Exception
    //   696	701	305	java/lang/Exception
    //   19	79	313	java/lang/Exception
    //   673	691	694	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.antitheft.j
 * JD-Core Version:    0.6.2
 */