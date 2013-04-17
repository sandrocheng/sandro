package com.tencent.feedback.common;

import android.os.Process;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;
import mqq.sdet.server.a.b;
import mqq.sdet.server.compress.CompressInterface;

public final class f
{
  static
  {
    new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  }

  public static long a(long paramLong)
  {
    c.a("serverTimeGap: " + paramLong);
    return paramLong + new Date().getTime();
  }

  // ERROR //
  public static common.RequestPackage a(int paramInt, CommonInfo paramCommonInfo, byte[] paramArrayOfByte, byte paramByte1, byte paramByte2)
  {
    // Byte code:
    //   0: ldc 50
    //   2: invokestatic 53	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   5: aconst_null
    //   6: astore 5
    //   8: aload_1
    //   9: ifnonnull +6 -> 15
    //   12: aload 5
    //   14: areturn
    //   15: new 55	common/RequestPackage
    //   18: dup
    //   19: invokespecial 56	common/RequestPackage:<init>	()V
    //   22: astore 6
    //   24: aload_1
    //   25: monitorenter
    //   26: aload 6
    //   28: aload_1
    //   29: invokevirtual 61	com/tencent/feedback/common/CommonInfo:getHardware_os	()Ljava/lang/String;
    //   32: invokevirtual 64	common/RequestPackage:e	(Ljava/lang/String;)V
    //   35: aload 6
    //   37: aload_1
    //   38: invokevirtual 68	com/tencent/feedback/common/CommonInfo:getPlatformId	()B
    //   41: invokevirtual 71	common/RequestPackage:a	(B)V
    //   44: aload 6
    //   46: aload_1
    //   47: invokevirtual 74	com/tencent/feedback/common/CommonInfo:getProductId	()Ljava/lang/String;
    //   50: invokevirtual 75	common/RequestPackage:a	(Ljava/lang/String;)V
    //   53: aload 6
    //   55: aload_1
    //   56: invokevirtual 78	com/tencent/feedback/common/CommonInfo:getProductVersion	()Ljava/lang/String;
    //   59: invokevirtual 81	common/RequestPackage:b	(Ljava/lang/String;)V
    //   62: aload 6
    //   64: aload_1
    //   65: invokevirtual 84	com/tencent/feedback/common/CommonInfo:getSdkId	()Ljava/lang/String;
    //   68: invokevirtual 85	common/RequestPackage:c	(Ljava/lang/String;)V
    //   71: aload 6
    //   73: aload_1
    //   74: invokevirtual 88	com/tencent/feedback/common/CommonInfo:getSdkVersion	()Ljava/lang/String;
    //   77: invokevirtual 91	common/RequestPackage:d	(Ljava/lang/String;)V
    //   80: aload 6
    //   82: aload_1
    //   83: invokevirtual 94	com/tencent/feedback/common/CommonInfo:getUserid	()Ljava/lang/String;
    //   86: invokevirtual 97	common/RequestPackage:f	(Ljava/lang/String;)V
    //   89: aload 6
    //   91: aload_1
    //   92: invokevirtual 100	com/tencent/feedback/common/CommonInfo:getUUId	()Ljava/lang/String;
    //   95: invokevirtual 103	common/RequestPackage:g	(Ljava/lang/String;)V
    //   98: aload_1
    //   99: monitorexit
    //   100: aload 6
    //   102: iload_0
    //   103: invokevirtual 106	common/RequestPackage:a	(I)V
    //   106: aload 6
    //   108: iload 4
    //   110: invokevirtual 108	common/RequestPackage:b	(B)V
    //   113: aload 6
    //   115: iload_3
    //   116: invokevirtual 110	common/RequestPackage:c	(B)V
    //   119: aconst_null
    //   120: astore 5
    //   122: aload_2
    //   123: ifnonnull +9 -> 132
    //   126: ldc 112
    //   128: invokevirtual 118	java/lang/String:getBytes	()[B
    //   131: astore_2
    //   132: aload 6
    //   134: aload_2
    //   135: invokevirtual 121	common/RequestPackage:a	([B)V
    //   138: ldc 123
    //   140: invokestatic 53	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   143: aload 6
    //   145: astore 5
    //   147: goto -135 -> 12
    //   150: astore 8
    //   152: aload_1
    //   153: monitorexit
    //   154: aload 8
    //   156: athrow
    //   157: astore 7
    //   159: aload 7
    //   161: invokevirtual 126	java/lang/Throwable:printStackTrace	()V
    //   164: goto -152 -> 12
    //
    // Exception table:
    //   from	to	target	type
    //   26	100	150	finally
    //   15	26	157	java/lang/Throwable
    //   100	157	157	java/lang/Throwable
  }

