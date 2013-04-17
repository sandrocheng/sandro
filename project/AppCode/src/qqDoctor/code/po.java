import QQPIM.UrlCheckResponse;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetManager;
import android.database.ContentObserver;
import android.os.Handler;
import android.provider.Browser;
import com.tencent.qqpimsecure.uilib.view.WebsiteTipsDialogView;
import com.tencent.qqpimsecure.uilib.view.WebsiteTipsDialogView.onAddDontRemindWebSiteListener;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.urlcheck.UrlCheckManager;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.Map;

public final class po
{
  UrlCheckManager a;
  Map<String, Long> b;
  long c;
  ho d;
  Context e = null;
  po.a f;
  ArrayList<po.c> g = new ArrayList();

  public po(Context paramContext)
  {
    this.e = paramContext;
    this.d = ho.a();
    this.a = ((UrlCheckManager)ManagerCreator.getManager(UrlCheckManager.class));
    this.b = new HashMap();
    this.c = 0L;
    a(this.e);
  }

  private static void a(Context paramContext)
  {
    a(paramContext, "redirect.html");
    a(paramContext, "blank.html");
    a(paramContext, "redirect.js");
  }

  private static void a(Context paramContext, String paramString)
  {
    try
    {
      InputStream localInputStream = paramContext.getAssets().open(paramString);
      FileOutputStream localFileOutputStream = paramContext.openFileOutput(paramString, 1);
      byte[] arrayOfByte = new byte[1024];
      for (int i = localInputStream.read(arrayOfByte, 0, 1024); i > 0; i = localInputStream.read(arrayOfByte, 0, 1024))
        localFileOutputStream.write(arrayOfByte, 0, i);
      localInputStream.close();
      localFileOutputStream.close();
      return;
    }
    catch (IOException localIOException)
    {
      while (true)
        localIOException.printStackTrace();
    }
  }

  final po.c a(String paramString)
  {
    while (true)
    {
      synchronized (this.g)
      {
        Iterator localIterator = this.g.iterator();
        if (localIterator.hasNext())
        {
          localc = (po.c)localIterator.next();
          if (!localc.i.equals(paramString))
            continue;
          return localc;
        }
      }
      po.c localc = null;
    }
  }

  final class a extends ContentObserver
  {
    public a()
    {
      super();
    }

