import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

public abstract class aby extends abu
{
  private final Handler d = new Handler();

  public aby(String paramString)
  {
    super(paramString);
    c();
  }

  private static String a(mq parammq)
  {
    int i = parammq.a.c();
    String str = null;
    switch (i)
    {
    default:
    case 0:
    case 1:
    }
    while (true)
    {
      return str;
      str = dx.g + File.separator;
      continue;
      str = dx.h + File.separator;
    }
  }

  private static Bitmap b(mq parammq)
  {
    Bitmap localBitmap = null;
    Iterator localIterator = parammq.c.iterator();
    while (true)
    {
      String str;
      if (localIterator.hasNext())
      {
        str = (String)localIterator.next();
        if (parammq.a.c() != 0)
          break label62;
      }
      label62: for (localBitmap = gz.a(str, lm.e.a, lm.e.b); localBitmap != null; localBitmap = gz.b(str, lm.e.a, lm.e.b))
        return localBitmap;
    }
  }

  // ERROR //
  private Drawable c(mq parammq)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: aload_1
    //   3: getfield 27	mq:a	Llr;
    //   6: invokevirtual 109	lr:e	()Ljava/lang/String;
    //   9: astore_3
    //   10: aload_3
    //   11: ldc 111
    //   13: invokevirtual 115	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   16: ifeq +147 -> 163
    //   19: iload_2
    //   20: ifeq +304 -> 324
    //   23: aload_1
    //   24: invokestatic 117	aby:b	(Lmq;)Landroid/graphics/Bitmap;
    //   27: astore 21
    //   29: aload 21
    //   31: astore 6
    //   33: aconst_null
    //   34: astore 4
    //   36: aload 6
    //   38: ifnull +122 -> 160
    //   41: aload_1
    //   42: getfield 27	mq:a	Llr;
    //   45: invokevirtual 119	lr:b	()Ljava/lang/String;
    //   48: astore 7
    //   50: new 34	java/lang/StringBuilder
    //   53: dup
    //   54: invokespecial 35	java/lang/StringBuilder:<init>	()V
    //   57: aload 7
    //   59: invokestatic 123	a:h	(Ljava/lang/String;)Ljava/lang/String;
    //   62: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   65: ldc 125
    //   67: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   73: astore 8
    //   75: aload_1
    //   76: invokestatic 127	aby:a	(Lmq;)Ljava/lang/String;
    //   79: astore 9
    //   81: new 34	java/lang/StringBuilder
    //   84: dup
    //   85: invokespecial 35	java/lang/StringBuilder:<init>	()V
    //   88: aload 9
    //   90: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: aload 8
    //   95: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   98: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   101: astore 11
    //   103: invokestatic 132	android/os/Environment:getExternalStorageState	()Ljava/lang/String;
    //   106: ldc 134
    //   108: invokevirtual 115	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   111: istore 12
    //   113: iload 12
    //   115: ifeq +8 -> 123
    //   118: aload 6
    //   120: ifnonnull +99 -> 219
    //   123: aload 8
    //   125: astore 4
    //   127: aload 4
    //   129: ifnull +20 -> 149
    //   132: aload_1
    //   133: getfield 27	mq:a	Llr;
    //   136: aload 4
    //   138: invokevirtual 136	lr:b	(Ljava/lang/String;)V
    //   141: aload_0
    //   142: aload_1
    //   143: getfield 27	mq:a	Llr;
    //   146: invokevirtual 139	aby:a	(Llr;)V
    //   149: new 141	android/graphics/drawable/BitmapDrawable
    //   152: dup
    //   153: aload 6
    //   155: invokespecial 144	android/graphics/drawable/BitmapDrawable:<init>	(Landroid/graphics/Bitmap;)V
    //   158: astore 4
    //   160: aload 4
    //   162: areturn
    //   163: new 47	java/io/File
    //   166: dup
    //   167: new 34	java/lang/StringBuilder
    //   170: dup
    //   171: invokespecial 35	java/lang/StringBuilder:<init>	()V
    //   174: aload_1
    //   175: invokestatic 127	aby:a	(Lmq;)Ljava/lang/String;
    //   178: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   181: aload_3
    //   182: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   185: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   188: invokespecial 145	java/io/File:<init>	(Ljava/lang/String;)V
    //   191: invokevirtual 148	java/io/File:exists	()Z
    //   194: ifeq -175 -> 19
    //   197: iconst_0
    //   198: istore_2
    //   199: goto -180 -> 19
    //   202: astore 5
    //   204: invokestatic 153	java/lang/System:gc	()V
    //   207: invokestatic 158	java/lang/Thread:yield	()V
    //   210: aload_1
    //   211: invokestatic 117	aby:b	(Lmq;)Landroid/graphics/Bitmap;
    //   214: astore 6
    //   216: goto -183 -> 33
    //   219: new 47	java/io/File
    //   222: dup
    //   223: aload 11
    //   225: invokespecial 145	java/io/File:<init>	(Ljava/lang/String;)V
    //   228: astore 13
    //   230: new 160	java/io/FileOutputStream
    //   233: dup
    //   234: aload 13
    //   236: invokespecial 163	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   239: astore 14
    //   241: aload 6
    //   243: getstatic 169	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   246: bipush 75
    //   248: aload 14
    //   250: invokevirtual 175	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   253: pop
    //   254: aload 14
    //   256: invokevirtual 178	java/io/FileOutputStream:flush	()V
    //   259: aload 14
    //   261: invokevirtual 181	java/io/FileOutputStream:close	()V
    //   264: aload 8
    //   266: astore 4
    //   268: goto -141 -> 127
    //   271: aconst_null
    //   272: astore 4
    //   274: aload 14
    //   276: ifnull +41 -> 317
    //   279: aload 14
    //   281: invokevirtual 181	java/io/FileOutputStream:close	()V
    //   284: aload 8
    //   286: astore 4
    //   288: goto -161 -> 127
    //   291: aconst_null
    //   292: astore 4
    //   294: aload 17
    //   296: ifnull +8 -> 304
    //   299: aload 17
    //   301: invokevirtual 181	java/io/FileOutputStream:close	()V
    //   304: aload 18
    //   306: athrow
    //   307: astore 10
    //   309: aload 10
    //   311: invokevirtual 184	java/io/IOException:printStackTrace	()V
    //   314: goto -187 -> 127
    //   317: aload 8
    //   319: astore 4
    //   321: goto -194 -> 127
    //   324: new 34	java/lang/StringBuilder
    //   327: dup
    //   328: invokespecial 35	java/lang/StringBuilder:<init>	()V
    //   331: aload_1
    //   332: invokestatic 127	aby:a	(Lmq;)Ljava/lang/String;
    //   335: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   338: aload_3
    //   339: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   342: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   345: invokestatic 187	a:c	(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    //   348: astore 4
    //   350: goto -190 -> 160
    //   353: astore 16
    //   355: aload 14
    //   357: astore 17
    //   359: aload 16
    //   361: astore 18
    //   363: goto -72 -> 291
    //   366: astore 15
    //   368: goto -97 -> 271
    //   371: astore 20
    //   373: aconst_null
    //   374: astore 14
    //   376: goto -105 -> 271
    //   379: astore 18
    //   381: aconst_null
    //   382: astore 17
    //   384: goto -93 -> 291
    //
    // Exception table:
    //   from	to	target	type
    //   23	29	202	java/lang/OutOfMemoryError
    //   81	113	307	java/io/IOException
    //   219	230	307	java/io/IOException
    //   259	307	307	java/io/IOException
    //   241	259	353	finally
    //   241	259	366	java/io/FileNotFoundException
    //   230	241	371	java/io/FileNotFoundException
    //   230	241	379	finally
  }

  public abstract void a(lr paramlr);

  public final void a(mp parammp)
  {
    if (parammp == null);
    while (true)
    {
      return;
      mq localmq = (mq)parammp;
      Drawable localDrawable = c(localmq);
      if (localDrawable != null)
        localmq.b = localDrawable;
      this.d.post(new abz(localmq));
    }
  }

  protected final void b()
  {
    super.b();
    System.gc();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aby
 * JD-Core Version:    0.6.2
 */