  // ERROR //
  public static Object a(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: ldc 131
    //   2: invokestatic 53	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   5: aconst_null
    //   6: astore_1
    //   7: aload_0
    //   8: ifnull +12 -> 20
    //   11: aload_0
    //   12: arraylength
    //   13: istore_2
    //   14: aconst_null
    //   15: astore_1
    //   16: iload_2
    //   17: ifge +5 -> 22
    //   20: aload_1
    //   21: areturn
    //   22: new 133	java/io/ByteArrayInputStream
    //   25: dup
    //   26: aload_0
    //   27: invokespecial 135	java/io/ByteArrayInputStream:<init>	([B)V
    //   30: astore_3
    //   31: new 137	java/io/ObjectInputStream
    //   34: dup
    //   35: aload_3
    //   36: invokespecial 140	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   39: astore 4
    //   41: aload 4
    //   43: invokevirtual 144	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   46: astore 11
    //   48: aload 11
    //   50: astore_1
    //   51: aload 4
    //   53: invokevirtual 147	java/io/ObjectInputStream:close	()V
    //   56: aload_3
    //   57: invokevirtual 148	java/io/ByteArrayInputStream:close	()V
    //   60: ldc 150
    //   62: invokestatic 53	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   65: goto -45 -> 20
    //   68: astore 12
    //   70: aload 12
    //   72: invokevirtual 151	java/io/IOException:printStackTrace	()V
    //   75: goto -19 -> 56
    //   78: astore 13
    //   80: aload 13
    //   82: invokevirtual 151	java/io/IOException:printStackTrace	()V
    //   85: goto -25 -> 60
    //   88: astore 5
    //   90: aconst_null
    //   91: astore 4
    //   93: aload 5
    //   95: invokevirtual 126	java/lang/Throwable:printStackTrace	()V
    //   98: aload 5
    //   100: invokevirtual 154	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   103: invokestatic 155	com/tencent/feedback/common/c:b	(Ljava/lang/String;)V
    //   106: aload 4
    //   108: ifnull +8 -> 116
    //   111: aload 4
    //   113: invokevirtual 147	java/io/ObjectInputStream:close	()V
    //   116: aload_3
    //   117: invokevirtual 148	java/io/ByteArrayInputStream:close	()V
    //   120: ldc 150
    //   122: invokestatic 53	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   125: aconst_null
    //   126: astore_1
    //   127: goto -107 -> 20
    //   130: astore 10
    //   132: aload 10
    //   134: invokevirtual 151	java/io/IOException:printStackTrace	()V
    //   137: goto -21 -> 116
    //   140: astore 9
    //   142: aload 9
    //   144: invokevirtual 151	java/io/IOException:printStackTrace	()V
    //   147: goto -27 -> 120
    //   150: astore 14
    //   152: aconst_null
    //   153: astore 4
    //   155: aload 14
    //   157: astore 6
    //   159: aload 4
    //   161: ifnull +8 -> 169
    //   164: aload 4
    //   166: invokevirtual 147	java/io/ObjectInputStream:close	()V
    //   169: aload_3
    //   170: invokevirtual 148	java/io/ByteArrayInputStream:close	()V
    //   173: ldc 150
    //   175: invokestatic 53	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   178: aload 6
    //   180: athrow
    //   181: astore 8
    //   183: aload 8
    //   185: invokevirtual 151	java/io/IOException:printStackTrace	()V
    //   188: goto -19 -> 169
    //   191: astore 7
    //   193: aload 7
    //   195: invokevirtual 151	java/io/IOException:printStackTrace	()V
    //   198: goto -25 -> 173
    //   201: astore 6
    //   203: goto -44 -> 159
    //   206: astore 5
    //   208: goto -115 -> 93
    //
    // Exception table:
    //   from	to	target	type
    //   51	56	68	java/io/IOException
    //   56	60	78	java/io/IOException
    //   31	41	88	java/lang/Throwable
    //   111	116	130	java/io/IOException
    //   116	120	140	java/io/IOException
    //   31	41	150	finally
    //   164	169	181	java/io/IOException
    //   169	173	191	java/io/IOException
    //   41	48	201	finally
    //   93	106	201	finally
    //   41	48	206	java/lang/Throwable
  }

  public static String a()
  {
    return "U[" + Process.myUid() + "] ";
  }

