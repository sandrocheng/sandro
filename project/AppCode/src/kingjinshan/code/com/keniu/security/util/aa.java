package com.keniu.security.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class aa
{
  public static String a = "d41d8cd98f00b204e9800998ecf8427e";

  public static String a(String paramString)
  {
    return b(paramString).substring(3, 11);
  }

  public static boolean a(String paramString1, String paramString2)
  {
    return paramString1.trim().toLowerCase().equals(paramString2.trim().toLowerCase());
  }

  public static String b(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.reset();
      byte[] arrayOfByte1 = paramString.getBytes();
      localMessageDigest.update(arrayOfByte1, 0, arrayOfByte1.length);
      byte[] arrayOfByte2 = localMessageDigest.digest();
      for (int i = 0; i < arrayOfByte2.length; i++)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Byte.valueOf(arrayOfByte2[i]);
        localStringBuffer.append(String.format("%02x", arrayOfObject));
      }
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      localNoSuchAlgorithmException.printStackTrace();
    }
    return localStringBuffer.toString().toLowerCase();
  }

  // ERROR //
  private static String c(String paramString)
  {
    // Byte code:
    //   0: new 41	java/lang/StringBuffer
    //   3: dup
    //   4: invokespecial 42	java/lang/StringBuffer:<init>	()V
    //   7: astore_1
    //   8: ldc 44
    //   10: invokestatic 50	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   13: astore_3
    //   14: aload_3
    //   15: invokevirtual 53	java/security/MessageDigest:reset	()V
    //   18: aconst_null
    //   19: astore 4
    //   21: new 91	java/io/FileInputStream
    //   24: dup
    //   25: aload_0
    //   26: invokespecial 94	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   29: astore 5
    //   31: sipush 1024
    //   34: newarray byte
    //   36: astore 14
    //   38: aload 5
    //   40: aload 14
    //   42: invokevirtual 98	java/io/FileInputStream:read	([B)I
    //   45: istore 15
    //   47: iload 15
    //   49: iconst_m1
    //   50: if_icmpeq +28 -> 78
    //   53: aload_3
    //   54: aload 14
    //   56: iconst_0
    //   57: iload 15
    //   59: invokevirtual 61	java/security/MessageDigest:update	([BII)V
    //   62: aload 5
    //   64: aload 14
    //   66: invokevirtual 98	java/io/FileInputStream:read	([B)I
    //   69: istore 17
    //   71: iload 17
    //   73: istore 15
    //   75: goto -28 -> 47
    //   78: aload 5
    //   80: invokevirtual 101	java/io/FileInputStream:close	()V
    //   83: aload_3
    //   84: invokevirtual 64	java/security/MessageDigest:digest	()[B
    //   87: astore 10
    //   89: iconst_0
    //   90: istore 11
    //   92: iload 11
    //   94: aload 10
    //   96: arraylength
    //   97: if_icmpge +54 -> 151
    //   100: iconst_1
    //   101: anewarray 4	java/lang/Object
    //   104: astore 12
    //   106: aload 12
    //   108: iconst_0
    //   109: aload 10
    //   111: iload 11
    //   113: baload
    //   114: invokestatic 70	java/lang/Byte:valueOf	(B)Ljava/lang/Byte;
    //   117: aastore
    //   118: aload_1
    //   119: ldc 72
    //   121: aload 12
    //   123: invokestatic 76	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   126: invokevirtual 80	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   129: pop
    //   130: iinc 11 1
    //   133: goto -41 -> 92
    //   136: astore 16
    //   138: aload 16
    //   140: invokevirtual 102	java/io/IOException:printStackTrace	()V
    //   143: goto -60 -> 83
    //   146: astore_2
    //   147: aload_2
    //   148: invokevirtual 83	java/security/NoSuchAlgorithmException:printStackTrace	()V
    //   151: aload_1
    //   152: invokevirtual 86	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   155: invokevirtual 33	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   158: areturn
    //   159: astore 18
    //   161: aconst_null
    //   162: astore 5
    //   164: aload 18
    //   166: astore 6
    //   168: aload 6
    //   170: invokevirtual 102	java/io/IOException:printStackTrace	()V
    //   173: aload 5
    //   175: ifnull -92 -> 83
    //   178: aload 5
    //   180: invokevirtual 101	java/io/FileInputStream:close	()V
    //   183: goto -100 -> 83
    //   186: astore 9
    //   188: aload 9
    //   190: invokevirtual 102	java/io/IOException:printStackTrace	()V
    //   193: goto -110 -> 83
    //   196: astore 7
    //   198: aload 4
    //   200: ifnull +8 -> 208
    //   203: aload 4
    //   205: invokevirtual 101	java/io/FileInputStream:close	()V
    //   208: aload 7
    //   210: athrow
    //   211: astore 8
    //   213: aload 8
    //   215: invokevirtual 102	java/io/IOException:printStackTrace	()V
    //   218: goto -10 -> 208
    //   221: astore 7
    //   223: aload 5
    //   225: astore 4
    //   227: goto -29 -> 198
    //   230: astore 6
    //   232: goto -64 -> 168
    //
    // Exception table:
    //   from	to	target	type
    //   78	83	136	java/io/IOException
    //   8	18	146	java/security/NoSuchAlgorithmException
    //   78	83	146	java/security/NoSuchAlgorithmException
    //   83	143	146	java/security/NoSuchAlgorithmException
    //   178	183	146	java/security/NoSuchAlgorithmException
    //   188	193	146	java/security/NoSuchAlgorithmException
    //   203	208	146	java/security/NoSuchAlgorithmException
    //   208	218	146	java/security/NoSuchAlgorithmException
    //   21	31	159	java/io/IOException
    //   178	183	186	java/io/IOException
    //   21	31	196	finally
    //   203	208	211	java/io/IOException
    //   31	71	221	finally
    //   168	173	221	finally
    //   31	71	230	java/io/IOException
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.aa
 * JD-Core Version:    0.6.2
 */