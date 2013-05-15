package com.avast.android.generic.util;

import java.io.Closeable;
import java.io.DataInputStream;

public class h
{
  private static int a(DataInputStream paramDataInputStream1, DataInputStream paramDataInputStream2, StringBuilder paramStringBuilder1, StringBuilder paramStringBuilder2)
  {
    int i = -1;
    int j = paramDataInputStream1.available();
    if (j > 0)
    {
      byte[] arrayOfByte2 = new byte[j];
      i = paramDataInputStream1.read(arrayOfByte2, 0, j);
      String str = new String(arrayOfByte2);
      if (str.contains("denied"))
        throw new Exception("Permission denied");
      paramStringBuilder1.append(str);
    }
    t.a("AvastGeneric", "Read exactly " + i + " bytes from result stream");
    int k = paramDataInputStream2.available();
    if (k > 0)
    {
      byte[] arrayOfByte1 = new byte[k];
      paramDataInputStream2.read(arrayOfByte1, 0, k);
      paramStringBuilder2.append(new String(arrayOfByte1).replace("\r", "").replace("\n", "").trim());
    }
    t.a("AvastGeneric", "Read approx. " + k + " bytes from error stream");
    if (paramStringBuilder2.length() > 0)
    {
      t.a("AvastGeneric", "Errors: " + paramStringBuilder2.toString());
      throw new Exception(paramStringBuilder2.toString());
    }
    return i;
  }

  public static int a(String paramString, StringBuilder paramStringBuilder)
  {
    t.a("AvastGeneric", "Executing " + paramString + " as normal user");
    Process localProcess = Runtime.getRuntime().exec(paramString);
    try
    {
      localDataInputStream = new DataInputStream(localProcess.getInputStream());
      try
      {
        localProcess.exitValue();
        int i = localDataInputStream.available();
        if (i > 0)
        {
          byte[] arrayOfByte = new byte[i];
          localDataInputStream.read(arrayOfByte, 0, i);
          paramStringBuilder.append(new String(arrayOfByte));
        }
        af.a(new Closeable[] { localDataInputStream });
        return localProcess.exitValue();
      }
      catch (IllegalThreadStateException localIllegalThreadStateException)
      {
        while (true)
        {
          localIllegalThreadStateException = localIllegalThreadStateException;
          localProcess.waitFor();
        }
      }
      finally
      {
      }
      af.a(new Closeable[] { localDataInputStream });
      throw localObject1;
    }
    finally
    {
      DataInputStream localDataInputStream = null;
    }
  }

  public static String a(String paramString)
  {
    return a(paramString, 30);
  }

