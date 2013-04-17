package com.tencent.feedback.common;

import android.os.Process;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import mqq.sdet.server.a.b;
import mqq.sdet.server.compress.CompressInterface;

public final class g
{
  private static final SimpleDateFormat a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  private static final SimpleDateFormat b = new SimpleDateFormat("yyyy-MM-dd");

  public static long a(long paramLong)
  {
    ELog.info("serverTimeGap: " + paramLong);
    return paramLong + new Date().getTime();
  }

  // ERROR //
  public static common.RequestPackage a(int paramInt1, CommonInfo paramCommonInfo, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: ldc 59
    //   5: invokestatic 62	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   8: aload_1
    //   9: ifnonnull +11 -> 20
    //   12: ldc 64
    //   14: invokestatic 67	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   17: aload 5
    //   19: areturn
    //   20: new 69	common/RequestPackage
    //   23: dup
    //   24: invokespecial 70	common/RequestPackage:<init>	()V
    //   27: astore 6
    //   29: aload_1
    //   30: monitorenter
    //   31: aload 6
    //   33: aload_1
    //   34: invokevirtual 75	com/tencent/feedback/common/CommonInfo:getHardware_os	()Ljava/lang/String;
    //   37: invokevirtual 78	common/RequestPackage:e	(Ljava/lang/String;)V
    //   40: aload 6
    //   42: aload_1
    //   43: invokevirtual 82	com/tencent/feedback/common/CommonInfo:getPlatformId	()B
    //   46: invokevirtual 85	common/RequestPackage:a	(B)V
    //   49: aload 6
    //   51: aload_1
    //   52: invokevirtual 88	com/tencent/feedback/common/CommonInfo:getProductId	()Ljava/lang/String;
    //   55: invokevirtual 90	common/RequestPackage:a	(Ljava/lang/String;)V
    //   58: aload 6
    //   60: aload_1
    //   61: invokevirtual 93	com/tencent/feedback/common/CommonInfo:getProductVersion	()Ljava/lang/String;
    //   64: invokevirtual 95	common/RequestPackage:b	(Ljava/lang/String;)V
    //   67: aload 6
    //   69: aload_1
    //   70: invokevirtual 98	com/tencent/feedback/common/CommonInfo:getSdkId	()Ljava/lang/String;
    //   73: invokevirtual 101	common/RequestPackage:c	(Ljava/lang/String;)V
    //   76: aload 6
    //   78: aload_1
    //   79: invokevirtual 104	com/tencent/feedback/common/CommonInfo:getSdkVersion	()Ljava/lang/String;
    //   82: invokevirtual 107	common/RequestPackage:d	(Ljava/lang/String;)V
    //   85: aload 6
    //   87: aload_1
    //   88: invokevirtual 110	com/tencent/feedback/common/CommonInfo:getUserid	()Ljava/lang/String;
    //   91: invokevirtual 113	common/RequestPackage:f	(Ljava/lang/String;)V
    //   94: aload 6
    //   96: aload_1
    //   97: invokevirtual 116	com/tencent/feedback/common/CommonInfo:getUUId	()Ljava/lang/String;
    //   100: invokevirtual 119	common/RequestPackage:g	(Ljava/lang/String;)V
    //   103: aload 6
    //   105: aload_1
    //   106: invokevirtual 122	com/tencent/feedback/common/CommonInfo:getAPPId	()Ljava/lang/String;
    //   109: invokevirtual 125	common/RequestPackage:h	(Ljava/lang/String;)V
    //   112: aload_1
    //   113: monitorexit
    //   114: aload 6
    //   116: iload_0
    //   117: invokevirtual 128	common/RequestPackage:a	(I)V
    //   120: aload 6
    //   122: iload 4
    //   124: i2b
    //   125: invokevirtual 130	common/RequestPackage:b	(B)V
    //   128: aload 6
    //   130: iload_3
    //   131: i2b
    //   132: invokevirtual 132	common/RequestPackage:c	(B)V
    //   135: aconst_null
    //   136: astore 5
    //   138: aload_2
    //   139: ifnonnull +9 -> 148
    //   142: ldc 134
    //   144: invokevirtual 140	java/lang/String:getBytes	()[B
    //   147: astore_2
    //   148: aload 6
    //   150: aload_2
    //   151: invokevirtual 143	common/RequestPackage:a	([B)V
    //   154: ldc 145
    //   156: invokestatic 62	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   159: aload 6
    //   161: astore 5
    //   163: goto -146 -> 17
    //   166: astore 8
    //   168: aload_1
    //   169: monitorexit
    //   170: aload 8
    //   172: athrow
    //   173: astore 7
    //   175: aload 7
    //   177: invokevirtual 148	java/lang/Throwable:printStackTrace	()V
    //   180: goto -163 -> 17
    //
    // Exception table:
    //   from	to	target	type
    //   31	114	166	finally
    //   20	31	173	java/lang/Throwable
    //   114	173	173	java/lang/Throwable
  }