  public static String a(String paramString)
  {
    String str1 = null;
    if (paramString != null)
    {
      int i = paramString.length();
      str1 = null;
      if (i != 0)
        break label19;
    }
    while (true)
    {
      return str1;
      label19: byte[] arrayOfByte;
      try
      {
        MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
        localMessageDigest.update(paramString.getBytes());
        arrayOfByte = localMessageDigest.digest();
        if (arrayOfByte != null)
          break label66;
        str1 = "";
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
      {
        c.b(localNoSuchAlgorithmException.getMessage());
        str1 = null;
      }
      continue;
      label66: StringBuffer localStringBuffer = new StringBuffer();
      for (int j = 0; j < arrayOfByte.length; j++)
      {
        String str2 = Integer.toHexString(0xFF & arrayOfByte[j]);
        if (str2.length() == 1)
          localStringBuffer.append("0");
        localStringBuffer.append(str2);
      }
      str1 = localStringBuffer.toString().toUpperCase();
    }
  }

  // ERROR //
  public static byte[] a(Object paramObject)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: ldc 210
    //   4: invokestatic 53	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   7: aload_0
    //   8: ifnull +12 -> 20
    //   11: ldc 212
    //   13: aload_0
    //   14: invokevirtual 218	java/lang/Class:isInstance	(Ljava/lang/Object;)Z
    //   17: ifne +10 -> 27
    //   20: ldc 220
    //   22: invokestatic 155	com/tencent/feedback/common/c:b	(Ljava/lang/String;)V
    //   25: aload_1
    //   26: areturn
    //   27: new 222	java/io/ByteArrayOutputStream
    //   30: dup
    //   31: invokespecial 223	java/io/ByteArrayOutputStream:<init>	()V
    //   34: astore_2
    //   35: new 225	java/io/ObjectOutputStream
    //   38: dup
    //   39: aload_2
    //   40: invokespecial 228	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   43: astore_3
    //   44: aload_3
    //   45: aload_0
    //   46: invokevirtual 232	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   49: aload_3
    //   50: invokevirtual 235	java/io/ObjectOutputStream:flush	()V
    //   53: aload_2
    //   54: invokevirtual 238	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   57: astore 10
    //   59: aload 10
    //   61: astore_1
    //   62: aload_3
    //   63: invokevirtual 239	java/io/ObjectOutputStream:close	()V
    //   66: aload_2
    //   67: invokevirtual 240	java/io/ByteArrayOutputStream:close	()V
    //   70: ldc 242
    //   72: invokestatic 53	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   75: goto -50 -> 25
    //   78: astore 11
    //   80: aload 11
    //   82: invokevirtual 151	java/io/IOException:printStackTrace	()V
    //   85: goto -19 -> 66
    //   88: astore 12
    //   90: aload 12
    //   92: invokevirtual 151	java/io/IOException:printStackTrace	()V
    //   95: goto -25 -> 70
    //   98: astore 4
    //   100: aconst_null
    //   101: astore_3
    //   102: aload 4
    //   104: invokevirtual 126	java/lang/Throwable:printStackTrace	()V
    //   107: aload 4
    //   109: invokevirtual 154	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   112: invokestatic 155	com/tencent/feedback/common/c:b	(Ljava/lang/String;)V
    //   115: aload_3
    //   116: ifnull +7 -> 123
    //   119: aload_3
    //   120: invokevirtual 239	java/io/ObjectOutputStream:close	()V
    //   123: aload_2
    //   124: invokevirtual 240	java/io/ByteArrayOutputStream:close	()V
    //   127: ldc 242
    //   129: invokestatic 53	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   132: aconst_null
    //   133: astore_1
    //   134: goto -109 -> 25
    //   137: astore 9
    //   139: aload 9
    //   141: invokevirtual 151	java/io/IOException:printStackTrace	()V
    //   144: goto -21 -> 123
    //   147: astore 8
    //   149: aload 8
    //   151: invokevirtual 151	java/io/IOException:printStackTrace	()V
    //   154: goto -27 -> 127
    //   157: astore 13
    //   159: aconst_null
    //   160: astore_3
    //   161: aload 13
    //   163: astore 5
    //   165: aload_3
    //   166: ifnull +7 -> 173
    //   169: aload_3
    //   170: invokevirtual 239	java/io/ObjectOutputStream:close	()V
    //   173: aload_2
    //   174: invokevirtual 240	java/io/ByteArrayOutputStream:close	()V
    //   177: ldc 242
    //   179: invokestatic 53	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   182: aload 5
    //   184: athrow
    //   185: astore 7
    //   187: aload 7
    //   189: invokevirtual 151	java/io/IOException:printStackTrace	()V
    //   192: goto -19 -> 173
    //   195: astore 6
    //   197: aload 6
    //   199: invokevirtual 151	java/io/IOException:printStackTrace	()V
    //   202: goto -25 -> 177
    //   205: astore 5
    //   207: goto -42 -> 165
    //   210: astore 4
    //   212: goto -110 -> 102
    //
    // Exception table:
    //   from	to	target	type
    //   62	66	78	java/io/IOException
    //   66	70	88	java/io/IOException
    //   35	44	98	java/lang/Throwable
    //   119	123	137	java/io/IOException
    //   123	127	147	java/io/IOException
    //   35	44	157	finally
    //   169	173	185	java/io/IOException
    //   173	177	195	java/io/IOException
    //   44	59	205	finally
    //   102	115	205	finally
    //   44	59	210	java/lang/Throwable
  }

