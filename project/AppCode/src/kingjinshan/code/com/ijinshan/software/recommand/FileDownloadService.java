package com.ijinshan.software.recommand;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import android.os.StatFs;
import android.widget.Toast;
import java.io.File;
import java.util.ArrayList;

public class FileDownloadService extends Service
{
  private String a;
  private String b;
  private int c;
  private long d;
  private File e;
  private File f;
  private NotificationManager g;
  private Notification h;
  private Intent i;
  private PendingIntent j;
  private int k = 5;
  private ArrayList l;
  private final int m = 0;
  private final int n = 1;
  private Handler o = new a(this);

  private int a(String paramString)
  {
    PackageInfo localPackageInfo = getPackageManager().getPackageArchiveInfo(paramString, 1);
    if (localPackageInfo != null);
    for (int i1 = localPackageInfo.versionCode; ; i1 = 0)
      return i1;
  }

  private static boolean a(long paramLong)
  {
    StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
    if (localStatFs.getBlockSize() * localStatFs.getAvailableBlocks() > paramLong);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  // ERROR //
  public final long a(int paramInt, Notification paramNotification, String paramString1, String paramString2, File paramFile, long paramLong)
  {
    // Byte code:
    //   0: aload 5
    //   2: invokevirtual 106	java/io/File:length	()J
    //   5: lstore 8
    //   7: new 108	java/net/URL
    //   10: dup
    //   11: aload 4
    //   13: invokespecial 109	java/net/URL:<init>	(Ljava/lang/String;)V
    //   16: astore 10
    //   18: aload 10
    //   20: invokevirtual 113	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   23: checkcast 115	java/net/HttpURLConnection
    //   26: astore 15
    //   28: aload 15
    //   30: iconst_1
    //   31: invokevirtual 119	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   34: aload 15
    //   36: ldc 121
    //   38: ldc 123
    //   40: invokevirtual 127	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   43: lload 8
    //   45: lconst_0
    //   46: lcmp
    //   47: ifle +35 -> 82
    //   50: aload 15
    //   52: ldc 129
    //   54: new 131	java/lang/StringBuilder
    //   57: dup
    //   58: invokespecial 132	java/lang/StringBuilder:<init>	()V
    //   61: ldc 134
    //   63: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: lload 8
    //   68: invokevirtual 141	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   71: ldc 143
    //   73: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: invokevirtual 146	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   79: invokevirtual 127	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   82: aload 15
    //   84: sipush 10000
    //   87: invokevirtual 150	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   90: aload 15
    //   92: sipush 20000
    //   95: invokevirtual 153	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   98: aload 15
    //   100: invokevirtual 156	java/net/HttpURLConnection:getResponseCode	()I
    //   103: sipush 404
    //   106: if_icmpne +58 -> 164
    //   109: new 158	java/lang/Exception
    //   112: dup
    //   113: ldc 160
    //   115: invokespecial 161	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   118: athrow
    //   119: astore 11
    //   121: aconst_null
    //   122: astore 12
    //   124: aconst_null
    //   125: astore 13
    //   127: aload 15
    //   129: astore 14
    //   131: aload 14
    //   133: ifnull +8 -> 141
    //   136: aload 14
    //   138: invokevirtual 164	java/net/HttpURLConnection:disconnect	()V
    //   141: aload 13
    //   143: ifnull +8 -> 151
    //   146: aload 13
    //   148: invokevirtual 169	java/io/InputStream:close	()V
    //   151: aload 12
    //   153: ifnull +8 -> 161
    //   156: aload 12
    //   158: invokevirtual 172	java/io/RandomAccessFile:close	()V
    //   161: aload 11
    //   163: athrow
    //   164: lload 6
    //   166: lconst_0
    //   167: lcmp
    //   168: ifne +313 -> 481
    //   171: aload 15
    //   173: invokevirtual 175	java/net/HttpURLConnection:getContentLength	()I
    //   176: i2l
    //   177: lstore 16
    //   179: lload 16
    //   181: ldc2_w 176
    //   184: lcmp
    //   185: ifeq +296 -> 481
    //   188: lload 8
    //   190: lconst_0
    //   191: lcmp
    //   192: istore 18
    //   194: iconst_0
    //   195: istore 19
    //   197: iload 18
    //   199: ifle +29 -> 228
    //   202: lload 16
    //   204: lconst_0
    //   205: lcmp
    //   206: istore 27
    //   208: iconst_0
    //   209: istore 19
    //   211: iload 27
    //   213: ifeq +15 -> 228
    //   216: ldc2_w 178
    //   219: lload 8
    //   221: lmul
    //   222: lload 16
    //   224: ldiv
    //   225: l2i
    //   226: istore 19
    //   228: aload 15
    //   230: invokevirtual 182	java/net/HttpURLConnection:connect	()V
    //   233: aload 15
    //   235: invokevirtual 186	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   238: astore 20
    //   240: new 171	java/io/RandomAccessFile
    //   243: dup
    //   244: aload 5
    //   246: ldc 188
    //   248: invokespecial 191	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   251: astore 21
    //   253: aload 21
    //   255: lload 8
    //   257: invokevirtual 195	java/io/RandomAccessFile:seek	(J)V
    //   260: sipush 4096
    //   263: newarray byte
    //   265: astore 22
    //   267: iconst_0
    //   268: istore 23
    //   270: lconst_0
    //   271: lstore 24
    //   273: aload 20
    //   275: aload 22
    //   277: invokevirtual 199	java/io/InputStream:read	([B)I
    //   280: istore 26
    //   282: iload 26
    //   284: ifle +139 -> 423
    //   287: aload 21
    //   289: aload 22
    //   291: iconst_0
    //   292: iload 26
    //   294: invokevirtual 203	java/io/RandomAccessFile:write	([BII)V
    //   297: lload 24
    //   299: iload 26
    //   301: i2l
    //   302: ladd
    //   303: lstore 24
    //   305: iload 23
    //   307: ifeq +20 -> 327
    //   310: ldc2_w 178
    //   313: lload 24
    //   315: lmul
    //   316: lload 16
    //   318: ldiv
    //   319: l2i
    //   320: iconst_5
    //   321: isub
    //   322: iload 23
    //   324: if_icmplt -51 -> 273
    //   327: iinc 23 5
    //   330: aload_2
    //   331: aload_0
    //   332: new 131	java/lang/StringBuilder
    //   335: dup
    //   336: invokespecial 132	java/lang/StringBuilder:<init>	()V
    //   339: aload_3
    //   340: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   343: aload_0
    //   344: ldc 204
    //   346: invokevirtual 208	com/ijinshan/software/recommand/FileDownloadService:getString	(I)Ljava/lang/String;
    //   349: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   352: invokevirtual 146	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   355: new 131	java/lang/StringBuilder
    //   358: dup
    //   359: invokespecial 132	java/lang/StringBuilder:<init>	()V
    //   362: iload 19
    //   364: i2l
    //   365: bipush 100
    //   367: lload 24
    //   369: l2i
    //   370: imul
    //   371: i2l
    //   372: lload 16
    //   374: ldiv
    //   375: ladd
    //   376: invokevirtual 141	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   379: ldc 210
    //   381: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   384: invokevirtual 146	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   387: aload_0
    //   388: getfield 97	com/ijinshan/software/recommand/FileDownloadService:j	Landroid/app/PendingIntent;
    //   391: invokevirtual 216	android/app/Notification:setLatestEventInfo	(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    //   394: aload_0
    //   395: getfield 66	com/ijinshan/software/recommand/FileDownloadService:g	Landroid/app/NotificationManager;
    //   398: iload_1
    //   399: aload_2
    //   400: invokevirtual 222	android/app/NotificationManager:notify	(ILandroid/app/Notification;)V
    //   403: goto -130 -> 273
    //   406: astore 11
    //   408: aload 21
    //   410: astore 12
    //   412: aload 20
    //   414: astore 13
    //   416: aload 15
    //   418: astore 14
    //   420: goto -289 -> 131
    //   423: aload 15
    //   425: ifnull +8 -> 433
    //   428: aload 15
    //   430: invokevirtual 164	java/net/HttpURLConnection:disconnect	()V
    //   433: aload 20
    //   435: ifnull +8 -> 443
    //   438: aload 20
    //   440: invokevirtual 169	java/io/InputStream:close	()V
    //   443: aload 21
    //   445: invokevirtual 172	java/io/RandomAccessFile:close	()V
    //   448: lload 24
    //   450: lreturn
    //   451: astore 11
    //   453: aconst_null
    //   454: astore 12
    //   456: aconst_null
    //   457: astore 13
    //   459: aconst_null
    //   460: astore 14
    //   462: goto -331 -> 131
    //   465: astore 11
    //   467: aload 20
    //   469: astore 13
    //   471: aload 15
    //   473: astore 14
    //   475: aconst_null
    //   476: astore 12
    //   478: goto -347 -> 131
    //   481: lload 6
    //   483: lstore 16
    //   485: goto -297 -> 188
    //
    // Exception table:
    //   from	to	target	type
    //   28	119	119	finally
    //   171	240	119	finally
    //   253	403	406	finally
    //   7	28	451	finally
    //   240	253	465	finally
  }

  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onCreate()
  {
    this.g = ((NotificationManager)getSystemService("notification"));
    this.i = new Intent();
    this.j = PendingIntent.getActivity(this, 0, this.i, 0);
    this.l = new ArrayList();
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    this.a = paramIntent.getStringExtra("appName");
    int i1;
    if ("mounted".equals(Environment.getExternalStorageState()))
    {
      this.d = paramIntent.getIntExtra("size", 0);
      long l1 = this.d;
      StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
      if (localStatFs.getBlockSize() * localStatFs.getAvailableBlocks() > l1)
      {
        i1 = 1;
        if (i1 == 0)
          break label470;
        if (!this.l.contains(this.a))
          break label119;
        Toast.makeText(this, getString(2131428329), 1).show();
      }
    }
    while (true)
    {
      return 3;
      i1 = 0;
      break;
      label119: this.b = paramIntent.getStringExtra("downURL");
      this.c = paramIntent.getIntExtra("versionCode", 0);
      this.e = new File(Environment.getExternalStorageDirectory() + File.separator + "mosecurity" + File.separator + "download" + File.separator);
      this.f = new File(this.e.getPath(), this.a + "_" + this.c + ".apk");
      this.h = new Notification();
      this.h.icon = 2130837600;
      this.h.flags = 2;
      this.h.tickerText = (this.a + getString(2131428330));
      this.h.setLatestEventInfo(this, this.a, "0%", this.j);
      this.g.notify(this.k, this.h);
      c localc = new c(this);
      localc.a = this.k;
      localc.b = this.a;
      localc.c = this.b;
      localc.d = this.c;
      localc.e = this.d;
      localc.f = this.e;
      localc.g = this.f;
      localc.h = this.h;
      new b(this, localc).start();
      this.l.add(this.a);
      this.k = (1 + this.k);
      continue;
      label470: Toast.makeText(this, this.a + getString(2131428331), 1).show();
      continue;
      Toast.makeText(this, this.a + getString(2131428332), 1).show();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.software.recommand.FileDownloadService
 * JD-Core Version:    0.6.2
 */