package com.antivirus.e;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RemoteViews;
import android.widget.TextView;
import com.antivirus.m;
import com.antivirus.ui.versionUpdate.VersionUpdateDialog;
import com.avg.toolkit.f.a;

public class g
  implements Runnable
{
  private boolean a = false;
  private String b;
  private int c;
  private Notification d;
  private int e = -16777216;
  private final int f = 1024;
  private final String g = "search_helper";
  private Messenger h;
  private Context i;
  private Runnable j;

  public g(Context paramContext, String paramString, int paramInt)
  {
    this.b = paramString;
    this.c = paramInt;
    this.i = paramContext;
    try
    {
      Notification localNotification = new Notification();
      localNotification.setLatestEventInfo(this.i, "search_helper", "", null);
      LinearLayout localLinearLayout = new LinearLayout(this.i);
      a((ViewGroup)localNotification.contentView.apply(this.i, localLinearLayout));
      localLinearLayout.removeAllViews();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        a.a(localException);
    }
  }

  // ERROR //
  private void a(int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 47	com/antivirus/e/g:i	Landroid/content/Context;
    //   4: ldc 89
    //   6: invokevirtual 95	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   9: checkcast 97	android/app/NotificationManager
    //   12: astore 4
    //   14: aload_0
    //   15: getfield 99	com/antivirus/e/g:d	Landroid/app/Notification;
    //   18: ifnonnull +46 -> 64
    //   21: aload_0
    //   22: new 49	android/app/Notification
    //   25: dup
    //   26: ldc 100
    //   28: aload_0
    //   29: getfield 47	com/antivirus/e/g:i	Landroid/content/Context;
    //   32: ldc 101
    //   34: invokestatic 106	com/antivirus/m:a	(Landroid/content/Context;I)Ljava/lang/String;
    //   37: invokestatic 112	java/lang/System:currentTimeMillis	()J
    //   40: invokespecial 115	android/app/Notification:<init>	(ILjava/lang/CharSequence;J)V
    //   43: putfield 99	com/antivirus/e/g:d	Landroid/app/Notification;
    //   46: aload_0
    //   47: getfield 99	com/antivirus/e/g:d	Landroid/app/Notification;
    //   50: astore 13
    //   52: aload 13
    //   54: iconst_2
    //   55: aload 13
    //   57: getfield 118	android/app/Notification:flags	I
    //   60: ior
    //   61: putfield 118	android/app/Notification:flags	I
    //   64: new 120	android/content/Intent
    //   67: dup
    //   68: aload_0
    //   69: getfield 47	com/antivirus/e/g:i	Landroid/content/Context;
    //   72: ldc 122
    //   74: invokespecial 125	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   77: astore 5
    //   79: aload 5
    //   81: ldc 127
    //   83: iload_1
    //   84: invokevirtual 131	android/content/Intent:putExtra	(Ljava/lang/String;I)Landroid/content/Intent;
    //   87: pop
    //   88: aload 5
    //   90: ldc 133
    //   92: iload_2
    //   93: invokevirtual 131	android/content/Intent:putExtra	(Ljava/lang/String;I)Landroid/content/Intent;
    //   96: pop
    //   97: aload 5
    //   99: ldc 134
    //   101: invokevirtual 138	android/content/Intent:setFlags	(I)Landroid/content/Intent;
    //   104: pop
    //   105: aload_0
    //   106: getfield 99	com/antivirus/e/g:d	Landroid/app/Notification;
    //   109: aload_0
    //   110: getfield 47	com/antivirus/e/g:i	Landroid/content/Context;
    //   113: iconst_0
    //   114: aload 5
    //   116: ldc 139
    //   118: invokestatic 145	android/app/PendingIntent:getActivity	(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    //   121: putfield 149	android/app/Notification:contentIntent	Landroid/app/PendingIntent;
    //   124: new 67	android/widget/RemoteViews
    //   127: dup
    //   128: aload_0
    //   129: getfield 47	com/antivirus/e/g:i	Landroid/content/Context;
    //   132: invokevirtual 153	android/content/Context:getPackageName	()Ljava/lang/String;
    //   135: ldc 154
    //   137: invokespecial 157	android/widget/RemoteViews:<init>	(Ljava/lang/String;I)V
    //   140: astore 9
    //   142: aload 9
    //   144: ldc 158
    //   146: ldc 100
    //   148: invokevirtual 161	android/widget/RemoteViews:setImageViewResource	(II)V
    //   151: aload 9
    //   153: ldc 162
    //   155: aload_0
    //   156: getfield 47	com/antivirus/e/g:i	Landroid/content/Context;
    //   159: ldc 101
    //   161: invokestatic 106	com/antivirus/m:a	(Landroid/content/Context;I)Ljava/lang/String;
    //   164: invokevirtual 166	android/widget/RemoteViews:setTextViewText	(ILjava/lang/CharSequence;)V
    //   167: aload 9
    //   169: ldc 167
    //   171: iload_2
    //   172: iload_1
    //   173: iconst_0
    //   174: invokevirtual 171	android/widget/RemoteViews:setProgressBar	(IIIZ)V
    //   177: aload 9
    //   179: ldc 162
    //   181: aload_0
    //   182: getfield 35	com/antivirus/e/g:e	I
    //   185: invokevirtual 174	android/widget/RemoteViews:setTextColor	(II)V
    //   188: aload_0
    //   189: getfield 99	com/antivirus/e/g:d	Landroid/app/Notification;
    //   192: aload 9
    //   194: putfield 65	android/app/Notification:contentView	Landroid/widget/RemoteViews;
    //   197: aload_0
    //   198: monitorenter
    //   199: aload_0
    //   200: getfield 32	com/antivirus/e/g:a	Z
    //   203: ifne +15 -> 218
    //   206: aload 4
    //   208: sipush 2001
    //   211: aload_0
    //   212: getfield 99	com/antivirus/e/g:d	Landroid/app/Notification;
    //   215: invokevirtual 178	android/app/NotificationManager:notify	(ILandroid/app/Notification;)V
    //   218: aload_0
    //   219: monitorexit
    //   220: aload_0
    //   221: getfield 180	com/antivirus/e/g:h	Landroid/os/Messenger;
    //   224: ifnull +35 -> 259
    //   227: invokestatic 186	android/os/Message:obtain	()Landroid/os/Message;
    //   230: astore 11
    //   232: aload 11
    //   234: iconst_1
    //   235: putfield 189	android/os/Message:what	I
    //   238: aload 11
    //   240: iload_1
    //   241: putfield 192	android/os/Message:arg1	I
    //   244: aload 11
    //   246: iload_2
    //   247: putfield 195	android/os/Message:arg2	I
    //   250: aload_0
    //   251: getfield 180	com/antivirus/e/g:h	Landroid/os/Messenger;
    //   254: aload 11
    //   256: invokevirtual 201	android/os/Messenger:send	(Landroid/os/Message;)V
    //   259: return
    //   260: astore 10
    //   262: aload_0
    //   263: monitorexit
    //   264: aload 10
    //   266: athrow
    //   267: astore_3
    //   268: aload_3
    //   269: invokestatic 84	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   272: goto -13 -> 259
    //   275: astore 12
    //   277: aload 12
    //   279: invokestatic 84	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   282: goto -23 -> 259
    //
    // Exception table:
    //   from	to	target	type
    //   199	220	260	finally
    //   262	264	260	finally
    //   0	199	267	java/lang/Exception
    //   220	250	267	java/lang/Exception
    //   250	259	267	java/lang/Exception
    //   264	267	267	java/lang/Exception
    //   277	282	267	java/lang/Exception
    //   250	259	275	android/os/RemoteException
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
        this.e = localTextView.getTextColors().getDefaultColor();
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
    if (this.j != null)
      this.j.run();
  }

  private void c()
  {
    try
    {
      NotificationManager localNotificationManager = (NotificationManager)this.i.getSystemService("notification");
      Notification localNotification = new Notification(2130837609, m.a(this.i, 2131296685), System.currentTimeMillis());
      localNotification.flags = (0x10 | localNotification.flags);
      Intent localIntent = new Intent(this.i, VersionUpdateDialog.class);
      localIntent.putExtra("url", this.b);
      localIntent.putExtra("revision", this.c);
      PendingIntent localPendingIntent = PendingIntent.getActivity(this.i, 0, localIntent, 134217728);
      localNotification.setLatestEventInfo(this.i, m.a(this.i, 2131296683), m.a(this.i, 2131296688), localPendingIntent);
      localNotificationManager.notify(2001, localNotification);
      if (this.h != null)
      {
        localMessage = Message.obtain();
        localMessage.what = 2;
      }
    }
    catch (Exception localException)
    {
      try
      {
        Message localMessage;
        this.h.send(localMessage);
        b();
        return;
        localException = localException;
        a.a(localException);
      }
      catch (RemoteException localRemoteException)
      {
        while (true)
          a.a(localRemoteException);
      }
    }
  }

  public void a()
  {
    try
    {
      this.a = true;
      ((NotificationManager)this.i.getSystemService("notification")).cancel(2001);
      b();
      return;
    }
    finally
    {
    }
  }

  public void a(Messenger paramMessenger)
  {
    this.h = paramMessenger;
  }

  public void a(Runnable paramRunnable)
  {
    this.j = paramRunnable;
  }

  // ERROR //
  public void run()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aconst_null
    //   3: astore_2
    //   4: new 260	java/net/URL
    //   7: dup
    //   8: aload_0
    //   9: getfield 43	com/antivirus/e/g:b	Ljava/lang/String;
    //   12: invokespecial 263	java/net/URL:<init>	(Ljava/lang/String;)V
    //   15: invokevirtual 267	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   18: checkcast 269	java/net/HttpURLConnection
    //   21: astore 12
    //   23: aload 12
    //   25: ldc_w 271
    //   28: invokevirtual 274	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   31: aload 12
    //   33: invokevirtual 277	java/net/HttpURLConnection:connect	()V
    //   36: aload 12
    //   38: ldc_w 279
    //   41: invokevirtual 283	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   44: astore 77
    //   46: iconst_0
    //   47: istore 78
    //   49: aconst_null
    //   50: astore_1
    //   51: aload 77
    //   53: ifnull +14 -> 67
    //   56: aload 77
    //   58: invokestatic 289	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   61: istore 79
    //   63: iload 79
    //   65: istore 78
    //   67: iload 78
    //   69: istore 15
    //   71: aload 12
    //   73: invokevirtual 292	java/net/HttpURLConnection:getResponseCode	()I
    //   76: istore 16
    //   78: aconst_null
    //   79: astore_1
    //   80: iload 16
    //   82: sipush 200
    //   85: if_icmpne +10 -> 95
    //   88: aconst_null
    //   89: astore_1
    //   90: iload 15
    //   92: ifgt +39 -> 131
    //   95: aload_0
    //   96: invokespecial 294	com/antivirus/e/g:c	()V
    //   99: iconst_0
    //   100: ifeq +7 -> 107
    //   103: aconst_null
    //   104: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   107: iconst_0
    //   108: ifeq +7 -> 115
    //   111: aconst_null
    //   112: invokevirtual 302	java/io/InputStream:close	()V
    //   115: return
    //   116: astore 14
    //   118: aload 14
    //   120: invokestatic 84	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   123: iconst_0
    //   124: istore 15
    //   126: aconst_null
    //   127: astore_1
    //   128: goto -57 -> 71
    //   131: aload_0
    //   132: getfield 47	com/antivirus/e/g:i	Landroid/content/Context;
    //   135: invokevirtual 306	android/content/Context:getFilesDir	()Ljava/io/File;
    //   138: astore 17
    //   140: aload 17
    //   142: invokestatic 311	com/antivirus/e/b:a	(Ljava/io/File;)V
    //   145: invokestatic 316	android/os/SystemClock:elapsedRealtime	()J
    //   148: invokestatic 321	java/lang/Long:toString	(J)Ljava/lang/String;
    //   151: astore 18
    //   153: aload 18
    //   155: invokevirtual 324	java/lang/String:length	()I
    //   158: istore 19
    //   160: aconst_null
    //   161: astore_1
    //   162: iload 19
    //   164: bipush 9
    //   166: if_icmple +1294 -> 1460
    //   169: aload 18
    //   171: iload 19
    //   173: bipush 9
    //   175: isub
    //   176: invokevirtual 328	java/lang/String:substring	(I)Ljava/lang/String;
    //   179: astore 20
    //   181: new 330	android/os/StatFs
    //   184: dup
    //   185: aload 17
    //   187: invokevirtual 333	java/io/File:toString	()Ljava/lang/String;
    //   190: invokespecial 334	android/os/StatFs:<init>	(Ljava/lang/String;)V
    //   193: astore 21
    //   195: aload 21
    //   197: invokevirtual 337	android/os/StatFs:getBlockSize	()I
    //   200: i2l
    //   201: aload 21
    //   203: invokevirtual 340	android/os/StatFs:getAvailableBlocks	()I
    //   206: i2l
    //   207: lmul
    //   208: iload 15
    //   210: i2l
    //   211: lcmp
    //   212: istore 22
    //   214: aconst_null
    //   215: astore_1
    //   216: iload 22
    //   218: ifge +358 -> 576
    //   221: ldc_w 342
    //   224: invokestatic 347	android/os/Environment:getExternalStorageState	()Ljava/lang/String;
    //   227: invokevirtual 224	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   230: istore 64
    //   232: aconst_null
    //   233: astore_1
    //   234: iload 64
    //   236: ifne +43 -> 279
    //   239: aconst_null
    //   240: astore_1
    //   241: aload 12
    //   243: ifnull +8 -> 251
    //   246: aload 12
    //   248: invokevirtual 350	java/net/HttpURLConnection:disconnect	()V
    //   251: aload_0
    //   252: invokespecial 294	com/antivirus/e/g:c	()V
    //   255: iconst_0
    //   256: ifeq +7 -> 263
    //   259: aconst_null
    //   260: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   263: iconst_0
    //   264: ifeq -149 -> 115
    //   267: aconst_null
    //   268: invokevirtual 302	java/io/InputStream:close	()V
    //   271: goto -156 -> 115
    //   274: astore 65
    //   276: goto -161 -> 115
    //   279: new 332	java/io/File
    //   282: dup
    //   283: invokestatic 353	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   286: new 355	java/lang/StringBuilder
    //   289: dup
    //   290: invokespecial 356	java/lang/StringBuilder:<init>	()V
    //   293: ldc_w 358
    //   296: invokevirtual 362	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   299: aload_0
    //   300: getfield 47	com/antivirus/e/g:i	Landroid/content/Context;
    //   303: invokevirtual 153	android/content/Context:getPackageName	()Ljava/lang/String;
    //   306: invokevirtual 362	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   309: ldc_w 364
    //   312: invokevirtual 362	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   315: invokevirtual 365	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   318: invokespecial 368	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   321: astore 67
    //   323: aload 67
    //   325: invokevirtual 372	java/io/File:mkdirs	()Z
    //   328: pop
    //   329: aload 67
    //   331: invokestatic 311	com/antivirus/e/b:a	(Ljava/io/File;)V
    //   334: new 330	android/os/StatFs
    //   337: dup
    //   338: aload 67
    //   340: invokevirtual 333	java/io/File:toString	()Ljava/lang/String;
    //   343: invokespecial 334	android/os/StatFs:<init>	(Ljava/lang/String;)V
    //   346: astore 69
    //   348: aload 69
    //   350: invokevirtual 337	android/os/StatFs:getBlockSize	()I
    //   353: i2l
    //   354: aload 69
    //   356: invokevirtual 340	android/os/StatFs:getAvailableBlocks	()I
    //   359: i2l
    //   360: lmul
    //   361: iload 15
    //   363: i2l
    //   364: lcmp
    //   365: istore 70
    //   367: aconst_null
    //   368: astore_1
    //   369: iload 70
    //   371: ifge +43 -> 414
    //   374: aconst_null
    //   375: astore_1
    //   376: aload 12
    //   378: ifnull +8 -> 386
    //   381: aload 12
    //   383: invokevirtual 350	java/net/HttpURLConnection:disconnect	()V
    //   386: aload_0
    //   387: invokespecial 294	com/antivirus/e/g:c	()V
    //   390: iconst_0
    //   391: ifeq +7 -> 398
    //   394: aconst_null
    //   395: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   398: iconst_0
    //   399: ifeq -284 -> 115
    //   402: aconst_null
    //   403: invokevirtual 302	java/io/InputStream:close	()V
    //   406: goto -291 -> 115
    //   409: astore 71
    //   411: goto -296 -> 115
    //   414: new 332	java/io/File
    //   417: dup
    //   418: aload 67
    //   420: new 355	java/lang/StringBuilder
    //   423: dup
    //   424: invokespecial 356	java/lang/StringBuilder:<init>	()V
    //   427: ldc_w 374
    //   430: invokevirtual 362	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   433: aload_0
    //   434: getfield 45	com/antivirus/e/g:c	I
    //   437: invokevirtual 377	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   440: aload 20
    //   442: invokevirtual 362	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   445: ldc_w 379
    //   448: invokevirtual 362	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   451: invokevirtual 365	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   454: invokespecial 368	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   457: astore 73
    //   459: new 296	java/io/FileOutputStream
    //   462: dup
    //   463: aload 73
    //   465: invokespecial 381	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   468: astore 74
    //   470: aload 73
    //   472: astore 25
    //   474: aload 74
    //   476: astore_1
    //   477: aload_0
    //   478: iconst_0
    //   479: iload 15
    //   481: invokespecial 383	com/antivirus/e/g:a	(II)V
    //   484: aload 12
    //   486: invokevirtual 387	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   489: astore 27
    //   491: sipush 1024
    //   494: newarray byte
    //   496: astore 29
    //   498: iconst_0
    //   499: istore 30
    //   501: invokestatic 316	android/os/SystemClock:elapsedRealtime	()J
    //   504: lstore 31
    //   506: aload_0
    //   507: getfield 32	com/antivirus/e/g:a	Z
    //   510: ifne +165 -> 675
    //   513: aload 27
    //   515: aload 29
    //   517: invokevirtual 391	java/io/InputStream:read	([B)I
    //   520: istore 61
    //   522: iload 61
    //   524: iconst_m1
    //   525: if_icmpeq +150 -> 675
    //   528: aload_1
    //   529: aload 29
    //   531: iconst_0
    //   532: iload 61
    //   534: invokevirtual 395	java/io/FileOutputStream:write	([BII)V
    //   537: iload 30
    //   539: iload 61
    //   541: iadd
    //   542: istore 30
    //   544: invokestatic 316	android/os/SystemClock:elapsedRealtime	()J
    //   547: lstore 62
    //   549: lload 62
    //   551: lload 31
    //   553: lsub
    //   554: ldc2_w 396
    //   557: lcmp
    //   558: iflt -52 -> 506
    //   561: aload_0
    //   562: iload 30
    //   564: iload 15
    //   566: invokespecial 383	com/antivirus/e/g:a	(II)V
    //   569: lload 62
    //   571: lstore 31
    //   573: goto -67 -> 506
    //   576: new 332	java/io/File
    //   579: dup
    //   580: aload 17
    //   582: new 355	java/lang/StringBuilder
    //   585: dup
    //   586: invokespecial 356	java/lang/StringBuilder:<init>	()V
    //   589: ldc_w 374
    //   592: invokevirtual 362	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   595: aload_0
    //   596: getfield 45	com/antivirus/e/g:c	I
    //   599: invokevirtual 377	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   602: aload 20
    //   604: invokevirtual 362	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   607: ldc_w 379
    //   610: invokevirtual 362	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   613: invokevirtual 365	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   616: invokespecial 368	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   619: astore 23
    //   621: aload_0
    //   622: getfield 47	com/antivirus/e/g:i	Landroid/content/Context;
    //   625: new 355	java/lang/StringBuilder
    //   628: dup
    //   629: invokespecial 356	java/lang/StringBuilder:<init>	()V
    //   632: ldc_w 374
    //   635: invokevirtual 362	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   638: aload_0
    //   639: getfield 45	com/antivirus/e/g:c	I
    //   642: invokevirtual 377	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   645: aload 20
    //   647: invokevirtual 362	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   650: ldc_w 379
    //   653: invokevirtual 362	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   656: invokevirtual 365	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   659: iconst_1
    //   660: invokevirtual 401	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   663: astore 24
    //   665: aload 24
    //   667: astore_1
    //   668: aload 23
    //   670: astore 25
    //   672: goto -195 -> 477
    //   675: aload 27
    //   677: invokevirtual 302	java/io/InputStream:close	()V
    //   680: aload_1
    //   681: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   684: aload 12
    //   686: invokevirtual 350	java/net/HttpURLConnection:disconnect	()V
    //   689: aload_0
    //   690: iload 30
    //   692: iload 15
    //   694: invokespecial 383	com/antivirus/e/g:a	(II)V
    //   697: aload_0
    //   698: getfield 32	com/antivirus/e/g:a	Z
    //   701: ifeq +33 -> 734
    //   704: aload 25
    //   706: invokevirtual 404	java/io/File:delete	()Z
    //   709: pop
    //   710: iconst_0
    //   711: ifeq +7 -> 718
    //   714: aconst_null
    //   715: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   718: iconst_0
    //   719: ifeq -604 -> 115
    //   722: aconst_null
    //   723: invokevirtual 302	java/io/InputStream:close	()V
    //   726: goto -611 -> 115
    //   729: astore 59
    //   731: goto -616 -> 115
    //   734: new 406	com/antivirus/e/a
    //   737: dup
    //   738: invokespecial 407	com/antivirus/e/a:<init>	()V
    //   741: aload 25
    //   743: invokevirtual 333	java/io/File:toString	()Ljava/lang/String;
    //   746: invokevirtual 410	com/antivirus/e/a:a	(Ljava/lang/String;)Z
    //   749: ifne +37 -> 786
    //   752: ldc_w 412
    //   755: invokestatic 414	com/avg/toolkit/f/a:a	(Ljava/lang/String;)V
    //   758: aload_0
    //   759: invokespecial 294	com/antivirus/e/g:c	()V
    //   762: iconst_0
    //   763: ifeq +7 -> 770
    //   766: aconst_null
    //   767: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   770: iconst_0
    //   771: ifeq -656 -> 115
    //   774: aconst_null
    //   775: invokevirtual 302	java/io/InputStream:close	()V
    //   778: goto -663 -> 115
    //   781: astore 56
    //   783: goto -668 -> 115
    //   786: aload_0
    //   787: getfield 47	com/antivirus/e/g:i	Landroid/content/Context;
    //   790: ldc 89
    //   792: invokevirtual 95	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   795: checkcast 97	android/app/NotificationManager
    //   798: astore 35
    //   800: aload 35
    //   802: sipush 2001
    //   805: invokevirtual 256	android/app/NotificationManager:cancel	(I)V
    //   808: aload_0
    //   809: monitorenter
    //   810: aload_0
    //   811: getfield 32	com/antivirus/e/g:a	Z
    //   814: ifeq +35 -> 849
    //   817: aload 25
    //   819: invokevirtual 404	java/io/File:delete	()Z
    //   822: pop
    //   823: aload_0
    //   824: monitorexit
    //   825: iconst_0
    //   826: ifeq +7 -> 833
    //   829: aconst_null
    //   830: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   833: iconst_0
    //   834: ifeq -719 -> 115
    //   837: aconst_null
    //   838: invokevirtual 302	java/io/InputStream:close	()V
    //   841: goto -726 -> 115
    //   844: astore 54
    //   846: goto -731 -> 115
    //   849: new 120	android/content/Intent
    //   852: dup
    //   853: ldc_w 416
    //   856: invokespecial 417	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   859: astore 37
    //   861: aload 37
    //   863: ldc_w 419
    //   866: invokevirtual 423	android/content/Intent:addCategory	(Ljava/lang/String;)Landroid/content/Intent;
    //   869: pop
    //   870: aload 37
    //   872: aload 25
    //   874: invokestatic 429	android/net/Uri:fromFile	(Ljava/io/File;)Landroid/net/Uri;
    //   877: ldc_w 431
    //   880: invokevirtual 435	android/content/Intent:setDataAndType	(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    //   883: pop
    //   884: aload_0
    //   885: getfield 47	com/antivirus/e/g:i	Landroid/content/Context;
    //   888: invokevirtual 439	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   891: aload 37
    //   893: ldc_w 440
    //   896: invokevirtual 446	android/content/pm/PackageManager:queryIntentActivities	(Landroid/content/Intent;I)Ljava/util/List;
    //   899: invokeinterface 452 1 0
    //   904: astore 43
    //   906: aload 43
    //   908: invokeinterface 457 1 0
    //   913: ifeq +541 -> 1454
    //   916: aload 43
    //   918: invokeinterface 461 1 0
    //   923: checkcast 463	android/content/pm/ResolveInfo
    //   926: astore 51
    //   928: aload 51
    //   930: getfield 467	android/content/pm/ResolveInfo:activityInfo	Landroid/content/pm/ActivityInfo;
    //   933: getfield 472	android/content/pm/ActivityInfo:packageName	Ljava/lang/String;
    //   936: ldc_w 474
    //   939: invokevirtual 478	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   942: ifeq -36 -> 906
    //   945: aload 37
    //   947: aload 51
    //   949: getfield 467	android/content/pm/ResolveInfo:activityInfo	Landroid/content/pm/ActivityInfo;
    //   952: getfield 472	android/content/pm/ActivityInfo:packageName	Ljava/lang/String;
    //   955: aload 51
    //   957: getfield 467	android/content/pm/ResolveInfo:activityInfo	Landroid/content/pm/ActivityInfo;
    //   960: getfield 481	android/content/pm/ActivityInfo:name	Ljava/lang/String;
    //   963: invokevirtual 484	android/content/Intent:setClassName	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   966: pop
    //   967: iconst_1
    //   968: istore 44
    //   970: aload 37
    //   972: ldc_w 485
    //   975: invokevirtual 138	android/content/Intent:setFlags	(I)Landroid/content/Intent;
    //   978: pop
    //   979: new 120	android/content/Intent
    //   982: dup
    //   983: aload 37
    //   985: invokespecial 488	android/content/Intent:<init>	(Landroid/content/Intent;)V
    //   988: astore 46
    //   990: iload 44
    //   992: ifeq +240 -> 1232
    //   995: new 49	android/app/Notification
    //   998: dup
    //   999: ldc 100
    //   1001: aload_0
    //   1002: getfield 47	com/antivirus/e/g:i	Landroid/content/Context;
    //   1005: ldc 239
    //   1007: invokestatic 106	com/antivirus/m:a	(Landroid/content/Context;I)Ljava/lang/String;
    //   1010: invokestatic 112	java/lang/System:currentTimeMillis	()J
    //   1013: invokespecial 115	android/app/Notification:<init>	(ILjava/lang/CharSequence;J)V
    //   1016: astore 47
    //   1018: aload 47
    //   1020: bipush 48
    //   1022: aload 47
    //   1024: getfield 118	android/app/Notification:flags	I
    //   1027: ior
    //   1028: putfield 118	android/app/Notification:flags	I
    //   1031: aload_0
    //   1032: getfield 47	com/antivirus/e/g:i	Landroid/content/Context;
    //   1035: iconst_0
    //   1036: aload 37
    //   1038: ldc 139
    //   1040: invokestatic 145	android/app/PendingIntent:getActivity	(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    //   1043: astore 48
    //   1045: aload 47
    //   1047: aload_0
    //   1048: getfield 47	com/antivirus/e/g:i	Landroid/content/Context;
    //   1051: aload_0
    //   1052: getfield 47	com/antivirus/e/g:i	Landroid/content/Context;
    //   1055: ldc 249
    //   1057: invokestatic 106	com/antivirus/m:a	(Landroid/content/Context;I)Ljava/lang/String;
    //   1060: aload_0
    //   1061: getfield 47	com/antivirus/e/g:i	Landroid/content/Context;
    //   1064: ldc_w 489
    //   1067: invokestatic 106	com/antivirus/m:a	(Landroid/content/Context;I)Ljava/lang/String;
    //   1070: aload 48
    //   1072: invokevirtual 56	android/app/Notification:setLatestEventInfo	(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    //   1075: aload 35
    //   1077: sipush 2001
    //   1080: aload 47
    //   1082: invokevirtual 178	android/app/NotificationManager:notify	(ILandroid/app/Notification;)V
    //   1085: aload_0
    //   1086: getfield 180	com/antivirus/e/g:h	Landroid/os/Messenger;
    //   1089: ifnull +30 -> 1119
    //   1092: invokestatic 186	android/os/Message:obtain	()Landroid/os/Message;
    //   1095: astore 49
    //   1097: aload 49
    //   1099: iconst_3
    //   1100: putfield 189	android/os/Message:what	I
    //   1103: aload 49
    //   1105: aload 46
    //   1107: putfield 493	android/os/Message:obj	Ljava/lang/Object;
    //   1110: aload_0
    //   1111: getfield 180	com/antivirus/e/g:h	Landroid/os/Messenger;
    //   1114: aload 49
    //   1116: invokevirtual 201	android/os/Messenger:send	(Landroid/os/Message;)V
    //   1119: aload_0
    //   1120: invokespecial 252	com/antivirus/e/g:b	()V
    //   1123: aload_0
    //   1124: monitorexit
    //   1125: iconst_0
    //   1126: ifeq +7 -> 1133
    //   1129: aconst_null
    //   1130: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   1133: iconst_0
    //   1134: ifeq -1019 -> 115
    //   1137: aconst_null
    //   1138: invokevirtual 302	java/io/InputStream:close	()V
    //   1141: goto -1026 -> 115
    //   1144: astore 39
    //   1146: goto -1031 -> 115
    //   1149: astore 50
    //   1151: aload 50
    //   1153: invokestatic 84	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   1156: goto -37 -> 1119
    //   1159: astore 38
    //   1161: aload 38
    //   1163: invokestatic 84	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   1166: goto -47 -> 1119
    //   1169: astore 36
    //   1171: aload_0
    //   1172: monitorexit
    //   1173: aload 36
    //   1175: athrow
    //   1176: astore_3
    //   1177: aconst_null
    //   1178: astore 4
    //   1180: aconst_null
    //   1181: astore 5
    //   1183: aconst_null
    //   1184: astore 6
    //   1186: aload 6
    //   1188: ifnull +8 -> 1196
    //   1191: aload 6
    //   1193: invokevirtual 350	java/net/HttpURLConnection:disconnect	()V
    //   1196: aload_3
    //   1197: invokestatic 84	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   1200: aload_0
    //   1201: invokespecial 294	com/antivirus/e/g:c	()V
    //   1204: aload 5
    //   1206: ifnull +8 -> 1214
    //   1209: aload 5
    //   1211: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   1214: aload 4
    //   1216: ifnull -1101 -> 115
    //   1219: aload 4
    //   1221: invokevirtual 302	java/io/InputStream:close	()V
    //   1224: goto -1109 -> 115
    //   1227: astore 10
    //   1229: goto -1114 -> 115
    //   1232: aload_0
    //   1233: invokespecial 294	com/antivirus/e/g:c	()V
    //   1236: goto -117 -> 1119
    //   1239: astore 7
    //   1241: aload_1
    //   1242: ifnull +7 -> 1249
    //   1245: aload_1
    //   1246: invokevirtual 299	java/io/FileOutputStream:close	()V
    //   1249: aload_2
    //   1250: ifnull +7 -> 1257
    //   1253: aload_2
    //   1254: invokevirtual 302	java/io/InputStream:close	()V
    //   1257: aload 7
    //   1259: athrow
    //   1260: astore 76
    //   1262: goto -1155 -> 107
    //   1265: astore 75
    //   1267: goto -1152 -> 115
    //   1270: astore 66
    //   1272: goto -1009 -> 263
    //   1275: astore 72
    //   1277: goto -879 -> 398
    //   1280: astore 60
    //   1282: goto -564 -> 718
    //   1285: astore 57
    //   1287: goto -517 -> 770
    //   1290: astore 55
    //   1292: goto -459 -> 833
    //   1295: astore 40
    //   1297: goto -164 -> 1133
    //   1300: astore 11
    //   1302: goto -88 -> 1214
    //   1305: astore 9
    //   1307: goto -58 -> 1249
    //   1310: astore 8
    //   1312: goto -55 -> 1257
    //   1315: astore 7
    //   1317: aload 27
    //   1319: astore_2
    //   1320: goto -79 -> 1241
    //   1323: astore 7
    //   1325: aconst_null
    //   1326: astore_2
    //   1327: goto -86 -> 1241
    //   1330: astore 7
    //   1332: aconst_null
    //   1333: astore_2
    //   1334: aconst_null
    //   1335: astore_1
    //   1336: goto -95 -> 1241
    //   1339: astore 7
    //   1341: aload 4
    //   1343: astore_2
    //   1344: aload 5
    //   1346: astore_1
    //   1347: goto -106 -> 1241
    //   1350: astore_3
    //   1351: aconst_null
    //   1352: astore 4
    //   1354: aconst_null
    //   1355: astore 5
    //   1357: aconst_null
    //   1358: astore 6
    //   1360: goto -174 -> 1186
    //   1363: astore 13
    //   1365: aload 12
    //   1367: astore 6
    //   1369: aload 13
    //   1371: astore_3
    //   1372: aconst_null
    //   1373: astore 4
    //   1375: aconst_null
    //   1376: astore 5
    //   1378: goto -192 -> 1186
    //   1381: astore 26
    //   1383: aload_1
    //   1384: astore 5
    //   1386: aload 12
    //   1388: astore 6
    //   1390: aload 26
    //   1392: astore_3
    //   1393: aconst_null
    //   1394: astore 4
    //   1396: goto -210 -> 1186
    //   1399: astore 28
    //   1401: aload 12
    //   1403: astore 6
    //   1405: aload 28
    //   1407: astore_3
    //   1408: aload 27
    //   1410: astore 4
    //   1412: aload_1
    //   1413: astore 5
    //   1415: goto -229 -> 1186
    //   1418: astore 33
    //   1420: aload 12
    //   1422: astore 6
    //   1424: aload 33
    //   1426: astore_3
    //   1427: aload_1
    //   1428: astore 5
    //   1430: aconst_null
    //   1431: astore 4
    //   1433: goto -247 -> 1186
    //   1436: astore 34
    //   1438: aload 12
    //   1440: astore 6
    //   1442: aload 34
    //   1444: astore_3
    //   1445: aconst_null
    //   1446: astore 4
    //   1448: aconst_null
    //   1449: astore 5
    //   1451: goto -265 -> 1186
    //   1454: iconst_0
    //   1455: istore 44
    //   1457: goto -487 -> 970
    //   1460: aload 18
    //   1462: astore 20
    //   1464: goto -1283 -> 181
    //
    // Exception table:
    //   from	to	target	type
    //   36	63	116	java/lang/Exception
    //   267	271	274	java/lang/Exception
    //   402	406	409	java/lang/Exception
    //   722	726	729	java/lang/Exception
    //   774	778	781	java/lang/Exception
    //   837	841	844	java/lang/Exception
    //   1137	1141	1144	java/lang/Exception
    //   1110	1119	1149	android/os/RemoteException
    //   849	1110	1159	java/lang/Exception
    //   1110	1119	1159	java/lang/Exception
    //   1151	1156	1159	java/lang/Exception
    //   1232	1236	1159	java/lang/Exception
    //   810	825	1169	finally
    //   849	1110	1169	finally
    //   1110	1119	1169	finally
    //   1119	1125	1169	finally
    //   1151	1156	1169	finally
    //   1161	1173	1169	finally
    //   1232	1236	1169	finally
    //   689	710	1176	java/lang/Exception
    //   734	762	1176	java/lang/Exception
    //   786	810	1176	java/lang/Exception
    //   1173	1176	1176	java/lang/Exception
    //   1219	1224	1227	java/lang/Exception
    //   4	23	1239	finally
    //   23	36	1239	finally
    //   36	63	1239	finally
    //   71	99	1239	finally
    //   118	255	1239	finally
    //   279	390	1239	finally
    //   414	470	1239	finally
    //   477	491	1239	finally
    //   576	665	1239	finally
    //   103	107	1260	java/lang/Exception
    //   111	115	1265	java/lang/Exception
    //   259	263	1270	java/lang/Exception
    //   394	398	1275	java/lang/Exception
    //   714	718	1280	java/lang/Exception
    //   766	770	1285	java/lang/Exception
    //   829	833	1290	java/lang/Exception
    //   1129	1133	1295	java/lang/Exception
    //   1209	1214	1300	java/lang/Exception
    //   1245	1249	1305	java/lang/Exception
    //   1253	1257	1310	java/lang/Exception
    //   491	569	1315	finally
    //   675	680	1315	finally
    //   680	684	1323	finally
    //   684	689	1330	finally
    //   689	710	1330	finally
    //   734	762	1330	finally
    //   786	810	1330	finally
    //   1173	1176	1330	finally
    //   1191	1204	1339	finally
    //   4	23	1350	java/lang/Exception
    //   23	36	1363	java/lang/Exception
    //   71	99	1363	java/lang/Exception
    //   118	255	1363	java/lang/Exception
    //   279	390	1363	java/lang/Exception
    //   414	470	1363	java/lang/Exception
    //   576	665	1363	java/lang/Exception
    //   477	491	1381	java/lang/Exception
    //   491	569	1399	java/lang/Exception
    //   675	680	1399	java/lang/Exception
    //   680	684	1418	java/lang/Exception
    //   684	689	1436	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.e.g
 * JD-Core Version:    0.6.2
 */