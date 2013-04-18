package com.keniu.security.a;

import java.security.MessageDigest;

public final class r
{
  // ERROR //
  private static String a(java.io.File paramFile)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 20	java/io/File:isFile	()Z
    //   4: ifne +9 -> 13
    //   7: aconst_null
    //   8: astore 7
    //   10: aload 7
    //   12: areturn
    //   13: sipush 1024
    //   16: newarray byte
    //   18: astore_1
    //   19: ldc 22
    //   21: invokestatic 28	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   24: astore 8
    //   26: new 30	java/io/FileInputStream
    //   29: dup
    //   30: aload_0
    //   31: invokespecial 33	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   34: astore 9
    //   36: aload 9
    //   38: aload_1
    //   39: iconst_0
    //   40: sipush 1024
    //   43: invokevirtual 37	java/io/FileInputStream:read	([BII)I
    //   46: istore 10
    //   48: iload 10
    //   50: iconst_m1
    //   51: if_icmpeq +33 -> 84
    //   54: aload 8
    //   56: aload_1
    //   57: iconst_0
    //   58: iload 10
    //   60: invokevirtual 41	java/security/MessageDigest:update	([BII)V
    //   63: goto -27 -> 36
    //   66: astore_2
    //   67: aload 9
    //   69: astore_3
    //   70: aload_2
    //   71: invokevirtual 44	java/lang/Exception:printStackTrace	()V
    //   74: aload_3
    //   75: invokevirtual 47	java/io/FileInputStream:close	()V
    //   78: aconst_null
    //   79: astore 7
    //   81: goto -71 -> 10
    //   84: aload 9
    //   86: invokevirtual 47	java/io/FileInputStream:close	()V
    //   89: aload 9
    //   91: invokevirtual 47	java/io/FileInputStream:close	()V
    //   94: new 49	java/math/BigInteger
    //   97: dup
    //   98: iconst_1
    //   99: aload 8
    //   101: invokevirtual 53	java/security/MessageDigest:digest	()[B
    //   104: invokespecial 56	java/math/BigInteger:<init>	(I[B)V
    //   107: bipush 16
    //   109: invokevirtual 60	java/math/BigInteger:toString	(I)Ljava/lang/String;
    //   112: astore 7
    //   114: goto -104 -> 10
    //   117: astore 11
    //   119: aload 11
    //   121: invokevirtual 61	java/io/IOException:printStackTrace	()V
    //   124: goto -30 -> 94
    //   127: astore 6
    //   129: aload 6
    //   131: invokevirtual 61	java/io/IOException:printStackTrace	()V
    //   134: goto -56 -> 78
    //   137: astore 4
    //   139: aconst_null
    //   140: astore_3
    //   141: aload_3
    //   142: invokevirtual 47	java/io/FileInputStream:close	()V
    //   145: aload 4
    //   147: athrow
    //   148: astore 5
    //   150: aload 5
    //   152: invokevirtual 61	java/io/IOException:printStackTrace	()V
    //   155: goto -10 -> 145
    //   158: astore 4
    //   160: aload 9
    //   162: astore_3
    //   163: goto -22 -> 141
    //   166: astore 4
    //   168: goto -27 -> 141
    //   171: astore_2
    //   172: aconst_null
    //   173: astore_3
    //   174: goto -104 -> 70
    //
    // Exception table:
    //   from	to	target	type
    //   36	63	66	java/lang/Exception
    //   84	89	66	java/lang/Exception
    //   89	94	117	java/io/IOException
    //   74	78	127	java/io/IOException
    //   19	36	137	finally
    //   141	145	148	java/io/IOException
    //   36	63	158	finally
    //   84	89	158	finally
    //   70	74	166	finally
    //   19	36	171	java/lang/Exception
  }

  public static String a(String paramString)
  {
    try
    {
      StringBuffer localStringBuffer = new StringBuffer();
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramString.getBytes());
      byte[] arrayOfByte = localMessageDigest.digest();
      for (int i = 0; i < arrayOfByte.length; i++)
      {
        int j = arrayOfByte[i];
        if (j < 0)
          j += 256;
        if (j < 16)
          localStringBuffer.append("0");
        localStringBuffer.append(Integer.toHexString(j));
      }
      String str2 = localStringBuffer.toString();
      str1 = str2;
      return str1;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        String str1 = null;
      }
    }
  }

  private static String b(String paramString)
  {
    return a(a(paramString));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.a.r
 * JD-Core Version:    0.6.2
 */