  // ERROR //
  public static Object a(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: ldc 153
    //   2: invokestatic 62	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
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
    //   22: new 155	java/io/ByteArrayInputStream
    //   25: dup
    //   26: aload_0
    //   27: invokespecial 157	java/io/ByteArrayInputStream:<init>	([B)V
    //   30: astore_3
    //   31: new 159	java/io/ObjectInputStream
    //   34: dup
    //   35: aload_3
    //   36: invokespecial 162	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   39: astore 4
    //   41: aload 4
    //   43: invokevirtual 166	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   46: astore 11
    //   48: aload 11
    //   50: astore_1
    //   51: aload 4
    //   53: invokevirtual 169	java/io/ObjectInputStream:close	()V
    //   56: aload_3
    //   57: invokevirtual 170	java/io/ByteArrayInputStream:close	()V
    //   60: ldc 172
    //   62: invokestatic 62	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   65: goto -45 -> 20
    //   68: astore 12
    //   70: aload 12
    //   72: invokevirtual 173	java/io/IOException:printStackTrace	()V
    //   75: goto -19 -> 56
    //   78: astore 13
    //   80: aload 13
    //   82: invokevirtual 173	java/io/IOException:printStackTrace	()V
    //   85: goto -25 -> 60
    //   88: astore 5
    //   90: aconst_null
    //   91: astore 4
    //   93: aload 5
    //   95: invokevirtual 148	java/lang/Throwable:printStackTrace	()V
    //   98: aload 5
    //   100: invokevirtual 176	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   103: invokestatic 67	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   106: aload 4
    //   108: ifnull +8 -> 116
    //   111: aload 4
    //   113: invokevirtual 169	java/io/ObjectInputStream:close	()V
    //   116: aload_3
    //   117: invokevirtual 170	java/io/ByteArrayInputStream:close	()V
    //   120: ldc 172
    //   122: invokestatic 62	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   125: aconst_null
    //   126: astore_1
    //   127: goto -107 -> 20
    //   130: astore 10
    //   132: aload 10
    //   134: invokevirtual 173	java/io/IOException:printStackTrace	()V
    //   137: goto -21 -> 116
    //   140: astore 9
    //   142: aload 9
    //   144: invokevirtual 173	java/io/IOException:printStackTrace	()V
    //   147: goto -27 -> 120
    //   150: astore 14
    //   152: aconst_null
    //   153: astore 4
    //   155: aload 14
    //   157: astore 6
    //   159: aload 4
    //   161: ifnull +8 -> 169
    //   164: aload 4
    //   166: invokevirtual 169	java/io/ObjectInputStream:close	()V
    //   169: aload_3
    //   170: invokevirtual 170	java/io/ByteArrayInputStream:close	()V
    //   173: ldc 172
    //   175: invokestatic 62	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   178: aload 6
    //   180: athrow
    //   181: astore 8
    //   183: aload 8
    //   185: invokevirtual 173	java/io/IOException:printStackTrace	()V
    //   188: goto -19 -> 169
    //   191: astore 7
    //   193: aload 7
    //   195: invokevirtual 173	java/io/IOException:printStackTrace	()V
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
        ELog.error(localNoSuchAlgorithmException.getMessage());
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

  public static String a(Date paramDate)
  {
    if (paramDate == null);
    for (String str = null; ; str = a.format(paramDate))
      return str;
  }

  public static String a(Map paramMap)
  {
    ELog.debug("Utils.parseMapToString() start");
    String str1;
    if (paramMap == null)
      str1 = "";
    while (true)
    {
      return str1;
      Set localSet = paramMap.keySet();
      if (localSet == null)
      {
        str1 = "";
      }
      else
      {
        StringBuffer localStringBuffer = new StringBuffer();
        Iterator localIterator = localSet.iterator();
        if (localIterator.hasNext())
        {
          String str2 = (String)localIterator.next();
          localStringBuffer.append("&");
          String str3;
          label85: String str4;
          if (str2 == null)
          {
            str3 = null;
            localStringBuffer.append(str3);
            localStringBuffer.append("=");
            str4 = (String)paramMap.get(str2);
            if (str4 != null)
              break label141;
          }
          label141: for (String str5 = null; ; str5 = URLEncoder.encode(str4))
          {
            localStringBuffer.append(str5);
            break;
            str3 = URLEncoder.encode(str2);
            break label85;
          }
        }
        str1 = localStringBuffer.substring("&".length());
        localStringBuffer.setLength(0);
        ELog.debug("Utils.parseMapToString() end");
      }
    }
  }

  public static boolean a(Date paramDate1, Date paramDate2)
  {
    boolean bool1 = false;
    if ((paramDate1 == null) || (paramDate2 == null))
      ELog.error("date1 == null || date2 == null error return false");
    while (true)
    {
      return bool1;
      boolean bool2 = b.format(paramDate1).equals(b.format(paramDate2));
      bool1 = false;
      if (bool2)
        bool1 = true;
    }
  }

  // ERROR //
  public static byte[] a(Object paramObject)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: ldc_w 287
    //   5: invokestatic 62	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   8: aload_0
    //   9: ifnull +13 -> 22
    //   12: ldc_w 289
    //   15: aload_0
    //   16: invokevirtual 294	java/lang/Class:isInstance	(Ljava/lang/Object;)Z
    //   19: ifne +11 -> 30
    //   22: ldc_w 296
    //   25: invokestatic 67	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   28: aload_1
    //   29: areturn
    //   30: new 298	java/io/ByteArrayOutputStream
    //   33: dup
    //   34: invokespecial 299	java/io/ByteArrayOutputStream:<init>	()V
    //   37: astore_2
    //   38: new 301	java/io/ObjectOutputStream
    //   41: dup
    //   42: aload_2
    //   43: invokespecial 304	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   46: astore_3
    //   47: aload_3
    //   48: aload_0
    //   49: invokevirtual 308	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   52: aload_3
    //   53: invokevirtual 311	java/io/ObjectOutputStream:flush	()V
    //   56: aload_2
    //   57: invokevirtual 314	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   60: astore 10
    //   62: aload 10
    //   64: astore_1
    //   65: aload_3
    //   66: invokevirtual 315	java/io/ObjectOutputStream:close	()V
    //   69: aload_2
    //   70: invokevirtual 316	java/io/ByteArrayOutputStream:close	()V
    //   73: ldc_w 318
    //   76: invokestatic 62	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   79: goto -51 -> 28
    //   82: astore 11
    //   84: aload 11
    //   86: invokevirtual 173	java/io/IOException:printStackTrace	()V
    //   89: goto -20 -> 69
    //   92: astore 12
    //   94: aload 12
    //   96: invokevirtual 173	java/io/IOException:printStackTrace	()V
    //   99: goto -26 -> 73
    //   102: astore 4
    //   104: aconst_null
    //   105: astore_3
    //   106: aload 4
    //   108: invokevirtual 148	java/lang/Throwable:printStackTrace	()V
    //   111: aload 4
    //   113: invokevirtual 176	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   116: invokestatic 67	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   119: aload_3
    //   120: ifnull +7 -> 127
    //   123: aload_3
    //   124: invokevirtual 315	java/io/ObjectOutputStream:close	()V
    //   127: aload_2
    //   128: invokevirtual 316	java/io/ByteArrayOutputStream:close	()V
    //   131: ldc_w 318
    //   134: invokestatic 62	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   137: aconst_null
    //   138: astore_1
    //   139: goto -111 -> 28
    //   142: astore 9
    //   144: aload 9
    //   146: invokevirtual 173	java/io/IOException:printStackTrace	()V
    //   149: goto -22 -> 127
    //   152: astore 8
    //   154: aload 8
    //   156: invokevirtual 173	java/io/IOException:printStackTrace	()V
    //   159: goto -28 -> 131
    //   162: astore 13
    //   164: aconst_null
    //   165: astore_3
    //   166: aload 13
    //   168: astore 5
    //   170: aload_3
    //   171: ifnull +7 -> 178
    //   174: aload_3
    //   175: invokevirtual 315	java/io/ObjectOutputStream:close	()V
    //   178: aload_2
    //   179: invokevirtual 316	java/io/ByteArrayOutputStream:close	()V
    //   182: ldc_w 318
    //   185: invokestatic 62	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   188: aload 5
    //   190: athrow
    //   191: astore 7
    //   193: aload 7
    //   195: invokevirtual 173	java/io/IOException:printStackTrace	()V
    //   198: goto -20 -> 178
    //   201: astore 6
    //   203: aload 6
    //   205: invokevirtual 173	java/io/IOException:printStackTrace	()V
    //   208: goto -26 -> 182
    //   211: astore 5
    //   213: goto -43 -> 170
    //   216: astore 4
    //   218: goto -112 -> 106
    //
    // Exception table:
    //   from	to	target	type
    //   65	69	82	java/io/IOException
    //   69	73	92	java/io/IOException
    //   38	47	102	java/lang/Throwable
    //   123	127	142	java/io/IOException
    //   127	131	152	java/io/IOException
    //   38	47	162	finally
    //   174	178	191	java/io/IOException
    //   178	182	201	java/io/IOException
    //   47	62	211	finally
    //   106	119	211	finally
    //   47	62	216	java/lang/Throwable
  }