  private static byte[] a(byte[] paramArrayOfByte, int paramInt)
  {
    c.c("RQDUploadImp.zipDatas() start ");
    if ((paramArrayOfByte == null) || (paramInt == -1));
    while (true)
    {
      return paramArrayOfByte;
      c.c("zipType: " + paramInt + " dataslength: " + paramArrayOfByte.length);
      try
      {
        CompressInterface localCompressInterface = mqq.sdet.server.compress.a.a(paramInt);
        if (localCompressInterface == null)
        {
          paramArrayOfByte = null;
        }
        else
        {
          paramArrayOfByte = localCompressInterface.a(paramArrayOfByte);
          c.c("RQDUploadImp.zipDatas() end");
        }
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        c.b("uncompress wrong" + localThrowable.toString());
        paramArrayOfByte = null;
      }
    }
  }

  public static byte[] a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, String paramString)
  {
    c.c("Utils.encodeDatasByZipAndEncry() start");
    Object localObject = null;
    if (paramArrayOfByte == null);
    while (true)
    {
      return localObject;
      try
      {
        byte[] arrayOfByte = a(a(paramArrayOfByte, paramInt1), paramInt2, paramString);
        c.c("Utils.encodeDatasByZipAndEncry() end");
        localObject = arrayOfByte;
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        c.b("zip or encry fail!");
        localObject = null;
      }
    }
  }

  private static byte[] a(byte[] paramArrayOfByte, int paramInt, String paramString)
  {
    c.c("RQDUploadImp.encryDatas() start ");
    if ((paramArrayOfByte == null) || (paramInt == -1));
    while (true)
    {
      return paramArrayOfByte;
      c.c("encryType: " + paramInt + " dataslength: " + paramArrayOfByte.length + " key: " + paramString);
      try
      {
        b localb = mqq.sdet.server.a.a.a(paramInt);
        if (localb == null)
        {
          paramArrayOfByte = null;
        }
        else
        {
          localb.a(paramString);
          paramArrayOfByte = localb.b(paramArrayOfByte);
          c.c("RQDUploadImp.encryDatas() end ");
        }
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        c.b("encry wrong" + localThrowable.toString());
        paramArrayOfByte = null;
      }
    }
  }

  private static byte[] b(byte[] paramArrayOfByte, int paramInt)
  {
    c.c("RQDUploadImp.unzipDatas() start ");
    if ((paramArrayOfByte == null) || (paramInt == -1));
    while (true)
    {
      return paramArrayOfByte;
      c.c("zipType: " + paramInt + " dataslength: " + paramArrayOfByte.length);
      try
      {
        CompressInterface localCompressInterface = mqq.sdet.server.compress.a.a(paramInt);
        if (localCompressInterface == null)
        {
          paramArrayOfByte = null;
        }
        else
        {
          paramArrayOfByte = localCompressInterface.b(paramArrayOfByte);
          c.c("RQDUploadImp.unzipDatas() end");
        }
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        c.b("uncompress wrong" + localThrowable.toString());
        paramArrayOfByte = null;
      }
    }
  }

  public static byte[] b(byte[] paramArrayOfByte, int paramInt1, int paramInt2, String paramString)
  {
    c.c("Utils.decodeDatasByUnZipAndUnEncry() start");
    try
    {
      arrayOfByte = b(b(paramArrayOfByte, paramInt2, paramString), paramInt1);
      c.c("Utils.decodeDatasByUnZipAndUnEncry() end");
      return arrayOfByte;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        c.b("unzip or unencry fail!");
        byte[] arrayOfByte = null;
      }
    }
  }

  private static byte[] b(byte[] paramArrayOfByte, int paramInt, String paramString)
  {
    c.c("RQDUploadImp.unencryDatas() start ");
    if ((paramArrayOfByte == null) || (paramInt == -1));
    while (true)
    {
      return paramArrayOfByte;
      c.c("encryType: " + paramInt + " dataslength: " + paramArrayOfByte.length + " key: " + paramString);
      try
      {
        b localb = mqq.sdet.server.a.a.a(paramInt);
        if (localb == null)
        {
          paramArrayOfByte = null;
        }
        else
        {
          localb.a(paramString);
          paramArrayOfByte = localb.a(paramArrayOfByte);
          c.c("RQDUploadImp.unencryDatas() end ");
        }
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        c.b("unencry wrong" + localThrowable.toString());
        paramArrayOfByte = null;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.feedback.common.f
 * JD-Core Version:    0.6.2
 */