import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.os.Build.VERSION;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public final class gz
{
  private static Class<?> a = null;
  private static Method b = null;
  private static Method c = null;
  private static Method d = null;
  private static Method e = null;
  private static Method f = null;
  private static Field g = null;

  static
  {
    try
    {
      Class localClass1 = Class.forName("android.media.MediaMetadataRetriever");
      a = localClass1;
      c = localClass1.getDeclaredMethod("setDataSource", new Class[] { String.class });
      b = a.getDeclaredMethod("release", new Class[0]);
      if ((Build.VERSION.SDK_INT > 0) && (Build.VERSION.SDK_INT <= 8))
      {
        Class localClass3 = a;
        Class[] arrayOfClass2 = new Class[1];
        arrayOfClass2[0] = Integer.TYPE;
        d = localClass3.getDeclaredMethod("setMode", arrayOfClass2);
        e = a.getDeclaredMethod("captureFrame", new Class[0]);
        g = a.getField("MODE_CAPTURE_FRAME_ONLY");
      }
      else if ((Build.VERSION.SDK_INT >= 9) && (Build.VERSION.SDK_INT < 10000))
      {
        Class localClass2 = a;
        Class[] arrayOfClass1 = new Class[1];
        arrayOfClass1[0] = Long.TYPE;
        f = localClass2.getDeclaredMethod("getFrameAtTime", arrayOfClass1);
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  private static int a(BitmapFactory.Options paramOptions, int paramInt1, int paramInt2)
  {
    int i = 1;
    double d1 = paramOptions.outWidth;
    double d2 = paramOptions.outHeight;
    int j;
    int k;
    if (paramInt2 == -1)
    {
      j = i;
      if (paramInt1 != -1)
        break label80;
      k = 128;
      label34: if (k >= j)
        break label105;
    }
    while (true)
    {
      if (j > 4)
        break label141;
      while (i <= j)
        i <<= 1;
      j = (int)Math.ceil(Math.sqrt(d1 * d2 / paramInt2));
      break;
      label80: k = (int)Math.min(Math.floor(d1 / paramInt1), Math.floor(d2 / paramInt1));
      break label34;
      label105: if ((paramInt2 == -1) && (paramInt1 == -1))
        j = i;
      else if (paramInt1 != -1)
        j = k;
    }
    label141: for (int m = i >> 1; ; m = j / 4 << 2)
      return m;
  }

  private static Bitmap a(Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    Bitmap localBitmap2;
    if (paramBitmap == null)
    {
      localBitmap2 = null;
      return localBitmap2;
    }
    float f1;
    label30: Matrix localMatrix;
    float f2;
    if (paramBitmap.getWidth() < paramBitmap.getHeight())
    {
      f1 = paramInt1 / paramBitmap.getWidth();
      localMatrix = new Matrix();
      localMatrix.setScale(f1, f1);
      paramBitmap.getWidth();
      paramBitmap.getHeight();
      f2 = paramBitmap.getWidth();
      float f3 = paramBitmap.getHeight();
      if (f2 / f3 <= paramInt1 / paramInt2)
        break label225;
      float f5 = paramInt2 / f3;
      if ((f5 >= 0.9F) && (f5 <= 1.0F))
        break label219;
      localMatrix.setScale(f5, f5);
      label115: if (localMatrix == null)
        break label265;
    }
    label265: for (Bitmap localBitmap1 = Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), localMatrix, true); ; localBitmap1 = paramBitmap)
    {
      if (localBitmap1 != paramBitmap)
        paramBitmap.recycle();
      int i = Math.max(0, localBitmap1.getWidth() - paramInt1);
      int j = Math.max(0, localBitmap1.getHeight() - paramInt2);
      localBitmap2 = Bitmap.createBitmap(localBitmap1, i / 2, j / 2, paramInt1, paramInt2);
      if (localBitmap2 == localBitmap1)
        break;
      localBitmap1.recycle();
      break;
      f1 = paramInt2 / paramBitmap.getHeight();
      break label30;
      label219: localMatrix = null;
      break label115;
      label225: float f4 = paramInt1 / f2;
      if ((f4 < 0.9F) || (f4 > 1.0F))
      {
        localMatrix.setScale(f4, f4);
        break label115;
      }
      localMatrix = null;
      break label115;
    }
  }

  // ERROR //
  public static Bitmap a(String paramString)
  {
    // Byte code:
    //   0: sipush 1024
    //   3: istore_1
    //   4: new 146	java/io/File
    //   7: dup
    //   8: aload_0
    //   9: invokespecial 149	java/io/File:<init>	(Ljava/lang/String;)V
    //   12: astore_2
    //   13: new 151	java/io/FileInputStream
    //   16: dup
    //   17: aload_2
    //   18: invokespecial 154	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   21: astore_3
    //   22: aload_2
    //   23: invokevirtual 158	java/io/File:length	()J
    //   26: l2i
    //   27: newarray byte
    //   29: astore 10
    //   31: aload_3
    //   32: aload 10
    //   34: invokevirtual 164	java/io/InputStream:read	([B)I
    //   37: pop
    //   38: aload 10
    //   40: arraylength
    //   41: istore 12
    //   43: aload 10
    //   45: arraylength
    //   46: iload_1
    //   47: if_icmplt +194 -> 241
    //   50: goto +194 -> 244
    //   53: iload 13
    //   55: iload_1
    //   56: if_icmpge +24 -> 80
    //   59: aload 10
    //   61: iload 13
    //   63: sipush 256
    //   66: aload 10
    //   68: iload 13
    //   70: baload
    //   71: isub
    //   72: i2b
    //   73: bastore
    //   74: iinc 13 1
    //   77: goto -24 -> 53
    //   80: aload 10
    //   82: iconst_0
    //   83: aload 10
    //   85: arraylength
    //   86: invokestatic 170	android/graphics/BitmapFactory:decodeByteArray	([BII)Landroid/graphics/Bitmap;
    //   89: astore 19
    //   91: aload 19
    //   93: astore 8
    //   95: aload_3
    //   96: invokevirtual 173	java/io/InputStream:close	()V
    //   99: aload 8
    //   101: areturn
    //   102: astore 16
    //   104: invokestatic 178	java/lang/System:gc	()V
    //   107: invokestatic 183	java/lang/Thread:yield	()V
    //   110: aload 10
    //   112: iconst_0
    //   113: aload 10
    //   115: arraylength
    //   116: invokestatic 170	android/graphics/BitmapFactory:decodeByteArray	([BII)Landroid/graphics/Bitmap;
    //   119: astore 18
    //   121: aload 18
    //   123: astore 8
    //   125: goto -30 -> 95
    //   128: astore 17
    //   130: aconst_null
    //   131: astore 8
    //   133: goto -38 -> 95
    //   136: astore 14
    //   138: aload 14
    //   140: invokevirtual 80	java/lang/Exception:printStackTrace	()V
    //   143: aconst_null
    //   144: astore 8
    //   146: goto -51 -> 95
    //   149: astore 15
    //   151: aload 15
    //   153: invokevirtual 184	java/io/IOException:printStackTrace	()V
    //   156: goto -57 -> 99
    //   159: astore 4
    //   161: aconst_null
    //   162: astore 5
    //   164: aload 4
    //   166: invokevirtual 80	java/lang/Exception:printStackTrace	()V
    //   169: aload 5
    //   171: ifnull +8 -> 179
    //   174: aload 5
    //   176: invokevirtual 173	java/io/InputStream:close	()V
    //   179: aconst_null
    //   180: astore 8
    //   182: goto -83 -> 99
    //   185: astore 9
    //   187: aload 9
    //   189: invokevirtual 184	java/io/IOException:printStackTrace	()V
    //   192: goto -13 -> 179
    //   195: astore 6
    //   197: aconst_null
    //   198: astore_3
    //   199: aload_3
    //   200: ifnull +7 -> 207
    //   203: aload_3
    //   204: invokevirtual 173	java/io/InputStream:close	()V
    //   207: aload 6
    //   209: athrow
    //   210: astore 7
    //   212: aload 7
    //   214: invokevirtual 184	java/io/IOException:printStackTrace	()V
    //   217: goto -10 -> 207
    //   220: astore 6
    //   222: goto -23 -> 199
    //   225: astore 6
    //   227: aload 5
    //   229: astore_3
    //   230: goto -31 -> 199
    //   233: astore 4
    //   235: aload_3
    //   236: astore 5
    //   238: goto -74 -> 164
    //   241: iload 12
    //   243: istore_1
    //   244: iconst_0
    //   245: istore 13
    //   247: goto -194 -> 53
    //
    // Exception table:
    //   from	to	target	type
    //   80	91	102	java/lang/OutOfMemoryError
    //   110	121	128	java/lang/OutOfMemoryError
    //   80	91	136	java/lang/Exception
    //   95	99	149	java/io/IOException
    //   13	22	159	java/lang/Exception
    //   174	179	185	java/io/IOException
    //   13	22	195	finally
    //   203	207	210	java/io/IOException
    //   22	74	220	finally
    //   80	91	220	finally
    //   104	110	220	finally
    //   110	121	220	finally
    //   138	143	220	finally
    //   164	169	225	finally
    //   22	74	233	java/lang/Exception
    //   104	110	233	java/lang/Exception
    //   110	121	233	java/lang/Exception
    //   138	143	233	java/lang/Exception
  }

  // ERROR //
  public static Bitmap a(String paramString, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 190	fp:a	(Ljava/lang/String;)Lfp$a;
    //   4: astore_3
    //   5: aconst_null
    //   6: astore 4
    //   8: aload_3
    //   9: ifnull +377 -> 386
    //   12: aload_3
    //   13: getfield 194	fp$a:a	I
    //   16: istore 19
    //   18: aconst_null
    //   19: astore 4
    //   21: iload 19
    //   23: bipush 31
    //   25: if_icmpne +361 -> 386
    //   28: new 196	gz$a
    //   31: dup
    //   32: iconst_0
    //   33: invokespecial 199	gz$a:<init>	(B)V
    //   36: astore 20
    //   38: new 201	android/media/ExifInterface
    //   41: dup
    //   42: aload_0
    //   43: invokespecial 202	android/media/ExifInterface:<init>	(Ljava/lang/String;)V
    //   46: invokevirtual 206	android/media/ExifInterface:getThumbnail	()[B
    //   49: astore 47
    //   51: aload 47
    //   53: astore 22
    //   55: new 83	android/graphics/BitmapFactory$Options
    //   58: dup
    //   59: invokespecial 207	android/graphics/BitmapFactory$Options:<init>	()V
    //   62: astore 23
    //   64: new 83	android/graphics/BitmapFactory$Options
    //   67: dup
    //   68: invokespecial 207	android/graphics/BitmapFactory$Options:<init>	()V
    //   71: astore 24
    //   73: iload_1
    //   74: iload_2
    //   75: invokestatic 209	java/lang/Math:min	(II)I
    //   78: istore 25
    //   80: iload_1
    //   81: iload_2
    //   82: imul
    //   83: istore 26
    //   85: iconst_0
    //   86: istore 27
    //   88: aload 22
    //   90: ifnull +639 -> 729
    //   93: aload 24
    //   95: iconst_1
    //   96: putfield 213	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   99: aload 22
    //   101: iconst_0
    //   102: aload 22
    //   104: arraylength
    //   105: aload 24
    //   107: invokestatic 216	android/graphics/BitmapFactory:decodeByteArray	([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   110: pop
    //   111: aload 24
    //   113: getfield 219	android/graphics/BitmapFactory$Options:mCancel	Z
    //   116: istore 44
    //   118: iconst_0
    //   119: istore 27
    //   121: iload 44
    //   123: ifne +606 -> 729
    //   126: aload 24
    //   128: getfield 86	android/graphics/BitmapFactory$Options:outWidth	I
    //   131: istore 45
    //   133: iconst_0
    //   134: istore 27
    //   136: iload 45
    //   138: iconst_m1
    //   139: if_icmpeq +590 -> 729
    //   142: aload 24
    //   144: getfield 89	android/graphics/BitmapFactory$Options:outHeight	I
    //   147: istore 46
    //   149: iconst_0
    //   150: istore 27
    //   152: iload 46
    //   154: iconst_m1
    //   155: if_icmpeq +574 -> 729
    //   158: aload 24
    //   160: aload 24
    //   162: iload 25
    //   164: iload 26
    //   166: invokestatic 221	gz:a	(Landroid/graphics/BitmapFactory$Options;II)I
    //   169: putfield 224	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   172: aload 24
    //   174: getfield 86	android/graphics/BitmapFactory$Options:outWidth	I
    //   177: aload 24
    //   179: getfield 224	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   182: idiv
    //   183: istore 27
    //   185: aload 24
    //   187: getfield 86	android/graphics/BitmapFactory$Options:outWidth	I
    //   190: iload_1
    //   191: if_icmple +538 -> 729
    //   194: aload 24
    //   196: getfield 89	android/graphics/BitmapFactory$Options:outHeight	I
    //   199: iload_2
    //   200: if_icmple +529 -> 729
    //   203: iconst_1
    //   204: istore 29
    //   206: iload 27
    //   208: istore 28
    //   210: iload 29
    //   212: ifne +505 -> 717
    //   215: aload 23
    //   217: iconst_1
    //   218: putfield 213	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   221: new 151	java/io/FileInputStream
    //   224: dup
    //   225: aload_0
    //   226: invokespecial 225	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   229: astore 37
    //   231: aload 37
    //   233: invokevirtual 229	java/io/FileInputStream:getFD	()Ljava/io/FileDescriptor;
    //   236: astore 41
    //   238: aload 41
    //   240: astore 31
    //   242: aload 31
    //   244: aconst_null
    //   245: aload 23
    //   247: invokestatic 233	android/graphics/BitmapFactory:decodeFileDescriptor	(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   250: pop
    //   251: aload 23
    //   253: getfield 219	android/graphics/BitmapFactory$Options:mCancel	Z
    //   256: ifne +451 -> 707
    //   259: aload 23
    //   261: getfield 86	android/graphics/BitmapFactory$Options:outWidth	I
    //   264: iconst_m1
    //   265: if_icmpeq +442 -> 707
    //   268: aload 23
    //   270: getfield 89	android/graphics/BitmapFactory$Options:outHeight	I
    //   273: iconst_m1
    //   274: if_icmpeq +433 -> 707
    //   277: aload 23
    //   279: aload 23
    //   281: iload 25
    //   283: iload 26
    //   285: invokestatic 221	gz:a	(Landroid/graphics/BitmapFactory$Options;II)I
    //   288: putfield 224	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   291: aload 23
    //   293: getfield 86	android/graphics/BitmapFactory$Options:outWidth	I
    //   296: aload 23
    //   298: getfield 224	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   301: idiv
    //   302: istore 40
    //   304: aload 37
    //   306: astore 32
    //   308: iload 40
    //   310: istore 30
    //   312: iload 28
    //   314: ifle +177 -> 491
    //   317: iload 29
    //   319: ifne +10 -> 329
    //   322: iload 28
    //   324: iload 30
    //   326: if_icmplt +165 -> 491
    //   329: aload 24
    //   331: getfield 86	android/graphics/BitmapFactory$Options:outWidth	I
    //   334: pop
    //   335: aload 24
    //   337: getfield 89	android/graphics/BitmapFactory$Options:outHeight	I
    //   340: pop
    //   341: aload 24
    //   343: iconst_0
    //   344: putfield 213	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   347: aload 20
    //   349: aload 22
    //   351: iconst_0
    //   352: aload 22
    //   354: arraylength
    //   355: aload 24
    //   357: invokestatic 216	android/graphics/BitmapFactory:decodeByteArray	([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   360: putfield 236	gz$a:a	Landroid/graphics/Bitmap;
    //   363: aload 20
    //   365: getfield 236	gz$a:a	Landroid/graphics/Bitmap;
    //   368: pop
    //   369: aload 32
    //   371: ifnull +8 -> 379
    //   374: aload 32
    //   376: invokevirtual 237	java/io/FileInputStream:close	()V
    //   379: aload 20
    //   381: getfield 236	gz$a:a	Landroid/graphics/Bitmap;
    //   384: astore 4
    //   386: aload 4
    //   388: ifnonnull +196 -> 584
    //   391: iload_1
    //   392: iload_2
    //   393: invokestatic 209	java/lang/Math:min	(II)I
    //   396: istore 5
    //   398: iload_1
    //   399: iload_2
    //   400: imul
    //   401: istore 6
    //   403: new 151	java/io/FileInputStream
    //   406: dup
    //   407: aload_0
    //   408: invokespecial 225	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   411: astore 7
    //   413: aload 7
    //   415: invokevirtual 229	java/io/FileInputStream:getFD	()Ljava/io/FileDescriptor;
    //   418: astore 12
    //   420: new 83	android/graphics/BitmapFactory$Options
    //   423: dup
    //   424: invokespecial 207	android/graphics/BitmapFactory$Options:<init>	()V
    //   427: astore 13
    //   429: aload 13
    //   431: iconst_1
    //   432: putfield 224	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   435: aload 13
    //   437: iconst_1
    //   438: putfield 213	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   441: aload 12
    //   443: aconst_null
    //   444: aload 13
    //   446: invokestatic 233	android/graphics/BitmapFactory:decodeFileDescriptor	(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   449: pop
    //   450: aload 13
    //   452: getfield 219	android/graphics/BitmapFactory$Options:mCancel	Z
    //   455: ifne +25 -> 480
    //   458: aload 13
    //   460: getfield 86	android/graphics/BitmapFactory$Options:outWidth	I
    //   463: iconst_m1
    //   464: if_icmpeq +16 -> 480
    //   467: aload 13
    //   469: getfield 89	android/graphics/BitmapFactory$Options:outHeight	I
    //   472: istore 16
    //   474: iload 16
    //   476: iconst_m1
    //   477: if_icmpne +60 -> 537
    //   480: aload 7
    //   482: invokevirtual 237	java/io/FileInputStream:close	()V
    //   485: aconst_null
    //   486: astore 4
    //   488: aload 4
    //   490: areturn
    //   491: iload 30
    //   493: ifle +25 -> 518
    //   496: aload 23
    //   498: iconst_0
    //   499: putfield 213	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   502: aload 20
    //   504: aload 31
    //   506: aconst_null
    //   507: aload 23
    //   509: invokestatic 233	android/graphics/BitmapFactory:decodeFileDescriptor	(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   512: putfield 236	gz$a:a	Landroid/graphics/Bitmap;
    //   515: goto -146 -> 369
    //   518: aload 20
    //   520: aconst_null
    //   521: putfield 236	gz$a:a	Landroid/graphics/Bitmap;
    //   524: goto -155 -> 369
    //   527: astore 15
    //   529: aload 15
    //   531: invokevirtual 184	java/io/IOException:printStackTrace	()V
    //   534: goto -49 -> 485
    //   537: aload 13
    //   539: aload 13
    //   541: iload 5
    //   543: iload 6
    //   545: invokestatic 221	gz:a	(Landroid/graphics/BitmapFactory$Options;II)I
    //   548: putfield 224	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   551: aload 13
    //   553: iconst_0
    //   554: putfield 213	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   557: aload 13
    //   559: getstatic 243	android/graphics/Bitmap$Config:ARGB_8888	Landroid/graphics/Bitmap$Config;
    //   562: putfield 246	android/graphics/BitmapFactory$Options:inPreferredConfig	Landroid/graphics/Bitmap$Config;
    //   565: aload 12
    //   567: aconst_null
    //   568: aload 13
    //   570: invokestatic 233	android/graphics/BitmapFactory:decodeFileDescriptor	(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   573: astore 17
    //   575: aload 17
    //   577: astore 4
    //   579: aload 7
    //   581: invokevirtual 237	java/io/FileInputStream:close	()V
    //   584: aload 4
    //   586: ifnull -98 -> 488
    //   589: aload 4
    //   591: iload_1
    //   592: iload_2
    //   593: invokestatic 248	gz:a	(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    //   596: astore 4
    //   598: goto -110 -> 488
    //   601: astore 18
    //   603: aload 18
    //   605: invokevirtual 184	java/io/IOException:printStackTrace	()V
    //   608: goto -24 -> 584
    //   611: astore 8
    //   613: aconst_null
    //   614: astore 7
    //   616: aload 8
    //   618: invokevirtual 184	java/io/IOException:printStackTrace	()V
    //   621: aload 7
    //   623: invokevirtual 237	java/io/FileInputStream:close	()V
    //   626: aconst_null
    //   627: astore 4
    //   629: goto -141 -> 488
    //   632: astore 11
    //   634: aload 11
    //   636: invokevirtual 184	java/io/IOException:printStackTrace	()V
    //   639: goto -13 -> 626
    //   642: astore 9
    //   644: aconst_null
    //   645: astore 7
    //   647: aload 7
    //   649: invokevirtual 237	java/io/FileInputStream:close	()V
    //   652: aload 9
    //   654: athrow
    //   655: astore 10
    //   657: aload 10
    //   659: invokevirtual 184	java/io/IOException:printStackTrace	()V
    //   662: goto -10 -> 652
    //   665: astore 33
    //   667: goto -288 -> 379
    //   670: astore 9
    //   672: goto -25 -> 647
    //   675: astore 8
    //   677: goto -61 -> 616
    //   680: astore 42
    //   682: aconst_null
    //   683: astore 37
    //   685: aconst_null
    //   686: astore 31
    //   688: goto -446 -> 242
    //   691: astore 38
    //   693: aconst_null
    //   694: astore 31
    //   696: goto -454 -> 242
    //   699: astore 21
    //   701: aconst_null
    //   702: astore 22
    //   704: goto -649 -> 55
    //   707: aload 37
    //   709: astore 32
    //   711: iconst_0
    //   712: istore 30
    //   714: goto -402 -> 312
    //   717: iconst_0
    //   718: istore 30
    //   720: aconst_null
    //   721: astore 31
    //   723: aconst_null
    //   724: astore 32
    //   726: goto -414 -> 312
    //   729: iload 27
    //   731: istore 28
    //   733: iconst_0
    //   734: istore 29
    //   736: goto -526 -> 210
    //
    // Exception table:
    //   from	to	target	type
    //   480	485	527	java/io/IOException
    //   579	584	601	java/io/IOException
    //   403	413	611	java/io/IOException
    //   621	626	632	java/io/IOException
    //   403	413	642	finally
    //   647	652	655	java/io/IOException
    //   374	379	665	java/io/IOException
    //   413	474	670	finally
    //   537	575	670	finally
    //   616	621	670	finally
    //   413	474	675	java/io/IOException
    //   537	575	675	java/io/IOException
    //   221	231	680	java/lang/Exception
    //   231	238	691	java/lang/Exception
    //   38	51	699	java/io/IOException
  }

  // ERROR //
  public static void a(Bitmap paramBitmap, String paramString)
  {
    // Byte code:
    //   0: sipush 1024
    //   3: istore_2
    //   4: aload_0
    //   5: ifnonnull +4 -> 9
    //   8: return
    //   9: new 251	java/io/ByteArrayOutputStream
    //   12: dup
    //   13: invokespecial 252	java/io/ByteArrayOutputStream:<init>	()V
    //   16: astore_3
    //   17: aload_0
    //   18: getstatic 258	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   21: bipush 100
    //   23: aload_3
    //   24: invokevirtual 262	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   27: pop
    //   28: new 146	java/io/File
    //   31: dup
    //   32: aload_1
    //   33: invokespecial 149	java/io/File:<init>	(Ljava/lang/String;)V
    //   36: astore 5
    //   38: aconst_null
    //   39: astore 6
    //   41: new 264	java/io/FileOutputStream
    //   44: dup
    //   45: aload 5
    //   47: invokespecial 265	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   50: astore 7
    //   52: aload_3
    //   53: invokevirtual 268	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   56: astore 14
    //   58: aload 14
    //   60: arraylength
    //   61: istore 15
    //   63: aload 14
    //   65: arraylength
    //   66: iload_2
    //   67: if_icmplt +186 -> 253
    //   70: goto +186 -> 256
    //   73: iload 16
    //   75: iload_2
    //   76: if_icmpge +24 -> 100
    //   79: aload 14
    //   81: iload 16
    //   83: sipush 256
    //   86: aload 14
    //   88: iload 16
    //   90: baload
    //   91: isub
    //   92: i2b
    //   93: bastore
    //   94: iinc 16 1
    //   97: goto -24 -> 73
    //   100: aload 7
    //   102: aload 14
    //   104: invokevirtual 274	java/io/OutputStream:write	([B)V
    //   107: aload 7
    //   109: invokevirtual 277	java/io/OutputStream:flush	()V
    //   112: aload 7
    //   114: invokevirtual 278	java/io/OutputStream:close	()V
    //   117: aload_3
    //   118: invokevirtual 279	java/io/ByteArrayOutputStream:close	()V
    //   121: goto -113 -> 8
    //   124: astore 18
    //   126: aload 18
    //   128: invokevirtual 184	java/io/IOException:printStackTrace	()V
    //   131: goto -123 -> 8
    //   134: astore 17
    //   136: aload 17
    //   138: invokevirtual 184	java/io/IOException:printStackTrace	()V
    //   141: goto -24 -> 117
    //   144: astore 8
    //   146: aload 8
    //   148: invokevirtual 80	java/lang/Exception:printStackTrace	()V
    //   151: aload 6
    //   153: ifnull +8 -> 161
    //   156: aload 6
    //   158: invokevirtual 278	java/io/OutputStream:close	()V
    //   161: aload_3
    //   162: invokevirtual 279	java/io/ByteArrayOutputStream:close	()V
    //   165: goto -157 -> 8
    //   168: astore 12
    //   170: aload 12
    //   172: invokevirtual 184	java/io/IOException:printStackTrace	()V
    //   175: goto -167 -> 8
    //   178: astore 13
    //   180: aload 13
    //   182: invokevirtual 184	java/io/IOException:printStackTrace	()V
    //   185: goto -24 -> 161
    //   188: astore 9
    //   190: aconst_null
    //   191: astore 7
    //   193: aload 7
    //   195: ifnull +8 -> 203
    //   198: aload 7
    //   200: invokevirtual 278	java/io/OutputStream:close	()V
    //   203: aload_3
    //   204: invokevirtual 279	java/io/ByteArrayOutputStream:close	()V
    //   207: aload 9
    //   209: athrow
    //   210: astore 11
    //   212: aload 11
    //   214: invokevirtual 184	java/io/IOException:printStackTrace	()V
    //   217: goto -14 -> 203
    //   220: astore 10
    //   222: aload 10
    //   224: invokevirtual 184	java/io/IOException:printStackTrace	()V
    //   227: goto -20 -> 207
    //   230: astore 9
    //   232: goto -39 -> 193
    //   235: astore 9
    //   237: aload 6
    //   239: astore 7
    //   241: goto -48 -> 193
    //   244: astore 8
    //   246: aload 7
    //   248: astore 6
    //   250: goto -104 -> 146
    //   253: iload 15
    //   255: istore_2
    //   256: iconst_0
    //   257: istore 16
    //   259: goto -186 -> 73
    //
    // Exception table:
    //   from	to	target	type
    //   117	121	124	java/io/IOException
    //   112	117	134	java/io/IOException
    //   41	52	144	java/lang/Exception
    //   161	165	168	java/io/IOException
    //   156	161	178	java/io/IOException
    //   41	52	188	finally
    //   198	203	210	java/io/IOException
    //   203	207	220	java/io/IOException
    //   52	112	230	finally
    //   146	151	235	finally
    //   52	112	244	java/lang/Exception
  }

  // ERROR //
  public static Bitmap b(String paramString, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: getstatic 21	gz:a	Ljava/lang/Class;
    //   3: iconst_0
    //   4: anewarray 37	java/lang/Class
    //   7: invokevirtual 283	java/lang/Class:getConstructor	([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    //   10: iconst_0
    //   11: anewarray 4	java/lang/Object
    //   14: invokevirtual 289	java/lang/reflect/Constructor:newInstance	([Ljava/lang/Object;)Ljava/lang/Object;
    //   17: astore 11
    //   19: aload 11
    //   21: astore 4
    //   23: getstatic 57	android/os/Build$VERSION:SDK_INT	I
    //   26: ifle +111 -> 137
    //   29: getstatic 57	android/os/Build$VERSION:SDK_INT	I
    //   32: bipush 8
    //   34: if_icmpgt +103 -> 137
    //   37: getstatic 27	gz:d	Ljava/lang/reflect/Method;
    //   40: astore 17
    //   42: iconst_1
    //   43: anewarray 4	java/lang/Object
    //   46: astore 18
    //   48: aload 18
    //   50: iconst_0
    //   51: getstatic 33	gz:g	Ljava/lang/reflect/Field;
    //   54: aload 4
    //   56: invokevirtual 295	java/lang/reflect/Field:getInt	(Ljava/lang/Object;)I
    //   59: invokestatic 299	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   62: aastore
    //   63: aload 17
    //   65: aload 4
    //   67: aload 18
    //   69: invokevirtual 305	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   72: pop
    //   73: getstatic 25	gz:c	Ljava/lang/reflect/Method;
    //   76: aload 4
    //   78: iconst_1
    //   79: anewarray 4	java/lang/Object
    //   82: dup
    //   83: iconst_0
    //   84: aload_0
    //   85: aastore
    //   86: invokevirtual 305	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   89: pop
    //   90: getstatic 29	gz:e	Ljava/lang/reflect/Method;
    //   93: aload 4
    //   95: iconst_0
    //   96: anewarray 4	java/lang/Object
    //   99: invokevirtual 305	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   102: checkcast 108	android/graphics/Bitmap
    //   105: astore 6
    //   107: getstatic 23	gz:b	Ljava/lang/reflect/Method;
    //   110: aload 4
    //   112: iconst_0
    //   113: anewarray 4	java/lang/Object
    //   116: invokevirtual 305	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   119: pop
    //   120: aload 6
    //   122: ifnull +12 -> 134
    //   125: aload 6
    //   127: iload_1
    //   128: iload_2
    //   129: invokestatic 248	gz:a	(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    //   132: astore 6
    //   134: aload 6
    //   136: areturn
    //   137: getstatic 57	android/os/Build$VERSION:SDK_INT	I
    //   140: bipush 9
    //   142: if_icmplt +161 -> 303
    //   145: getstatic 57	android/os/Build$VERSION:SDK_INT	I
    //   148: sipush 10000
    //   151: if_icmpge +152 -> 303
    //   154: getstatic 25	gz:c	Ljava/lang/reflect/Method;
    //   157: aload 4
    //   159: iconst_1
    //   160: anewarray 4	java/lang/Object
    //   163: dup
    //   164: iconst_0
    //   165: aload_0
    //   166: aastore
    //   167: invokevirtual 305	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   170: pop
    //   171: getstatic 31	gz:f	Ljava/lang/reflect/Method;
    //   174: astore 15
    //   176: iconst_1
    //   177: anewarray 4	java/lang/Object
    //   180: astore 16
    //   182: aload 16
    //   184: iconst_0
    //   185: iconst_m1
    //   186: invokestatic 299	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   189: aastore
    //   190: aload 15
    //   192: aload 4
    //   194: aload 16
    //   196: invokevirtual 305	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   199: checkcast 108	android/graphics/Bitmap
    //   202: astore 6
    //   204: goto -97 -> 107
    //   207: astore 12
    //   209: aload 12
    //   211: invokevirtual 80	java/lang/Exception:printStackTrace	()V
    //   214: aconst_null
    //   215: astore 6
    //   217: goto -83 -> 134
    //   220: astore 8
    //   222: aconst_null
    //   223: astore 4
    //   225: aload 8
    //   227: invokevirtual 80	java/lang/Exception:printStackTrace	()V
    //   230: getstatic 23	gz:b	Ljava/lang/reflect/Method;
    //   233: aload 4
    //   235: iconst_0
    //   236: anewarray 4	java/lang/Object
    //   239: invokevirtual 305	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   242: pop
    //   243: aconst_null
    //   244: astore 6
    //   246: goto -112 -> 134
    //   249: astore 9
    //   251: aload 9
    //   253: invokevirtual 80	java/lang/Exception:printStackTrace	()V
    //   256: aconst_null
    //   257: astore 6
    //   259: goto -125 -> 134
    //   262: astore_3
    //   263: aconst_null
    //   264: astore 4
    //   266: getstatic 23	gz:b	Ljava/lang/reflect/Method;
    //   269: aload 4
    //   271: iconst_0
    //   272: anewarray 4	java/lang/Object
    //   275: invokevirtual 305	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   278: pop
    //   279: aload_3
    //   280: athrow
    //   281: astore 5
    //   283: aload 5
    //   285: invokevirtual 80	java/lang/Exception:printStackTrace	()V
    //   288: aconst_null
    //   289: astore 6
    //   291: goto -157 -> 134
    //   294: astore_3
    //   295: goto -29 -> 266
    //   298: astore 8
    //   300: goto -75 -> 225
    //   303: aconst_null
    //   304: astore 6
    //   306: goto -199 -> 107
    //
    // Exception table:
    //   from	to	target	type
    //   107	120	207	java/lang/Exception
    //   0	19	220	java/lang/Exception
    //   230	243	249	java/lang/Exception
    //   0	19	262	finally
    //   266	279	281	java/lang/Exception
    //   23	107	294	finally
    //   137	204	294	finally
    //   225	230	294	finally
    //   23	107	298	java/lang/Exception
    //   137	204	298	java/lang/Exception
  }

  static final class a
  {
    public Bitmap a;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     gz
 * JD-Core Version:    0.6.2
 */