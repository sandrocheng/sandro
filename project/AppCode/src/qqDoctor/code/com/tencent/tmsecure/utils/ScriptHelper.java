package com.tencent.tmsecure.utils;

import android.content.Context;
import android.content.Intent;
import android.os.Process;
import ay;
import btd;
import bzi;
import com.tencent.tmsecure.common.TMSApplication;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class ScriptHelper
{
  public static final int ROOT_GOT = 0;
  public static final String ROOT_GOT_ACTION = "com.tencent.tmsecure.root";
  public static final int ROOT_NOT_GOT = 2;
  public static final int ROOT_NOT_SUPPORT = 1;
  public static final int ROOT_NO_RESPOND = -1;
  private static final String a = TMSApplication.getApplicaionContext().getPackageName();
  private static final boolean b;
  private static boolean c;
  private static boolean d;
  private static boolean e;
  private static Object f;
  private static ay g;
  public static final boolean isSuExist;
  public static int sCurrRootState;

  static
  {
    if ((!btd.c("/system/bin/su")) && (!btd.c("/system/xbin/su")) && (!btd.c("/sbin/su")));
    for (boolean bool = false; ; bool = true)
    {
      isSuExist = bool;
      b = new File("/dev/socket/script_socket").exists();
      sCurrRootState = 2;
      c = false;
      d = false;
      e = true;
      f = new Object();
      g = null;
      return;
    }
  }

  private static int a(int paramInt)
  {
    int i = 0;
    if (b)
      sCurrRootState = 0;
    int j;
    int k;
    label97: label103: int m;
    while (true)
    {
      return i;
      if (!isSuExist)
      {
        if (e)
        {
          Intent localIntent2 = new Intent("com.tencent.tmsecure.root");
          TMSApplication.getApplicaionContext().sendBroadcast(localIntent2);
          c = true;
          e = false;
        }
        sCurrRootState = 1;
        i = 1;
      }
      else
      {
        synchronized (f)
        {
          if (d)
          {
            sCurrRootState = 2;
            i = 2;
          }
          else
          {
            d = true;
            j = 0;
            k = 0;
            if (j >= paramInt)
            {
              m = k;
              if ((m == 0) && (!c))
              {
                Intent localIntent1 = new Intent("com.tencent.tmsecure.root");
                TMSApplication.getApplicaionContext().sendBroadcast(localIntent1);
                c = true;
              }
            }
          }
        }
      }
    }
    while (true)
      synchronized (f)
      {
        d = false;
        sCurrRootState = m;
        i = sCurrRootState;
        break;
        localObject2 = finally;
        throw localObject2;
        String str1 = runScript(new String[] { "id" });
        if (str1 == null)
        {
          k = 2;
          if (k != -1)
            break label103;
          j++;
          break label97;
        }
        if (str1.contains("uid=0"))
        {
          k = 0;
        }
        else
        {
          String str2 = runScript(new String[] { "su" });
          if (str2 == null)
          {
            k = 2;
          }
          else if ((str2.contains("Kill")) || (str2.contains("kill")))
          {
            k = -1;
          }
          else
          {
            String str3 = runScript(new String[] { "id" });
            if (str3 == null)
            {
              k = 2;
            }
            else if (str3.contains("uid=0"))
            {
              ArrayList localArrayList = new ArrayList();
              a(localArrayList);
              runScript(localArrayList);
              k = 0;
            }
          }
        }
      }
  }

  // ERROR //
  private static b a(a parama, boolean paramBoolean)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: ldc 2
    //   4: monitorenter
    //   5: new 130	android/net/LocalSocket
    //   8: dup
    //   9: invokespecial 131	android/net/LocalSocket:<init>	()V
    //   12: astore_3
    //   13: new 133	com/tencent/tmsecure/utils/ScriptHelper$b
    //   16: dup
    //   17: invokespecial 134	com/tencent/tmsecure/utils/ScriptHelper$b:<init>	()V
    //   20: astore 4
    //   22: getstatic 72	com/tencent/tmsecure/utils/ScriptHelper:b	Z
    //   25: ifeq +200 -> 225
    //   28: new 136	android/net/LocalSocketAddress
    //   31: dup
    //   32: ldc 62
    //   34: getstatic 142	android/net/LocalSocketAddress$Namespace:FILESYSTEM	Landroid/net/LocalSocketAddress$Namespace;
    //   37: invokespecial 145	android/net/LocalSocketAddress:<init>	(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    //   40: astore 6
    //   42: aload_3
    //   43: aload 6
    //   45: invokevirtual 149	android/net/LocalSocket:connect	(Landroid/net/LocalSocketAddress;)V
    //   48: aload_3
    //   49: invokevirtual 153	android/net/LocalSocket:getInputStream	()Ljava/io/InputStream;
    //   52: astore 34
    //   54: aload 34
    //   56: astore 30
    //   58: aload_3
    //   59: invokevirtual 157	android/net/LocalSocket:getOutputStream	()Ljava/io/OutputStream;
    //   62: astore 35
    //   64: aload 35
    //   66: astore 8
    //   68: aload_0
    //   69: aload_0
    //   70: getfield 162	com/tencent/tmsecure/utils/ScriptHelper$a:c	[B
    //   73: arraylength
    //   74: putfield 164	com/tencent/tmsecure/utils/ScriptHelper$a:b	I
    //   77: bipush 12
    //   79: newarray byte
    //   81: astore 36
    //   83: iconst_0
    //   84: invokestatic 168	a:d	(I)[B
    //   87: iconst_0
    //   88: aload 36
    //   90: iconst_0
    //   91: iconst_4
    //   92: invokestatic 174	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   95: aload_0
    //   96: getfield 176	com/tencent/tmsecure/utils/ScriptHelper$a:a	I
    //   99: invokestatic 168	a:d	(I)[B
    //   102: iconst_0
    //   103: aload 36
    //   105: iconst_4
    //   106: iconst_4
    //   107: invokestatic 174	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   110: aload_0
    //   111: getfield 164	com/tencent/tmsecure/utils/ScriptHelper$a:b	I
    //   114: invokestatic 168	a:d	(I)[B
    //   117: iconst_0
    //   118: aload 36
    //   120: bipush 8
    //   122: iconst_4
    //   123: invokestatic 174	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   126: aload 8
    //   128: aload 36
    //   130: invokevirtual 182	java/io/OutputStream:write	([B)V
    //   133: aload 8
    //   135: aload_0
    //   136: getfield 162	com/tencent/tmsecure/utils/ScriptHelper$a:c	[B
    //   139: invokevirtual 182	java/io/OutputStream:write	([B)V
    //   142: aload 8
    //   144: invokevirtual 185	java/io/OutputStream:flush	()V
    //   147: new 96	java/lang/String
    //   150: dup
    //   151: aload_0
    //   152: getfield 162	com/tencent/tmsecure/utils/ScriptHelper$a:c	[B
    //   155: invokespecial 187	java/lang/String:<init>	([B)V
    //   158: pop
    //   159: iconst_4
    //   160: newarray byte
    //   162: astore 38
    //   164: aload 30
    //   166: aload 38
    //   168: invokevirtual 193	java/io/InputStream:read	([B)I
    //   171: iconst_4
    //   172: if_icmpeq +384 -> 556
    //   175: new 126	java/io/IOException
    //   178: dup
    //   179: ldc 195
    //   181: invokespecial 196	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   184: athrow
    //   185: astore 29
    //   187: aload 29
    //   189: invokevirtual 199	java/io/IOException:printStackTrace	()V
    //   192: aload 8
    //   194: ifnull +8 -> 202
    //   197: aload 8
    //   199: invokevirtual 202	java/io/OutputStream:close	()V
    //   202: aload 30
    //   204: ifnull +8 -> 212
    //   207: aload 30
    //   209: invokevirtual 203	java/io/InputStream:close	()V
    //   212: aload_3
    //   213: invokevirtual 204	android/net/LocalSocket:close	()V
    //   216: aconst_null
    //   217: astore 4
    //   219: ldc 2
    //   221: monitorexit
    //   222: aload 4
    //   224: areturn
    //   225: new 136	android/net/LocalSocketAddress
    //   228: dup
    //   229: getstatic 45	com/tencent/tmsecure/utils/ScriptHelper:a	Ljava/lang/String;
    //   232: getstatic 207	android/net/LocalSocketAddress$Namespace:ABSTRACT	Landroid/net/LocalSocketAddress$Namespace;
    //   235: invokespecial 145	android/net/LocalSocketAddress:<init>	(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    //   238: astore 6
    //   240: goto -198 -> 42
    //   243: astore 5
    //   245: ldc 2
    //   247: monitorexit
    //   248: aload 5
    //   250: athrow
    //   251: astore 12
    //   253: getstatic 72	com/tencent/tmsecure/utils/ScriptHelper:b	Z
    //   256: ifne -208 -> 48
    //   259: iload_1
    //   260: ifeq -212 -> 48
    //   263: invokestatic 37	com/tencent/tmsecure/common/TMSApplication:getApplicaionContext	()Landroid/content/Context;
    //   266: ldc 209
    //   268: aconst_null
    //   269: invokestatic 212	btd:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   272: astore 13
    //   274: new 214	java/lang/StringBuilder
    //   277: dup
    //   278: aload 13
    //   280: invokestatic 218	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   283: invokespecial 219	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   286: ldc 221
    //   288: invokevirtual 225	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   291: getstatic 45	com/tencent/tmsecure/utils/ScriptHelper:a	Ljava/lang/String;
    //   294: invokevirtual 225	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   297: ldc 221
    //   299: invokevirtual 225	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   302: invokestatic 231	android/os/Process:myUid	()I
    //   305: invokevirtual 234	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   308: invokevirtual 237	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   311: astore 14
    //   313: new 214	java/lang/StringBuilder
    //   316: dup
    //   317: ldc 239
    //   319: invokespecial 219	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   322: aload 13
    //   324: invokevirtual 225	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   327: ldc 241
    //   329: invokevirtual 225	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   332: aload 14
    //   334: invokevirtual 225	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   337: ldc 241
    //   339: invokevirtual 225	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   342: invokevirtual 237	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   345: astore 15
    //   347: new 243	java/lang/ProcessBuilder
    //   350: dup
    //   351: iconst_0
    //   352: anewarray 96	java/lang/String
    //   355: invokespecial 246	java/lang/ProcessBuilder:<init>	([Ljava/lang/String;)V
    //   358: astore 16
    //   360: aload 16
    //   362: iconst_1
    //   363: anewarray 96	java/lang/String
    //   366: dup
    //   367: iconst_0
    //   368: ldc 248
    //   370: aastore
    //   371: invokevirtual 252	java/lang/ProcessBuilder:command	([Ljava/lang/String;)Ljava/lang/ProcessBuilder;
    //   374: pop
    //   375: aload 16
    //   377: iconst_1
    //   378: invokevirtual 256	java/lang/ProcessBuilder:redirectErrorStream	(Z)Ljava/lang/ProcessBuilder;
    //   381: pop
    //   382: aload 16
    //   384: invokevirtual 260	java/lang/ProcessBuilder:start	()Ljava/lang/Process;
    //   387: invokevirtual 263	java/lang/Process:getOutputStream	()Ljava/io/OutputStream;
    //   390: astore 27
    //   392: aload 27
    //   394: astore 19
    //   396: aload 19
    //   398: aload 15
    //   400: invokevirtual 267	java/lang/String:getBytes	()[B
    //   403: invokevirtual 182	java/io/OutputStream:write	([B)V
    //   406: aload 19
    //   408: invokevirtual 185	java/io/OutputStream:flush	()V
    //   411: aload 19
    //   413: ifnull +8 -> 421
    //   416: aload 19
    //   418: invokevirtual 202	java/io/OutputStream:close	()V
    //   421: ldc2_w 268
    //   424: invokestatic 275	java/lang/Thread:sleep	(J)V
    //   427: aload_0
    //   428: iconst_0
    //   429: invokestatic 277	com/tencent/tmsecure/utils/ScriptHelper:a	(Lcom/tencent/tmsecure/utils/ScriptHelper$a;Z)Lcom/tencent/tmsecure/utils/ScriptHelper$b;
    //   432: astore 24
    //   434: aload 24
    //   436: astore 4
    //   438: aload_3
    //   439: invokevirtual 204	android/net/LocalSocket:close	()V
    //   442: goto -223 -> 219
    //   445: astore 25
    //   447: aload 25
    //   449: invokevirtual 199	java/io/IOException:printStackTrace	()V
    //   452: goto -233 -> 219
    //   455: astore 21
    //   457: aconst_null
    //   458: astore 19
    //   460: aload 21
    //   462: invokevirtual 199	java/io/IOException:printStackTrace	()V
    //   465: aload 19
    //   467: ifnull -46 -> 421
    //   470: aload 19
    //   472: invokevirtual 202	java/io/OutputStream:close	()V
    //   475: goto -54 -> 421
    //   478: astore 22
    //   480: aload 22
    //   482: invokevirtual 199	java/io/IOException:printStackTrace	()V
    //   485: goto -64 -> 421
    //   488: astore 7
    //   490: aconst_null
    //   491: astore 8
    //   493: aload 8
    //   495: ifnull +8 -> 503
    //   498: aload 8
    //   500: invokevirtual 202	java/io/OutputStream:close	()V
    //   503: aload_2
    //   504: ifnull +7 -> 511
    //   507: aload_2
    //   508: invokevirtual 203	java/io/InputStream:close	()V
    //   511: aload_3
    //   512: invokevirtual 204	android/net/LocalSocket:close	()V
    //   515: aload 7
    //   517: athrow
    //   518: astore 18
    //   520: aconst_null
    //   521: astore 19
    //   523: aload 19
    //   525: ifnull +8 -> 533
    //   528: aload 19
    //   530: invokevirtual 202	java/io/OutputStream:close	()V
    //   533: aload 18
    //   535: athrow
    //   536: astore 20
    //   538: aload 20
    //   540: invokevirtual 199	java/io/IOException:printStackTrace	()V
    //   543: goto -10 -> 533
    //   546: astore 28
    //   548: aload 28
    //   550: invokevirtual 199	java/io/IOException:printStackTrace	()V
    //   553: goto -132 -> 421
    //   556: aload 4
    //   558: aload 38
    //   560: invokestatic 279	a:e	([B)I
    //   563: putfield 280	com/tencent/tmsecure/utils/ScriptHelper$b:a	I
    //   566: aload 4
    //   568: getfield 280	com/tencent/tmsecure/utils/ScriptHelper$b:a	I
    //   571: newarray byte
    //   573: astore 39
    //   575: aload 30
    //   577: aload 39
    //   579: invokevirtual 193	java/io/InputStream:read	([B)I
    //   582: aload 39
    //   584: arraylength
    //   585: if_icmpeq +13 -> 598
    //   588: new 126	java/io/IOException
    //   591: dup
    //   592: ldc 195
    //   594: invokespecial 196	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   597: athrow
    //   598: aload 4
    //   600: aload 39
    //   602: putfield 282	com/tencent/tmsecure/utils/ScriptHelper$b:b	[B
    //   605: new 96	java/lang/String
    //   608: dup
    //   609: aload 39
    //   611: invokespecial 187	java/lang/String:<init>	([B)V
    //   614: pop
    //   615: aload 8
    //   617: ifnull +8 -> 625
    //   620: aload 8
    //   622: invokevirtual 202	java/io/OutputStream:close	()V
    //   625: aload 30
    //   627: ifnull +8 -> 635
    //   630: aload 30
    //   632: invokevirtual 203	java/io/InputStream:close	()V
    //   635: aload_3
    //   636: invokevirtual 204	android/net/LocalSocket:close	()V
    //   639: goto -420 -> 219
    //   642: astore 41
    //   644: aload 41
    //   646: invokevirtual 199	java/io/IOException:printStackTrace	()V
    //   649: goto -430 -> 219
    //   652: astore 43
    //   654: aload 43
    //   656: invokevirtual 199	java/io/IOException:printStackTrace	()V
    //   659: goto -34 -> 625
    //   662: astore 42
    //   664: aload 42
    //   666: invokevirtual 199	java/io/IOException:printStackTrace	()V
    //   669: goto -34 -> 635
    //   672: astore 11
    //   674: aload 11
    //   676: invokevirtual 199	java/io/IOException:printStackTrace	()V
    //   679: goto -176 -> 503
    //   682: astore 10
    //   684: aload 10
    //   686: invokevirtual 199	java/io/IOException:printStackTrace	()V
    //   689: goto -178 -> 511
    //   692: astore 9
    //   694: aload 9
    //   696: invokevirtual 199	java/io/IOException:printStackTrace	()V
    //   699: goto -184 -> 515
    //   702: astore 33
    //   704: aload 33
    //   706: invokevirtual 199	java/io/IOException:printStackTrace	()V
    //   709: goto -507 -> 202
    //   712: astore 32
    //   714: aload 32
    //   716: invokevirtual 199	java/io/IOException:printStackTrace	()V
    //   719: goto -507 -> 212
    //   722: astore 31
    //   724: aload 31
    //   726: invokevirtual 199	java/io/IOException:printStackTrace	()V
    //   729: goto -513 -> 216
    //   732: astore 23
    //   734: goto -307 -> 427
    //   737: astore 7
    //   739: aload 30
    //   741: astore_2
    //   742: aconst_null
    //   743: astore 8
    //   745: goto -252 -> 493
    //   748: astore 29
    //   750: aconst_null
    //   751: astore 30
    //   753: aconst_null
    //   754: astore 8
    //   756: goto -569 -> 187
    //   759: astore 29
    //   761: aconst_null
    //   762: astore 8
    //   764: goto -577 -> 187
    //   767: astore 18
    //   769: goto -246 -> 523
    //   772: astore 21
    //   774: goto -314 -> 460
    //   777: astore 7
    //   779: aload 30
    //   781: astore_2
    //   782: goto -289 -> 493
    //
    // Exception table:
    //   from	to	target	type
    //   68	185	185	java/io/IOException
    //   556	615	185	java/io/IOException
    //   5	42	243	finally
    //   197	202	243	finally
    //   207	212	243	finally
    //   212	216	243	finally
    //   225	240	243	finally
    //   438	442	243	finally
    //   447	452	243	finally
    //   498	503	243	finally
    //   507	511	243	finally
    //   511	515	243	finally
    //   515	518	243	finally
    //   620	625	243	finally
    //   630	635	243	finally
    //   635	639	243	finally
    //   644	729	243	finally
    //   42	48	251	java/io/IOException
    //   438	442	445	java/io/IOException
    //   375	392	455	java/io/IOException
    //   470	475	478	java/io/IOException
    //   42	48	488	finally
    //   48	54	488	finally
    //   253	375	488	finally
    //   416	421	488	finally
    //   421	427	488	finally
    //   427	434	488	finally
    //   470	475	488	finally
    //   480	485	488	finally
    //   528	533	488	finally
    //   533	553	488	finally
    //   375	392	518	finally
    //   528	533	536	java/io/IOException
    //   416	421	546	java/io/IOException
    //   635	639	642	java/io/IOException
    //   620	625	652	java/io/IOException
    //   630	635	662	java/io/IOException
    //   498	503	672	java/io/IOException
    //   507	511	682	java/io/IOException
    //   511	515	692	java/io/IOException
    //   197	202	702	java/io/IOException
    //   207	212	712	java/io/IOException
    //   212	216	722	java/io/IOException
    //   421	427	732	java/lang/InterruptedException
    //   58	64	737	finally
    //   48	54	748	java/io/IOException
    //   58	64	759	java/io/IOException
    //   396	411	767	finally
    //   460	465	767	finally
    //   396	411	772	java/io/IOException
    //   68	185	777	finally
    //   187	192	777	finally
    //   556	615	777	finally
  }

  private static void a(List<String> paramList)
  {
    Iterator localIterator = new ProcessBuilder(new String[0]).environment().entrySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      paramList.add("export " + (String)localEntry.getKey() + "=" + (String)localEntry.getValue());
    }
  }

  public static int canRunAtRoot()
  {
    return canRunAtRoot(1);
  }

  public static int canRunAtRoot(int paramInt)
  {
    return a(paramInt);
  }

  public static void canRunAtRoot(Callback paramCallback)
  {
    new bzi(paramCallback).start();
  }

  public static boolean isRootGot()
  {
    a locala = new a();
    locala.a = 1000;
    locala.c = "id\n".getBytes();
    b localb = a(locala, false);
    boolean bool1 = false;
    if (localb != null)
    {
      boolean bool2 = new String(localb.b).contains("uid=0");
      bool1 = false;
      if (bool2)
        bool1 = true;
    }
    return bool1;
  }

  public static boolean isSystemUid()
  {
    if (Process.myUid() == 1000);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static ay provider$24edfebd()
  {
    return g;
  }

  public static boolean providerSupportCancelMissCall()
  {
    if ((g != null) && (g.a()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static boolean providerSupportCpuRelative()
  {
    if ((g != null) && (g.a()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static boolean providerSupportGetAllApkFiles()
  {
    if ((g != null) && (g.a()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static boolean providerSupportPmRelative()
  {
    if ((g != null) && (g.a()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static int runScript(StringBuilder paramStringBuilder, List<String> paramList)
  {
    String str = runScript(paramList);
    if ((str != null) && (paramStringBuilder != null))
      paramStringBuilder.append(str);
    if (str == null);
    for (int i = 0; ; i = -1)
      return i;
  }

  public static int runScript(StringBuilder paramStringBuilder, String[] paramArrayOfString)
  {
    return runScript(paramStringBuilder, new ArrayList(Arrays.asList(paramArrayOfString)));
  }

  public static String runScript(int paramInt, List<String> paramList)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    a(paramList);
    Iterator localIterator = paramList.iterator();
    b localb;
    if (!localIterator.hasNext())
    {
      a locala = new a();
      locala.a = paramInt;
      locala.c = localStringBuilder.toString().getBytes();
      localb = a(locala, true);
      if (localb == null)
        break label110;
    }
    label110: for (String str = new String(localb.b).trim(); ; str = null)
    {
      return str;
      localStringBuilder.append((String)localIterator.next()).append("\n");
      break;
    }
  }

  public static String runScript(int paramInt, String[] paramArrayOfString)
  {
    return runScript(paramInt, new ArrayList(Arrays.asList(paramArrayOfString)));
  }

  public static String runScript(List<String> paramList)
  {
    return runScript(30000, paramList);
  }

  public static String runScript(String[] paramArrayOfString)
  {
    return runScript(30000, new ArrayList(Arrays.asList(paramArrayOfString)));
  }

  public static int runScriptAsRoot(StringBuilder paramStringBuilder, List<String> paramList)
  {
    int i = -1;
    if (canRunAtRoot() != 0);
    while (true)
    {
      return i;
      String str = runScript(paramList);
      if ((str != null) && (paramStringBuilder != null))
        paramStringBuilder.append(str);
      if (str != null)
        i = 0;
    }
  }

  public static int runScriptAsRoot(StringBuilder paramStringBuilder, String[] paramArrayOfString)
  {
    return runScriptAsRoot(paramStringBuilder, new ArrayList(Arrays.asList(paramArrayOfString)));
  }

  public static int runScriptAsRoot(List<String> paramList)
  {
    return runScriptAsRoot(new StringBuilder(), paramList);
  }

  public static int runScriptAsRoot(String[] paramArrayOfString)
  {
    return runScriptAsRoot(new StringBuilder(), new ArrayList(Arrays.asList(paramArrayOfString)));
  }

  public static int runScriptIfSystemUidOrAsRoot(List<String> paramList)
  {
    if (isSystemUid());
    for (int i = runScript(new StringBuilder(), paramList); ; i = runScriptAsRoot(paramList))
      return i;
  }

  public static int runScriptIfSystemUidOrAsRoot(String[] paramArrayOfString)
  {
    if (isSystemUid());
    for (int i = runScript(new StringBuilder(), paramArrayOfString); ; i = runScriptAsRoot(paramArrayOfString))
      return i;
  }

  public static String[] runScriptSplitLines(String[] paramArrayOfString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    runScript(localStringBuilder, new ArrayList(Arrays.asList(paramArrayOfString)));
    return localStringBuilder.toString().trim().split("\n");
  }

  public static void setProvider$42efb889(ay paramay)
  {
    StackTraceElement[] arrayOfStackTraceElement = Thread.currentThread().getStackTrace();
    int i = arrayOfStackTraceElement.length;
    int j = 0;
    int k = 0;
    if (j >= i)
      label20: if (k != 0)
        break label70;
    while (true)
    {
      return;
      StackTraceElement localStackTraceElement = arrayOfStackTraceElement[j];
      if ((localStackTraceElement.getClass().equals(TMSApplication.class)) && (localStackTraceElement.getMethodName().indexOf("init") >= 0))
      {
        k = 1;
        break label20;
      }
      j++;
      break;
      label70: g = paramay;
    }
  }

  public static abstract interface Callback
  {
    public abstract void onFinish(int paramInt);
  }

  static final class a
  {
    int a;
    int b;
    byte[] c;
  }

  static final class b
  {
    int a;
    byte[] b;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.utils.ScriptHelper
 * JD-Core Version:    0.6.2
 */