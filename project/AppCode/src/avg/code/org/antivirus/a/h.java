package org.antivirus.a;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RemoteViews;
import android.widget.TextView;
import org.antivirus.Strings;
import org.antivirus.core.Logger;
import org.antivirus.ui.versionUpdate.VersionUpdateDialog;

public final class h
  implements Runnable
{
  Runnable a;
  private boolean b = false;
  private String c;
  private int d;
  private Notification e;
  private int f = -16777216;
  private final int g = 1024;
  private final String h = "search_helper";
  private i i;
  private Context j;

  public h(Context paramContext, String paramString, int paramInt)
  {
    this.c = paramString;
    this.d = paramInt;
    this.j = paramContext;
    try
    {
      Notification localNotification = new Notification();
      localNotification.setLatestEventInfo(this.j, "search_helper", "", null);
      LinearLayout localLinearLayout = new LinearLayout(this.j);
      a((ViewGroup)localNotification.contentView.apply(this.j, localLinearLayout));
      localLinearLayout.removeAllViews();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }

  // ERROR //
  private void a(int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 47	org/antivirus/a/h:j	Landroid/content/Context;
    //   4: ldc 88
    //   6: invokevirtual 94	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   9: checkcast 96	android/app/NotificationManager
    //   12: astore 4
    //   14: aload_0
    //   15: getfield 98	org/antivirus/a/h:e	Landroid/app/Notification;
    //   18: ifnonnull +42 -> 60
    //   21: aload_0
    //   22: new 49	android/app/Notification
    //   25: dup
    //   26: ldc 99
    //   28: ldc 100
    //   30: invokestatic 106	org/antivirus/Strings:getString	(I)Ljava/lang/String;
    //   33: invokestatic 112	java/lang/System:currentTimeMillis	()J
    //   36: invokespecial 115	android/app/Notification:<init>	(ILjava/lang/CharSequence;J)V
    //   39: putfield 98	org/antivirus/a/h:e	Landroid/app/Notification;
    //   42: aload_0
    //   43: getfield 98	org/antivirus/a/h:e	Landroid/app/Notification;
    //   46: astore 11
    //   48: aload 11
    //   50: iconst_2
    //   51: aload 11
    //   53: getfield 118	android/app/Notification:flags	I
    //   56: ior
    //   57: putfield 118	android/app/Notification:flags	I
    //   60: new 120	android/content/Intent
    //   63: dup
    //   64: aload_0
    //   65: getfield 47	org/antivirus/a/h:j	Landroid/content/Context;
    //   68: ldc 122
    //   70: invokespecial 125	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   73: astore 5
    //   75: aload 5
    //   77: ldc 127
    //   79: iload_1
    //   80: invokevirtual 131	android/content/Intent:putExtra	(Ljava/lang/String;I)Landroid/content/Intent;
    //   83: pop
    //   84: aload 5
    //   86: ldc 133
    //   88: iload_2
    //   89: invokevirtual 131	android/content/Intent:putExtra	(Ljava/lang/String;I)Landroid/content/Intent;
    //   92: pop
    //   93: aload 5
    //   95: ldc 134
    //   97: invokevirtual 138	android/content/Intent:setFlags	(I)Landroid/content/Intent;
    //   100: pop
    //   101: aload_0
    //   102: getfield 98	org/antivirus/a/h:e	Landroid/app/Notification;
    //   105: aload_0
    //   106: getfield 47	org/antivirus/a/h:j	Landroid/content/Context;
    //   109: iconst_0
    //   110: aload 5
    //   112: ldc 139
    //   114: invokestatic 145	android/app/PendingIntent:getActivity	(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    //   117: putfield 149	android/app/Notification:contentIntent	Landroid/app/PendingIntent;
    //   120: new 67	android/widget/RemoteViews
    //   123: dup
    //   124: aload_0
    //   125: getfield 47	org/antivirus/a/h:j	Landroid/content/Context;
    //   128: invokevirtual 153	android/content/Context:getPackageName	()Ljava/lang/String;
    //   131: ldc 154
    //   133: invokespecial 157	android/widget/RemoteViews:<init>	(Ljava/lang/String;I)V
    //   136: astore 9
    //   138: aload 9
    //   140: ldc 158
    //   142: ldc 99
    //   144: invokevirtual 161	android/widget/RemoteViews:setImageViewResource	(II)V
    //   147: aload 9
    //   149: ldc 162
    //   151: ldc 100
    //   153: invokestatic 106	org/antivirus/Strings:getString	(I)Ljava/lang/String;
    //   156: invokevirtual 166	android/widget/RemoteViews:setTextViewText	(ILjava/lang/CharSequence;)V
    //   159: aload 9
    //   161: ldc 167
    //   163: iload_2
    //   164: iload_1
    //   165: iconst_0
    //   166: invokevirtual 171	android/widget/RemoteViews:setProgressBar	(IIIZ)V
    //   169: aload 9
    //   171: ldc 162
    //   173: aload_0
    //   174: getfield 35	org/antivirus/a/h:f	I
    //   177: invokevirtual 174	android/widget/RemoteViews:setTextColor	(II)V
    //   180: aload_0
    //   181: getfield 98	org/antivirus/a/h:e	Landroid/app/Notification;
    //   184: aload 9
    //   186: putfield 65	android/app/Notification:contentView	Landroid/widget/RemoteViews;
    //   189: aload_0
    //   190: monitorenter
    //   191: aload_0
    //   192: getfield 32	org/antivirus/a/h:b	Z
    //   195: ifne +15 -> 210
    //   198: aload 4
    //   200: sipush 2001
    //   203: aload_0
    //   204: getfield 98	org/antivirus/a/h:e	Landroid/app/Notification;
    //   207: invokevirtual 178	android/app/NotificationManager:notify	(ILandroid/app/Notification;)V
    //   210: aload_0
    //   211: monitorexit
    //   212: aload_0
    //   213: getfield 180	org/antivirus/a/h:i	Lorg/antivirus/a/i;
    //   216: ifnull +29 -> 245
    //   219: aload_0
    //   220: getfield 180	org/antivirus/a/h:i	Lorg/antivirus/a/i;
    //   223: iload_1
    //   224: iload_2
    //   225: invokeinterface 184 3 0
    //   230: goto +15 -> 245
    //   233: astore 10
    //   235: aload_0
    //   236: monitorexit
    //   237: aload 10
    //   239: athrow
    //   240: astore_3
    //   241: aload_3
    //   242: invokestatic 85	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   245: return
    //
    // Exception table:
    //   from	to	target	type
    //   191	212	233	finally
    //   0	191	240	java/lang/Exception
    //   212	240	240	java/lang/Exception
  }

  private boolean a(ViewGroup paramViewGroup)
  {
    int k = paramViewGroup.getChildCount();
    int m = 0;
    View localView;
    boolean bool;
    if (m < k)
    {
      localView = paramViewGroup.getChildAt(m);
      if ((localView instanceof TextView))
      {
        TextView localTextView = (TextView)localView;
        if (!"search_helper".equals(localTextView.getText().toString()))
          break label94;
        this.f = localTextView.getTextColors().getDefaultColor();
        bool = true;
      }
    }
    while (true)
    {
      return bool;
      if (((localView instanceof ViewGroup)) && (a((ViewGroup)localView)))
      {
        bool = true;
      }
      else
      {
        label94: m++;
        break;
        bool = false;
      }
    }
  }

  private void b()
  {
    if (this.a != null)
      this.a.run();
  }

  private void c()
  {
    try
    {
      NotificationManager localNotificationManager = (NotificationManager)this.j.getSystemService("notification");
      Notification localNotification = new Notification(2130837585, Strings.getString(2131296585), System.currentTimeMillis());
      localNotification.flags = (0x10 | localNotification.flags);
      Intent localIntent = new Intent(this.j, VersionUpdateDialog.class);
      localIntent.putExtra("url", this.c);
      localIntent.putExtra("revision", this.d);
      PendingIntent localPendingIntent = PendingIntent.getActivity(this.j, 0, localIntent, 134217728);
      localNotification.setLatestEventInfo(this.j, Strings.getString(2131296583), Strings.getString(2131296588), localPendingIntent);
      localNotificationManager.notify(2001, localNotification);
      if (this.i != null)
        this.i.a();
      b();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }

  public final void a()
  {
    try
    {
      this.b = true;
      ((NotificationManager)this.j.getSystemService("notification")).cancel(2001);
      b();
      return;
    }
    finally
    {
    }
  }

  public final void a(i parami)
  {
    this.i = parami;
  }

  // ERROR //
  public final void run()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aconst_null
    //   3: astore_2
    //   4: new 244	java/net/URL
    //   7: dup
    //   8: aload_0
    //   9: getfield 43	org/antivirus/a/h:c	Ljava/lang/String;
    //   12: invokespecial 247	java/net/URL:<init>	(Ljava/lang/String;)V
    //   15: invokevirtual 251	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   18: checkcast 253	java/net/HttpURLConnection
    //   21: astore 12
    //   23: aload 12
    //   25: ldc 255
    //   27: invokevirtual 258	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   30: aload 12
    //   32: invokevirtual 261	java/net/HttpURLConnection:connect	()V
    //   35: aload 12
    //   37: ldc_w 263
    //   40: invokevirtual 267	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   43: astore 64
    //   45: iconst_0
    //   46: istore 65
    //   48: aconst_null
    //   49: astore_1
    //   50: aload 64
    //   52: ifnull +14 -> 66
    //   55: aload 64
    //   57: invokestatic 273	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   60: istore 66
    //   62: iload 66
    //   64: istore 65
    //   66: iload 65
    //   68: istore 15
    //   70: aload 12
    //   72: invokevirtual 276	java/net/HttpURLConnection:getResponseCode	()I
    //   75: istore 16
    //   77: aconst_null
    //   78: astore_1
    //   79: iload 16
    //   81: sipush 200
    //   84: if_icmpne +10 -> 94
    //   87: aconst_null
    //   88: astore_1
    //   89: iload 15
    //   91: ifgt +25 -> 116
    //   94: aload_0
    //   95: invokespecial 278	org/antivirus/a/h:c	()V
    //   98: goto +1348 -> 1446
    //   101: astore 14
    //   103: aload 14
    //   105: invokestatic 85	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   108: iconst_0
    //   109: istore 15
    //   111: aconst_null
    //   112: astore_1
    //   113: goto -43 -> 70
    //   116: aload_0
    //   117: getfield 47	org/antivirus/a/h:j	Landroid/content/Context;
    //   120: invokevirtual 282	android/content/Context:getFilesDir	()Ljava/io/File;
    //   123: astore 17
    //   125: aload 17
    //   127: invokestatic 287	org/antivirus/a/a:b	(Ljava/io/File;)V
    //   130: invokestatic 292	android/os/SystemClock:elapsedRealtime	()J
    //   133: invokestatic 297	java/lang/Long:toString	(J)Ljava/lang/String;
    //   136: astore 18
    //   138: aload 18
    //   140: invokevirtual 300	java/lang/String:length	()I
    //   143: istore 19
    //   145: aconst_null
    //   146: astore_1
    //   147: iload 19
    //   149: bipush 9
    //   151: if_icmple +1288 -> 1439
    //   154: aload 18
    //   156: iload 19
    //   158: bipush 9
    //   160: isub
    //   161: invokevirtual 303	java/lang/String:substring	(I)Ljava/lang/String;
    //   164: astore 20
    //   166: new 305	android/os/StatFs
    //   169: dup
    //   170: aload 17
    //   172: invokevirtual 308	java/io/File:toString	()Ljava/lang/String;
    //   175: invokespecial 309	android/os/StatFs:<init>	(Ljava/lang/String;)V
    //   178: astore 21
    //   180: aload 21
    //   182: invokevirtual 312	android/os/StatFs:getBlockSize	()I
    //   185: i2l
    //   186: aload 21
    //   188: invokevirtual 315	android/os/StatFs:getAvailableBlocks	()I
    //   191: i2l
    //   192: lmul
    //   193: iload 15
    //   195: i2l
    //   196: lcmp
    //   197: istore 22
    //   199: aconst_null
    //   200: astore_1
    //   201: iload 22
    //   203: ifge +392 -> 595
    //   206: ldc_w 317
    //   209: invokestatic 322	android/os/Environment:getExternalStorageState	()Ljava/lang/String;
    //   212: invokevirtual 207	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   215: istore 57
    //   217: aconst_null
    //   218: astore_1
    //   219: iload 57
    //   221: ifne +83 -> 304
    //   224: aconst_null
    //   225: astore_1
    //   226: aload 12
    //   228: ifnull +8 -> 236
    //   231: aload 12
    //   233: invokevirtual 325	java/net/HttpURLConnection:disconnect	()V
    //   236: aload_0
    //   237: invokespecial 278	org/antivirus/a/h:c	()V
    //   240: goto +1206 -> 1446
    //   243: astore 13
    //   245: aconst_null
    //   246: astore 5
    //   248: aload 12
    //   250: astore 6
    //   252: aload 13
    //   254: astore_3
    //   255: aconst_null
    //   256: astore 4
    //   258: aload 6
    //   260: ifnull +8 -> 268
    //   263: aload 6
    //   265: invokevirtual 325	java/net/HttpURLConnection:disconnect	()V
    //   268: aload_3
    //   269: invokestatic 85	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   272: aload_0
    //   273: invokespecial 278	org/antivirus/a/h:c	()V
    //   276: aload 5
    //   278: ifnull +8 -> 286
    //   281: aload 5
    //   283: invokevirtual 330	java/io/FileOutputStream:close	()V
    //   286: aload 4
    //   288: ifnull +1158 -> 1446
    //   291: aload 4
    //   293: invokevirtual 333	java/io/InputStream:close	()V
    //   296: goto +1150 -> 1446
    //   299: astore 10
    //   301: goto +1145 -> 1446
    //   304: new 307	java/io/File
    //   307: dup
    //   308: invokestatic 336	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   311: new 338	java/lang/StringBuilder
    //   314: dup
    //   315: ldc_w 340
    //   318: invokespecial 341	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   321: aload_0
    //   322: getfield 47	org/antivirus/a/h:j	Landroid/content/Context;
    //   325: invokevirtual 153	android/content/Context:getPackageName	()Ljava/lang/String;
    //   328: invokevirtual 345	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   331: ldc_w 347
    //   334: invokevirtual 345	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   337: invokevirtual 348	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   340: invokespecial 351	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   343: astore 58
    //   345: aload 58
    //   347: invokevirtual 355	java/io/File:mkdirs	()Z
    //   350: pop
    //   351: aload 58
    //   353: invokestatic 287	org/antivirus/a/a:b	(Ljava/io/File;)V
    //   356: new 305	android/os/StatFs
    //   359: dup
    //   360: aload 58
    //   362: invokevirtual 308	java/io/File:toString	()Ljava/lang/String;
    //   365: invokespecial 309	android/os/StatFs:<init>	(Ljava/lang/String;)V
    //   368: astore 60
    //   370: aload 60
    //   372: invokevirtual 312	android/os/StatFs:getBlockSize	()I
    //   375: i2l
    //   376: aload 60
    //   378: invokevirtual 315	android/os/StatFs:getAvailableBlocks	()I
    //   381: i2l
    //   382: lmul
    //   383: iload 15
    //   385: i2l
    //   386: lcmp
    //   387: istore 61
    //   389: aconst_null
    //   390: astore_1
    //   391: iload 61
    //   393: ifge +43 -> 436
    //   396: aconst_null
    //   397: astore_1
    //   398: aload 12
    //   400: ifnull +8 -> 408
    //   403: aload 12
    //   405: invokevirtual 325	java/net/HttpURLConnection:disconnect	()V
    //   408: aload_0
    //   409: invokespecial 278	org/antivirus/a/h:c	()V
    //   412: goto +1034 -> 1446
    //   415: astore 7
    //   417: aload_1
    //   418: ifnull +7 -> 425
    //   421: aload_1
    //   422: invokevirtual 330	java/io/FileOutputStream:close	()V
    //   425: aload_2
    //   426: ifnull +7 -> 433
    //   429: aload_2
    //   430: invokevirtual 333	java/io/InputStream:close	()V
    //   433: aload 7
    //   435: athrow
    //   436: new 307	java/io/File
    //   439: dup
    //   440: aload 58
    //   442: new 338	java/lang/StringBuilder
    //   445: dup
    //   446: ldc_w 357
    //   449: invokespecial 341	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   452: aload_0
    //   453: getfield 45	org/antivirus/a/h:d	I
    //   456: invokevirtual 360	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   459: aload 20
    //   461: invokevirtual 345	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   464: ldc_w 362
    //   467: invokevirtual 345	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   470: invokevirtual 348	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   473: invokespecial 351	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   476: astore 62
    //   478: new 327	java/io/FileOutputStream
    //   481: dup
    //   482: aload 62
    //   484: invokespecial 364	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   487: astore 63
    //   489: aload 62
    //   491: astore 25
    //   493: aload 63
    //   495: astore_1
    //   496: aload_0
    //   497: iconst_0
    //   498: iload 15
    //   500: invokespecial 365	org/antivirus/a/h:a	(II)V
    //   503: aload 12
    //   505: invokevirtual 369	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   508: astore 27
    //   510: sipush 1024
    //   513: newarray byte
    //   515: astore 29
    //   517: iconst_0
    //   518: istore 30
    //   520: invokestatic 292	android/os/SystemClock:elapsedRealtime	()J
    //   523: lstore 31
    //   525: aload_0
    //   526: getfield 32	org/antivirus/a/h:b	Z
    //   529: ifne +159 -> 688
    //   532: aload 27
    //   534: aload 29
    //   536: invokevirtual 373	java/io/InputStream:read	([B)I
    //   539: istore 54
    //   541: iload 54
    //   543: iconst_m1
    //   544: if_icmpeq +144 -> 688
    //   547: aload_1
    //   548: aload 29
    //   550: iconst_0
    //   551: iload 54
    //   553: invokevirtual 377	java/io/FileOutputStream:write	([BII)V
    //   556: iload 30
    //   558: iload 54
    //   560: iadd
    //   561: istore 30
    //   563: invokestatic 292	android/os/SystemClock:elapsedRealtime	()J
    //   566: lstore 55
    //   568: lload 55
    //   570: lload 31
    //   572: lsub
    //   573: ldc2_w 378
    //   576: lcmp
    //   577: iflt -52 -> 525
    //   580: aload_0
    //   581: iload 30
    //   583: iload 15
    //   585: invokespecial 365	org/antivirus/a/h:a	(II)V
    //   588: lload 55
    //   590: lstore 31
    //   592: goto -67 -> 525
    //   595: new 307	java/io/File
    //   598: dup
    //   599: aload 17
    //   601: new 338	java/lang/StringBuilder
    //   604: dup
    //   605: ldc_w 357
    //   608: invokespecial 341	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   611: aload_0
    //   612: getfield 45	org/antivirus/a/h:d	I
    //   615: invokevirtual 360	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   618: aload 20
    //   620: invokevirtual 345	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   623: ldc_w 362
    //   626: invokevirtual 345	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   629: invokevirtual 348	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   632: invokespecial 351	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   635: astore 23
    //   637: aload_0
    //   638: getfield 47	org/antivirus/a/h:j	Landroid/content/Context;
    //   641: new 338	java/lang/StringBuilder
    //   644: dup
    //   645: ldc_w 357
    //   648: invokespecial 341	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   651: aload_0
    //   652: getfield 45	org/antivirus/a/h:d	I
    //   655: invokevirtual 360	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   658: aload 20
    //   660: invokevirtual 345	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   663: ldc_w 362
    //   666: invokevirtual 345	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   669: invokevirtual 348	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   672: iconst_1
    //   673: invokevirtual 383	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   676: astore 24
    //   678: aload 24
    //   680: astore_1
    //   681: aload 23
    //   683: astore 25
    //   685: goto -189 -> 496
    //   688: aload 27
    //   690: invokevirtual 333	java/io/InputStream:close	()V
    //   693: aload_1
    //   694: invokevirtual 330	java/io/FileOutputStream:close	()V
    //   697: aload 12
    //   699: invokevirtual 325	java/net/HttpURLConnection:disconnect	()V
    //   702: aload_0
    //   703: iload 30
    //   705: iload 15
    //   707: invokespecial 365	org/antivirus/a/h:a	(II)V
    //   710: aload_0
    //   711: getfield 32	org/antivirus/a/h:b	Z
    //   714: ifeq +12 -> 726
    //   717: aload 25
    //   719: invokevirtual 386	java/io/File:delete	()Z
    //   722: pop
    //   723: goto +723 -> 1446
    //   726: bipush 20
    //   728: newarray byte
    //   730: dup
    //   731: iconst_0
    //   732: ldc_w 387
    //   735: bastore
    //   736: dup
    //   737: iconst_1
    //   738: ldc_w 388
    //   741: bastore
    //   742: dup
    //   743: iconst_2
    //   744: ldc_w 389
    //   747: bastore
    //   748: dup
    //   749: iconst_3
    //   750: ldc_w 390
    //   753: bastore
    //   754: dup
    //   755: iconst_4
    //   756: ldc_w 391
    //   759: bastore
    //   760: dup
    //   761: iconst_5
    //   762: ldc_w 392
    //   765: bastore
    //   766: dup
    //   767: bipush 6
    //   769: ldc_w 393
    //   772: bastore
    //   773: dup
    //   774: bipush 7
    //   776: ldc_w 394
    //   779: bastore
    //   780: dup
    //   781: bipush 8
    //   783: ldc_w 395
    //   786: bastore
    //   787: dup
    //   788: bipush 9
    //   790: ldc_w 396
    //   793: bastore
    //   794: dup
    //   795: bipush 10
    //   797: ldc_w 397
    //   800: bastore
    //   801: dup
    //   802: bipush 11
    //   804: ldc_w 398
    //   807: bastore
    //   808: dup
    //   809: bipush 12
    //   811: ldc_w 399
    //   814: bastore
    //   815: dup
    //   816: bipush 13
    //   818: ldc_w 400
    //   821: bastore
    //   822: dup
    //   823: bipush 14
    //   825: ldc_w 401
    //   828: bastore
    //   829: dup
    //   830: bipush 15
    //   832: ldc_w 402
    //   835: bastore
    //   836: dup
    //   837: bipush 16
    //   839: ldc_w 403
    //   842: bastore
    //   843: dup
    //   844: bipush 17
    //   846: ldc_w 404
    //   849: bastore
    //   850: dup
    //   851: bipush 18
    //   853: ldc_w 388
    //   856: bastore
    //   857: dup
    //   858: bipush 19
    //   860: ldc_w 405
    //   863: bastore
    //   864: astore 35
    //   866: new 407	org/antivirus/a/f
    //   869: dup
    //   870: invokespecial 408	org/antivirus/a/f:<init>	()V
    //   873: astore 36
    //   875: aload 36
    //   877: aload 25
    //   879: invokevirtual 308	java/io/File:toString	()Ljava/lang/String;
    //   882: invokevirtual 411	org/antivirus/a/f:a	(Ljava/lang/String;)Z
    //   885: ifeq +21 -> 906
    //   888: aload 36
    //   890: getfield 414	org/antivirus/a/f:a	[Ljava/security/cert/Certificate;
    //   893: ifnull +13 -> 906
    //   896: aload 36
    //   898: getfield 414	org/antivirus/a/f:a	[Ljava/security/cert/Certificate;
    //   901: arraylength
    //   902: iconst_1
    //   903: if_icmpeq +16 -> 919
    //   906: ldc_w 416
    //   909: invokestatic 419	org/antivirus/core/Logger:error	(Ljava/lang/String;)V
    //   912: aload_0
    //   913: invokespecial 278	org/antivirus/a/h:c	()V
    //   916: goto +530 -> 1446
    //   919: new 421	android/content/pm/Signature
    //   922: dup
    //   923: aload 36
    //   925: getfield 414	org/antivirus/a/f:a	[Ljava/security/cert/Certificate;
    //   928: iconst_0
    //   929: aaload
    //   930: invokevirtual 427	java/security/cert/Certificate:getEncoded	()[B
    //   933: invokespecial 430	android/content/pm/Signature:<init>	([B)V
    //   936: astore 37
    //   938: ldc_w 432
    //   941: invokestatic 438	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   944: astore 38
    //   946: aload 38
    //   948: aload 37
    //   950: invokevirtual 441	android/content/pm/Signature:toByteArray	()[B
    //   953: invokevirtual 444	java/security/MessageDigest:update	([B)V
    //   956: aload 38
    //   958: invokevirtual 447	java/security/MessageDigest:digest	()[B
    //   961: aload 35
    //   963: invokestatic 452	java/util/Arrays:equals	([B[B)Z
    //   966: ifne +16 -> 982
    //   969: ldc_w 416
    //   972: invokestatic 419	org/antivirus/core/Logger:error	(Ljava/lang/String;)V
    //   975: aload_0
    //   976: invokespecial 278	org/antivirus/a/h:c	()V
    //   979: goto +467 -> 1446
    //   982: aload_0
    //   983: getfield 47	org/antivirus/a/h:j	Landroid/content/Context;
    //   986: ldc 88
    //   988: invokevirtual 94	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   991: checkcast 96	android/app/NotificationManager
    //   994: astore 39
    //   996: aload 39
    //   998: sipush 2001
    //   1001: invokevirtual 241	android/app/NotificationManager:cancel	(I)V
    //   1004: aload_0
    //   1005: monitorenter
    //   1006: aload_0
    //   1007: getfield 32	org/antivirus/a/h:b	Z
    //   1010: ifeq +21 -> 1031
    //   1013: aload 25
    //   1015: invokevirtual 386	java/io/File:delete	()Z
    //   1018: pop
    //   1019: aload_0
    //   1020: monitorexit
    //   1021: goto +425 -> 1446
    //   1024: astore 40
    //   1026: aload_0
    //   1027: monitorexit
    //   1028: aload 40
    //   1030: athrow
    //   1031: new 120	android/content/Intent
    //   1034: dup
    //   1035: ldc_w 454
    //   1038: invokespecial 455	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   1041: astore 41
    //   1043: aload 41
    //   1045: ldc_w 457
    //   1048: invokevirtual 461	android/content/Intent:addCategory	(Ljava/lang/String;)Landroid/content/Intent;
    //   1051: pop
    //   1052: aload 41
    //   1054: aload 25
    //   1056: invokestatic 467	android/net/Uri:fromFile	(Ljava/io/File;)Landroid/net/Uri;
    //   1059: ldc_w 469
    //   1062: invokevirtual 473	android/content/Intent:setDataAndType	(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    //   1065: pop
    //   1066: aload_0
    //   1067: getfield 47	org/antivirus/a/h:j	Landroid/content/Context;
    //   1070: invokevirtual 477	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   1073: aload 41
    //   1075: ldc_w 478
    //   1078: invokevirtual 484	android/content/pm/PackageManager:queryIntentActivities	(Landroid/content/Intent;I)Ljava/util/List;
    //   1081: invokeinterface 490 1 0
    //   1086: astore 45
    //   1088: aload 45
    //   1090: invokeinterface 495 1 0
    //   1095: ifeq +338 -> 1433
    //   1098: aload 45
    //   1100: invokeinterface 499 1 0
    //   1105: checkcast 501	android/content/pm/ResolveInfo
    //   1108: astore 50
    //   1110: aload 50
    //   1112: getfield 505	android/content/pm/ResolveInfo:activityInfo	Landroid/content/pm/ActivityInfo;
    //   1115: getfield 510	android/content/pm/ActivityInfo:packageName	Ljava/lang/String;
    //   1118: ldc_w 512
    //   1121: invokevirtual 516	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   1124: ifeq -36 -> 1088
    //   1127: aload 41
    //   1129: aload 50
    //   1131: getfield 505	android/content/pm/ResolveInfo:activityInfo	Landroid/content/pm/ActivityInfo;
    //   1134: getfield 510	android/content/pm/ActivityInfo:packageName	Ljava/lang/String;
    //   1137: aload 50
    //   1139: getfield 505	android/content/pm/ResolveInfo:activityInfo	Landroid/content/pm/ActivityInfo;
    //   1142: getfield 519	android/content/pm/ActivityInfo:name	Ljava/lang/String;
    //   1145: invokevirtual 522	android/content/Intent:setClassName	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   1148: pop
    //   1149: iconst_1
    //   1150: istore 46
    //   1152: aload 41
    //   1154: ldc_w 523
    //   1157: invokevirtual 138	android/content/Intent:setFlags	(I)Landroid/content/Intent;
    //   1160: pop
    //   1161: aload_0
    //   1162: getfield 180	org/antivirus/a/h:i	Lorg/antivirus/a/i;
    //   1165: ifnull +26 -> 1191
    //   1168: aload_0
    //   1169: getfield 180	org/antivirus/a/h:i	Lorg/antivirus/a/i;
    //   1172: invokeinterface 525 1 0
    //   1177: ifeq +106 -> 1283
    //   1180: aload_0
    //   1181: getfield 180	org/antivirus/a/h:i	Lorg/antivirus/a/i;
    //   1184: aload 25
    //   1186: invokeinterface 527 2 0
    //   1191: iload 46
    //   1193: ifeq +81 -> 1274
    //   1196: new 49	android/app/Notification
    //   1199: dup
    //   1200: ldc 99
    //   1202: ldc 222
    //   1204: invokestatic 106	org/antivirus/Strings:getString	(I)Ljava/lang/String;
    //   1207: invokestatic 112	java/lang/System:currentTimeMillis	()J
    //   1210: invokespecial 115	android/app/Notification:<init>	(ILjava/lang/CharSequence;J)V
    //   1213: astore 48
    //   1215: aload 48
    //   1217: bipush 48
    //   1219: aload 48
    //   1221: getfield 118	android/app/Notification:flags	I
    //   1224: ior
    //   1225: putfield 118	android/app/Notification:flags	I
    //   1228: aload_0
    //   1229: getfield 47	org/antivirus/a/h:j	Landroid/content/Context;
    //   1232: iconst_0
    //   1233: aload 41
    //   1235: ldc 139
    //   1237: invokestatic 145	android/app/PendingIntent:getActivity	(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    //   1240: astore 49
    //   1242: aload 48
    //   1244: aload_0
    //   1245: getfield 47	org/antivirus/a/h:j	Landroid/content/Context;
    //   1248: ldc 232
    //   1250: invokestatic 106	org/antivirus/Strings:getString	(I)Ljava/lang/String;
    //   1253: ldc_w 528
    //   1256: invokestatic 106	org/antivirus/Strings:getString	(I)Ljava/lang/String;
    //   1259: aload 49
    //   1261: invokevirtual 56	android/app/Notification:setLatestEventInfo	(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    //   1264: aload 39
    //   1266: sipush 2001
    //   1269: aload 48
    //   1271: invokevirtual 178	android/app/NotificationManager:notify	(ILandroid/app/Notification;)V
    //   1274: aload_0
    //   1275: invokespecial 237	org/antivirus/a/h:b	()V
    //   1278: aload_0
    //   1279: monitorexit
    //   1280: goto +166 -> 1446
    //   1283: aload_0
    //   1284: getfield 180	org/antivirus/a/h:i	Lorg/antivirus/a/i;
    //   1287: aconst_null
    //   1288: invokeinterface 527 2 0
    //   1293: goto -102 -> 1191
    //   1296: astore 42
    //   1298: aload 42
    //   1300: invokestatic 85	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   1303: goto -29 -> 1274
    //   1306: astore 11
    //   1308: goto -1022 -> 286
    //   1311: astore 9
    //   1313: goto -888 -> 425
    //   1316: astore 8
    //   1318: goto -885 -> 433
    //   1321: astore 7
    //   1323: aload 27
    //   1325: astore_2
    //   1326: goto -909 -> 417
    //   1329: astore 7
    //   1331: aconst_null
    //   1332: astore_2
    //   1333: goto -916 -> 417
    //   1336: astore 7
    //   1338: aload 4
    //   1340: astore_2
    //   1341: aload 5
    //   1343: astore_1
    //   1344: goto -927 -> 417
    //   1347: astore_3
    //   1348: aconst_null
    //   1349: astore 4
    //   1351: aconst_null
    //   1352: astore 5
    //   1354: aconst_null
    //   1355: astore 6
    //   1357: goto -1099 -> 258
    //   1360: astore 26
    //   1362: aload_1
    //   1363: astore 5
    //   1365: aload 12
    //   1367: astore 6
    //   1369: aload 26
    //   1371: astore_3
    //   1372: aconst_null
    //   1373: astore 4
    //   1375: goto -1117 -> 258
    //   1378: astore 28
    //   1380: aload 12
    //   1382: astore 6
    //   1384: aload 28
    //   1386: astore_3
    //   1387: aload 27
    //   1389: astore 4
    //   1391: aload_1
    //   1392: astore 5
    //   1394: goto -1136 -> 258
    //   1397: astore 33
    //   1399: aload 12
    //   1401: astore 6
    //   1403: aload 33
    //   1405: astore_3
    //   1406: aload_1
    //   1407: astore 5
    //   1409: aconst_null
    //   1410: astore 4
    //   1412: goto -1154 -> 258
    //   1415: astore 34
    //   1417: aload 12
    //   1419: astore 6
    //   1421: aload 34
    //   1423: astore_3
    //   1424: aconst_null
    //   1425: astore 4
    //   1427: aconst_null
    //   1428: astore 5
    //   1430: goto -1172 -> 258
    //   1433: iconst_0
    //   1434: istore 46
    //   1436: goto -284 -> 1152
    //   1439: aload 18
    //   1441: astore 20
    //   1443: goto -1277 -> 166
    //   1446: return
    //   1447: astore_3
    //   1448: aconst_null
    //   1449: astore 4
    //   1451: aconst_null
    //   1452: astore 5
    //   1454: aconst_null
    //   1455: astore 6
    //   1457: goto -1199 -> 258
    //   1460: astore 7
    //   1462: aconst_null
    //   1463: astore_2
    //   1464: aconst_null
    //   1465: astore_1
    //   1466: goto -1049 -> 417
    //
    // Exception table:
    //   from	to	target	type
    //   35	62	101	java/lang/Exception
    //   23	35	243	java/lang/Exception
    //   70	240	243	java/lang/Exception
    //   304	412	243	java/lang/Exception
    //   436	489	243	java/lang/Exception
    //   595	678	243	java/lang/Exception
    //   291	296	299	java/lang/Exception
    //   4	23	415	finally
    //   23	35	415	finally
    //   35	62	415	finally
    //   70	240	415	finally
    //   304	412	415	finally
    //   436	489	415	finally
    //   496	510	415	finally
    //   595	678	415	finally
    //   1006	1021	1024	finally
    //   1031	1274	1024	finally
    //   1274	1280	1024	finally
    //   1283	1293	1024	finally
    //   1298	1303	1024	finally
    //   1031	1274	1296	java/lang/Exception
    //   1283	1293	1296	java/lang/Exception
    //   281	286	1306	java/lang/Exception
    //   421	425	1311	java/lang/Exception
    //   429	433	1316	java/lang/Exception
    //   510	588	1321	finally
    //   688	693	1321	finally
    //   693	697	1329	finally
    //   263	276	1336	finally
    //   4	23	1347	java/lang/Exception
    //   496	510	1360	java/lang/Exception
    //   510	588	1378	java/lang/Exception
    //   688	693	1378	java/lang/Exception
    //   693	697	1397	java/lang/Exception
    //   697	702	1415	java/lang/Exception
    //   702	1006	1447	java/lang/Exception
    //   1026	1031	1447	java/lang/Exception
    //   697	702	1460	finally
    //   702	1006	1460	finally
    //   1026	1031	1460	finally
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.a.h
 * JD-Core Version:    0.6.2
 */