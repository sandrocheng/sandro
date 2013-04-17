import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.io.File;
import java.lang.ref.SoftReference;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

public final class sl extends abu
{
  private final HashMap<Integer, SoftReference<Bitmap>> d = new HashMap();
  private final Handler e = new Handler();
  private SoftwareManager f;
  private ho g = ho.a();

  private Drawable a(String paramString)
  {
    if (this.f == null)
      this.f = ((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class));
    try
    {
      Drawable localDrawable2 = this.f.getApkInfo(paramString, 4).getIcon();
      localDrawable1 = localDrawable2;
      return localDrawable1;
    }
    catch (Exception localException)
    {
      while (true)
        Drawable localDrawable1 = null;
    }
  }

  private Drawable a(lv paramlv)
  {
    String str;
    switch (paramlv.a)
    {
    default:
      str = dx.b + File.separator;
    case 2:
    case 3:
    }
    while (true)
    {
      SoftReference localSoftReference;
      synchronized (this.d)
      {
        localSoftReference = (SoftReference)this.d.get(Integer.valueOf(paramlv.g));
        if ((localSoftReference == null) || (localSoftReference.get() == null) || (((Bitmap)localSoftReference.get()).isRecycled()))
        {
          localObject2 = a.b(str + paramlv.g + ".png.temp");
          int i;
          if (localObject2 == null)
          {
            i = paramlv.b;
            localObject2 = null;
          }
          switch (i)
          {
          default:
            a.a((Drawable)localObject2, str + paramlv.g + ".png.temp");
            return localObject2;
            str = dx.c + File.separator;
            continue;
            str = dx.d + File.separator;
          case 0:
          case 2:
          case 1:
          }
        }
      }
      continue;
      Object localObject2 = b(paramlv);
      continue;
      localObject2 = b(paramlv.d);
      continue;
      localObject2 = a(paramlv.d);
    }
  }

  private Drawable b(String paramString)
  {
    if (this.f == null)
      this.f = ((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class));
    try
    {
      Drawable localDrawable2 = this.f.getAppInfo(paramString, 4).getIcon();
      localDrawable1 = localDrawable2;
      return localDrawable1;
    }
    catch (Exception localException)
    {
      while (true)
        Drawable localDrawable1 = null;
    }
  }

