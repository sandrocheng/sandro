package com.tencent.tmsecure.utils;

import bzg;
import bzm;
import bzn;

public final class Log
{
  private static boolean a = true;
  private static bzg b = new bzm();

  public static void e(String paramString, Object paramObject)
  {
    if (paramObject != null)
    {
      if (!(paramObject instanceof Exception))
        break label19;
      ((Exception)paramObject).printStackTrace();
    }
    while (true)
    {
      return;
      label19: paramObject.toString();
    }
  }

  public static void f(String paramString, Object paramObject)
  {
    if (paramObject != null)
      b.a(paramString, paramObject.toString());
  }

  public static void i(String paramString, Object paramObject)
  {
    if (paramObject != null)
      paramObject.toString();
  }

  public static boolean isEnable()
  {
    return a;
  }

  public static void setLogEnable(boolean paramBoolean)
  {
    a = paramBoolean;
    if (paramBoolean);
    for (b = new bzm(); ; b = new bzn())
      return;
  }

  // ERROR //
  public static void writeLog(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: ldc 53
    //   4: invokestatic 58	android/os/Environment:getExternalStorageState	()Ljava/lang/String;
    //   7: invokevirtual 64	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   10: istore 10
    //   12: aconst_null
    //   13: astore_1
    //   14: iload 10
    //   16: ifeq +210 -> 226
    //   19: new 66	java/io/File
    //   22: dup
    //   23: ldc 68
    //   25: invokespecial 70	java/io/File:<init>	(Ljava/lang/String;)V
    //   28: astore 11
    //   30: aload 11
    //   32: invokevirtual 73	java/io/File:exists	()Z
    //   35: istore 12
    //   37: aconst_null
    //   38: astore_1
    //   39: iload 12
    //   41: ifne +9 -> 50
    //   44: aload 11
    //   46: invokevirtual 76	java/io/File:createNewFile	()Z
    //   49: pop
    //   50: new 78	java/io/FileOutputStream
    //   53: dup
    //   54: aload 11
    //   56: iconst_1
    //   57: invokespecial 81	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   60: astore 13
    //   62: aload 13
    //   64: aload_0
    //   65: invokevirtual 85	java/lang/String:getBytes	()[B
    //   68: invokevirtual 89	java/io/FileOutputStream:write	([B)V
    //   71: aload 13
    //   73: ifnull +8 -> 81
    //   76: aload 13
    //   78: invokevirtual 92	java/io/FileOutputStream:close	()V
    //   81: return
    //   82: astore 8
    //   84: aload 8
    //   86: invokevirtual 93	java/io/FileNotFoundException:printStackTrace	()V
    //   89: aload_1
    //   90: ifnull -9 -> 81
    //   93: aload_1
    //   94: invokevirtual 92	java/io/FileOutputStream:close	()V
    //   97: goto -16 -> 81
    //   100: astore 9
    //   102: aload 9
    //   104: invokevirtual 94	java/io/IOException:printStackTrace	()V
    //   107: goto -26 -> 81
    //   110: astore 6
    //   112: aload 6
    //   114: invokevirtual 94	java/io/IOException:printStackTrace	()V
    //   117: aload_1
    //   118: ifnull -37 -> 81
    //   121: aload_1
    //   122: invokevirtual 92	java/io/FileOutputStream:close	()V
    //   125: goto -44 -> 81
    //   128: astore 7
    //   130: aload 7
    //   132: invokevirtual 94	java/io/IOException:printStackTrace	()V
    //   135: goto -54 -> 81
    //   138: astore 4
    //   140: aload 4
    //   142: invokevirtual 27	java/lang/Exception:printStackTrace	()V
    //   145: aload_1
    //   146: ifnull -65 -> 81
    //   149: aload_1
    //   150: invokevirtual 92	java/io/FileOutputStream:close	()V
    //   153: goto -72 -> 81
    //   156: astore 5
    //   158: aload 5
    //   160: invokevirtual 94	java/io/IOException:printStackTrace	()V
    //   163: goto -82 -> 81
    //   166: astore_2
    //   167: aload_1
    //   168: ifnull +7 -> 175
    //   171: aload_1
    //   172: invokevirtual 92	java/io/FileOutputStream:close	()V
    //   175: aload_2
    //   176: athrow
    //   177: astore_3
    //   178: aload_3
    //   179: invokevirtual 94	java/io/IOException:printStackTrace	()V
    //   182: goto -7 -> 175
    //   185: astore 14
    //   187: aload 14
    //   189: invokevirtual 94	java/io/IOException:printStackTrace	()V
    //   192: goto -111 -> 81
    //   195: astore_2
    //   196: aload 13
    //   198: astore_1
    //   199: goto -32 -> 167
    //   202: astore 4
    //   204: aload 13
    //   206: astore_1
    //   207: goto -67 -> 140
    //   210: astore 6
    //   212: aload 13
    //   214: astore_1
    //   215: goto -103 -> 112
    //   218: astore 8
    //   220: aload 13
    //   222: astore_1
    //   223: goto -139 -> 84
    //   226: aconst_null
    //   227: astore 13
    //   229: goto -158 -> 71
    //
    // Exception table:
    //   from	to	target	type
    //   2	62	82	java/io/FileNotFoundException
    //   93	97	100	java/io/IOException
    //   2	62	110	java/io/IOException
    //   121	125	128	java/io/IOException
    //   2	62	138	java/lang/Exception
    //   149	153	156	java/io/IOException
    //   2	62	166	finally
    //   84	89	166	finally
    //   112	117	166	finally
    //   140	145	166	finally
    //   171	175	177	java/io/IOException
    //   76	81	185	java/io/IOException
    //   62	71	195	finally
    //   62	71	202	java/lang/Exception
    //   62	71	210	java/io/IOException
    //   62	71	218	java/io/FileNotFoundException
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.utils.Log
 * JD-Core Version:    0.6.2
 */