  // ERROR //
  public static byte[] a(String paramString1, int paramInt, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: ifnonnull +5 -> 8
    //   6: aload_3
    //   7: areturn
    //   8: new 321	java/io/File
    //   11: dup
    //   12: aload_0
    //   13: invokespecial 322	java/io/File:<init>	(Ljava/lang/String;)V
    //   16: astore 4
    //   18: aload 4
    //   20: invokevirtual 325	java/io/File:exists	()Z
    //   23: istore 5
    //   25: aconst_null
    //   26: astore_3
    //   27: iload 5
    //   29: ifeq -23 -> 6
    //   32: aload 4
    //   34: invokevirtual 328	java/io/File:canRead	()Z
    //   37: istore 6
    //   39: aconst_null
    //   40: astore_3
    //   41: iload 6
    //   43: ifeq -37 -> 6
    //   46: sipush 10000
    //   49: newarray byte
    //   51: astore 13
    //   53: new 330	java/io/FileInputStream
    //   56: dup
    //   57: aload 4
    //   59: invokespecial 333	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   62: astore 8
    //   64: aload_2
    //   65: invokestatic 203	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   68: astore 14
    //   70: aload 8
    //   72: aload 13
    //   74: invokevirtual 337	java/io/FileInputStream:read	([B)I
    //   77: istore 15
    //   79: iload 15
    //   81: ifle +52 -> 133
    //   84: aload 14
    //   86: aload 13
    //   88: iconst_0
    //   89: iload 15
    //   91: invokevirtual 340	java/security/MessageDigest:update	([BII)V
    //   94: goto -24 -> 70
    //   97: astore 7
    //   99: aload 7
    //   101: invokevirtual 148	java/lang/Throwable:printStackTrace	()V
    //   104: aconst_null
    //   105: astore_3
    //   106: aload 8
    //   108: ifnull -102 -> 6
    //   111: aload 8
    //   113: invokevirtual 341	java/io/FileInputStream:close	()V
    //   116: aconst_null
    //   117: astore_3
    //   118: goto -112 -> 6
    //   121: astore 11
    //   123: aload 11
    //   125: invokevirtual 173	java/io/IOException:printStackTrace	()V
    //   128: aconst_null
    //   129: astore_3
    //   130: goto -124 -> 6
    //   133: aload 14
    //   135: invokevirtual 209	java/security/MessageDigest:digest	()[B
    //   138: astore 16
    //   140: aload 16
    //   142: astore_3
    //   143: aload 8
    //   145: invokevirtual 341	java/io/FileInputStream:close	()V
    //   148: goto -142 -> 6
    //   151: astore 17
    //   153: aload 17
    //   155: invokevirtual 173	java/io/IOException:printStackTrace	()V
    //   158: goto -152 -> 6
    //   161: astore 12
    //   163: aconst_null
    //   164: astore 8
    //   166: aload 12
    //   168: astore 9
    //   170: aload 8
    //   172: ifnull +8 -> 180
    //   175: aload 8
    //   177: invokevirtual 341	java/io/FileInputStream:close	()V
    //   180: aload 9
    //   182: athrow
    //   183: astore 10
    //   185: aload 10
    //   187: invokevirtual 173	java/io/IOException:printStackTrace	()V
    //   190: goto -10 -> 180
    //   193: astore 9
    //   195: goto -25 -> 170
    //   198: astore 7
    //   200: aconst_null
    //   201: astore 8
    //   203: goto -104 -> 99
    //
    // Exception table:
    //   from	to	target	type
    //   64	94	97	java/lang/Throwable
    //   133	140	97	java/lang/Throwable
    //   111	116	121	java/io/IOException
    //   143	148	151	java/io/IOException
    //   46	64	161	finally
    //   175	180	183	java/io/IOException
    //   64	94	193	finally
    //   99	104	193	finally
    //   133	140	193	finally
    //   46	64	198	java/lang/Throwable
  }

