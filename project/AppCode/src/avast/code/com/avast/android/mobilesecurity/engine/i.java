package com.avast.android.mobilesecurity.engine;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.app.campaign.CampaignEvent;
import com.avast.android.mobilesecurity.engine.internal.vps.b;
import java.io.File;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class i
{
  private static final HashMap a = new HashMap();
  private static final HashMap b = new HashMap();
  private static final android.support.v4.d.c c = new android.support.v4.d.c(1024);
  private static final HashMap d = new HashMap();
  private static al e;

  public static int a()
  {
    return com.avast.android.mobilesecurity.engine.internal.y.b();
  }

  public static a a(Context paramContext, Integer paramInteger, CampaignEvent paramCampaignEvent)
  {
    if (paramInteger != null);
    a locala;
    while (true)
    {
      try
      {
        if (paramInteger.intValue() < 0)
        {
          paramInteger = a(paramContext);
          i = 1;
          if ((paramInteger == null) || (paramInteger.intValue() < 0) || (paramCampaignEvent == null))
          {
            locala = new a();
            locala.a = false;
          }
          else
          {
            HashMap localHashMap = new HashMap();
            localHashMap.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.c.c.a()), paramContext);
            localHashMap.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.c.d.a()), paramInteger);
            localHashMap.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.c.b.a()), a.a());
            localHashMap.put(Short.valueOf(b.a.a()), paramCampaignEvent.b().name());
            localHashMap.put(Short.valueOf(b.b.a()), paramCampaignEvent.a().name());
            ae localae = (ae)ad.a(paramContext, ae.class);
            localHashMap.put(Short.valueOf(b.c.a()), localae.q());
            localHashMap.put(Short.valueOf(b.d.a()), localae.r());
            localHashMap.put(Short.valueOf(b.e.a()), Boolean.valueOf(localae.p()));
            localHashMap.put(Short.valueOf(b.f.a()), localae.x());
            locala = a.a((byte[])com.avast.android.mobilesecurity.engine.internal.s.a(paramContext, com.avast.android.mobilesecurity.engine.internal.x.l, localHashMap));
            if (i != 0)
              a(paramContext, paramInteger.intValue());
          }
        }
      }
      catch (Exception localException)
      {
        locala = new a();
        locala.a = false;
      }
      int i = 0;
    }
    return locala;
  }

  public static ac a(Context paramContext, File paramFile, PackageInfo paramPackageInfo, s params, ab paramab, r paramr)
  {
    ac localac = com.avast.android.mobilesecurity.engine.internal.e.a(paramContext, null, paramFile, paramPackageInfo, params, paramab, paramr);
    if (ac.a.equals(localac))
      if (paramPackageInfo == null)
        break label52;
    label52: for (String str = paramPackageInfo.packageName; ; str = null)
    {
      a(paramContext, null, str, paramFile.getAbsolutePath(), d.d);
      return localac;
    }
  }

  public static ac a(Context paramContext, String paramString, ah paramah, ab paramab)
  {
    return com.avast.android.mobilesecurity.engine.internal.e.a(paramContext, paramString, paramah, paramab);
  }

  public static af a(Context paramContext, r paramr)
  {
    af localaf = com.avast.android.mobilesecurity.engine.internal.o.a(paramContext, paramr);
    try
    {
      com.avast.android.mobilesecurity.engine.internal.c.a(paramContext, null, localaf, null);
      com.avast.android.mobilesecurity.engine.internal.q.a(paramContext, null);
      label19: if (ag.b.equals(localaf.a))
      {
        e = localaf.b;
        synchronized (a)
        {
          a.clear();
          synchronized (b)
          {
            b.clear();
            synchronized (c)
            {
              c.a();
            }
          }
        }
      }
      synchronized (d)
      {
        d.clear();
        return localaf;
        localObject1 = finally;
        throw localObject1;
        localObject2 = finally;
        throw localObject2;
        localObject3 = finally;
        throw localObject3;
      }
    }
    catch (Exception localException)
    {
      break label19;
    }
  }

  public static al a(Context paramContext, Integer paramInteger)
  {
    if (e == null)
    {
      if ((paramInteger != null) && (paramInteger.intValue() >= 0))
        break label170;
      paramInteger = a(paramContext);
    }
    label170: for (int i = 1; ; i = 0)
    {
      if ((paramInteger == null) || (paramInteger.intValue() < 0));
      for (al localal = null; ; localal = e)
      {
        return localal;
        HashMap localHashMap = new HashMap();
        localHashMap.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.c.b.a()), al.a());
        localHashMap.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.c.c.a()), paramContext);
        localHashMap.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.c.d.a()), paramInteger);
        List localList = al.a((byte[])com.avast.android.mobilesecurity.engine.internal.s.a(paramContext, com.avast.android.mobilesecurity.engine.internal.x.h, localHashMap));
        e = null;
        if ((localList != null) && (localList.size() > 0))
          e = (al)localList.get(0);
        if (i != 0)
          a(paramContext, paramInteger.intValue());
      }
    }
  }

  public static k a(Context paramContext, Integer paramInteger, p paramp, String paramString1, String paramString2, Map paramMap1, Map paramMap2, int paramInt)
  {
    k localk1 = new k();
    localk1.a = new LinkedList();
    Integer localInteger;
    if ((paramInteger == null) || (paramInteger.intValue() < 0))
      localInteger = a(paramContext);
    for (int i = 1; ; i = 0)
    {
      if ((localInteger == null) || (localInteger.intValue() < 0))
      {
        l locall1 = new l();
        locall1.a = o.d;
        localk1.a.add(locall1);
      }
      for (k localk2 = localk1; ; localk2 = localk1)
      {
        return localk2;
        int j;
        int k;
        label111: HashMap localHashMap;
        if ((paramInt & 0x1) != 0)
        {
          j = 1;
          if ((paramInt & 0x2) == 0)
            break label445;
          k = 1;
          if (j == 0)
            break label575;
          localHashMap = new HashMap();
          localHashMap.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.c.b.a()), l.a());
          localHashMap.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.c.c.a()), paramContext);
          localHashMap.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.c.d.a()), localInteger);
          localHashMap.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.f.b.a()), paramString1);
          if (paramp == null)
            break label451;
          localHashMap.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.f.a.a()), Short.valueOf(paramp.a()));
        }
        while (true)
        {
          localHashMap.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.f.c.a()), paramString2);
          localHashMap.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.f.d.a()), paramMap1);
          localHashMap.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.f.e.a()), paramMap2);
          localk1.a = l.a((byte[])com.avast.android.mobilesecurity.engine.internal.s.a(paramContext, com.avast.android.mobilesecurity.engine.internal.x.i, localHashMap));
          if (localk1.a.size() < 1)
          {
            l locall2 = new l(o.a, "");
            localk1.a.add(locall2);
          }
          if (paramMap2 == null)
            break label470;
          Iterator localIterator2 = paramMap2.entrySet().iterator();
          localk1.d = new HashMap();
          while (localIterator2.hasNext())
          {
            Map.Entry localEntry2 = (Map.Entry)localIterator2.next();
            String str4 = (String)localEntry2.getKey();
            File localFile = (File)localEntry2.getValue();
            localk1.d.put(str4, a(paramContext, localInteger, localFile, null, 48L));
          }
          j = 0;
          break;
          label445: k = 0;
          break label111;
          label451: localHashMap.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.f.a.a()), null);
        }
        label470: if (paramMap1 != null)
        {
          Iterator localIterator1 = paramMap1.entrySet().iterator();
          localk1.c = new HashMap();
          while (localIterator1.hasNext())
          {
            Map.Entry localEntry1 = (Map.Entry)localIterator1.next();
            String str3 = (String)localEntry1.getKey();
            byte[] arrayOfByte = (byte[])localEntry1.getValue();
            localk1.c.put(str3, a(paramContext, localInteger, arrayOfByte, null, 48L));
          }
        }
        label575: if (k != 0)
        {
          Matcher localMatcher;
          if (localk1.a.size() < 1)
          {
            if (j != 0)
            {
              l locall3 = new l(o.a, "");
              localk1.a.add(locall3);
            }
          }
          else
          {
            if (paramString2 == null)
              break label795;
            localk1.b = new HashMap();
            localMatcher = com.avast.android.mobilesecurity.e.h.b.matcher(paramString2);
          }
          while (true)
          {
            if (!localMatcher.find())
              break label795;
            String str1 = localMatcher.group();
            if ((!str1.startsWith("http://")) && (!str1.startsWith("https://")));
            for (String str2 = "http://" + str1; ; str2 = str1)
            {
              if (localk1.b.get(str1) != null)
                break label793;
              List localList = a(paramContext, localInteger, str2);
              localk1.b.put(str1, localList);
              break label654;
              l locall4 = new l(o.g, "");
              localk1.a.add(locall4);
              break;
            }
          }
        }
        label654: label793: label795: if (i != 0)
          a(paramContext, localInteger.intValue());
      }
      localInteger = paramInteger;
    }
  }

  public static Integer a(Context paramContext)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.c.c.a()), paramContext);
    Integer localInteger = a((byte[])com.avast.android.mobilesecurity.engine.internal.s.a(paramContext, com.avast.android.mobilesecurity.engine.internal.x.b, localHashMap));
    if ((localInteger != null) && (localInteger.intValue() >= 0))
      com.avast.android.mobilesecurity.engine.internal.o.a();
    return localInteger;
  }

  private static Integer a(byte[] paramArrayOfByte)
  {
    try
    {
      if (4 + ((Integer)com.avast.android.generic.util.e.a(paramArrayOfByte, null, Integer.TYPE, 0)).intValue() != paramArrayOfByte.length)
        throw new IllegalArgumentException("Invalid structure length");
    }
    catch (Exception localException)
    {
      m.f("" + localException);
    }
    label63: label203: 
    while (true)
    {
      Integer localInteger = Integer.valueOf(-1);
      return localInteger;
      int j;
      int k;
      for (int i = 4; ; i = k + j)
      {
        if (i >= paramArrayOfByte.length)
          break label203;
        j = ((Integer)com.avast.android.generic.util.e.a(paramArrayOfByte, null, Integer.TYPE, i)).intValue();
        k = i + 4;
        if (paramArrayOfByte[(-1 + (k + j))] != -1)
          throw new IllegalArgumentException("parseContextId Invalid payload length");
        com.avast.android.mobilesecurity.engine.internal.vps.c localc = com.avast.android.mobilesecurity.engine.internal.vps.c.a(((Short)com.avast.android.generic.util.e.a(paramArrayOfByte, null, Short.TYPE, k)).shortValue());
        if (localc != null)
          switch (j.a[localc.ordinal()])
          {
          case 1:
            localInteger = (Integer)com.avast.android.generic.util.e.a(paramArrayOfByte, null, Integer.TYPE, k + 2);
            break label63;
          }
      }
    }
  }

  public static List a(Context paramContext, Integer paramInteger, h paramh)
  {
    Object localObject2;
    while (true)
    {
      synchronized (d)
      {
        List localList = (List)d.get(paramh.name());
        if ((localList != null) && (!localList.isEmpty()))
        {
          LinkedList localLinkedList2 = new LinkedList(localList);
          localObject2 = localLinkedList2;
        }
        else if ((paramInteger == null) || (paramInteger.intValue() < 0))
        {
          paramInteger = a(paramContext);
          i = 1;
          if ((paramInteger == null) || (paramInteger.intValue() < 0))
            localObject2 = new LinkedList();
        }
      }
      HashMap localHashMap2 = new HashMap();
      localHashMap2.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.c.c.a()), paramContext);
      localHashMap2.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.c.d.a()), paramInteger);
      localHashMap2.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.c.b.a()), e.a());
      localHashMap2.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.e.a.a()), paramh.name());
      localObject2 = e.a((byte[])com.avast.android.mobilesecurity.engine.internal.s.a(paramContext, com.avast.android.mobilesecurity.engine.internal.x.m, localHashMap2));
      if (i != 0)
        a(paramContext, paramInteger.intValue());
      HashMap localHashMap3 = d;
      if (localObject2 != null);
      try
      {
        if (!((List)localObject2).isEmpty())
        {
          LinkedList localLinkedList1 = new LinkedList((Collection)localObject2);
          d.put(paramh.name(), localLinkedList1);
        }
        break;
      }
      finally
      {
        localObject3 = finally;
        throw localObject3;
      }
      int i = 0;
    }
    return localObject2;
  }

  // ERROR //
  public static List a(Context paramContext, Integer paramInteger, Object paramObject, PackageInfo paramPackageInfo, long paramLong)
  {
    // Byte code:
    //   0: lconst_1
    //   1: lload 4
    //   3: land
    //   4: lconst_0
    //   5: lcmp
    //   6: ifeq +3 -> 9
    //   9: ldc2_w 463
    //   12: lload 4
    //   14: land
    //   15: lconst_0
    //   16: lcmp
    //   17: ifeq +3 -> 20
    //   20: ldc2_w 465
    //   23: lload 4
    //   25: land
    //   26: lconst_0
    //   27: lcmp
    //   28: ifeq +189 -> 217
    //   31: iconst_1
    //   32: istore 6
    //   34: ldc2_w 467
    //   37: lload 4
    //   39: land
    //   40: lconst_0
    //   41: lcmp
    //   42: ifeq +3 -> 45
    //   45: ldc2_w 469
    //   48: lload 4
    //   50: land
    //   51: lconst_0
    //   52: lcmp
    //   53: ifeq +3 -> 56
    //   56: ldc2_w 471
    //   59: lload 4
    //   61: land
    //   62: lconst_0
    //   63: lcmp
    //   64: ifeq +159 -> 223
    //   67: iconst_1
    //   68: istore 7
    //   70: ldc2_w 473
    //   73: lload 4
    //   75: land
    //   76: lconst_0
    //   77: lcmp
    //   78: ifeq +151 -> 229
    //   81: iconst_1
    //   82: istore 8
    //   84: ldc2_w 475
    //   87: lload 4
    //   89: land
    //   90: lconst_0
    //   91: lcmp
    //   92: ifeq +143 -> 235
    //   95: iconst_1
    //   96: istore 9
    //   98: ldc2_w 477
    //   101: lload 4
    //   103: land
    //   104: lconst_0
    //   105: lcmp
    //   106: ifeq +3 -> 109
    //   109: iload 6
    //   111: ifeq +164 -> 275
    //   114: aload_3
    //   115: ifnull +160 -> 275
    //   118: aload_3
    //   119: getfield 178	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   122: astore 84
    //   124: getstatic 21	com/avast/android/mobilesecurity/engine/i:a	Ljava/util/HashMap;
    //   127: astore 85
    //   129: aload 85
    //   131: monitorenter
    //   132: getstatic 21	com/avast/android/mobilesecurity/engine/i:a	Ljava/util/HashMap;
    //   135: aload 84
    //   137: invokevirtual 443	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   140: checkcast 240	java/util/List
    //   143: astore 87
    //   145: aload 87
    //   147: ifnull +125 -> 272
    //   150: new 253	java/util/LinkedList
    //   153: dup
    //   154: invokespecial 254	java/util/LinkedList:<init>	()V
    //   157: astore 88
    //   159: aload 87
    //   161: invokeinterface 479 1 0
    //   166: astore 89
    //   168: aload 89
    //   170: invokeinterface 318 1 0
    //   175: ifeq +66 -> 241
    //   178: aload 89
    //   180: invokeinterface 322 1 0
    //   185: checkcast 481	com/avast/android/mobilesecurity/engine/s
    //   188: astore 90
    //   190: aload 90
    //   192: iconst_1
    //   193: putfield 483	com/avast/android/mobilesecurity/engine/s:e	Z
    //   196: aload 88
    //   198: aload 90
    //   200: invokeinterface 270 2 0
    //   205: pop
    //   206: goto -38 -> 168
    //   209: astore 86
    //   211: aload 85
    //   213: monitorexit
    //   214: aload 86
    //   216: athrow
    //   217: iconst_0
    //   218: istore 6
    //   220: goto -186 -> 34
    //   223: iconst_0
    //   224: istore 7
    //   226: goto -156 -> 70
    //   229: iconst_0
    //   230: istore 8
    //   232: goto -148 -> 84
    //   235: iconst_0
    //   236: istore 9
    //   238: goto -140 -> 98
    //   241: aload_0
    //   242: aload 88
    //   244: aload_0
    //   245: ldc_w 485
    //   248: invokestatic 111	com/avast/android/generic/ad:a	(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    //   251: checkcast 485	com/avast/android/mobilesecurity/t
    //   254: invokevirtual 488	com/avast/android/mobilesecurity/t:aH	()Z
    //   257: aconst_null
    //   258: aload_3
    //   259: invokestatic 491	com/avast/android/mobilesecurity/engine/i:a	(Landroid/content/Context;Ljava/util/List;ZLjava/io/File;Landroid/content/pm/PackageInfo;)V
    //   262: aload 85
    //   264: monitorexit
    //   265: aload 88
    //   267: astore 11
    //   269: goto +1456 -> 1725
    //   272: aload 85
    //   274: monitorexit
    //   275: ldc 180
    //   277: aload_2
    //   278: invokevirtual 495	java/lang/Object:getClass	()Ljava/lang/Class;
    //   281: invokevirtual 496	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   284: ifeq +82 -> 366
    //   287: aload_2
    //   288: checkcast 180	java/io/File
    //   291: astore 14
    //   293: aconst_null
    //   294: astore 13
    //   296: aload 14
    //   298: ifnull +134 -> 432
    //   301: aload 14
    //   303: invokevirtual 499	java/io/File:exists	()Z
    //   306: ifeq +21 -> 327
    //   309: aload 14
    //   311: invokevirtual 502	java/io/File:canRead	()Z
    //   314: ifeq +13 -> 327
    //   317: aload 14
    //   319: invokevirtual 506	java/io/File:length	()J
    //   322: lconst_0
    //   323: lcmp
    //   324: ifne +108 -> 432
    //   327: new 481	com/avast/android/mobilesecurity/engine/s
    //   330: dup
    //   331: invokespecial 507	com/avast/android/mobilesecurity/engine/s:<init>	()V
    //   334: astore 82
    //   336: aload 82
    //   338: getstatic 513	com/avast/android/mobilesecurity/engine/x:j	Lcom/avast/android/mobilesecurity/engine/x;
    //   341: putfield 515	com/avast/android/mobilesecurity/engine/s:a	Lcom/avast/android/mobilesecurity/engine/x;
    //   344: new 253	java/util/LinkedList
    //   347: dup
    //   348: invokespecial 254	java/util/LinkedList:<init>	()V
    //   351: astore 11
    //   353: aload 11
    //   355: aload 82
    //   357: invokeinterface 270 2 0
    //   362: pop
    //   363: goto +1362 -> 1725
    //   366: ldc 151
    //   368: aload_2
    //   369: invokevirtual 495	java/lang/Object:getClass	()Ljava/lang/Class;
    //   372: invokevirtual 496	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   375: ifeq +18 -> 393
    //   378: aload_2
    //   379: checkcast 151	[B
    //   382: checkcast 151	[B
    //   385: astore 13
    //   387: aconst_null
    //   388: astore 14
    //   390: goto -94 -> 296
    //   393: new 481	com/avast/android/mobilesecurity/engine/s
    //   396: dup
    //   397: invokespecial 507	com/avast/android/mobilesecurity/engine/s:<init>	()V
    //   400: astore 10
    //   402: aload 10
    //   404: getstatic 516	com/avast/android/mobilesecurity/engine/x:a	Lcom/avast/android/mobilesecurity/engine/x;
    //   407: putfield 515	com/avast/android/mobilesecurity/engine/s:a	Lcom/avast/android/mobilesecurity/engine/x;
    //   410: new 253	java/util/LinkedList
    //   413: dup
    //   414: invokespecial 254	java/util/LinkedList:<init>	()V
    //   417: astore 11
    //   419: aload 11
    //   421: aload 10
    //   423: invokeinterface 270 2 0
    //   428: pop
    //   429: goto +1296 -> 1725
    //   432: iload 9
    //   434: ifeq +133 -> 567
    //   437: getstatic 30	com/avast/android/mobilesecurity/engine/i:c	Landroid/support/v4/d/c;
    //   440: astore 75
    //   442: aload 75
    //   444: monitorenter
    //   445: getstatic 30	com/avast/android/mobilesecurity/engine/i:c	Landroid/support/v4/d/c;
    //   448: aload 14
    //   450: invokevirtual 183	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   453: invokevirtual 518	android/support/v4/d/c:a	(Ljava/lang/Object;)Ljava/lang/Object;
    //   456: checkcast 240	java/util/List
    //   459: astore 77
    //   461: aload 77
    //   463: ifnull +101 -> 564
    //   466: new 253	java/util/LinkedList
    //   469: dup
    //   470: invokespecial 254	java/util/LinkedList:<init>	()V
    //   473: astore 78
    //   475: aload 77
    //   477: invokeinterface 479 1 0
    //   482: astore 79
    //   484: aload 79
    //   486: invokeinterface 318 1 0
    //   491: ifeq +42 -> 533
    //   494: aload 79
    //   496: invokeinterface 322 1 0
    //   501: checkcast 481	com/avast/android/mobilesecurity/engine/s
    //   504: astore 80
    //   506: aload 80
    //   508: iconst_1
    //   509: putfield 483	com/avast/android/mobilesecurity/engine/s:e	Z
    //   512: aload 78
    //   514: aload 80
    //   516: invokeinterface 270 2 0
    //   521: pop
    //   522: goto -38 -> 484
    //   525: astore 76
    //   527: aload 75
    //   529: monitorexit
    //   530: aload 76
    //   532: athrow
    //   533: aload_0
    //   534: aload 78
    //   536: aload_0
    //   537: ldc_w 485
    //   540: invokestatic 111	com/avast/android/generic/ad:a	(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    //   543: checkcast 485	com/avast/android/mobilesecurity/t
    //   546: invokevirtual 488	com/avast/android/mobilesecurity/t:aH	()Z
    //   549: aconst_null
    //   550: aload_3
    //   551: invokestatic 491	com/avast/android/mobilesecurity/engine/i:a	(Landroid/content/Context;Ljava/util/List;ZLjava/io/File;Landroid/content/pm/PackageInfo;)V
    //   554: aload 75
    //   556: monitorexit
    //   557: aload 78
    //   559: astore 11
    //   561: goto +1164 -> 1725
    //   564: aload 75
    //   566: monitorexit
    //   567: aload_1
    //   568: ifnull +10 -> 578
    //   571: aload_1
    //   572: invokevirtual 45	java/lang/Integer:intValue	()I
    //   575: ifge +1144 -> 1719
    //   578: aload_0
    //   579: invokestatic 48	com/avast/android/mobilesecurity/engine/i:a	(Landroid/content/Context;)Ljava/lang/Integer;
    //   582: astore_1
    //   583: iconst_1
    //   584: istore 15
    //   586: aload_1
    //   587: ifnull +10 -> 597
    //   590: aload_1
    //   591: invokevirtual 45	java/lang/Integer:intValue	()I
    //   594: ifge +42 -> 636
    //   597: new 481	com/avast/android/mobilesecurity/engine/s
    //   600: dup
    //   601: invokespecial 507	com/avast/android/mobilesecurity/engine/s:<init>	()V
    //   604: astore 16
    //   606: aload 16
    //   608: getstatic 520	com/avast/android/mobilesecurity/engine/x:g	Lcom/avast/android/mobilesecurity/engine/x;
    //   611: putfield 515	com/avast/android/mobilesecurity/engine/s:a	Lcom/avast/android/mobilesecurity/engine/x;
    //   614: new 253	java/util/LinkedList
    //   617: dup
    //   618: invokespecial 254	java/util/LinkedList:<init>	()V
    //   621: astore 11
    //   623: aload 11
    //   625: aload 16
    //   627: invokeinterface 270 2 0
    //   632: pop
    //   633: goto +1092 -> 1725
    //   636: new 16	java/util/HashMap
    //   639: dup
    //   640: invokespecial 19	java/util/HashMap:<init>	()V
    //   643: astore 18
    //   645: aload 18
    //   647: getstatic 76	com/avast/android/mobilesecurity/engine/internal/vps/c:b	Lcom/avast/android/mobilesecurity/engine/internal/vps/c;
    //   650: invokevirtual 62	com/avast/android/mobilesecurity/engine/internal/vps/c:a	()S
    //   653: invokestatic 68	java/lang/Short:valueOf	(S)Ljava/lang/Short;
    //   656: invokestatic 521	com/avast/android/mobilesecurity/engine/s:a	()Ljava/lang/Integer;
    //   659: invokevirtual 72	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   662: pop
    //   663: aload 18
    //   665: getstatic 59	com/avast/android/mobilesecurity/engine/internal/vps/c:c	Lcom/avast/android/mobilesecurity/engine/internal/vps/c;
    //   668: invokevirtual 62	com/avast/android/mobilesecurity/engine/internal/vps/c:a	()S
    //   671: invokestatic 68	java/lang/Short:valueOf	(S)Ljava/lang/Short;
    //   674: aload_0
    //   675: invokevirtual 72	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   678: pop
    //   679: aload 18
    //   681: getstatic 74	com/avast/android/mobilesecurity/engine/internal/vps/c:d	Lcom/avast/android/mobilesecurity/engine/internal/vps/c;
    //   684: invokevirtual 62	com/avast/android/mobilesecurity/engine/internal/vps/c:a	()S
    //   687: invokestatic 68	java/lang/Short:valueOf	(S)Ljava/lang/Short;
    //   690: aload_1
    //   691: invokevirtual 72	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   694: pop
    //   695: aload 18
    //   697: getstatic 526	com/avast/android/mobilesecurity/engine/internal/vps/g:a	Lcom/avast/android/mobilesecurity/engine/internal/vps/g;
    //   700: invokevirtual 527	com/avast/android/mobilesecurity/engine/internal/vps/g:a	()S
    //   703: invokestatic 68	java/lang/Short:valueOf	(S)Ljava/lang/Short;
    //   706: aload 14
    //   708: invokevirtual 72	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   711: pop
    //   712: aload 18
    //   714: getstatic 529	com/avast/android/mobilesecurity/engine/internal/vps/g:d	Lcom/avast/android/mobilesecurity/engine/internal/vps/g;
    //   717: invokevirtual 527	com/avast/android/mobilesecurity/engine/internal/vps/g:a	()S
    //   720: invokestatic 68	java/lang/Short:valueOf	(S)Ljava/lang/Short;
    //   723: aload 13
    //   725: invokevirtual 72	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   728: pop
    //   729: aload 18
    //   731: getstatic 531	com/avast/android/mobilesecurity/engine/internal/vps/g:e	Lcom/avast/android/mobilesecurity/engine/internal/vps/g;
    //   734: invokevirtual 527	com/avast/android/mobilesecurity/engine/internal/vps/g:a	()S
    //   737: invokestatic 68	java/lang/Short:valueOf	(S)Ljava/lang/Short;
    //   740: lload 4
    //   742: invokestatic 536	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   745: invokevirtual 72	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   748: pop
    //   749: aload_3
    //   750: ifnull +493 -> 1243
    //   753: aload 18
    //   755: getstatic 538	com/avast/android/mobilesecurity/engine/internal/vps/g:b	Lcom/avast/android/mobilesecurity/engine/internal/vps/g;
    //   758: invokevirtual 527	com/avast/android/mobilesecurity/engine/internal/vps/g:a	()S
    //   761: invokestatic 68	java/lang/Short:valueOf	(S)Ljava/lang/Short;
    //   764: aload_3
    //   765: getfield 178	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   768: invokevirtual 72	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   771: pop
    //   772: aload_0
    //   773: ldc_w 485
    //   776: invokestatic 111	com/avast/android/generic/ad:a	(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    //   779: checkcast 485	com/avast/android/mobilesecurity/t
    //   782: invokevirtual 488	com/avast/android/mobilesecurity/t:aH	()Z
    //   785: istore 26
    //   787: aload 18
    //   789: getstatic 540	com/avast/android/mobilesecurity/engine/internal/vps/g:g	Lcom/avast/android/mobilesecurity/engine/internal/vps/g;
    //   792: invokevirtual 527	com/avast/android/mobilesecurity/engine/internal/vps/g:a	()S
    //   795: invokestatic 68	java/lang/Short:valueOf	(S)Ljava/lang/Short;
    //   798: iload 26
    //   800: invokestatic 132	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   803: invokevirtual 72	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   806: pop
    //   807: aload_0
    //   808: ldc 106
    //   810: invokestatic 111	com/avast/android/generic/ad:a	(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    //   813: checkcast 106	com/avast/android/generic/ae
    //   816: astore 28
    //   818: aload 18
    //   820: getstatic 542	com/avast/android/mobilesecurity/engine/internal/vps/g:f	Lcom/avast/android/mobilesecurity/engine/internal/vps/g;
    //   823: invokevirtual 527	com/avast/android/mobilesecurity/engine/internal/vps/g:a	()S
    //   826: invokestatic 68	java/lang/Short:valueOf	(S)Ljava/lang/Short;
    //   829: aload 28
    //   831: invokevirtual 116	com/avast/android/generic/ae:q	()Ljava/lang/String;
    //   834: invokevirtual 72	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   837: pop
    //   838: aload 18
    //   840: getstatic 544	com/avast/android/mobilesecurity/engine/internal/vps/g:h	Lcom/avast/android/mobilesecurity/engine/internal/vps/g;
    //   843: invokevirtual 527	com/avast/android/mobilesecurity/engine/internal/vps/g:a	()S
    //   846: invokestatic 68	java/lang/Short:valueOf	(S)Ljava/lang/Short;
    //   849: aload 28
    //   851: invokevirtual 121	com/avast/android/generic/ae:r	()Ljava/lang/String;
    //   854: invokevirtual 72	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   857: pop
    //   858: aload 18
    //   860: getstatic 546	com/avast/android/mobilesecurity/engine/internal/vps/g:i	Lcom/avast/android/mobilesecurity/engine/internal/vps/g;
    //   863: invokevirtual 527	com/avast/android/mobilesecurity/engine/internal/vps/g:a	()S
    //   866: invokestatic 68	java/lang/Short:valueOf	(S)Ljava/lang/Short;
    //   869: aload 28
    //   871: invokevirtual 127	com/avast/android/generic/ae:p	()Z
    //   874: invokestatic 132	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   877: invokevirtual 72	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   880: pop
    //   881: aload_0
    //   882: getstatic 548	com/avast/android/mobilesecurity/engine/internal/x:f	Lcom/avast/android/mobilesecurity/engine/internal/x;
    //   885: aload 18
    //   887: invokestatic 149	com/avast/android/mobilesecurity/engine/internal/s:a	(Landroid/content/Context;Lcom/avast/android/mobilesecurity/engine/internal/x;Ljava/util/Map;)Ljava/lang/Object;
    //   890: checkcast 151	[B
    //   893: checkcast 151	[B
    //   896: invokestatic 549	com/avast/android/mobilesecurity/engine/s:a	([B)Ljava/util/List;
    //   899: astore 32
    //   901: aload_3
    //   902: ifnull +604 -> 1506
    //   905: iload 7
    //   907: ifeq +32 -> 939
    //   910: iload 8
    //   912: ifne +27 -> 939
    //   915: getstatic 21	com/avast/android/mobilesecurity/engine/i:a	Ljava/util/HashMap;
    //   918: astore 71
    //   920: aload 71
    //   922: monitorenter
    //   923: getstatic 21	com/avast/android/mobilesecurity/engine/i:a	Ljava/util/HashMap;
    //   926: aload_3
    //   927: getfield 178	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   930: aload 32
    //   932: invokevirtual 72	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   935: pop
    //   936: aload 71
    //   938: monitorexit
    //   939: iload 7
    //   941: ifne +32 -> 973
    //   944: iload 8
    //   946: ifeq +27 -> 973
    //   949: getstatic 23	com/avast/android/mobilesecurity/engine/i:b	Ljava/util/HashMap;
    //   952: astore 68
    //   954: aload 68
    //   956: monitorenter
    //   957: getstatic 23	com/avast/android/mobilesecurity/engine/i:b	Ljava/util/HashMap;
    //   960: aload_3
    //   961: getfield 178	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   964: aload 32
    //   966: invokevirtual 72	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   969: pop
    //   970: aload 68
    //   972: monitorexit
    //   973: iload 7
    //   975: ifeq +412 -> 1387
    //   978: iload 8
    //   980: ifeq +407 -> 1387
    //   983: new 253	java/util/LinkedList
    //   986: dup
    //   987: invokespecial 254	java/util/LinkedList:<init>	()V
    //   990: astore 46
    //   992: new 253	java/util/LinkedList
    //   995: dup
    //   996: invokespecial 254	java/util/LinkedList:<init>	()V
    //   999: astore 47
    //   1001: aload 32
    //   1003: invokeinterface 243 1 0
    //   1008: iconst_1
    //   1009: if_icmpne +704 -> 1713
    //   1012: aload 32
    //   1014: iconst_0
    //   1015: invokeinterface 247 2 0
    //   1020: checkcast 481	com/avast/android/mobilesecurity/engine/s
    //   1023: astore 67
    //   1025: getstatic 513	com/avast/android/mobilesecurity/engine/x:j	Lcom/avast/android/mobilesecurity/engine/x;
    //   1028: aload 67
    //   1030: getfield 515	com/avast/android/mobilesecurity/engine/s:a	Lcom/avast/android/mobilesecurity/engine/x;
    //   1033: invokevirtual 550	com/avast/android/mobilesecurity/engine/x:equals	(Ljava/lang/Object;)Z
    //   1036: ifeq +677 -> 1713
    //   1039: iconst_1
    //   1040: istore 48
    //   1042: iload 48
    //   1044: ifne +237 -> 1281
    //   1047: aload_0
    //   1048: aload_1
    //   1049: getstatic 553	com/avast/android/mobilesecurity/engine/h:b	Lcom/avast/android/mobilesecurity/engine/h;
    //   1052: invokestatic 555	com/avast/android/mobilesecurity/engine/i:a	(Landroid/content/Context;Ljava/lang/Integer;Lcom/avast/android/mobilesecurity/engine/h;)Ljava/util/List;
    //   1055: astore 57
    //   1057: aload_0
    //   1058: aload_1
    //   1059: getstatic 557	com/avast/android/mobilesecurity/engine/h:a	Lcom/avast/android/mobilesecurity/engine/h;
    //   1062: invokestatic 555	com/avast/android/mobilesecurity/engine/i:a	(Landroid/content/Context;Ljava/lang/Integer;Lcom/avast/android/mobilesecurity/engine/h;)Ljava/util/List;
    //   1065: astore 58
    //   1067: aload 32
    //   1069: invokeinterface 479 1 0
    //   1074: astore 59
    //   1076: aload 59
    //   1078: invokeinterface 318 1 0
    //   1083: ifeq +198 -> 1281
    //   1086: aload 59
    //   1088: invokeinterface 322 1 0
    //   1093: checkcast 481	com/avast/android/mobilesecurity/engine/s
    //   1096: astore 60
    //   1098: aload 57
    //   1100: invokeinterface 479 1 0
    //   1105: astore 61
    //   1107: aload 61
    //   1109: invokeinterface 318 1 0
    //   1114: ifeq +55 -> 1169
    //   1117: aload 61
    //   1119: invokeinterface 322 1 0
    //   1124: checkcast 451	com/avast/android/mobilesecurity/engine/e
    //   1127: astore 65
    //   1129: aload 60
    //   1131: getfield 559	com/avast/android/mobilesecurity/engine/s:b	Ljava/lang/String;
    //   1134: ifnull -27 -> 1107
    //   1137: aload 60
    //   1139: getfield 559	com/avast/android/mobilesecurity/engine/s:b	Ljava/lang/String;
    //   1142: invokevirtual 562	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   1145: aload 65
    //   1147: getfield 564	com/avast/android/mobilesecurity/engine/e:a	Ljava/lang/String;
    //   1150: invokevirtual 562	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   1153: invokevirtual 367	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   1156: ifeq -49 -> 1107
    //   1159: aload 46
    //   1161: aload 60
    //   1163: invokeinterface 270 2 0
    //   1168: pop
    //   1169: aload 58
    //   1171: invokeinterface 479 1 0
    //   1176: astore 62
    //   1178: aload 62
    //   1180: invokeinterface 318 1 0
    //   1185: ifeq -109 -> 1076
    //   1188: aload 62
    //   1190: invokeinterface 322 1 0
    //   1195: checkcast 451	com/avast/android/mobilesecurity/engine/e
    //   1198: astore 63
    //   1200: aload 60
    //   1202: getfield 559	com/avast/android/mobilesecurity/engine/s:b	Ljava/lang/String;
    //   1205: ifnull -27 -> 1178
    //   1208: aload 60
    //   1210: getfield 559	com/avast/android/mobilesecurity/engine/s:b	Ljava/lang/String;
    //   1213: invokevirtual 562	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   1216: aload 63
    //   1218: getfield 564	com/avast/android/mobilesecurity/engine/e:a	Ljava/lang/String;
    //   1221: invokevirtual 562	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   1224: invokevirtual 367	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   1227: ifeq -49 -> 1178
    //   1230: aload 47
    //   1232: aload 60
    //   1234: invokeinterface 270 2 0
    //   1239: pop
    //   1240: goto -164 -> 1076
    //   1243: aload 18
    //   1245: getstatic 538	com/avast/android/mobilesecurity/engine/internal/vps/g:b	Lcom/avast/android/mobilesecurity/engine/internal/vps/g;
    //   1248: invokevirtual 527	com/avast/android/mobilesecurity/engine/internal/vps/g:a	()S
    //   1251: invokestatic 68	java/lang/Short:valueOf	(S)Ljava/lang/Short;
    //   1254: aconst_null
    //   1255: checkcast 329	java/lang/String
    //   1258: invokevirtual 72	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1261: pop
    //   1262: goto -490 -> 772
    //   1265: astore 72
    //   1267: aload 71
    //   1269: monitorexit
    //   1270: aload 72
    //   1272: athrow
    //   1273: astore 69
    //   1275: aload 68
    //   1277: monitorexit
    //   1278: aload 69
    //   1280: athrow
    //   1281: aload 46
    //   1283: invokeinterface 446 1 0
    //   1288: ifeq +22 -> 1310
    //   1291: aload 46
    //   1293: new 481	com/avast/android/mobilesecurity/engine/s
    //   1296: dup
    //   1297: getstatic 513	com/avast/android/mobilesecurity/engine/x:j	Lcom/avast/android/mobilesecurity/engine/x;
    //   1300: aconst_null
    //   1301: invokespecial 567	com/avast/android/mobilesecurity/engine/s:<init>	(Lcom/avast/android/mobilesecurity/engine/x;Ljava/lang/String;)V
    //   1304: invokeinterface 270 2 0
    //   1309: pop
    //   1310: aload 47
    //   1312: invokeinterface 446 1 0
    //   1317: ifeq +22 -> 1339
    //   1320: aload 47
    //   1322: new 481	com/avast/android/mobilesecurity/engine/s
    //   1325: dup
    //   1326: getstatic 513	com/avast/android/mobilesecurity/engine/x:j	Lcom/avast/android/mobilesecurity/engine/x;
    //   1329: aconst_null
    //   1330: invokespecial 567	com/avast/android/mobilesecurity/engine/s:<init>	(Lcom/avast/android/mobilesecurity/engine/x;Ljava/lang/String;)V
    //   1333: invokeinterface 270 2 0
    //   1338: pop
    //   1339: getstatic 21	com/avast/android/mobilesecurity/engine/i:a	Ljava/util/HashMap;
    //   1342: astore 49
    //   1344: aload 49
    //   1346: monitorenter
    //   1347: getstatic 21	com/avast/android/mobilesecurity/engine/i:a	Ljava/util/HashMap;
    //   1350: aload_3
    //   1351: getfield 178	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   1354: aload 46
    //   1356: invokevirtual 72	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1359: pop
    //   1360: aload 49
    //   1362: monitorexit
    //   1363: getstatic 23	com/avast/android/mobilesecurity/engine/i:b	Ljava/util/HashMap;
    //   1366: astore 52
    //   1368: aload 52
    //   1370: monitorenter
    //   1371: getstatic 23	com/avast/android/mobilesecurity/engine/i:b	Ljava/util/HashMap;
    //   1374: aload_3
    //   1375: getfield 178	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   1378: aload 47
    //   1380: invokevirtual 72	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1383: pop
    //   1384: aload 52
    //   1386: monitorexit
    //   1387: new 253	java/util/LinkedList
    //   1390: dup
    //   1391: aload 32
    //   1393: invokespecial 449	java/util/LinkedList:<init>	(Ljava/util/Collection;)V
    //   1396: astore 11
    //   1398: aload_0
    //   1399: aload 11
    //   1401: iload 26
    //   1403: aload 14
    //   1405: aload_3
    //   1406: invokestatic 491	com/avast/android/mobilesecurity/engine/i:a	(Landroid/content/Context;Ljava/util/List;ZLjava/io/File;Landroid/content/pm/PackageInfo;)V
    //   1409: iload 15
    //   1411: ifeq +11 -> 1422
    //   1414: aload_0
    //   1415: aload_1
    //   1416: invokevirtual 45	java/lang/Integer:intValue	()I
    //   1419: invokestatic 157	com/avast/android/mobilesecurity/engine/i:a	(Landroid/content/Context;I)V
    //   1422: aload 14
    //   1424: ifnull +301 -> 1725
    //   1427: aload 14
    //   1429: invokevirtual 499	java/io/File:exists	()Z
    //   1432: ifeq +21 -> 1453
    //   1435: aload 14
    //   1437: invokevirtual 502	java/io/File:canRead	()Z
    //   1440: ifeq +13 -> 1453
    //   1443: aload 14
    //   1445: invokevirtual 506	java/io/File:length	()J
    //   1448: lconst_0
    //   1449: lcmp
    //   1450: ifne +275 -> 1725
    //   1453: new 481	com/avast/android/mobilesecurity/engine/s
    //   1456: dup
    //   1457: invokespecial 507	com/avast/android/mobilesecurity/engine/s:<init>	()V
    //   1460: astore 39
    //   1462: aload 39
    //   1464: getstatic 513	com/avast/android/mobilesecurity/engine/x:j	Lcom/avast/android/mobilesecurity/engine/x;
    //   1467: putfield 515	com/avast/android/mobilesecurity/engine/s:a	Lcom/avast/android/mobilesecurity/engine/x;
    //   1470: aload 11
    //   1472: invokeinterface 568 1 0
    //   1477: aload 32
    //   1479: aload 39
    //   1481: invokeinterface 270 2 0
    //   1486: pop
    //   1487: goto +238 -> 1725
    //   1490: astore 50
    //   1492: aload 49
    //   1494: monitorexit
    //   1495: aload 50
    //   1497: athrow
    //   1498: astore 53
    //   1500: aload 52
    //   1502: monitorexit
    //   1503: aload 53
    //   1505: athrow
    //   1506: aload 14
    //   1508: ifnull -121 -> 1387
    //   1511: aload_0
    //   1512: aload_1
    //   1513: getstatic 553	com/avast/android/mobilesecurity/engine/h:b	Lcom/avast/android/mobilesecurity/engine/h;
    //   1516: invokestatic 555	com/avast/android/mobilesecurity/engine/i:a	(Landroid/content/Context;Ljava/lang/Integer;Lcom/avast/android/mobilesecurity/engine/h;)Ljava/util/List;
    //   1519: astore 33
    //   1521: new 253	java/util/LinkedList
    //   1524: dup
    //   1525: aload 32
    //   1527: invokespecial 449	java/util/LinkedList:<init>	(Ljava/util/Collection;)V
    //   1530: astore 34
    //   1532: aload 34
    //   1534: invokeinterface 479 1 0
    //   1539: astore 35
    //   1541: aload 35
    //   1543: invokeinterface 318 1 0
    //   1548: ifeq +94 -> 1642
    //   1551: aload 35
    //   1553: invokeinterface 322 1 0
    //   1558: checkcast 481	com/avast/android/mobilesecurity/engine/s
    //   1561: astore 42
    //   1563: aload 33
    //   1565: invokeinterface 479 1 0
    //   1570: astore 43
    //   1572: aload 43
    //   1574: invokeinterface 318 1 0
    //   1579: ifeq +128 -> 1707
    //   1582: aload 43
    //   1584: invokeinterface 322 1 0
    //   1589: checkcast 451	com/avast/android/mobilesecurity/engine/e
    //   1592: astore 45
    //   1594: aload 42
    //   1596: getfield 559	com/avast/android/mobilesecurity/engine/s:b	Ljava/lang/String;
    //   1599: ifnull -27 -> 1572
    //   1602: aload 42
    //   1604: getfield 559	com/avast/android/mobilesecurity/engine/s:b	Ljava/lang/String;
    //   1607: invokevirtual 562	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   1610: aload 45
    //   1612: getfield 564	com/avast/android/mobilesecurity/engine/e:a	Ljava/lang/String;
    //   1615: invokevirtual 562	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   1618: invokevirtual 367	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   1621: ifeq -49 -> 1572
    //   1624: iconst_1
    //   1625: istore 44
    //   1627: iload 44
    //   1629: ifne -88 -> 1541
    //   1632: aload 35
    //   1634: invokeinterface 571 1 0
    //   1639: goto -98 -> 1541
    //   1642: aload 34
    //   1644: invokeinterface 446 1 0
    //   1649: ifeq +22 -> 1671
    //   1652: aload 34
    //   1654: new 481	com/avast/android/mobilesecurity/engine/s
    //   1657: dup
    //   1658: getstatic 513	com/avast/android/mobilesecurity/engine/x:j	Lcom/avast/android/mobilesecurity/engine/x;
    //   1661: aconst_null
    //   1662: invokespecial 567	com/avast/android/mobilesecurity/engine/s:<init>	(Lcom/avast/android/mobilesecurity/engine/x;Ljava/lang/String;)V
    //   1665: invokeinterface 270 2 0
    //   1670: pop
    //   1671: getstatic 30	com/avast/android/mobilesecurity/engine/i:c	Landroid/support/v4/d/c;
    //   1674: astore 36
    //   1676: aload 36
    //   1678: monitorenter
    //   1679: getstatic 30	com/avast/android/mobilesecurity/engine/i:c	Landroid/support/v4/d/c;
    //   1682: aload 14
    //   1684: invokevirtual 183	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   1687: aload 34
    //   1689: invokevirtual 573	android/support/v4/d/c:a	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1692: pop
    //   1693: aload 36
    //   1695: monitorexit
    //   1696: goto -309 -> 1387
    //   1699: astore 37
    //   1701: aload 36
    //   1703: monitorexit
    //   1704: aload 37
    //   1706: athrow
    //   1707: iconst_0
    //   1708: istore 44
    //   1710: goto -83 -> 1627
    //   1713: iconst_0
    //   1714: istore 48
    //   1716: goto -674 -> 1042
    //   1719: iconst_0
    //   1720: istore 15
    //   1722: goto -1136 -> 586
    //   1725: aload 11
    //   1727: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   132	214	209	finally
    //   241	275	209	finally
    //   445	530	525	finally
    //   533	567	525	finally
    //   923	939	1265	finally
    //   1267	1270	1265	finally
    //   957	973	1273	finally
    //   1275	1278	1273	finally
    //   1347	1363	1490	finally
    //   1492	1495	1490	finally
    //   1371	1387	1498	finally
    //   1500	1503	1498	finally
    //   1679	1704	1699	finally
  }

  public static List a(Context paramContext, Integer paramInteger, String paramString)
  {
    Object localObject;
    if (paramString == null)
    {
      localObject = new LinkedList();
      ((List)localObject).add(new ah(ak.d));
      return localObject;
    }
    if ((paramInteger == null) || (paramInteger.intValue() < 0))
      paramInteger = a(paramContext);
    for (int i = 1; ; i = 0)
    {
      if ((paramInteger != null) && (paramInteger.intValue() >= 0))
      {
        HashMap localHashMap = new HashMap();
        localHashMap.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.c.b.a()), ah.a());
        localHashMap.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.c.c.a()), paramContext);
        localHashMap.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.c.d.a()), paramInteger);
        localHashMap.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.i.a.a()), paramString);
        List localList1 = ah.a((byte[])com.avast.android.mobilesecurity.engine.internal.s.a(paramContext, com.avast.android.mobilesecurity.engine.internal.x.g, localHashMap));
        ah localah1;
        if ((localList1 != null) && (!localList1.isEmpty()))
          localah1 = (ah)localList1.get(0);
        switch (j.b[localah1.a.ordinal()])
        {
        default:
          label224: localObject = localList1;
          label227: if (i != 0)
            a(paramContext, paramInteger.intValue());
          break;
        case 1:
        case 2:
        case 3:
        }
      }
      while (localObject == null)
      {
        localObject = com.avast.android.mobilesecurity.engine.internal.q.a(paramContext, paramInteger, paramString);
        break;
        List localList2 = com.avast.android.mobilesecurity.engine.internal.q.a(paramContext, paramInteger, paramString);
        ah localah2 = null;
        if (localList2 != null)
        {
          boolean bool = localList2.isEmpty();
          localah2 = null;
          if (!bool)
            localah2 = (ah)localList2.get(0);
        }
        if ((localah2 == null) || (localah2.a == ak.a) || (localah2.a == ak.d))
          break label224;
        localObject = localList2;
        break label227;
        localObject = com.avast.android.mobilesecurity.engine.internal.q.a(paramContext, paramInteger, paramString);
        break label227;
        localObject = null;
      }
    }
  }

  public static void a(Context paramContext, int paramInt)
  {
    if (paramInt < 0);
    while (true)
    {
      return;
      HashMap localHashMap = new HashMap();
      localHashMap.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.c.d.a()), Integer.valueOf(paramInt));
      localHashMap.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.c.c.a()), paramContext);
      com.avast.android.mobilesecurity.engine.internal.s.a(paramContext, com.avast.android.mobilesecurity.engine.internal.x.c, localHashMap);
      com.avast.android.mobilesecurity.engine.internal.o.b();
    }
  }

  public static void a(Context paramContext, Integer paramInteger, String paramString, ah paramah, boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((paramah == null) || (paramah.a == null) || (!ak.f.equals(paramah.a)));
    label94: 
    while (true)
    {
      return;
      Integer localInteger;
      if ((paramInteger == null) || (paramInteger.intValue() < 0))
        localInteger = a(paramContext);
      for (int i = 1; ; i = 0)
      {
        if ((localInteger == null) || (localInteger.intValue() < 0))
          break label94;
        com.avast.android.mobilesecurity.engine.internal.q.a(paramContext, localInteger, paramString, paramah, paramBoolean1, paramBoolean2);
        if (i == 0)
          break;
        a(paramContext, localInteger.intValue());
        break;
        localInteger = paramInteger;
      }
    }
  }

  public static void a(Context paramContext, Integer paramInteger, String paramString1, String paramString2, d paramd)
  {
    int i;
    if (paramInteger != null)
    {
      int j = paramInteger.intValue();
      i = 0;
      if (j >= 0);
    }
    else
    {
      paramInteger = a(paramContext);
      i = 1;
    }
    if ((paramInteger == null) || (paramInteger.intValue() < 0));
    while (true)
    {
      return;
      HashMap localHashMap = new HashMap();
      localHashMap.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.c.c.a()), paramContext);
      localHashMap.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.c.d.a()), paramInteger);
      localHashMap.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.d.a.a()), paramString1);
      localHashMap.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.d.b.a()), paramString2);
      localHashMap.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.d.c.a()), Short.valueOf(paramd.a()));
      com.avast.android.mobilesecurity.engine.internal.s.a(paramContext, com.avast.android.mobilesecurity.engine.internal.x.k, localHashMap);
      if (i != 0)
        a(paramContext, paramInteger.intValue());
    }
  }

  private static void a(Context paramContext, List paramList, boolean paramBoolean, File paramFile, PackageInfo paramPackageInfo)
  {
    if ((paramPackageInfo != null) && (paramContext != null) && (paramContext.getApplicationContext().getPackageName().equals(paramPackageInfo.packageName)))
      if (paramList != null);
    while (true)
    {
      return;
      paramList.clear();
      paramList.add(new s());
      a(paramFile, paramPackageInfo, paramList);
      continue;
      if (paramList != null)
      {
        if (!paramBoolean)
        {
          ListIterator localListIterator6 = paramList.listIterator();
          while (localListIterator6.hasNext())
          {
            s locals6 = (s)localListIterator6.next();
            if ((locals6.b != null) && (locals6.b.toUpperCase().contains(" [PUP]")))
              localListIterator6.remove();
          }
        }
        if (paramList.size() < 2)
        {
          if (paramList.size() == 0)
            paramList.add(new s());
          a(paramFile, paramPackageInfo, paramList);
        }
        else
        {
          ListIterator localListIterator1 = paramList.listIterator();
          while (localListIterator1.hasNext())
          {
            s locals5 = (s)localListIterator1.next();
            if ((locals5 == null) || (locals5.a == null))
              localListIterator1.remove();
          }
          s locals1 = new s();
          ListIterator localListIterator2 = paramList.listIterator();
          Object localObject = locals1;
          while (localListIterator2.hasNext())
          {
            s locals4 = (s)localListIterator2.next();
            if (locals4.a.a() > ((s)localObject).a.a())
              localObject = locals4;
          }
          ListIterator localListIterator3 = paramList.listIterator();
          while (localListIterator3.hasNext())
            if (((s)localListIterator3.next()).a.a() < ((s)localObject).a.a())
              localListIterator3.remove();
          if (((s)localObject).b != null)
          {
            HashSet localHashSet1 = new HashSet();
            ListIterator localListIterator4 = paramList.listIterator();
            while (localListIterator4.hasNext())
            {
              s locals2 = (s)localListIterator4.next();
              if (locals2.b != null)
              {
                if (localHashSet1.contains(locals2.b.toLowerCase()))
                  localListIterator4.remove();
                else
                  localHashSet1.add(locals2.b.toLowerCase());
              }
              else
                localListIterator4.remove();
            }
          }
          HashSet localHashSet2 = new HashSet();
          ListIterator localListIterator5 = paramList.listIterator();
          while (localListIterator5.hasNext())
          {
            s locals3 = (s)localListIterator5.next();
            if (localHashSet2.contains(locals3.a))
              localListIterator5.remove();
            else
              localHashSet2.add(locals3.a);
          }
          if (paramList.size() < 1)
            paramList.add(new s());
          a(paramFile, paramPackageInfo, paramList);
        }
      }
    }
  }

  private static void a(File paramFile, PackageInfo paramPackageInfo, List paramList)
  {
    if ((paramFile == null) && (paramPackageInfo == null));
    while (true)
    {
      return;
      if (paramFile == null);
      try
      {
        String str = paramPackageInfo.applicationInfo.sourceDir;
        ListIterator localListIterator = paramList.listIterator();
        s locals = null;
        int i = 0;
        while (true)
        {
          if (!localListIterator.hasNext())
            break label309;
          locals = (s)localListIterator.next();
          switch (j.d[locals.a.ordinal()])
          {
          default:
            m.c(str + " : CLEAN");
            continue;
            str = paramFile.getAbsolutePath();
            break;
          case 1:
            if (!locals.b.toUpperCase().contains(" [PUP]"))
            {
              m.c(str + " : INFECTED (" + locals.b + ")");
              i++;
            }
            break;
          case 2:
            m.c(paramFile.getAbsolutePath() + " : SUSPICIOUS (" + locals.a + ")");
            break;
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          case 9:
          case 10:
          case 11:
            m.c(str + " : ERROR (" + locals.a + ")");
          }
        }
        label309: if ((x.l.equals(locals.a)) && (i == 0))
          m.c(str + " : CLEAN");
      }
      catch (Exception localException)
      {
      }
    }
  }

  public static void a(String paramString)
  {
    com.avast.android.mobilesecurity.engine.internal.q.a(paramString, Integer.valueOf(900));
  }

  public static boolean a(com.avast.android.generic.g.e parame, Context paramContext)
  {
    boolean bool1 = false;
    if (paramContext != null)
    {
      bool1 = false;
      if (parame != null)
        break label14;
    }
    while (true)
    {
      return bool1;
      try
      {
        label14: boolean bool2 = com.avast.android.mobilesecurity.engine.internal.c.a(parame, paramContext, null, null);
        bool1 = bool2;
      }
      catch (Exception localException)
      {
        bool1 = false;
      }
    }
  }

  public static byte[] a(Context paramContext, Integer paramInteger, q paramq)
  {
    byte[] arrayOfByte;
    if ((paramContext == null) || (paramq == null))
      arrayOfByte = null;
    while (true)
    {
      return arrayOfByte;
      if (paramInteger != null);
      try
      {
        if (paramInteger.intValue() < 0)
          paramInteger = a(paramContext);
        for (int i = 1; ; i = 0)
        {
          if ((paramInteger == null) || (paramInteger.intValue() < 0))
            break label221;
          HashMap localHashMap = new HashMap();
          switch (j.c[paramq.ordinal()])
          {
          default:
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          }
          while (true)
          {
            localHashMap.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.c.c.a()), paramContext);
            localHashMap.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.c.d.a()), paramInteger);
            localHashMap.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.c.a.a()), Short.valueOf(paramq.a()));
            arrayOfByte = (byte[])com.avast.android.mobilesecurity.engine.internal.s.a(paramContext, com.avast.android.mobilesecurity.engine.internal.x.a, localHashMap);
            if (i == 0)
              break;
            a(paramContext, paramInteger.intValue());
            break;
            localHashMap.put(Short.valueOf(com.avast.android.mobilesecurity.engine.internal.vps.c.b.a()), y.b());
          }
        }
        label221: arrayOfByte = null;
      }
      catch (Exception localException)
      {
        arrayOfByte = null;
      }
    }
  }

  public static Bundle b(Context paramContext, Integer paramInteger)
  {
    int i;
    if (paramInteger != null)
    {
      int k = paramInteger.intValue();
      i = 0;
      if (k >= 0);
    }
    else
    {
      paramInteger = a(paramContext);
      i = 1;
    }
    Bundle localBundle = null;
    if (paramInteger != null)
    {
      int j = paramInteger.intValue();
      localBundle = null;
      if (j >= 0)
        break label45;
    }
    while (true)
    {
      return localBundle;
      label45: localBundle = com.avast.android.mobilesecurity.engine.internal.c.a(paramContext, null, null);
      if (i != 0)
        a(paramContext, paramInteger.intValue());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.i
 * JD-Core Version:    0.6.2
 */