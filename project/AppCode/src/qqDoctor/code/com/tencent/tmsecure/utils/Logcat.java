package com.tencent.tmsecure.utils;

import java.io.File;

public final class Logcat
{
  public static void clear()
  {
    ScriptHelper.runScript(new String[] { "logcat -c" });
  }

  // ERROR //
  public static java.util.ArrayList<String> filter(String paramString1, String paramString2, String[] paramArrayOfString)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: new 29	java/lang/StringBuilder
    //   6: dup
    //   7: invokespecial 30	java/lang/StringBuilder:<init>	()V
    //   10: astore_3
    //   11: new 32	java/io/File
    //   14: dup
    //   15: invokestatic 38	com/tencent/tmsecure/common/TMSApplication:getApplicaionContext	()Landroid/content/Context;
    //   18: invokevirtual 44	android/content/Context:getCacheDir	()Ljava/io/File;
    //   21: ldc 46
    //   23: invokespecial 49	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   26: astore 4
    //   28: aload 4
    //   30: invokestatic 55	btd:a	(Ljava/io/File;)V
    //   33: iconst_2
    //   34: anewarray 11	java/lang/String
    //   37: astore 6
    //   39: iconst_4
    //   40: anewarray 4	java/lang/Object
    //   43: astore 7
    //   45: aload 7
    //   47: iconst_0
    //   48: ldc 46
    //   50: aastore
    //   51: aload_1
    //   52: ifnonnull +6 -> 58
    //   55: ldc 57
    //   57: astore_1
    //   58: aload 7
    //   60: iconst_1
    //   61: aload_1
    //   62: aastore
    //   63: aload 7
    //   65: iconst_2
    //   66: aload 4
    //   68: invokevirtual 61	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   71: aastore
    //   72: aload 7
    //   74: iconst_3
    //   75: aload_0
    //   76: aastore
    //   77: aload 6
    //   79: iconst_0
    //   80: ldc 63
    //   82: aload 7
    //   84: invokestatic 67	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   87: aastore
    //   88: aload 6
    //   90: iconst_1
    //   91: new 29	java/lang/StringBuilder
    //   94: dup
    //   95: ldc 69
    //   97: invokespecial 72	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   100: aload 4
    //   102: invokevirtual 61	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   105: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: invokevirtual 79	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   111: aastore
    //   112: aload_3
    //   113: aload 6
    //   115: invokestatic 82	com/tencent/tmsecure/utils/ScriptHelper:runScript	(Ljava/lang/StringBuilder;[Ljava/lang/String;)I
    //   118: pop
    //   119: ldc2_w 83
    //   122: invokestatic 90	java/lang/Thread:sleep	(J)V
    //   125: new 92	java/util/ArrayList
    //   128: dup
    //   129: invokespecial 93	java/util/ArrayList:<init>	()V
    //   132: astore 10
    //   134: aload 4
    //   136: invokevirtual 97	java/io/File:exists	()Z
    //   139: ifeq +79 -> 218
    //   142: aload 4
    //   144: invokevirtual 100	java/io/File:canRead	()Z
    //   147: ifeq +71 -> 218
    //   150: new 92	java/util/ArrayList
    //   153: dup
    //   154: invokespecial 93	java/util/ArrayList:<init>	()V
    //   157: astore 11
    //   159: aconst_null
    //   160: astore 12
    //   162: new 102	java/io/DataInputStream
    //   165: dup
    //   166: new 104	java/io/FileInputStream
    //   169: dup
    //   170: aload 4
    //   172: invokespecial 106	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   175: invokespecial 109	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   178: astore 13
    //   180: aload 13
    //   182: invokevirtual 112	java/io/DataInputStream:readLine	()Ljava/lang/String;
    //   185: astore 26
    //   187: aload 26
    //   189: ifnonnull +53 -> 242
    //   192: aload 13
    //   194: invokevirtual 115	java/io/DataInputStream:close	()V
    //   197: aload 11
    //   199: invokevirtual 119	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   202: astore 18
    //   204: aload 18
    //   206: invokeinterface 124 1 0
    //   211: istore 19
    //   213: iload 19
    //   215: ifne +133 -> 348
    //   218: ldc 2
    //   220: monitorexit
    //   221: aload 10
    //   223: areturn
    //   224: astore 9
    //   226: aload 9
    //   228: invokevirtual 127	java/lang/InterruptedException:printStackTrace	()V
    //   231: goto -106 -> 125
    //   234: astore 5
    //   236: ldc 2
    //   238: monitorexit
    //   239: aload 5
    //   241: athrow
    //   242: aload 11
    //   244: aload 26
    //   246: invokevirtual 131	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   249: pop
    //   250: goto -70 -> 180
    //   253: astore 24
    //   255: aload 24
    //   257: invokevirtual 132	java/io/FileNotFoundException:printStackTrace	()V
    //   260: aload 13
    //   262: ifnull -65 -> 197
    //   265: aload 13
    //   267: invokevirtual 115	java/io/DataInputStream:close	()V
    //   270: goto -73 -> 197
    //   273: astore 25
    //   275: aload 25
    //   277: invokevirtual 133	java/io/IOException:printStackTrace	()V
    //   280: goto -83 -> 197
    //   283: astore 14
    //   285: aload 14
    //   287: invokevirtual 133	java/io/IOException:printStackTrace	()V
    //   290: aload 12
    //   292: ifnull -95 -> 197
    //   295: aload 12
    //   297: invokevirtual 115	java/io/DataInputStream:close	()V
    //   300: goto -103 -> 197
    //   303: astore 17
    //   305: aload 17
    //   307: invokevirtual 133	java/io/IOException:printStackTrace	()V
    //   310: goto -113 -> 197
    //   313: astore 15
    //   315: aload 12
    //   317: ifnull +8 -> 325
    //   320: aload 12
    //   322: invokevirtual 115	java/io/DataInputStream:close	()V
    //   325: aload 15
    //   327: athrow
    //   328: astore 16
    //   330: aload 16
    //   332: invokevirtual 133	java/io/IOException:printStackTrace	()V
    //   335: goto -10 -> 325
    //   338: astore 28
    //   340: aload 28
    //   342: invokevirtual 133	java/io/IOException:printStackTrace	()V
    //   345: goto -148 -> 197
    //   348: aload 18
    //   350: invokeinterface 137 1 0
    //   355: checkcast 11	java/lang/String
    //   358: astore 20
    //   360: aload_2
    //   361: arraylength
    //   362: istore 21
    //   364: iconst_0
    //   365: istore 22
    //   367: iload 22
    //   369: iload 21
    //   371: if_icmpge -167 -> 204
    //   374: aload 20
    //   376: aload_2
    //   377: iload 22
    //   379: aaload
    //   380: invokevirtual 141	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   383: ifeq +14 -> 397
    //   386: aload 10
    //   388: aload 20
    //   390: invokevirtual 131	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   393: pop
    //   394: goto -190 -> 204
    //   397: iinc 22 1
    //   400: goto -33 -> 367
    //   403: astore 15
    //   405: aload 13
    //   407: astore 12
    //   409: goto -94 -> 315
    //   412: astore 14
    //   414: aload 13
    //   416: astore 12
    //   418: goto -133 -> 285
    //   421: astore 24
    //   423: aconst_null
    //   424: astore 13
    //   426: goto -171 -> 255
    //
    // Exception table:
    //   from	to	target	type
    //   119	125	224	java/lang/InterruptedException
    //   3	119	234	finally
    //   119	125	234	finally
    //   125	159	234	finally
    //   192	197	234	finally
    //   197	213	234	finally
    //   226	231	234	finally
    //   265	270	234	finally
    //   275	280	234	finally
    //   295	300	234	finally
    //   305	310	234	finally
    //   320	325	234	finally
    //   325	394	234	finally
    //   180	187	253	java/io/FileNotFoundException
    //   242	250	253	java/io/FileNotFoundException
    //   265	270	273	java/io/IOException
    //   162	180	283	java/io/IOException
    //   295	300	303	java/io/IOException
    //   162	180	313	finally
    //   285	290	313	finally
    //   320	325	328	java/io/IOException
    //   192	197	338	java/io/IOException
    //   180	187	403	finally
    //   242	250	403	finally
    //   255	260	403	finally
    //   180	187	412	java/io/IOException
    //   242	250	412	java/io/IOException
    //   162	180	421	java/io/FileNotFoundException
  }

  public static void redirect(File paramFile)
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ("logcat -f " + paramFile.toString());
    ScriptHelper.runScript(arrayOfString);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.utils.Logcat
 * JD-Core Version:    0.6.2
 */