  private static byte[] a(byte[] paramArrayOfByte, int paramInt)
  {
    ELog.debug("RQDUploadImp.zipDatas() start ");
    if ((paramArrayOfByte == null) || (paramInt == -1));
    while (true)
    {
      return paramArrayOfByte;
      ELog.debug("zipType: " + paramInt + " dataslength: " + paramArrayOfByte.length);
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
          ELog.debug("RQDUploadImp.zipDatas() end");
        }
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        ELog.error("uncompress wrong" + localThrowable.toString());
        paramArrayOfByte = null;
      }
    }
  }

  public static byte[] a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, String paramString)
  {
    ELog.debug("Utils.encodeDatasByZipAndEncry() start");
    Object localObject = null;
    if (paramArrayOfByte == null);
    while (true)
    {
      return localObject;
      try
      {
        byte[] arrayOfByte = a(a(paramArrayOfByte, paramInt1), paramInt2, paramString);
        ELog.debug("Utils.encodeDatasByZipAndEncry() end");
        localObject = arrayOfByte;
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        ELog.error("zip or encry fail!");
        localObject = null;
      }
    }
  }

  private static byte[] a(byte[] paramArrayOfByte, int paramInt, String paramString)
  {
    ELog.debug("RQDUploadImp.encryDatas() start ");
    if ((paramArrayOfByte == null) || (paramInt == -1));
    while (true)
    {
      return paramArrayOfByte;
      ELog.debug("encryType: " + paramInt + " dataslength: " + paramArrayOfByte.length + " key: " + paramString);
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
          ELog.debug("RQDUploadImp.encryDatas() end ");
        }
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        ELog.error("encry wrong" + localThrowable.toString());
        paramArrayOfByte = null;
      }
    }
  }

  public static long b()
  {
    try
    {
      String str = b.format(new Date());
      long l2 = b.parse(str).getTime();
      l1 = l2;
      return l1;
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        localThrowable.printStackTrace();
        long l1 = -1L;
      }
    }
  }

  private static byte[] b(byte[] paramArrayOfByte, int paramInt)
  {
    ELog.debug("RQDUploadImp.unzipDatas() start ");
    if ((paramArrayOfByte == null) || (paramInt == -1));
    while (true)
    {
      return paramArrayOfByte;
      ELog.debug("zipType: " + paramInt + " dataslength: " + paramArrayOfByte.length);
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
          ELog.debug("RQDUploadImp.unzipDatas() end");
        }
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        ELog.error("uncompress wrong" + localThrowable.toString());
        paramArrayOfByte = null;
      }
    }
  }

  public static byte[] b(byte[] paramArrayOfByte, int paramInt1, int paramInt2, String paramString)
  {
    ELog.debug("Utils.decodeDatasByUnZipAndUnEncry() start");
    try
    {
      arrayOfByte = b(b(paramArrayOfByte, paramInt2, paramString), paramInt1);
      ELog.debug("Utils.decodeDatasByUnZipAndUnEncry() end");
      return arrayOfByte;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        ELog.error("unzip or unencry fail!");
        byte[] arrayOfByte = null;
      }
    }
  }

  private static byte[] b(byte[] paramArrayOfByte, int paramInt, String paramString)
  {
    ELog.debug("RQDUploadImp.unencryDatas() start ");
    if ((paramArrayOfByte == null) || (paramInt == -1));
    while (true)
    {
      return paramArrayOfByte;
      ELog.debug("encryType: " + paramInt + " dataslength: " + paramArrayOfByte.length + " key: " + paramString);
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
          ELog.debug("RQDUploadImp.unencryDatas() end ");
        }
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        ELog.error("unencry wrong" + localThrowable.toString());
        paramArrayOfByte = null;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.common.g
 * JD-Core Version:    0.6.2
 */