  // ERROR //
  public static String a(String paramString, int paramInt)
  {
    // Byte code:
    //   0: invokestatic 97	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   3: ldc 131
    //   5: invokevirtual 101	java/lang/Runtime:exec	(Ljava/lang/String;)Ljava/lang/Process;
    //   8: astore 5
    //   10: new 37	java/lang/StringBuilder
    //   13: dup
    //   14: invokespecial 46	java/lang/StringBuilder:<init>	()V
    //   17: astore 6
    //   19: new 37	java/lang/StringBuilder
    //   22: dup
    //   23: invokespecial 46	java/lang/StringBuilder:<init>	()V
    //   26: astore 7
    //   28: aconst_null
    //   29: astore 8
    //   31: new 133	java/io/OutputStreamWriter
    //   34: dup
    //   35: new 135	java/io/DataOutputStream
    //   38: dup
    //   39: aload 5
    //   41: invokevirtual 139	java/lang/Process:getOutputStream	()Ljava/io/OutputStream;
    //   44: invokespecial 142	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   47: ldc 144
    //   49: invokespecial 147	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   52: astore 9
    //   54: new 8	java/io/DataInputStream
    //   57: dup
    //   58: aload 5
    //   60: invokevirtual 107	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   63: invokespecial 110	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   66: astore 10
    //   68: new 8	java/io/DataInputStream
    //   71: dup
    //   72: aload 5
    //   74: invokevirtual 150	java/lang/Process:getErrorStream	()Ljava/io/InputStream;
    //   77: invokespecial 110	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   80: astore 11
    //   82: ldc 43
    //   84: new 37	java/lang/StringBuilder
    //   87: dup
    //   88: invokespecial 46	java/lang/StringBuilder:<init>	()V
    //   91: ldc 89
    //   93: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   96: aload_0
    //   97: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: ldc 152
    //   102: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   105: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   108: invokestatic 62	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   111: new 37	java/lang/StringBuilder
    //   114: dup
    //   115: invokespecial 46	java/lang/StringBuilder:<init>	()V
    //   118: aload_0
    //   119: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   122: ldc 72
    //   124: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   127: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   130: astore 14
    //   132: new 37	java/lang/StringBuilder
    //   135: dup
    //   136: invokespecial 46	java/lang/StringBuilder:<init>	()V
    //   139: aload 14
    //   141: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   144: ldc 154
    //   146: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   149: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   152: ldc 72
    //   154: invokevirtual 158	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   157: astore 15
    //   159: iconst_0
    //   160: istore 16
    //   162: iload 16
    //   164: aload 15
    //   166: arraylength
    //   167: if_icmpge +113 -> 280
    //   170: ldc 43
    //   172: new 37	java/lang/StringBuilder
    //   175: dup
    //   176: invokespecial 46	java/lang/StringBuilder:<init>	()V
    //   179: ldc 89
    //   181: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   184: aload 15
    //   186: iload 16
    //   188: aaload
    //   189: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   192: ldc 152
    //   194: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   197: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   200: invokestatic 62	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   203: aload 9
    //   205: new 37	java/lang/StringBuilder
    //   208: dup
    //   209: invokespecial 46	java/lang/StringBuilder:<init>	()V
    //   212: aload 15
    //   214: iload 16
    //   216: aaload
    //   217: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   220: ldc 72
    //   222: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   225: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   228: invokevirtual 161	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   231: iinc 16 1
    //   234: goto -72 -> 162
    //   237: astore_2
    //   238: aload_2
    //   239: invokevirtual 165	java/lang/Exception:getCause	()Ljava/lang/Throwable;
    //   242: astore_3
    //   243: aload_3
    //   244: ifnull +34 -> 278
    //   247: aload_3
    //   248: invokevirtual 170	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   251: astore 4
    //   253: aload 4
    //   255: ifnull +23 -> 278
    //   258: aload 4
    //   260: ldc 24
    //   262: invokevirtual 28	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   265: ifeq +13 -> 278
    //   268: new 30	java/lang/Exception
    //   271: dup
    //   272: ldc 32
    //   274: invokespecial 35	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   277: athrow
    //   278: aload_2
    //   279: athrow
    //   280: aload 9
    //   282: invokevirtual 173	java/io/OutputStreamWriter:flush	()V
    //   285: aload 10
    //   287: aload 11
    //   289: aload 6
    //   291: aload 7
    //   293: invokestatic 175	com/avast/android/generic/util/h:a	(Ljava/io/DataInputStream;Ljava/io/DataInputStream;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I
    //   296: pop
    //   297: invokestatic 181	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   300: astore 19
    //   302: new 183	com/avast/android/generic/util/j
    //   305: dup
    //   306: invokespecial 184	com/avast/android/generic/util/j:<init>	()V
    //   309: astore 20
    //   311: aconst_null
    //   312: astore 21
    //   314: iload_1
    //   315: ifle +34 -> 349
    //   318: new 186	java/util/Timer
    //   321: dup
    //   322: invokespecial 187	java/util/Timer:<init>	()V
    //   325: astore 21
    //   327: aload 21
    //   329: new 189	com/avast/android/generic/util/i
    //   332: dup
    //   333: aload 20
    //   335: aload 19
    //   337: invokespecial 192	com/avast/android/generic/util/i:<init>	(Lcom/avast/android/generic/util/j;Ljava/lang/Thread;)V
    //   340: iload_1
    //   341: sipush 1000
    //   344: imul
    //   345: i2l
    //   346: invokevirtual 196	java/util/Timer:schedule	(Ljava/util/TimerTask;J)V
    //   349: ldc 43
    //   351: ldc 198
    //   353: invokestatic 62	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   356: sipush 8192
    //   359: newarray byte
    //   361: astore 25
    //   363: aload 5
    //   365: ifnonnull +143 -> 508
    //   368: aload 21
    //   370: ifnull +8 -> 378
    //   373: aload 21
    //   375: invokevirtual 201	java/util/Timer:cancel	()V
    //   378: aload 8
    //   380: ifnonnull +9 -> 389
    //   383: iconst_m1
    //   384: invokestatic 207	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   387: astore 8
    //   389: ldc 43
    //   391: new 37	java/lang/StringBuilder
    //   394: dup
    //   395: invokespecial 46	java/lang/StringBuilder:<init>	()V
    //   398: ldc 209
    //   400: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   403: aload 8
    //   405: invokevirtual 212	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   408: ldc 214
    //   410: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   413: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   416: invokestatic 62	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   419: iconst_2
    //   420: anewarray 115	java/io/Closeable
    //   423: dup
    //   424: iconst_0
    //   425: aload 10
    //   427: aastore
    //   428: dup
    //   429: iconst_1
    //   430: aload 11
    //   432: aastore
    //   433: invokestatic 120	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   436: aload 8
    //   438: invokevirtual 217	java/lang/Integer:intValue	()I
    //   441: ifeq +346 -> 787
    //   444: new 30	java/lang/Exception
    //   447: dup
    //   448: new 37	java/lang/StringBuilder
    //   451: dup
    //   452: invokespecial 46	java/lang/StringBuilder:<init>	()V
    //   455: ldc 219
    //   457: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   460: aload 8
    //   462: invokevirtual 212	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   465: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   468: invokespecial 35	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   471: athrow
    //   472: astore 17
    //   474: aload 5
    //   476: invokevirtual 222	java/lang/Process:destroy	()V
    //   479: aload 17
    //   481: athrow
    //   482: astore 12
    //   484: aload 10
    //   486: astore 13
    //   488: iconst_2
    //   489: anewarray 115	java/io/Closeable
    //   492: dup
    //   493: iconst_0
    //   494: aload 13
    //   496: aastore
    //   497: dup
    //   498: iconst_1
    //   499: aload 11
    //   501: aastore
    //   502: invokestatic 120	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   505: aload 12
    //   507: athrow
    //   508: aload 5
    //   510: invokevirtual 113	java/lang/Process:exitValue	()I
    //   513: invokestatic 207	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   516: astore 32
    //   518: aload 32
    //   520: astore 8
    //   522: aload 10
    //   524: invokevirtual 12	java/io/DataInputStream:available	()I
    //   527: ifle +124 -> 651
    //   530: aload 10
    //   532: aload 25
    //   534: invokevirtual 225	java/io/DataInputStream:read	([B)I
    //   537: istore 29
    //   539: aload 6
    //   541: ifnull +371 -> 912
    //   544: new 18	java/lang/String
    //   547: dup
    //   548: aload 25
    //   550: iconst_0
    //   551: iload 29
    //   553: invokespecial 228	java/lang/String:<init>	([BII)V
    //   556: astore 30
    //   558: aload 30
    //   560: ldc 24
    //   562: invokevirtual 28	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   565: ifeq +75 -> 640
    //   568: new 30	java/lang/Exception
    //   571: dup
    //   572: ldc 32
    //   574: invokespecial 35	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   577: athrow
    //   578: astore 23
    //   580: aload 20
    //   582: getfield 231	com/avast/android/generic/util/j:a	Z
    //   585: ifeq +286 -> 871
    //   588: aload 5
    //   590: invokevirtual 222	java/lang/Process:destroy	()V
    //   593: new 30	java/lang/Exception
    //   596: dup
    //   597: new 37	java/lang/StringBuilder
    //   600: dup
    //   601: invokespecial 46	java/lang/StringBuilder:<init>	()V
    //   604: ldc 233
    //   606: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   609: iload_1
    //   610: invokevirtual 51	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   613: ldc 235
    //   615: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   618: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   621: invokespecial 35	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   624: athrow
    //   625: astore 22
    //   627: aload 21
    //   629: ifnull +8 -> 637
    //   632: aload 21
    //   634: invokevirtual 201	java/util/Timer:cancel	()V
    //   637: aload 22
    //   639: athrow
    //   640: aload 6
    //   642: aload 30
    //   644: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   647: pop
    //   648: goto +264 -> 912
    //   651: aload 11
    //   653: invokevirtual 12	java/io/DataInputStream:available	()I
    //   656: ifle +101 -> 757
    //   659: aload 11
    //   661: aload 25
    //   663: invokevirtual 225	java/io/DataInputStream:read	([B)I
    //   666: istore 27
    //   668: aload 7
    //   670: ifnull +250 -> 920
    //   673: aload 7
    //   675: new 18	java/lang/String
    //   678: dup
    //   679: aload 25
    //   681: iconst_0
    //   682: iload 27
    //   684: invokespecial 228	java/lang/String:<init>	([BII)V
    //   687: ldc 64
    //   689: ldc 66
    //   691: invokevirtual 70	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   694: ldc 72
    //   696: ldc 66
    //   698: invokevirtual 70	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   701: invokevirtual 75	java/lang/String:trim	()Ljava/lang/String;
    //   704: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   707: pop
    //   708: aload 7
    //   710: invokevirtual 82	java/lang/StringBuilder:length	()I
    //   713: ifle +207 -> 920
    //   716: ldc 43
    //   718: new 37	java/lang/StringBuilder
    //   721: dup
    //   722: invokespecial 46	java/lang/StringBuilder:<init>	()V
    //   725: ldc 84
    //   727: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   730: aload 7
    //   732: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   735: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   738: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   741: invokestatic 62	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   744: new 30	java/lang/Exception
    //   747: dup
    //   748: aload 7
    //   750: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   753: invokespecial 35	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   756: athrow
    //   757: aload 8
    //   759: ifnonnull -391 -> 368
    //   762: aload 20
    //   764: getfield 231	com/avast/android/generic/util/j:a	Z
    //   767: ifeq +11 -> 778
    //   770: new 129	java/lang/InterruptedException
    //   773: dup
    //   774: invokespecial 236	java/lang/InterruptedException:<init>	()V
    //   777: athrow
    //   778: ldc2_w 237
    //   781: invokestatic 242	java/lang/Thread:sleep	(J)V
    //   784: goto -421 -> 363
    //   787: aload 7
    //   789: invokevirtual 82	java/lang/StringBuilder:length	()I
    //   792: ifle +44 -> 836
    //   795: ldc 43
    //   797: new 37	java/lang/StringBuilder
    //   800: dup
    //   801: invokespecial 46	java/lang/StringBuilder:<init>	()V
    //   804: ldc 84
    //   806: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   809: aload 7
    //   811: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   814: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   817: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   820: invokestatic 62	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   823: new 30	java/lang/Exception
    //   826: dup
    //   827: aload 7
    //   829: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   832: invokespecial 35	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   835: athrow
    //   836: aload 6
    //   838: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   841: astore 24
    //   843: ldc 43
    //   845: new 37	java/lang/StringBuilder
    //   848: dup
    //   849: invokespecial 46	java/lang/StringBuilder:<init>	()V
    //   852: ldc 244
    //   854: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   857: aload 24
    //   859: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   862: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   865: invokestatic 62	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   868: aload 24
    //   870: areturn
    //   871: aload 21
    //   873: ifnull -495 -> 378
    //   876: aload 21
    //   878: invokevirtual 201	java/util/Timer:cancel	()V
    //   881: goto -503 -> 378
    //   884: astore 12
    //   886: aconst_null
    //   887: astore 11
    //   889: aconst_null
    //   890: astore 13
    //   892: goto -404 -> 488
    //   895: astore 12
    //   897: aload 10
    //   899: astore 13
    //   901: aconst_null
    //   902: astore 11
    //   904: goto -416 -> 488
    //   907: astore 26
    //   909: goto -387 -> 522
    //   912: iload 29
    //   914: ifgt -551 -> 363
    //   917: goto -266 -> 651
    //   920: iload 27
    //   922: ifgt -559 -> 363
    //   925: goto -168 -> 757
    //
    // Exception table:
    //   from	to	target	type
    //   0	10	237	java/lang/Exception
    //   285	297	472	java/lang/Exception
    //   82	231	482	finally
    //   280	285	482	finally
    //   285	297	482	finally
    //   297	356	482	finally
    //   373	419	482	finally
    //   474	482	482	finally
    //   632	640	482	finally
    //   876	881	482	finally
    //   356	363	578	java/lang/InterruptedException
    //   508	518	578	java/lang/InterruptedException
    //   522	578	578	java/lang/InterruptedException
    //   640	784	578	java/lang/InterruptedException
    //   356	363	625	finally
    //   508	518	625	finally
    //   522	578	625	finally
    //   580	625	625	finally
    //   640	784	625	finally
    //   31	68	884	finally
    //   68	82	895	finally
    //   508	518	907	java/lang/IllegalThreadStateException
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.h
 * JD-Core Version:    0.6.2
 */