  // ERROR //
  private Drawable b(lv paramlv)
  {
    // Byte code:
    //   0: new 151	java/net/URL
    //   3: dup
    //   4: aload_1
    //   5: getfield 137	lv:d	Ljava/lang/String;
    //   8: invokespecial 154	java/net/URL:<init>	(Ljava/lang/String;)V
    //   11: invokevirtual 158	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   14: astore 21
    //   16: aload 21
    //   18: invokevirtual 163	java/net/URLConnection:connect	()V
    //   21: aload 21
    //   23: invokevirtual 167	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   26: astore 22
    //   28: aload 22
    //   30: astore 8
    //   32: new 169	java/io/BufferedInputStream
    //   35: dup
    //   36: aload 8
    //   38: sipush 8192
    //   41: invokespecial 172	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;I)V
    //   44: astore 9
    //   46: aload 9
    //   48: invokestatic 175	a:a	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   51: astore 27
    //   53: aload 27
    //   55: ifnull +640 -> 695
    //   58: invokestatic 180	com/tencent/qqpimsecure/service/QQPimApplication:a	()Landroid/content/Context;
    //   61: invokevirtual 186	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   64: invokevirtual 192	android/content/res/Resources:getDisplayMetrics	()Landroid/util/DisplayMetrics;
    //   67: getfield 197	android/util/DisplayMetrics:densityDpi	I
    //   70: istore 33
    //   72: iload 33
    //   74: sipush 240
    //   77: if_icmpeq +61 -> 138
    //   80: iload 33
    //   82: i2f
    //   83: ldc 198
    //   85: fdiv
    //   86: fstore 39
    //   88: aload 27
    //   90: ldc 199
    //   92: fload 39
    //   94: aload 27
    //   96: invokevirtual 203	android/graphics/Bitmap:getWidth	()I
    //   99: i2f
    //   100: fmul
    //   101: fadd
    //   102: f2i
    //   103: ldc 199
    //   105: fload 39
    //   107: aload 27
    //   109: invokevirtual 206	android/graphics/Bitmap:getHeight	()I
    //   112: i2f
    //   113: fmul
    //   114: fadd
    //   115: f2i
    //   116: iconst_1
    //   117: invokestatic 210	android/graphics/Bitmap:createScaledBitmap	(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    //   120: astore 40
    //   122: aload 27
    //   124: invokevirtual 213	android/graphics/Bitmap:recycle	()V
    //   127: aload 40
    //   129: iload 33
    //   131: invokevirtual 217	android/graphics/Bitmap:setDensity	(I)V
    //   134: aload 40
    //   136: astore 27
    //   138: new 131	android/graphics/drawable/BitmapDrawable
    //   141: dup
    //   142: aload 27
    //   144: invokespecial 134	android/graphics/drawable/BitmapDrawable:<init>	(Landroid/graphics/Bitmap;)V
    //   147: astore 34
    //   149: aload 34
    //   151: invokestatic 180	com/tencent/qqpimsecure/service/QQPimApplication:a	()Landroid/content/Context;
    //   154: invokevirtual 186	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   157: invokevirtual 192	android/content/res/Resources:getDisplayMetrics	()Landroid/util/DisplayMetrics;
    //   160: invokevirtual 221	android/graphics/drawable/BitmapDrawable:setTargetDensity	(Landroid/util/DisplayMetrics;)V
    //   163: aload 27
    //   165: astore 28
    //   167: aload 34
    //   169: astore 4
    //   171: aload_0
    //   172: getfield 22	sl:d	Ljava/util/HashMap;
    //   175: astore 29
    //   177: aload 29
    //   179: monitorenter
    //   180: aload_0
    //   181: getfield 22	sl:d	Ljava/util/HashMap;
    //   184: aload_1
    //   185: getfield 90	mp:g	I
    //   188: invokestatic 96	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   191: new 102	java/lang/ref/SoftReference
    //   194: dup
    //   195: aload 28
    //   197: invokespecial 224	java/lang/ref/SoftReference:<init>	(Ljava/lang/Object;)V
    //   200: invokevirtual 228	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   203: pop
    //   204: aload 29
    //   206: monitorexit
    //   207: aload 8
    //   209: ifnull +8 -> 217
    //   212: aload 9
    //   214: invokevirtual 231	java/io/BufferedInputStream:close	()V
    //   217: aload 8
    //   219: invokevirtual 234	java/io/InputStream:close	()V
    //   222: aload 4
    //   224: areturn
    //   225: astore 30
    //   227: aload 29
    //   229: monitorexit
    //   230: aload 30
    //   232: athrow
    //   233: astore_3
    //   234: aload 9
    //   236: astore 5
    //   238: aload 8
    //   240: astore 6
    //   242: aload_3
    //   243: invokevirtual 237	java/net/MalformedURLException:printStackTrace	()V
    //   246: aload 6
    //   248: ifnull +8 -> 256
    //   251: aload 5
    //   253: invokevirtual 231	java/io/BufferedInputStream:close	()V
    //   256: aload 5
    //   258: ifnull -36 -> 222
    //   261: aload 6
    //   263: invokevirtual 234	java/io/InputStream:close	()V
    //   266: goto -44 -> 222
    //   269: astore 11
    //   271: goto -49 -> 222
    //   274: astore 18
    //   276: aconst_null
    //   277: astore 9
    //   279: aconst_null
    //   280: astore 8
    //   282: aconst_null
    //   283: astore 4
    //   285: aload 18
    //   287: astore 19
    //   289: aload 19
    //   291: invokevirtual 238	java/io/IOException:printStackTrace	()V
    //   294: aload 8
    //   296: ifnull +8 -> 304
    //   299: aload 9
    //   301: invokevirtual 231	java/io/BufferedInputStream:close	()V
    //   304: aload 9
    //   306: ifnull -84 -> 222
    //   309: aload 8
    //   311: invokevirtual 234	java/io/InputStream:close	()V
    //   314: goto -92 -> 222
    //   317: astore 20
    //   319: goto -97 -> 222
    //   322: astore 15
    //   324: aconst_null
    //   325: astore 9
    //   327: aconst_null
    //   328: astore 8
    //   330: aconst_null
    //   331: astore 4
    //   333: aload 15
    //   335: astore 16
    //   337: aload 16
    //   339: invokevirtual 239	java/lang/Exception:printStackTrace	()V
    //   342: aload 8
    //   344: ifnull +8 -> 352
    //   347: aload 9
    //   349: invokevirtual 231	java/io/BufferedInputStream:close	()V
    //   352: aload 9
    //   354: ifnull -132 -> 222
    //   357: aload 8
    //   359: invokevirtual 234	java/io/InputStream:close	()V
    //   362: goto -140 -> 222
    //   365: astore 17
    //   367: goto -145 -> 222
    //   370: astore 12
    //   372: aconst_null
    //   373: astore 9
    //   375: aconst_null
    //   376: astore 8
    //   378: aconst_null
    //   379: astore 4
    //   381: aload 12
    //   383: astore 13
    //   385: invokestatic 244	java/lang/System:gc	()V
    //   388: aload 13
    //   390: invokevirtual 245	java/lang/OutOfMemoryError:printStackTrace	()V
    //   393: aload 8
    //   395: ifnull +8 -> 403
    //   398: aload 9
    //   400: invokevirtual 231	java/io/BufferedInputStream:close	()V
    //   403: aload 9
    //   405: ifnull -183 -> 222
    //   408: aload 8
    //   410: invokevirtual 234	java/io/InputStream:close	()V
    //   413: goto -191 -> 222
    //   416: astore 14
    //   418: goto -196 -> 222
    //   421: astore 7
    //   423: aconst_null
    //   424: astore 9
    //   426: aconst_null
    //   427: astore 8
    //   429: aload 8
    //   431: ifnull +8 -> 439
    //   434: aload 9
    //   436: invokevirtual 231	java/io/BufferedInputStream:close	()V
    //   439: aload 9
    //   441: ifnull +8 -> 449
    //   444: aload 8
    //   446: invokevirtual 234	java/io/InputStream:close	()V
    //   449: aload 7
    //   451: athrow
    //   452: astore 10
    //   454: goto -5 -> 449
    //   457: astore 7
    //   459: aconst_null
    //   460: astore 9
    //   462: goto -33 -> 429
    //   465: astore 7
    //   467: goto -38 -> 429
    //   470: astore 7
    //   472: aload 6
    //   474: astore 8
    //   476: aload 5
    //   478: astore 9
    //   480: goto -51 -> 429
    //   483: astore 44
    //   485: aload 44
    //   487: astore 13
    //   489: aconst_null
    //   490: astore 4
    //   492: aconst_null
    //   493: astore 9
    //   495: goto -110 -> 385
    //   498: astore 26
    //   500: aload 26
    //   502: astore 13
    //   504: aconst_null
    //   505: astore 4
    //   507: goto -122 -> 385
    //   510: astore 38
    //   512: aload 38
    //   514: astore 13
    //   516: aload 34
    //   518: astore 4
    //   520: goto -135 -> 385
    //   523: astore 13
    //   525: goto -140 -> 385
    //   528: astore 43
    //   530: aload 43
    //   532: astore 16
    //   534: aconst_null
    //   535: astore 4
    //   537: aconst_null
    //   538: astore 9
    //   540: goto -203 -> 337
    //   543: astore 25
    //   545: aload 25
    //   547: astore 16
    //   549: aconst_null
    //   550: astore 4
    //   552: goto -215 -> 337
    //   555: astore 37
    //   557: aload 37
    //   559: astore 16
    //   561: aload 34
    //   563: astore 4
    //   565: goto -228 -> 337
    //   568: astore 16
    //   570: goto -233 -> 337
    //   573: astore 42
    //   575: aload 42
    //   577: astore 19
    //   579: aconst_null
    //   580: astore 4
    //   582: aconst_null
    //   583: astore 9
    //   585: goto -296 -> 289
    //   588: astore 24
    //   590: aload 24
    //   592: astore 19
    //   594: aconst_null
    //   595: astore 4
    //   597: goto -308 -> 289
    //   600: astore 36
    //   602: aload 36
    //   604: astore 19
    //   606: aload 34
    //   608: astore 4
    //   610: goto -321 -> 289
    //   613: astore 19
    //   615: goto -326 -> 289
    //   618: astore_2
    //   619: aload_2
    //   620: astore_3
    //   621: aconst_null
    //   622: astore 4
    //   624: aconst_null
    //   625: astore 5
    //   627: aconst_null
    //   628: astore 6
    //   630: goto -388 -> 242
    //   633: astore 41
    //   635: aload 8
    //   637: astore 6
    //   639: aload 41
    //   641: astore_3
    //   642: aconst_null
    //   643: astore 4
    //   645: aconst_null
    //   646: astore 5
    //   648: goto -406 -> 242
    //   651: astore 23
    //   653: aload 9
    //   655: astore 5
    //   657: aload 8
    //   659: astore 6
    //   661: aload 23
    //   663: astore_3
    //   664: aconst_null
    //   665: astore 4
    //   667: goto -425 -> 242
    //   670: astore 35
    //   672: aload 35
    //   674: astore_3
    //   675: aload 34
    //   677: astore 4
    //   679: aload 9
    //   681: astore 5
    //   683: aload 8
    //   685: astore 6
    //   687: goto -445 -> 242
    //   690: astore 32
    //   692: goto -470 -> 222
    //   695: aload 27
    //   697: astore 28
    //   699: aconst_null
    //   700: astore 4
    //   702: goto -531 -> 171
    //
    // Exception table:
    //   from	to	target	type
    //   180	207	225	finally
    //   171	180	233	java/net/MalformedURLException
    //   227	233	233	java/net/MalformedURLException
    //   251	266	269	java/io/IOException
    //   0	28	274	java/io/IOException
    //   299	314	317	java/io/IOException
    //   0	28	322	java/lang/Exception
    //   347	362	365	java/io/IOException
    //   0	28	370	java/lang/OutOfMemoryError
    //   398	413	416	java/io/IOException
    //   0	28	421	finally
    //   434	449	452	java/io/IOException
    //   32	46	457	finally
    //   46	149	465	finally
    //   149	163	465	finally
    //   171	180	465	finally
    //   227	233	465	finally
    //   289	294	465	finally
    //   337	342	465	finally
    //   385	393	465	finally
    //   242	246	470	finally
    //   32	46	483	java/lang/OutOfMemoryError
    //   46	149	498	java/lang/OutOfMemoryError
    //   149	163	510	java/lang/OutOfMemoryError
    //   171	180	523	java/lang/OutOfMemoryError
    //   227	233	523	java/lang/OutOfMemoryError
    //   32	46	528	java/lang/Exception
    //   46	149	543	java/lang/Exception
    //   149	163	555	java/lang/Exception
    //   171	180	568	java/lang/Exception
    //   227	233	568	java/lang/Exception
    //   32	46	573	java/io/IOException
    //   46	149	588	java/io/IOException
    //   149	163	600	java/io/IOException
    //   171	180	613	java/io/IOException
    //   227	233	613	java/io/IOException
    //   0	28	618	java/net/MalformedURLException
    //   32	46	633	java/net/MalformedURLException
    //   46	149	651	java/net/MalformedURLException
    //   149	163	670	java/net/MalformedURLException
    //   212	222	690	java/io/IOException
  }

