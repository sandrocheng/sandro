import android.content.Context;
import android.content.Intent;
import com.tencent.tmsecure.common.TMSApplication;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class gl
{
  public static final boolean a;
  private static boolean b = false;
  private static boolean c = false;
  private static boolean d = true;
  private static Object e = new Object();
  private static final String f = TMSApplication.getApplicaionContext().getPackageName();
  private static final boolean g;

  static
  {
    boolean bool1;
    if ((!eu.a("/system/bin/su")) && (!eu.a("/system/xbin/su")))
    {
      boolean bool2 = eu.a("/sbin/su");
      bool1 = false;
      if (bool2);
    }
    while (true)
    {
      a = bool1;
      g = new File("/dev/socket/script_socket").exists();
      return;
      bool1 = true;
    }
  }

  public static int a()
  {
    return a(1);
  }

  private static int a(int paramInt)
  {
    boolean bool = g;
    int i = 0;
    if (bool);
    while (true)
    {
      return i;
      if (a)
        break;
      if (d)
      {
        Intent localIntent2 = new Intent("com.tencent.tmsecure.root");
        TMSApplication.getApplicaionContext().sendBroadcast(localIntent2);
        b = true;
        d = false;
      }
      i = 1;
    }
    label357: 
    while (true)
    {
      int j;
      int k;
      synchronized (e)
      {
        while (true)
        {
          if (c)
          {
            i = 2;
            break;
          }
          c = true;
          j = 0;
          k = 0;
          if (j > 0)
          {
            i = k;
            if ((i == 0) && (!b))
            {
              Intent localIntent1 = new Intent("com.tencent.tmsecure.root");
              TMSApplication.getApplicaionContext().sendBroadcast(localIntent1);
              b = true;
            }
            synchronized (e)
            {
              c = false;
            }
          }
        }
      }
      String str1 = c(new ArrayList(Arrays.asList(new String[] { "id" })));
      if (str1 == null)
        k = 2;
      while (true)
      {
        if (k != -1)
          break label357;
        j++;
        break;
        if (str1.contains("uid=0"))
        {
          k = 0;
        }
        else
        {
          String str2 = c(new ArrayList(Arrays.asList(new String[] { "su" })));
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
            String str3 = c(new ArrayList(Arrays.asList(new String[] { "id" })));
            if (str3 == null)
            {
              k = 2;
            }
            else if (str3.contains("uid=0"))
            {
              ArrayList localArrayList = new ArrayList();
              b(localArrayList);
              c(localArrayList);
              k = 0;
            }
            else
            {
              k = 2;
            }
          }
        }
      }
    }
  }

  private static int a(StringBuilder paramStringBuilder, List<String> paramList)
  {
    int i = -1;
    if (a(1) != 0);
    while (true)
    {
      return i;
      String str = c(paramList);
      if ((str != null) && (paramStringBuilder != null))
        paramStringBuilder.append(str);
      if (str != null)
        i = 0;
    }
  }

  public static int a(List<String> paramList)
  {
    return a(new StringBuilder(), paramList);
  }

  public static int a(String[] paramArrayOfString)
  {
    return a(new StringBuilder(), new ArrayList(Arrays.asList(paramArrayOfString)));
  }

  // ERROR //
  private static gl.b a(gl.a parama, boolean paramBoolean)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: ldc 2
    //   4: monitorenter
    //   5: new 133	android/net/LocalSocket
    //   8: dup
    //   9: invokespecial 134	android/net/LocalSocket:<init>	()V
    //   12: astore_3
    //   13: new 136	gl$b
    //   16: dup
    //   17: invokespecial 137	gl$b:<init>	()V
    //   20: astore 4
    //   22: getstatic 67	gl:g	Z
    //   25: ifeq +202 -> 227
    //   28: new 139	android/net/LocalSocketAddress
    //   31: dup
    //   32: ldc 58
    //   34: getstatic 145	android/net/LocalSocketAddress$Namespace:FILESYSTEM	Landroid/net/LocalSocketAddress$Namespace;
    //   37: invokespecial 148	android/net/LocalSocketAddress:<init>	(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    //   40: astore 6
    //   42: aload_3
    //   43: aload 6
    //   45: invokevirtual 152	android/net/LocalSocket:connect	(Landroid/net/LocalSocketAddress;)V
    //   48: aload_3
    //   49: invokevirtual 156	android/net/LocalSocket:getInputStream	()Ljava/io/InputStream;
    //   52: astore 34
    //   54: aload 34
    //   56: astore 8
    //   58: aload_3
    //   59: invokevirtual 160	android/net/LocalSocket:getOutputStream	()Ljava/io/OutputStream;
    //   62: astore 35
    //   64: aload 35
    //   66: astore 30
    //   68: aload_0
    //   69: aload_0
    //   70: getfield 165	gl$a:c	[B
    //   73: arraylength
    //   74: putfield 168	gl$a:b	I
    //   77: bipush 12
    //   79: newarray byte
    //   81: astore 36
    //   83: iconst_0
    //   84: invokestatic 172	a:a	(I)[B
    //   87: iconst_0
    //   88: aload 36
    //   90: iconst_0
    //   91: iconst_4
    //   92: invokestatic 178	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   95: aload_0
    //   96: getfield 180	gl$a:a	I
    //   99: invokestatic 172	a:a	(I)[B
    //   102: iconst_0
    //   103: aload 36
    //   105: iconst_4
    //   106: iconst_4
    //   107: invokestatic 178	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   110: aload_0
    //   111: getfield 168	gl$a:b	I
    //   114: invokestatic 172	a:a	(I)[B
    //   117: iconst_0
    //   118: aload 36
    //   120: bipush 8
    //   122: iconst_4
    //   123: invokestatic 178	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   126: aload 30
    //   128: aload 36
    //   130: invokevirtual 186	java/io/OutputStream:write	([B)V
    //   133: aload 30
    //   135: aload_0
    //   136: getfield 165	gl$a:c	[B
    //   139: invokevirtual 186	java/io/OutputStream:write	([B)V
    //   142: aload 30
    //   144: invokevirtual 189	java/io/OutputStream:flush	()V
    //   147: new 84	java/lang/String
    //   150: dup
    //   151: aload_0
    //   152: getfield 165	gl$a:c	[B
    //   155: invokespecial 191	java/lang/String:<init>	([B)V
    //   158: invokestatic 196	gk:b	(Ljava/lang/Object;)V
    //   161: iconst_4
    //   162: newarray byte
    //   164: astore 37
    //   166: aload 8
    //   168: aload 37
    //   170: invokevirtual 202	java/io/InputStream:read	([B)I
    //   173: iconst_4
    //   174: if_icmpeq +383 -> 557
    //   177: new 129	java/io/IOException
    //   180: dup
    //   181: ldc 204
    //   183: invokespecial 205	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   186: athrow
    //   187: astore 29
    //   189: aload 29
    //   191: invokevirtual 208	java/io/IOException:printStackTrace	()V
    //   194: aload 30
    //   196: ifnull +8 -> 204
    //   199: aload 30
    //   201: invokevirtual 211	java/io/OutputStream:close	()V
    //   204: aload 8
    //   206: ifnull +8 -> 214
    //   209: aload 8
    //   211: invokevirtual 212	java/io/InputStream:close	()V
    //   214: aload_3
    //   215: invokevirtual 213	android/net/LocalSocket:close	()V
    //   218: aconst_null
    //   219: astore 4
    //   221: ldc 2
    //   223: monitorexit
    //   224: aload 4
    //   226: areturn
    //   227: new 139	android/net/LocalSocketAddress
    //   230: dup
    //   231: getstatic 41	gl:f	Ljava/lang/String;
    //   234: getstatic 216	android/net/LocalSocketAddress$Namespace:ABSTRACT	Landroid/net/LocalSocketAddress$Namespace;
    //   237: invokespecial 148	android/net/LocalSocketAddress:<init>	(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    //   240: astore 6
    //   242: goto -200 -> 42
    //   245: astore 5
    //   247: ldc 2
    //   249: monitorexit
    //   250: aload 5
    //   252: athrow
    //   253: astore 12
    //   255: getstatic 67	gl:g	Z
    //   258: ifne -210 -> 48
    //   261: iload_1
    //   262: ifeq -214 -> 48
    //   265: invokestatic 33	com/tencent/tmsecure/common/TMSApplication:getApplicaionContext	()Landroid/content/Context;
    //   268: ldc 218
    //   270: invokestatic 221	eu:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   273: astore 13
    //   275: new 117	java/lang/StringBuilder
    //   278: dup
    //   279: aload 13
    //   281: invokestatic 225	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   284: invokespecial 226	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   287: ldc 228
    //   289: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   292: getstatic 41	gl:f	Ljava/lang/String;
    //   295: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   298: ldc 228
    //   300: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   303: invokestatic 233	android/os/Process:myUid	()I
    //   306: invokevirtual 236	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   309: invokevirtual 239	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   312: astore 14
    //   314: new 117	java/lang/StringBuilder
    //   317: dup
    //   318: ldc 241
    //   320: invokespecial 226	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   323: aload 13
    //   325: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   328: ldc 243
    //   330: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   333: aload 14
    //   335: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   338: ldc 243
    //   340: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   343: invokevirtual 239	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   346: astore 15
    //   348: new 245	java/lang/ProcessBuilder
    //   351: dup
    //   352: iconst_0
    //   353: anewarray 84	java/lang/String
    //   356: invokespecial 248	java/lang/ProcessBuilder:<init>	([Ljava/lang/String;)V
    //   359: astore 16
    //   361: aload 16
    //   363: iconst_1
    //   364: anewarray 84	java/lang/String
    //   367: dup
    //   368: iconst_0
    //   369: ldc 250
    //   371: aastore
    //   372: invokevirtual 254	java/lang/ProcessBuilder:command	([Ljava/lang/String;)Ljava/lang/ProcessBuilder;
    //   375: pop
    //   376: aload 16
    //   378: iconst_1
    //   379: invokevirtual 258	java/lang/ProcessBuilder:redirectErrorStream	(Z)Ljava/lang/ProcessBuilder;
    //   382: pop
    //   383: aload 16
    //   385: invokevirtual 262	java/lang/ProcessBuilder:start	()Ljava/lang/Process;
    //   388: invokevirtual 265	java/lang/Process:getOutputStream	()Ljava/io/OutputStream;
    //   391: astore 27
    //   393: aload 27
    //   395: astore 19
    //   397: aload 19
    //   399: aload 15
    //   401: invokevirtual 269	java/lang/String:getBytes	()[B
    //   404: invokevirtual 186	java/io/OutputStream:write	([B)V
    //   407: aload 19
    //   409: invokevirtual 189	java/io/OutputStream:flush	()V
    //   412: aload 19
    //   414: ifnull +8 -> 422
    //   417: aload 19
    //   419: invokevirtual 211	java/io/OutputStream:close	()V
    //   422: ldc2_w 270
    //   425: invokestatic 277	java/lang/Thread:sleep	(J)V
    //   428: aload_0
    //   429: iconst_0
    //   430: invokestatic 279	gl:a	(Lgl$a;Z)Lgl$b;
    //   433: astore 24
    //   435: aload 24
    //   437: astore 4
    //   439: aload_3
    //   440: invokevirtual 213	android/net/LocalSocket:close	()V
    //   443: goto -222 -> 221
    //   446: astore 25
    //   448: aload 25
    //   450: invokevirtual 208	java/io/IOException:printStackTrace	()V
    //   453: goto -232 -> 221
    //   456: astore 21
    //   458: aconst_null
    //   459: astore 19
    //   461: aload 21
    //   463: invokevirtual 208	java/io/IOException:printStackTrace	()V
    //   466: aload 19
    //   468: ifnull -46 -> 422
    //   471: aload 19
    //   473: invokevirtual 211	java/io/OutputStream:close	()V
    //   476: goto -54 -> 422
    //   479: astore 22
    //   481: aload 22
    //   483: invokevirtual 208	java/io/IOException:printStackTrace	()V
    //   486: goto -64 -> 422
    //   489: astore 7
    //   491: aconst_null
    //   492: astore 8
    //   494: aload_2
    //   495: ifnull +7 -> 502
    //   498: aload_2
    //   499: invokevirtual 211	java/io/OutputStream:close	()V
    //   502: aload 8
    //   504: ifnull +8 -> 512
    //   507: aload 8
    //   509: invokevirtual 212	java/io/InputStream:close	()V
    //   512: aload_3
    //   513: invokevirtual 213	android/net/LocalSocket:close	()V
    //   516: aload 7
    //   518: athrow
    //   519: astore 18
    //   521: aconst_null
    //   522: astore 19
    //   524: aload 19
    //   526: ifnull +8 -> 534
    //   529: aload 19
    //   531: invokevirtual 211	java/io/OutputStream:close	()V
    //   534: aload 18
    //   536: athrow
    //   537: astore 20
    //   539: aload 20
    //   541: invokevirtual 208	java/io/IOException:printStackTrace	()V
    //   544: goto -10 -> 534
    //   547: astore 28
    //   549: aload 28
    //   551: invokevirtual 208	java/io/IOException:printStackTrace	()V
    //   554: goto -132 -> 422
    //   557: aload 37
    //   559: arraylength
    //   560: istore 38
    //   562: iconst_0
    //   563: istore 39
    //   565: iload 38
    //   567: iconst_4
    //   568: if_icmpeq +42 -> 610
    //   571: aload 4
    //   573: iload 39
    //   575: putfield 280	gl$b:a	I
    //   578: aload 4
    //   580: getfield 280	gl$b:a	I
    //   583: newarray byte
    //   585: astore 40
    //   587: aload 8
    //   589: aload 40
    //   591: invokevirtual 202	java/io/InputStream:read	([B)I
    //   594: aload 40
    //   596: arraylength
    //   597: if_icmpeq +62 -> 659
    //   600: new 129	java/io/IOException
    //   603: dup
    //   604: ldc 204
    //   606: invokespecial 205	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   609: athrow
    //   610: sipush 255
    //   613: aload 37
    //   615: iconst_0
    //   616: baload
    //   617: iand
    //   618: sipush 255
    //   621: aload 37
    //   623: iconst_1
    //   624: baload
    //   625: iand
    //   626: bipush 8
    //   628: ishl
    //   629: ior
    //   630: sipush 255
    //   633: aload 37
    //   635: iconst_2
    //   636: baload
    //   637: iand
    //   638: bipush 16
    //   640: ishl
    //   641: ior
    //   642: sipush 255
    //   645: aload 37
    //   647: iconst_3
    //   648: baload
    //   649: iand
    //   650: bipush 24
    //   652: ishl
    //   653: ior
    //   654: istore 39
    //   656: goto -85 -> 571
    //   659: aload 4
    //   661: aload 40
    //   663: putfield 282	gl$b:b	[B
    //   666: new 84	java/lang/String
    //   669: dup
    //   670: aload 40
    //   672: invokespecial 191	java/lang/String:<init>	([B)V
    //   675: invokestatic 196	gk:b	(Ljava/lang/Object;)V
    //   678: aload 30
    //   680: ifnull +8 -> 688
    //   683: aload 30
    //   685: invokevirtual 211	java/io/OutputStream:close	()V
    //   688: aload 8
    //   690: ifnull +8 -> 698
    //   693: aload 8
    //   695: invokevirtual 212	java/io/InputStream:close	()V
    //   698: aload_3
    //   699: invokevirtual 213	android/net/LocalSocket:close	()V
    //   702: goto -481 -> 221
    //   705: astore 41
    //   707: aload 41
    //   709: invokevirtual 208	java/io/IOException:printStackTrace	()V
    //   712: goto -491 -> 221
    //   715: astore 43
    //   717: aload 43
    //   719: invokevirtual 208	java/io/IOException:printStackTrace	()V
    //   722: goto -34 -> 688
    //   725: astore 42
    //   727: aload 42
    //   729: invokevirtual 208	java/io/IOException:printStackTrace	()V
    //   732: goto -34 -> 698
    //   735: astore 11
    //   737: aload 11
    //   739: invokevirtual 208	java/io/IOException:printStackTrace	()V
    //   742: goto -240 -> 502
    //   745: astore 10
    //   747: aload 10
    //   749: invokevirtual 208	java/io/IOException:printStackTrace	()V
    //   752: goto -240 -> 512
    //   755: astore 9
    //   757: aload 9
    //   759: invokevirtual 208	java/io/IOException:printStackTrace	()V
    //   762: goto -246 -> 516
    //   765: astore 33
    //   767: aload 33
    //   769: invokevirtual 208	java/io/IOException:printStackTrace	()V
    //   772: goto -568 -> 204
    //   775: astore 32
    //   777: aload 32
    //   779: invokevirtual 208	java/io/IOException:printStackTrace	()V
    //   782: goto -568 -> 214
    //   785: astore 31
    //   787: aload 31
    //   789: invokevirtual 208	java/io/IOException:printStackTrace	()V
    //   792: goto -574 -> 218
    //   795: astore 23
    //   797: goto -369 -> 428
    //   800: astore 7
    //   802: aconst_null
    //   803: astore_2
    //   804: goto -310 -> 494
    //   807: astore 29
    //   809: aconst_null
    //   810: astore 8
    //   812: aconst_null
    //   813: astore 30
    //   815: goto -626 -> 189
    //   818: astore 29
    //   820: aconst_null
    //   821: astore 30
    //   823: goto -634 -> 189
    //   826: astore 18
    //   828: goto -304 -> 524
    //   831: astore 21
    //   833: goto -372 -> 461
    //   836: astore 7
    //   838: aload 30
    //   840: astore_2
    //   841: goto -347 -> 494
    //
    // Exception table:
    //   from	to	target	type
    //   68	187	187	java/io/IOException
    //   557	678	187	java/io/IOException
    //   5	42	245	finally
    //   199	204	245	finally
    //   209	214	245	finally
    //   214	218	245	finally
    //   227	242	245	finally
    //   439	443	245	finally
    //   448	453	245	finally
    //   498	502	245	finally
    //   507	512	245	finally
    //   512	516	245	finally
    //   516	519	245	finally
    //   683	688	245	finally
    //   693	698	245	finally
    //   698	702	245	finally
    //   707	792	245	finally
    //   42	48	253	java/io/IOException
    //   439	443	446	java/io/IOException
    //   376	393	456	java/io/IOException
    //   471	476	479	java/io/IOException
    //   42	48	489	finally
    //   48	54	489	finally
    //   255	376	489	finally
    //   417	422	489	finally
    //   422	428	489	finally
    //   428	435	489	finally
    //   471	476	489	finally
    //   481	486	489	finally
    //   529	534	489	finally
    //   534	554	489	finally
    //   376	393	519	finally
    //   529	534	537	java/io/IOException
    //   417	422	547	java/io/IOException
    //   698	702	705	java/io/IOException
    //   683	688	715	java/io/IOException
    //   693	698	725	java/io/IOException
    //   498	502	735	java/io/IOException
    //   507	512	745	java/io/IOException
    //   512	516	755	java/io/IOException
    //   199	204	765	java/io/IOException
    //   209	214	775	java/io/IOException
    //   214	218	785	java/io/IOException
    //   422	428	795	java/lang/InterruptedException
    //   58	64	800	finally
    //   48	54	807	java/io/IOException
    //   58	64	818	java/io/IOException
    //   397	412	826	finally
    //   461	466	826	finally
    //   397	412	831	java/io/IOException
    //   68	187	836	finally
    //   189	194	836	finally
    //   557	678	836	finally
  }

  private static void b(List<String> paramList)
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

  public static boolean b()
  {
    gl.a locala = new gl.a();
    locala.a = 1000;
    locala.c = "id\n".getBytes();
    gl.b localb = a(locala, false);
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

  private static String c(List<String> paramList)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    b(paramList);
    Iterator localIterator = paramList.iterator();
    gl.b localb;
    if (!localIterator.hasNext())
    {
      gl.a locala = new gl.a();
      locala.a = 30000;
      locala.c = localStringBuilder.toString().getBytes();
      localb = a(locala, true);
      if (localb == null)
        break label108;
    }
    label108: for (String str = new String(localb.b).trim(); ; str = null)
    {
      return str;
      localStringBuilder.append((String)localIterator.next()).append("\n");
      break;
    }
  }

  public static void c()
  {
    StackTraceElement[] arrayOfStackTraceElement = Thread.currentThread().getStackTrace();
    int i = arrayOfStackTraceElement.length;
    for (int j = 0; ; j++)
    {
      int k = 0;
      if (j >= i);
      while (true)
      {
        if (k == 0)
          gk.a("Unauthorized caller");
        return;
        StackTraceElement localStackTraceElement = arrayOfStackTraceElement[j];
        if ((!localStackTraceElement.getClass().equals(TMSApplication.class)) || (localStackTraceElement.getMethodName().indexOf("init") < 0))
          break;
        k = 1;
      }
    }
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

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     gl
 * JD-Core Version:    0.6.2
 */