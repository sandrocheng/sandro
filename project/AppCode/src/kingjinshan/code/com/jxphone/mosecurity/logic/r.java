package com.jxphone.mosecurity.logic;

import com.jxphone.mosecurity.logic.a.h;
import com.keniu.security.e.c;

public final class r
  implements h
{
  public final void a(c paramc)
  {
  }

  // ERROR //
  public final void a(byte[] paramArrayOfByte, android.hardware.Camera paramCamera)
  {
    // Byte code:
    //   0: invokestatic 21	java/lang/System:currentTimeMillis	()J
    //   3: invokestatic 27	com/keniu/security/util/i:b	(J)Ljava/lang/CharSequence;
    //   6: invokevirtual 31	java/lang/Object:toString	()Ljava/lang/String;
    //   9: astore_3
    //   10: new 33	java/lang/StringBuilder
    //   13: dup
    //   14: invokespecial 34	java/lang/StringBuilder:<init>	()V
    //   17: ldc 36
    //   19: invokevirtual 40	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   22: aload_3
    //   23: invokevirtual 40	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: ldc 42
    //   28: invokevirtual 40	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: invokevirtual 43	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   34: astore 4
    //   36: new 33	java/lang/StringBuilder
    //   39: dup
    //   40: invokespecial 34	java/lang/StringBuilder:<init>	()V
    //   43: ldc 36
    //   45: invokevirtual 40	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: aload_3
    //   49: invokevirtual 40	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: ldc 45
    //   54: invokevirtual 40	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   57: invokevirtual 43	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   60: astore 5
    //   62: new 47	com/jxphone/mosecurity/d/j
    //   65: dup
    //   66: new 49	java/io/FileOutputStream
    //   69: dup
    //   70: aload 4
    //   72: invokespecial 52	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   75: invokespecial 55	com/jxphone/mosecurity/d/j:<init>	(Ljava/io/OutputStream;)V
    //   78: astore 6
    //   80: new 47	com/jxphone/mosecurity/d/j
    //   83: dup
    //   84: new 49	java/io/FileOutputStream
    //   87: dup
    //   88: aload 5
    //   90: invokespecial 52	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   93: invokespecial 55	com/jxphone/mosecurity/d/j:<init>	(Ljava/io/OutputStream;)V
    //   96: astore 7
    //   98: aload_1
    //   99: iconst_0
    //   100: aload_1
    //   101: arraylength
    //   102: invokestatic 61	android/graphics/BitmapFactory:decodeByteArray	([BII)Landroid/graphics/Bitmap;
    //   105: astore 19
    //   107: aload 19
    //   109: sipush 256
    //   112: sipush 256
    //   115: iconst_0
    //   116: invokestatic 67	android/graphics/Bitmap:createScaledBitmap	(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    //   119: astore 20
    //   121: aload 19
    //   123: getstatic 73	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   126: bipush 90
    //   128: aload 6
    //   130: invokevirtual 77	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   133: pop
    //   134: aload 6
    //   136: invokevirtual 82	java/io/OutputStream:flush	()V
    //   139: aload 20
    //   141: getstatic 73	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   144: bipush 90
    //   146: aload 7
    //   148: invokevirtual 77	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   151: pop
    //   152: aload 6
    //   154: invokevirtual 82	java/io/OutputStream:flush	()V
    //   157: aload 19
    //   159: invokevirtual 85	android/graphics/Bitmap:recycle	()V
    //   162: aload 20
    //   164: invokevirtual 85	android/graphics/Bitmap:recycle	()V
    //   167: aload 6
    //   169: invokevirtual 88	java/io/OutputStream:close	()V
    //   172: aload 7
    //   174: invokevirtual 88	java/io/OutputStream:close	()V
    //   177: aload_2
    //   178: invokevirtual 93	android/hardware/Camera:startPreview	()V
    //   181: return
    //   182: astore 23
    //   184: aload_0
    //   185: invokevirtual 97	java/lang/Object:getClass	()Ljava/lang/Class;
    //   188: invokevirtual 102	java/lang/Class:getName	()Ljava/lang/String;
    //   191: aload 23
    //   193: invokevirtual 103	java/io/IOException:toString	()Ljava/lang/String;
    //   196: invokestatic 109	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   199: pop
    //   200: goto -28 -> 172
    //   203: astore 25
    //   205: aload_0
    //   206: invokevirtual 97	java/lang/Object:getClass	()Ljava/lang/Class;
    //   209: invokevirtual 102	java/lang/Class:getName	()Ljava/lang/String;
    //   212: aload 25
    //   214: invokevirtual 103	java/io/IOException:toString	()Ljava/lang/String;
    //   217: invokestatic 109	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   220: pop
    //   221: goto -44 -> 177
    //   224: astore 8
    //   226: aconst_null
    //   227: astore 7
    //   229: aconst_null
    //   230: astore 6
    //   232: aload_0
    //   233: invokevirtual 97	java/lang/Object:getClass	()Ljava/lang/Class;
    //   236: invokevirtual 102	java/lang/Class:getName	()Ljava/lang/String;
    //   239: aload 8
    //   241: invokevirtual 103	java/io/IOException:toString	()Ljava/lang/String;
    //   244: invokestatic 109	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   247: pop
    //   248: aload 6
    //   250: ifnull +8 -> 258
    //   253: aload 6
    //   255: invokevirtual 88	java/io/OutputStream:close	()V
    //   258: aload 7
    //   260: ifnull -83 -> 177
    //   263: aload 7
    //   265: invokevirtual 88	java/io/OutputStream:close	()V
    //   268: goto -91 -> 177
    //   271: astore 15
    //   273: aload_0
    //   274: invokevirtual 97	java/lang/Object:getClass	()Ljava/lang/Class;
    //   277: invokevirtual 102	java/lang/Class:getName	()Ljava/lang/String;
    //   280: aload 15
    //   282: invokevirtual 103	java/io/IOException:toString	()Ljava/lang/String;
    //   285: invokestatic 109	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   288: pop
    //   289: goto -112 -> 177
    //   292: astore 17
    //   294: aload_0
    //   295: invokevirtual 97	java/lang/Object:getClass	()Ljava/lang/Class;
    //   298: invokevirtual 102	java/lang/Class:getName	()Ljava/lang/String;
    //   301: aload 17
    //   303: invokevirtual 103	java/io/IOException:toString	()Ljava/lang/String;
    //   306: invokestatic 109	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   309: pop
    //   310: goto -52 -> 258
    //   313: astore 9
    //   315: aconst_null
    //   316: astore 7
    //   318: aconst_null
    //   319: astore 6
    //   321: aload 6
    //   323: ifnull +8 -> 331
    //   326: aload 6
    //   328: invokevirtual 88	java/io/OutputStream:close	()V
    //   331: aload 7
    //   333: ifnull +8 -> 341
    //   336: aload 7
    //   338: invokevirtual 88	java/io/OutputStream:close	()V
    //   341: aload 9
    //   343: athrow
    //   344: astore 12
    //   346: aload_0
    //   347: invokevirtual 97	java/lang/Object:getClass	()Ljava/lang/Class;
    //   350: invokevirtual 102	java/lang/Class:getName	()Ljava/lang/String;
    //   353: aload 12
    //   355: invokevirtual 103	java/io/IOException:toString	()Ljava/lang/String;
    //   358: invokestatic 109	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   361: pop
    //   362: goto -31 -> 331
    //   365: astore 10
    //   367: aload_0
    //   368: invokevirtual 97	java/lang/Object:getClass	()Ljava/lang/Class;
    //   371: invokevirtual 102	java/lang/Class:getName	()Ljava/lang/String;
    //   374: aload 10
    //   376: invokevirtual 103	java/io/IOException:toString	()Ljava/lang/String;
    //   379: invokestatic 109	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   382: pop
    //   383: goto -42 -> 341
    //   386: astore 9
    //   388: aconst_null
    //   389: astore 7
    //   391: goto -70 -> 321
    //   394: astore 9
    //   396: goto -75 -> 321
    //   399: astore 8
    //   401: aconst_null
    //   402: astore 7
    //   404: goto -172 -> 232
    //   407: astore 8
    //   409: goto -177 -> 232
    //
    // Exception table:
    //   from	to	target	type
    //   167	172	182	java/io/IOException
    //   172	177	203	java/io/IOException
    //   62	80	224	java/io/IOException
    //   263	268	271	java/io/IOException
    //   253	258	292	java/io/IOException
    //   62	80	313	finally
    //   326	331	344	java/io/IOException
    //   336	341	365	java/io/IOException
    //   80	98	386	finally
    //   98	167	394	finally
    //   232	248	394	finally
    //   80	98	399	java/io/IOException
    //   98	167	407	java/io/IOException
  }

  public final void b(c paramc)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.logic.r
 * JD-Core Version:    0.6.2
 */