    // ERROR //
    public final void onChange(boolean paramBoolean)
    {
      // Byte code:
      //   0: aload_0
      //   1: iload_1
      //   2: invokespecial 26	android/database/ContentObserver:onChange	(Z)V
      //   5: aload_0
      //   6: getfield 10	po$a:a	Lpo;
      //   9: getfield 32	po:d	Lho;
      //   12: invokevirtual 38	ho:dp	()Z
      //   15: ifne +4 -> 19
      //   18: return
      //   19: invokestatic 44	java/lang/System:currentTimeMillis	()J
      //   22: lstore_2
      //   23: aload_0
      //   24: getfield 10	po$a:a	Lpo;
      //   27: getfield 48	po:c	J
      //   30: lconst_0
      //   31: lcmp
      //   32: ifeq +19 -> 51
      //   35: lload_2
      //   36: aload_0
      //   37: getfield 10	po$a:a	Lpo;
      //   40: getfield 48	po:c	J
      //   43: lsub
      //   44: ldc2_w 49
      //   47: lcmp
      //   48: ifle +77 -> 125
      //   51: aload_0
      //   52: getfield 10	po$a:a	Lpo;
      //   55: lload_2
      //   56: putfield 48	po:c	J
      //   59: aload_0
      //   60: getfield 10	po$a:a	Lpo;
      //   63: getfield 54	po:e	Landroid/content/Context;
      //   66: ldc 56
      //   68: invokevirtual 62	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
      //   71: checkcast 64	android/view/LayoutInflater
      //   74: ldc 65
      //   76: aconst_null
      //   77: invokevirtual 69	android/view/LayoutInflater:inflate	(ILandroid/view/ViewGroup;)Landroid/view/View;
      //   80: astore 4
      //   82: new 71	android/widget/Toast
      //   85: dup
      //   86: aload_0
      //   87: getfield 10	po$a:a	Lpo;
      //   90: getfield 54	po:e	Landroid/content/Context;
      //   93: invokespecial 74	android/widget/Toast:<init>	(Landroid/content/Context;)V
      //   96: astore 5
      //   98: aload 5
      //   100: iconst_1
      //   101: invokevirtual 78	android/widget/Toast:setDuration	(I)V
      //   104: aload 5
      //   106: aload 4
      //   108: invokevirtual 82	android/widget/Toast:setView	(Landroid/view/View;)V
      //   111: aload 5
      //   113: invokevirtual 85	android/widget/Toast:show	()V
      //   116: invokestatic 90	nd:a	()Lnd;
      //   119: sipush 26392
      //   122: invokevirtual 92	nd:a	(I)V
      //   125: aload_0
      //   126: getfield 10	po$a:a	Lpo;
      //   129: getfield 54	po:e	Landroid/content/Context;
      //   132: invokevirtual 96	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
      //   135: getstatic 102	android/provider/Browser:BOOKMARKS_URI	Landroid/net/Uri;
      //   138: getstatic 106	android/provider/Browser:HISTORY_PROJECTION	[Ljava/lang/String;
      //   141: aconst_null
      //   142: aconst_null
      //   143: ldc 108
      //   145: invokevirtual 114	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
      //   148: astore 32
      //   150: aload 32
      //   152: astore 9
      //   154: iconst_0
      //   155: istore 10
      //   157: aload 9
      //   159: ifnull -141 -> 18
      //   162: aload 9
      //   164: invokeinterface 119 1 0
      //   169: ifeq -151 -> 18
      //   172: aload 9
      //   174: invokeinterface 123 1 0
      //   179: ifle -161 -> 18
      //   182: iload 10
      //   184: ifeq +563 -> 747
      //   187: iconst_2
      //   188: istore 11
      //   190: aload 9
      //   192: iload 11
      //   194: invokeinterface 127 2 0
      //   199: lload_2
      //   200: lcmp
      //   201: ifle +76 -> 277
      //   204: aload 9
      //   206: invokeinterface 130 1 0
      //   211: ifne -21 -> 190
      //   214: aload 9
      //   216: invokeinterface 133 1 0
      //   221: goto -203 -> 18
      //   224: astore 6
      //   226: aload_0
      //   227: getfield 10	po$a:a	Lpo;
      //   230: getfield 54	po:e	Landroid/content/Context;
      //   233: invokevirtual 96	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
      //   236: getstatic 102	android/provider/Browser:BOOKMARKS_URI	Landroid/net/Uri;
      //   239: iconst_3
      //   240: anewarray 135	java/lang/String
      //   243: dup
      //   244: iconst_0
      //   245: ldc 137
      //   247: aastore
      //   248: dup
      //   249: iconst_1
      //   250: ldc 139
      //   252: aastore
      //   253: dup
      //   254: iconst_2
      //   255: ldc 141
      //   257: aastore
      //   258: aconst_null
      //   259: aconst_null
      //   260: ldc 108
      //   262: invokevirtual 114	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
      //   265: astore 8
      //   267: aload 8
      //   269: astore 9
      //   271: iconst_1
      //   272: istore 10
      //   274: goto -117 -> 157
      //   277: aload 9
      //   279: iconst_0
      //   280: invokeinterface 145 2 0
      //   285: istore 12
      //   287: new 147	java/net/URL
      //   290: dup
      //   291: aload 9
      //   293: iconst_1
      //   294: invokeinterface 151 2 0
      //   299: invokespecial 154	java/net/URL:<init>	(Ljava/lang/String;)V
      //   302: astore 13
      //   304: aload 13
      //   306: invokevirtual 158	java/net/URL:getProtocol	()Ljava/lang/String;
      //   309: ldc 160
      //   311: invokevirtual 164	java/lang/String:equals	(Ljava/lang/Object;)Z
      //   314: istore 30
      //   316: iload 30
      //   318: ifeq +388 -> 706
      //   321: aload 13
      //   323: invokevirtual 167	java/net/URL:toString	()Ljava/lang/String;
      //   326: ldc 169
      //   328: invokevirtual 173	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
      //   331: ifne +16 -> 347
      //   334: aload 13
      //   336: invokevirtual 167	java/net/URL:toString	()Ljava/lang/String;
      //   339: ldc 175
      //   341: invokevirtual 173	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
      //   344: ifeq +362 -> 706
      //   347: aload_0
      //   348: getfield 10	po$a:a	Lpo;
      //   351: getfield 54	po:e	Landroid/content/Context;
      //   354: invokevirtual 96	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
      //   357: getstatic 102	android/provider/Browser:BOOKMARKS_URI	Landroid/net/Uri;
      //   360: new 177	java/lang/StringBuilder
      //   363: dup
      //   364: ldc 179
      //   366: invokespecial 180	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   369: iload 12
      //   371: invokevirtual 184	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
      //   374: invokevirtual 185	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   377: aconst_null
      //   378: invokevirtual 189	android/content/ContentResolver:delete	(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
      //   381: pop
      //   382: goto -364 -> 18
      //   385: astore 14
      //   387: aload 14
      //   389: invokevirtual 192	java/net/MalformedURLException:printStackTrace	()V
      //   392: aload 13
      //   394: ifnull -376 -> 18
      //   397: aload 9
      //   399: invokeinterface 133 1 0
      //   404: aload_0
      //   405: getfield 10	po$a:a	Lpo;
      //   408: aload 13
      //   410: invokevirtual 167	java/net/URL:toString	()Ljava/lang/String;
      //   413: invokevirtual 195	po:a	(Ljava/lang/String;)Lpo$c;
      //   416: astore 15
      //   418: aload 15
      //   420: ifnonnull +235 -> 655
      //   423: aload 13
      //   425: ifnull +230 -> 655
      //   428: aload_0
      //   429: getfield 10	po$a:a	Lpo;
      //   432: astore 17
      //   434: aload 13
      //   436: invokevirtual 198	java/net/URL:getHost	()Ljava/lang/String;
      //   439: astore 18
      //   441: aload 17
      //   443: getfield 202	po:b	Ljava/util/Map;
      //   446: aload 18
      //   448: invokeinterface 208 2 0
      //   453: checkcast 210	java/lang/Long
      //   456: astore 19
      //   458: aload 19
      //   460: ifnull +260 -> 720
      //   463: invokestatic 44	java/lang/System:currentTimeMillis	()J
      //   466: aload 19
      //   468: invokevirtual 213	java/lang/Long:longValue	()J
      //   471: lsub
      //   472: ldc2_w 214
      //   475: lcmp
      //   476: ifle +238 -> 714
      //   479: iconst_1
      //   480: istore 29
      //   482: iload 29
      //   484: ifne +236 -> 720
      //   487: iconst_0
      //   488: istore 20
      //   490: iload 20
      //   492: ifeq +163 -> 655
      //   495: new 217	po$c
      //   498: dup
      //   499: aload_0
      //   500: getfield 10	po$a:a	Lpo;
      //   503: invokespecial 219	po$c:<init>	(Lpo;)V
      //   506: astore 21
      //   508: aload 21
      //   510: iload 12
      //   512: putfield 222	po$c:a	I
      //   515: aload 21
      //   517: aload 13
      //   519: putfield 225	po$c:b	Ljava/net/URL;
      //   522: aload_0
      //   523: getfield 10	po$a:a	Lpo;
      //   526: astore 22
      //   528: aload 22
      //   530: getfield 229	po:g	Ljava/util/ArrayList;
      //   533: astore 23
      //   535: aload 23
      //   537: monitorenter
      //   538: aload 22
      //   540: getfield 229	po:g	Ljava/util/ArrayList;
      //   543: aload 21
      //   545: invokevirtual 234	java/util/ArrayList:add	(Ljava/lang/Object;)Z
      //   548: pop
      //   549: aload 23
      //   551: monitorexit
      //   552: aload 21
      //   554: aload 21
      //   556: getfield 225	po$c:b	Ljava/net/URL;
      //   559: invokevirtual 198	java/net/URL:getHost	()Ljava/lang/String;
      //   562: putfield 238	po$c:h	Ljava/lang/String;
      //   565: aload 21
      //   567: aload 21
      //   569: getfield 225	po$c:b	Ljava/net/URL;
      //   572: invokevirtual 167	java/net/URL:toString	()Ljava/lang/String;
      //   575: putfield 241	po$c:i	Ljava/lang/String;
      //   578: aload 21
      //   580: new 243	po$b
      //   583: dup
      //   584: aload 21
      //   586: getfield 246	po$c:m	Lpo;
      //   589: invokespecial 247	po$b:<init>	(Lpo;)V
      //   592: putfield 250	po$c:d	Lpo$b;
      //   595: aload 21
      //   597: getfield 250	po$c:d	Lpo$b;
      //   600: pop
      //   601: aload 21
      //   603: getfield 254	po$c:l	Landroid/os/Handler;
      //   606: iconst_2
      //   607: invokevirtual 258	android/os/Handler:obtainMessage	(I)Landroid/os/Message;
      //   610: astore 27
      //   612: aload 21
      //   614: getfield 254	po$c:l	Landroid/os/Handler;
      //   617: aload 27
      //   619: ldc2_w 259
      //   622: invokevirtual 264	android/os/Handler:sendMessageDelayed	(Landroid/os/Message;J)Z
      //   625: pop
      //   626: aload 21
      //   628: new 266	java/lang/Thread
      //   631: dup
      //   632: new 268	pq
      //   635: dup
      //   636: aload 21
      //   638: invokespecial 271	pq:<init>	(Lpo$c;)V
      //   641: invokespecial 274	java/lang/Thread:<init>	(Ljava/lang/Runnable;)V
      //   644: putfield 277	po$c:c	Ljava/lang/Thread;
      //   647: aload 21
      //   649: getfield 277	po$c:c	Ljava/lang/Thread;
      //   652: invokevirtual 280	java/lang/Thread:start	()V
      //   655: aload 15
      //   657: ifnull -639 -> 18
      //   660: aload 15
      //   662: getfield 283	po$c:e	Z
      //   665: ifeq -647 -> 18
      //   668: aload_0
      //   669: getfield 10	po$a:a	Lpo;
      //   672: getfield 54	po:e	Landroid/content/Context;
      //   675: invokevirtual 96	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
      //   678: getstatic 102	android/provider/Browser:BOOKMARKS_URI	Landroid/net/Uri;
      //   681: new 177	java/lang/StringBuilder
      //   684: dup
      //   685: ldc 179
      //   687: invokespecial 180	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   690: iload 12
      //   692: invokevirtual 184	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
      //   695: invokevirtual 185	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   698: aconst_null
      //   699: invokevirtual 189	android/content/ContentResolver:delete	(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
      //   702: pop
      //   703: goto -685 -> 18
      //   706: iload 30
      //   708: ifeq -316 -> 392
      //   711: goto -693 -> 18
      //   714: iconst_0
      //   715: istore 29
      //   717: goto -235 -> 482
      //   720: iconst_1
      //   721: istore 20
      //   723: goto -233 -> 490
      //   726: astore 24
      //   728: aload 23
      //   730: monitorexit
      //   731: aload 24
      //   733: athrow
      //   734: astore 14
      //   736: aconst_null
      //   737: astore 13
      //   739: goto -352 -> 387
      //   742: astore 7
      //   744: goto -726 -> 18
      //   747: iconst_3
      //   748: istore 11
      //   750: goto -560 -> 190
      //
      // Exception table:
      //   from	to	target	type
      //   125	150	224	android/database/sqlite/SQLiteException
      //   304	382	385	java/net/MalformedURLException
      //   538	552	726	finally
      //   287	304	734	java/net/MalformedURLException
      //   226	267	742	android/database/sqlite/SQLiteException
    }
  }

  final class b
  {
    UrlCheckResponse a;
  }

  final class c
  {
    public int a = -1;
    public URL b = null;
    Thread c = null;
    po.b d;
    boolean e = false;
    WebsiteTipsDialogView f = null;
    WebsiteTipsDialogView.onAddDontRemindWebSiteListener g = new pp(this);
    String h;
    String i;
    String j;
    String k;
    Handler l = new pr(this);

    public c()
    {
    }

    final void a()
    {
      synchronized (po.this.g)
      {
        ListIterator localListIterator = po.this.g.listIterator();
        while (localListIterator.hasNext())
          if (((c)localListIterator.next()).a == this.a)
            localListIterator.remove();
        if (this.e)
          po.this.e.getContentResolver().delete(Browser.BOOKMARKS_URI, "_id=" + this.a, null);
        return;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     po
 * JD-Core Version:    0.6.2
 */