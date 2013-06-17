package com.antivirus.errors;

import android.content.Context;
import android.os.Bundle;
import com.avg.toolkit.e;
import java.util.List;

public class a
  implements e
{
  Context a;

  public a(Context paramContext)
  {
    this.a = paramContext;
  }

  public void a(Bundle paramBundle)
  {
  }

  public void a(com.avg.toolkit.e.a parama)
  {
  }

  public void a(List paramList)
  {
  }

  public void a(boolean paramBoolean)
  {
  }

  // ERROR //
  boolean a()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: aload_0
    //   3: getfield 15	com/antivirus/errors/a:a	Landroid/content/Context;
    //   6: invokevirtual 30	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   9: astore_2
    //   10: aload_2
    //   11: aload_0
    //   12: getfield 15	com/antivirus/errors/a:a	Landroid/content/Context;
    //   15: invokevirtual 34	android/content/Context:getPackageName	()Ljava/lang/String;
    //   18: sipush 4096
    //   21: invokevirtual 40	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   24: getfield 46	android/content/pm/PackageInfo:permissions	[Landroid/content/pm/PermissionInfo;
    //   27: astore 5
    //   29: aload 5
    //   31: arraylength
    //   32: istore 6
    //   34: iconst_0
    //   35: istore 7
    //   37: iload 7
    //   39: iload 6
    //   41: if_icmpge +100 -> 141
    //   44: aload 5
    //   46: iload 7
    //   48: aaload
    //   49: astore 8
    //   51: aload_2
    //   52: aload 8
    //   54: getfield 52	android/content/pm/PermissionInfo:name	Ljava/lang/String;
    //   57: iconst_0
    //   58: invokevirtual 56	android/content/pm/PackageManager:getPermissionInfo	(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    //   61: astore 11
    //   63: aload 11
    //   65: getfield 59	android/content/pm/PermissionInfo:packageName	Ljava/lang/String;
    //   68: aload_0
    //   69: getfield 15	com/antivirus/errors/a:a	Landroid/content/Context;
    //   72: invokevirtual 34	android/content/Context:getPackageName	()Ljava/lang/String;
    //   75: invokevirtual 65	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   78: ifeq +9 -> 87
    //   81: iinc 7 1
    //   84: goto -47 -> 37
    //   87: aload 11
    //   89: getfield 59	android/content/pm/PermissionInfo:packageName	Ljava/lang/String;
    //   92: invokestatic 70	com/avg/toolkit/f/a:a	(Ljava/lang/String;)V
    //   95: iload_1
    //   96: ireturn
    //   97: astore 10
    //   99: aload 10
    //   101: invokestatic 73	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   104: iconst_0
    //   105: istore_1
    //   106: goto -11 -> 95
    //   109: astore 4
    //   111: invokestatic 75	com/avg/toolkit/f/a:a	()V
    //   114: iconst_0
    //   115: istore_1
    //   116: goto -21 -> 95
    //   119: astore 9
    //   121: aload 9
    //   123: invokestatic 73	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   126: iconst_0
    //   127: istore_1
    //   128: goto -33 -> 95
    //   131: astore_3
    //   132: aload_3
    //   133: invokestatic 73	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   136: iconst_0
    //   137: istore_1
    //   138: goto -43 -> 95
    //   141: iconst_1
    //   142: istore_1
    //   143: goto -48 -> 95
    //
    // Exception table:
    //   from	to	target	type
    //   51	95	97	android/content/pm/PackageManager$NameNotFoundException
    //   10	51	109	android/content/pm/PackageManager$NameNotFoundException
    //   99	104	109	android/content/pm/PackageManager$NameNotFoundException
    //   121	126	109	android/content/pm/PackageManager$NameNotFoundException
    //   51	95	119	java/lang/Exception
    //   10	51	131	java/lang/Exception
    //   99	104	131	java/lang/Exception
    //   121	126	131	java/lang/Exception
  }

  public int b()
  {
    return 17000;
  }

  // ERROR //
  public void b(Bundle paramBundle)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: aconst_null
    //   3: astore_3
    //   4: aload_1
    //   5: ldc 79
    //   7: invokevirtual 85	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   10: astore 4
    //   12: aload_0
    //   13: invokevirtual 87	com/antivirus/errors/a:a	()Z
    //   16: istore 14
    //   18: iload 14
    //   20: ifne +40 -> 60
    //   23: iconst_0
    //   24: ifeq +7 -> 31
    //   27: aconst_null
    //   28: invokevirtual 92	java/io/FileOutputStream:close	()V
    //   31: iconst_0
    //   32: ifeq +7 -> 39
    //   35: aconst_null
    //   36: invokevirtual 95	java/io/FileInputStream:close	()V
    //   39: return
    //   40: astore 30
    //   42: aload 30
    //   44: invokestatic 73	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   47: goto -16 -> 31
    //   50: astore 29
    //   52: aload 29
    //   54: invokestatic 73	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   57: goto -18 -> 39
    //   60: aload 4
    //   62: ldc 97
    //   64: invokevirtual 101	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   67: ifeq +257 -> 324
    //   70: aload 4
    //   72: iconst_1
    //   73: invokevirtual 105	java/lang/String:substring	(I)Ljava/lang/String;
    //   76: astore 19
    //   78: sipush 2048
    //   81: newarray byte
    //   83: astore 20
    //   85: new 107	java/io/File
    //   88: dup
    //   89: aload_0
    //   90: getfield 15	com/antivirus/errors/a:a	Landroid/content/Context;
    //   93: invokevirtual 111	android/content/Context:getFilesDir	()Ljava/io/File;
    //   96: ldc 113
    //   98: invokespecial 116	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   101: invokevirtual 119	java/io/File:exists	()Z
    //   104: istore 21
    //   106: iload 21
    //   108: ifne +42 -> 150
    //   111: iconst_0
    //   112: ifeq +7 -> 119
    //   115: aconst_null
    //   116: invokevirtual 92	java/io/FileOutputStream:close	()V
    //   119: iconst_0
    //   120: ifeq -81 -> 39
    //   123: aconst_null
    //   124: invokevirtual 95	java/io/FileInputStream:close	()V
    //   127: goto -88 -> 39
    //   130: astore 27
    //   132: aload 27
    //   134: invokestatic 73	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   137: goto -98 -> 39
    //   140: astore 28
    //   142: aload 28
    //   144: invokestatic 73	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   147: goto -28 -> 119
    //   150: aload_0
    //   151: getfield 15	com/antivirus/errors/a:a	Landroid/content/Context;
    //   154: ldc 113
    //   156: invokevirtual 123	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   159: astore 22
    //   161: aload 22
    //   163: astore 6
    //   165: new 89	java/io/FileOutputStream
    //   168: dup
    //   169: aload 19
    //   171: invokespecial 125	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   174: astore 9
    //   176: aload 6
    //   178: aload 20
    //   180: invokevirtual 129	java/io/FileInputStream:read	([B)I
    //   183: istore 23
    //   185: iload 23
    //   187: iconst_m1
    //   188: if_icmpeq +60 -> 248
    //   191: aload 9
    //   193: aload 20
    //   195: iconst_0
    //   196: iload 23
    //   198: invokevirtual 133	java/io/FileOutputStream:write	([BII)V
    //   201: goto -25 -> 176
    //   204: astore 5
    //   206: aload 9
    //   208: astore 7
    //   210: aload 5
    //   212: invokestatic 73	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   215: aload 7
    //   217: ifnull +8 -> 225
    //   220: aload 7
    //   222: invokevirtual 92	java/io/FileOutputStream:close	()V
    //   225: aload 6
    //   227: ifnull -188 -> 39
    //   230: aload 6
    //   232: invokevirtual 95	java/io/FileInputStream:close	()V
    //   235: goto -196 -> 39
    //   238: astore 12
    //   240: aload 12
    //   242: invokestatic 73	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   245: goto -206 -> 39
    //   248: aload 9
    //   250: invokevirtual 92	java/io/FileOutputStream:close	()V
    //   253: aload 6
    //   255: invokevirtual 95	java/io/FileInputStream:close	()V
    //   258: invokestatic 139	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   261: new 141	java/lang/StringBuilder
    //   264: dup
    //   265: invokespecial 142	java/lang/StringBuilder:<init>	()V
    //   268: ldc 144
    //   270: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   273: aload 19
    //   275: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   278: invokevirtual 151	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   281: invokevirtual 155	java/lang/Runtime:exec	(Ljava/lang/String;)Ljava/lang/Process;
    //   284: pop
    //   285: iconst_0
    //   286: ifeq +7 -> 293
    //   289: aconst_null
    //   290: invokevirtual 92	java/io/FileOutputStream:close	()V
    //   293: iconst_0
    //   294: ifeq -255 -> 39
    //   297: aconst_null
    //   298: invokevirtual 95	java/io/FileInputStream:close	()V
    //   301: goto -262 -> 39
    //   304: astore 25
    //   306: aload 25
    //   308: invokestatic 73	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   311: goto -272 -> 39
    //   314: astore 26
    //   316: aload 26
    //   318: invokestatic 73	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   321: goto -28 -> 293
    //   324: aload 4
    //   326: invokestatic 161	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   329: istore 15
    //   331: iload 15
    //   333: iconst_1
    //   334: iand
    //   335: ifeq +65 -> 400
    //   338: iload_2
    //   339: istore 16
    //   341: iload 16
    //   343: putstatic 164	com/avg/toolkit/f/a:a	Z
    //   346: iload 16
    //   348: invokestatic 168	com/antivirus/c:a	(Z)V
    //   351: iload 15
    //   353: iconst_2
    //   354: iand
    //   355: ifeq +51 -> 406
    //   358: iload_2
    //   359: invokestatic 170	com/antivirus/c:b	(Z)V
    //   362: invokestatic 173	com/antivirus/c:n	()V
    //   365: invokestatic 178	com/antivirus/AvApplication:b	()Lcom/antivirus/AvApplication;
    //   368: invokevirtual 179	com/antivirus/AvApplication:a	()V
    //   371: iconst_0
    //   372: ifeq +7 -> 379
    //   375: aconst_null
    //   376: invokevirtual 92	java/io/FileOutputStream:close	()V
    //   379: iconst_0
    //   380: ifeq -341 -> 39
    //   383: aconst_null
    //   384: invokevirtual 95	java/io/FileInputStream:close	()V
    //   387: goto -348 -> 39
    //   390: astore 17
    //   392: aload 17
    //   394: invokestatic 73	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   397: goto -358 -> 39
    //   400: iconst_0
    //   401: istore 16
    //   403: goto -62 -> 341
    //   406: iconst_0
    //   407: istore_2
    //   408: goto -50 -> 358
    //   411: astore 18
    //   413: aload 18
    //   415: invokestatic 73	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   418: goto -39 -> 379
    //   421: astore 13
    //   423: aload 13
    //   425: invokestatic 73	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   428: goto -203 -> 225
    //   431: astore 8
    //   433: aconst_null
    //   434: astore 9
    //   436: aload 9
    //   438: ifnull +8 -> 446
    //   441: aload 9
    //   443: invokevirtual 92	java/io/FileOutputStream:close	()V
    //   446: aload_3
    //   447: ifnull +7 -> 454
    //   450: aload_3
    //   451: invokevirtual 95	java/io/FileInputStream:close	()V
    //   454: aload 8
    //   456: athrow
    //   457: astore 11
    //   459: aload 11
    //   461: invokestatic 73	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   464: goto -18 -> 446
    //   467: astore 10
    //   469: aload 10
    //   471: invokestatic 73	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   474: goto -20 -> 454
    //   477: astore 8
    //   479: aload 6
    //   481: astore_3
    //   482: aconst_null
    //   483: astore 9
    //   485: goto -49 -> 436
    //   488: astore 8
    //   490: aload 6
    //   492: astore_3
    //   493: goto -57 -> 436
    //   496: astore 8
    //   498: aload 7
    //   500: astore 9
    //   502: aload 6
    //   504: astore_3
    //   505: goto -69 -> 436
    //   508: astore 5
    //   510: aconst_null
    //   511: astore 6
    //   513: aconst_null
    //   514: astore 7
    //   516: goto -306 -> 210
    //   519: astore 5
    //   521: aconst_null
    //   522: astore 7
    //   524: goto -314 -> 210
    //
    // Exception table:
    //   from	to	target	type
    //   27	31	40	java/lang/Exception
    //   35	39	50	java/lang/Exception
    //   123	127	130	java/lang/Exception
    //   115	119	140	java/lang/Exception
    //   176	201	204	java/lang/Exception
    //   248	253	204	java/lang/Exception
    //   230	235	238	java/lang/Exception
    //   297	301	304	java/lang/Exception
    //   289	293	314	java/lang/Exception
    //   383	387	390	java/lang/Exception
    //   375	379	411	java/lang/Exception
    //   220	225	421	java/lang/Exception
    //   12	18	431	finally
    //   60	106	431	finally
    //   150	161	431	finally
    //   258	285	431	finally
    //   324	371	431	finally
    //   441	446	457	java/lang/Exception
    //   450	454	467	java/lang/Exception
    //   165	176	477	finally
    //   253	258	477	finally
    //   176	201	488	finally
    //   248	253	488	finally
    //   210	215	496	finally
    //   12	18	508	java/lang/Exception
    //   60	106	508	java/lang/Exception
    //   150	161	508	java/lang/Exception
    //   258	285	508	java/lang/Exception
    //   324	371	508	java/lang/Exception
    //   165	176	519	java/lang/Exception
    //   253	258	519	java/lang/Exception
  }

  public void b(com.avg.toolkit.e.a parama)
  {
  }

  public void onDestroy()
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.errors.a
 * JD-Core Version:    0.6.2
 */