  public final Drawable a(Drawable paramDrawable)
  {
    if ((paramDrawable == null) || (!(paramDrawable instanceof BitmapDrawable)));
    Bitmap localBitmap1;
    Bitmap localBitmap2;
    do
    {
      do
      {
        return paramDrawable;
        localBitmap1 = ((BitmapDrawable)paramDrawable).getBitmap();
      }
      while (localBitmap1 == null);
      localBitmap2 = Bitmap.createBitmap(localBitmap1.getWidth(), localBitmap1.getHeight(), Bitmap.Config.ARGB_8888);
    }
    while (localBitmap2 == null);
    Canvas localCanvas = new Canvas(localBitmap2);
    Paint localPaint = new Paint();
    Rect localRect = new Rect(0, 0, localBitmap1.getWidth(), localBitmap1.getHeight());
    RectF localRectF = new RectF(localRect);
    localPaint.setAntiAlias(true);
    localCanvas.drawARGB(0, 0, 0, 0);
    localPaint.setColor(-12434878);
    localCanvas.drawRoundRect(localRectF, 10.0F, 10.0F, localPaint);
    localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    try
    {
      while (true)
      {
        localCanvas.drawBitmap(localBitmap1, localRect, localRect, localPaint);
        label159: paramDrawable = new BitmapDrawable(localBitmap2);
        synchronized (this.d)
        {
          this.d.put(Integer.valueOf(localBitmap2.hashCode()), new SoftReference(localBitmap2));
        }
      }
    }
    catch (Exception localException)
    {
      break label159;
    }
  }

  public final void a(mp parammp)
  {
    int i = 1;
    if (parammp == null)
      return;
    lv locallv = (lv)parammp;
    switch (locallv.a)
    {
    default:
      if (System.currentTimeMillis() - this.g.bR() <= 604800000L)
        break;
    case 2:
    }
    while (true)
    {
      if (i != 0)
      {
        a.e(dx.b);
        File localFile2 = new File(dx.b);
        if (!localFile2.exists())
          localFile2.mkdir();
        this.g.t(System.currentTimeMillis());
      }
      label209: 
      while (true)
      {
        Drawable localDrawable = a(locallv);
        if (localDrawable == null)
          break;
        locallv.f = localDrawable;
        this.e.post(new sm(locallv));
        break;
        if (System.currentTimeMillis() - this.g.bS() > 86400000L);
        while (true)
        {
          if (i == 0)
            break label209;
          a.e(dx.c);
          File localFile1 = new File(dx.c);
          if (!localFile1.exists())
            localFile1.mkdir();
          this.g.u(System.currentTimeMillis());
          break;
          i = 0;
        }
      }
      i = 0;
    }
  }

  protected final void b()
  {
    super.b();
    synchronized (this.d)
    {
      Iterator localIterator = this.d.values().iterator();
      while (localIterator.hasNext())
      {
        SoftReference localSoftReference = (SoftReference)localIterator.next();
        if (localSoftReference != null)
        {
          Bitmap localBitmap = (Bitmap)localSoftReference.get();
          if ((localBitmap != null) && (!localBitmap.isRecycled()))
            localBitmap.recycle();
        }
      }
    }
    System.gc();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     sl
 * JD-Core Version:    0.6.2
 */