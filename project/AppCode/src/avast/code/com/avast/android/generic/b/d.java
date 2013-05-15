package com.avast.android.generic.b;

import android.content.Context;
import android.content.Intent;
import com.avast.a.a.a.a.m;
import com.avast.android.generic.ad;
import com.avast.android.generic.ag;
import com.avast.android.generic.b.a.c;
import com.avast.android.generic.service.AvastService;
import java.util.List;

public abstract class d
{
  private h a;
  private AvastService b;
  private f c;
  private f d;
  private String e;
  private String f;
  private boolean g;
  private a h;
  private List i;
  private boolean j;
  private boolean k;
  private String l;
  private m m;
  private boolean n = false;
  private com.avast.android.generic.internet.k o = null;
  private boolean p = false;
  private boolean q = true;
  private boolean r = false;

  public d(AvastService paramAvastService)
  {
    this.b = paramAvastService;
    this.a = null;
    this.c = f.a;
    this.d = f.a;
    this.g = false;
    this.m = m.a;
  }

  public d(AvastService paramAvastService, h paramh)
  {
    this(paramAvastService);
    this.a = paramh;
  }

  private void B()
  {
    if (w())
    {
      this.p = false;
      this.b.a(u());
    }
  }

  private static d a(AvastService paramAvastService, com.avast.android.generic.ae paramae, h paramh, boolean paramBoolean1, boolean paramBoolean2)
  {
    Object localObject;
    try
    {
      String str = paramh.c(j.b).toUpperCase();
      if (q.a(paramAvastService, com.avast.android.generic.t.G, str))
      {
        localObject = new v(paramAvastService);
      }
      else
      {
        d locald = paramAvastService.a(str, paramh, paramBoolean1, paramBoolean2);
        localObject = locald;
        try
        {
          ((d)localObject).n();
        }
        catch (Exception localException2)
        {
          com.avast.android.generic.util.t.a("AvastGeneric", paramAvastService, "Error parsing arguments", localException2);
          ((d)localObject).a(com.avast.android.generic.util.q.a(paramAvastService, localException2), m.b);
        }
      }
    }
    catch (Exception localException1)
    {
      com.avast.android.generic.util.t.a("AvastGeneric", paramAvastService, "Exception in parsing command part", localException1);
      localObject = new t(paramAvastService, paramAvastService.getString(com.avast.android.generic.z.J), m.f);
    }
    return localObject;
  }

  // ERROR //
  public static d a(AvastService paramAvastService, com.avast.android.generic.ae paramae, String paramString)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: ldc 123
    //   4: aload_0
    //   5: new 163	java/lang/StringBuilder
    //   8: dup
    //   9: invokespecial 164	java/lang/StringBuilder:<init>	()V
    //   12: ldc 166
    //   14: invokevirtual 170	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   17: aload_2
    //   18: invokevirtual 170	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   21: invokevirtual 173	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   24: invokestatic 176	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    //   27: new 93	com/avast/android/generic/b/h
    //   30: dup
    //   31: aload_2
    //   32: invokespecial 179	com/avast/android/generic/b/h:<init>	(Ljava/lang/String;)V
    //   35: astore 4
    //   37: aload 4
    //   39: getstatic 91	com/avast/android/generic/b/j:b	Lcom/avast/android/generic/b/j;
    //   42: invokevirtual 181	com/avast/android/generic/b/h:a	(Lcom/avast/android/generic/b/j;)Ljava/lang/String;
    //   45: astore 6
    //   47: aload_0
    //   48: ldc 183
    //   50: invokestatic 188	com/avast/android/generic/ad:a	(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    //   53: checkcast 190	com/avast/android/generic/ae
    //   56: astore 7
    //   58: aload 7
    //   60: aload 6
    //   62: invokevirtual 193	com/avast/android/generic/ae:b	(Ljava/lang/String;)Z
    //   65: istore 8
    //   67: iload 8
    //   69: ifne +498 -> 567
    //   72: aload 7
    //   74: invokevirtual 195	com/avast/android/generic/ae:u	()Z
    //   77: ifeq +490 -> 567
    //   80: aload 7
    //   82: invokevirtual 198	com/avast/android/generic/ae:z	()Ljava/lang/String;
    //   85: aload 6
    //   87: invokevirtual 202	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   90: ifeq +477 -> 567
    //   93: iload_3
    //   94: istore 9
    //   96: iload 9
    //   98: ifne +15 -> 113
    //   101: aload_0
    //   102: aload 6
    //   104: invokestatic 207	com/avast/android/generic/app/passwordrecovery/a:a	(Landroid/content/Context;Ljava/lang/String;)Z
    //   107: ifeq +6 -> 113
    //   110: iload_3
    //   111: istore 9
    //   113: iload 9
    //   115: ifne +39 -> 154
    //   118: ldc 123
    //   120: aload_0
    //   121: ldc 209
    //   123: invokestatic 176	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    //   126: new 211	com/avast/android/generic/b/a/a
    //   129: dup
    //   130: invokespecial 212	com/avast/android/generic/b/a/a:<init>	()V
    //   133: athrow
    //   134: astore 5
    //   136: ldc 123
    //   138: aload_0
    //   139: ldc 214
    //   141: aload 5
    //   143: invokestatic 130	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   146: new 211	com/avast/android/generic/b/a/a
    //   149: dup
    //   150: invokespecial 212	com/avast/android/generic/b/a/a:<init>	()V
    //   153: athrow
    //   154: aconst_null
    //   155: astore 10
    //   157: aload 4
    //   159: getstatic 91	com/avast/android/generic/b/j:b	Lcom/avast/android/generic/b/j;
    //   162: invokevirtual 216	com/avast/android/generic/b/h:b	(Lcom/avast/android/generic/b/j;)Ljava/lang/String;
    //   165: astore 12
    //   167: aload 12
    //   169: ldc 218
    //   171: invokevirtual 202	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   174: ifeq +374 -> 548
    //   177: aload 4
    //   179: getstatic 91	com/avast/android/generic/b/j:b	Lcom/avast/android/generic/b/j;
    //   182: invokevirtual 96	com/avast/android/generic/b/h:c	(Lcom/avast/android/generic/b/j;)Ljava/lang/String;
    //   185: pop
    //   186: aload 4
    //   188: getstatic 91	com/avast/android/generic/b/j:b	Lcom/avast/android/generic/b/j;
    //   191: invokevirtual 96	com/avast/android/generic/b/h:c	(Lcom/avast/android/generic/b/j;)Ljava/lang/String;
    //   194: astore 29
    //   196: aload 4
    //   198: getstatic 91	com/avast/android/generic/b/j:b	Lcom/avast/android/generic/b/j;
    //   201: invokevirtual 216	com/avast/android/generic/b/h:b	(Lcom/avast/android/generic/b/j;)Ljava/lang/String;
    //   204: ldc 220
    //   206: invokevirtual 202	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   209: istore 34
    //   211: aconst_null
    //   212: astore 10
    //   214: iload 34
    //   216: ifeq +148 -> 364
    //   219: aload 4
    //   221: getstatic 91	com/avast/android/generic/b/j:b	Lcom/avast/android/generic/b/j;
    //   224: invokevirtual 96	com/avast/android/generic/b/h:c	(Lcom/avast/android/generic/b/j;)Ljava/lang/String;
    //   227: pop
    //   228: ldc 220
    //   230: astore 36
    //   232: aload 36
    //   234: astore 32
    //   236: iconst_0
    //   237: istore 33
    //   239: aload 4
    //   241: getstatic 91	com/avast/android/generic/b/j:b	Lcom/avast/android/generic/b/j;
    //   244: invokevirtual 96	com/avast/android/generic/b/h:c	(Lcom/avast/android/generic/b/j;)Ljava/lang/String;
    //   247: ldc 222
    //   249: invokevirtual 202	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   252: ifeq +150 -> 402
    //   255: ldc 123
    //   257: ldc 224
    //   259: invokestatic 227	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   262: iload 33
    //   264: istore 15
    //   266: aload 29
    //   268: astore 13
    //   270: aload 32
    //   272: astore 17
    //   274: iload_3
    //   275: istore 14
    //   277: iload_3
    //   278: istore 16
    //   280: iload 16
    //   282: ifne +260 -> 542
    //   285: ldc 123
    //   287: ldc 229
    //   289: invokestatic 227	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   292: aload 13
    //   294: ldc 231
    //   296: invokevirtual 202	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   299: ifeq +151 -> 450
    //   302: aload 4
    //   304: getstatic 91	com/avast/android/generic/b/j:b	Lcom/avast/android/generic/b/j;
    //   307: invokevirtual 96	com/avast/android/generic/b/h:c	(Lcom/avast/android/generic/b/j;)Ljava/lang/String;
    //   310: pop
    //   311: aload_0
    //   312: aload_1
    //   313: aload 4
    //   315: iload 16
    //   317: iload_3
    //   318: invokestatic 233	com/avast/android/generic/b/d:a	(Lcom/avast/android/generic/service/AvastService;Lcom/avast/android/generic/ae;Lcom/avast/android/generic/b/h;ZZ)Lcom/avast/android/generic/b/d;
    //   321: astore 18
    //   323: aload 18
    //   325: iload 16
    //   327: invokevirtual 236	com/avast/android/generic/b/d:a	(Z)V
    //   330: aload 18
    //   332: aload 17
    //   334: invokevirtual 238	com/avast/android/generic/b/d:a	(Ljava/lang/String;)V
    //   337: aload 18
    //   339: iload_3
    //   340: invokevirtual 240	com/avast/android/generic/b/d:c	(Z)V
    //   343: iload 15
    //   345: ifeq +189 -> 534
    //   348: ldc 123
    //   350: aload_0
    //   351: ldc 242
    //   353: invokestatic 176	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    //   356: new 211	com/avast/android/generic/b/a/a
    //   359: dup
    //   360: invokespecial 212	com/avast/android/generic/b/a/a:<init>	()V
    //   363: athrow
    //   364: aload 4
    //   366: getstatic 244	com/avast/android/generic/b/j:a	Lcom/avast/android/generic/b/j;
    //   369: invokevirtual 96	com/avast/android/generic/b/h:c	(Lcom/avast/android/generic/b/j;)Ljava/lang/String;
    //   372: astore 35
    //   374: aload 35
    //   376: astore 36
    //   378: goto -146 -> 232
    //   381: astore 30
    //   383: aload 4
    //   385: getstatic 91	com/avast/android/generic/b/j:b	Lcom/avast/android/generic/b/j;
    //   388: invokevirtual 96	com/avast/android/generic/b/h:c	(Lcom/avast/android/generic/b/j;)Ljava/lang/String;
    //   391: pop
    //   392: aload 10
    //   394: astore 32
    //   396: iload_3
    //   397: istore 33
    //   399: goto -160 -> 239
    //   402: ldc 123
    //   404: ldc 246
    //   406: invokestatic 227	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   409: aload 29
    //   411: astore 13
    //   413: aload 32
    //   415: astore 17
    //   417: iload_3
    //   418: istore 16
    //   420: iload 33
    //   422: istore 15
    //   424: iconst_0
    //   425: istore 14
    //   427: goto -147 -> 280
    //   430: astore 11
    //   432: ldc 123
    //   434: aload_0
    //   435: ldc 248
    //   437: aload 11
    //   439: invokestatic 130	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   442: new 211	com/avast/android/generic/b/a/a
    //   445: dup
    //   446: invokespecial 212	com/avast/android/generic/b/a/a:<init>	()V
    //   449: athrow
    //   450: aload 13
    //   452: ldc 250
    //   454: invokevirtual 202	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   457: ifeq +20 -> 477
    //   460: aload 4
    //   462: getstatic 91	com/avast/android/generic/b/j:b	Lcom/avast/android/generic/b/j;
    //   465: invokevirtual 96	com/avast/android/generic/b/h:c	(Lcom/avast/android/generic/b/j;)Ljava/lang/String;
    //   468: pop
    //   469: goto -158 -> 311
    //   472: astore 24
    //   474: goto -163 -> 311
    //   477: aload 13
    //   479: ldc 252
    //   481: invokevirtual 202	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   484: ifeq +20 -> 504
    //   487: aload 4
    //   489: getstatic 91	com/avast/android/generic/b/j:b	Lcom/avast/android/generic/b/j;
    //   492: invokevirtual 96	com/avast/android/generic/b/h:c	(Lcom/avast/android/generic/b/j;)Ljava/lang/String;
    //   495: pop
    //   496: goto -185 -> 311
    //   499: astore 22
    //   501: goto -190 -> 311
    //   504: new 254	com/avast/android/generic/b/k
    //   507: dup
    //   508: aload_0
    //   509: aload 17
    //   511: aload 13
    //   513: invokespecial 257	com/avast/android/generic/b/k:<init>	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   516: pop
    //   517: aload 4
    //   519: getstatic 91	com/avast/android/generic/b/j:b	Lcom/avast/android/generic/b/j;
    //   522: invokevirtual 96	com/avast/android/generic/b/h:c	(Lcom/avast/android/generic/b/j;)Ljava/lang/String;
    //   525: pop
    //   526: goto -215 -> 311
    //   529: astore 20
    //   531: goto -220 -> 311
    //   534: aload 18
    //   536: areturn
    //   537: astore 26
    //   539: goto -228 -> 311
    //   542: iload 14
    //   544: istore_3
    //   545: goto -234 -> 311
    //   548: aload 12
    //   550: astore 13
    //   552: iload_3
    //   553: istore 14
    //   555: iconst_0
    //   556: istore 15
    //   558: iconst_0
    //   559: istore 16
    //   561: aconst_null
    //   562: astore 17
    //   564: goto -284 -> 280
    //   567: iload 8
    //   569: istore 9
    //   571: goto -475 -> 96
    //
    // Exception table:
    //   from	to	target	type
    //   37	47	134	java/lang/Exception
    //   196	232	381	com/avast/android/generic/b/a/c
    //   364	374	381	com/avast/android/generic/b/a/c
    //   157	196	430	java/lang/Exception
    //   196	232	430	java/lang/Exception
    //   239	262	430	java/lang/Exception
    //   364	374	430	java/lang/Exception
    //   383	409	430	java/lang/Exception
    //   460	469	472	java/lang/Exception
    //   487	496	499	java/lang/Exception
    //   504	526	529	java/lang/Exception
    //   302	311	537	java/lang/Exception
  }

  public static k a(Context paramContext, String paramString)
  {
    com.avast.android.generic.util.t.a("AvastGeneric", paramContext, "Parsing " + paramString);
    h localh = new h(paramString);
    try
    {
      String str1 = localh.a(j.b);
      com.avast.android.generic.ae localae = (com.avast.android.generic.ae)ad.a(paramContext, ag.class);
      bool1 = localae.b(str1);
      if ((!bool1) && (localae.u()) && (localae.z().equals(str1)))
      {
        i1 = 1;
        if ((i1 == 0) && (com.avast.android.generic.app.passwordrecovery.a.a(paramContext, str1)))
          i1 = 1;
        if (i1 == 0)
        {
          com.avast.android.generic.util.t.a("AvastGeneric", paramContext, "Passwords not matching");
          localk = new k();
          return localk;
        }
      }
    }
    catch (Exception localException1)
    {
      while (true)
      {
        boolean bool1;
        com.avast.android.generic.util.t.a("AvastGeneric", "Exception in parsing password token", localException1);
        k localk = new k();
        continue;
        Object localObject1 = null;
        while (true)
        {
          while (true)
          {
            Object localObject2;
            try
            {
              while (true)
              {
                localObject2 = localh.b(j.b);
                if (!((String)localObject2).equals("IC"))
                  break label450;
                localh.c(j.b);
                String str2 = localh.c(j.b);
                localObject2 = str2;
                try
                {
                  boolean bool2 = localh.b(j.b).equals("-9999");
                  localObject1 = null;
                  if (bool2)
                    localh.c(j.b);
                  String str3;
                  for (Object localObject4 = "-9999"; ; localObject4 = str3)
                  {
                    while (true)
                    {
                      localObject3 = localObject4;
                      i2 = 0;
                      localh.c(j.b);
                      try
                      {
                        localh.c(j.b).toUpperCase();
                        if (i2 == 0)
                          break label359;
                        localk = new k();
                      }
                      catch (Exception localException3)
                      {
                        com.avast.android.generic.util.t.a("AvastGeneric", paramContext, "Exception in parsing command part", localException3);
                        localk = new k();
                      }
                    }
                    break;
                    str3 = localh.c(j.a);
                  }
                }
                catch (c localc)
                {
                  while (true)
                  {
                    localh.c(j.b);
                    localObject3 = localObject1;
                    i2 = 1;
                  }
                }
              }
            }
            catch (Exception localException2)
            {
              com.avast.android.generic.util.t.a("AvastGeneric", paramContext, "Exception in parsing command header", localException2);
              localk = new k();
            }
            break;
            label359: if (((String)localObject2).equals("ALL"))
            {
              localk = new k(r.c, localObject3);
              break;
            }
            if (((String)localObject2).equals("FO"))
            {
              localk = new k(r.b, localObject3);
              break;
            }
            try
            {
              localk = new k(paramContext, localObject3, (String)localObject2);
            }
            catch (Exception localException4)
            {
              localk = new k(paramContext, localObject3, "AT");
            }
          }
          break;
          label450: int i2 = 0;
          Object localObject3 = null;
        }
        int i1 = bool1;
      }
    }
  }

  public static void a(Context paramContext, Intent paramIntent, k paramk, String paramString1, String paramString2, String paramString3)
  {
    switch (e.a[paramk.a.ordinal()])
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      return;
      com.avast.android.generic.util.t.a(paramContext, "Skip dispatching invalid message " + paramString3);
      continue;
      com.avast.android.generic.util.t.a(paramContext, "Dispatch/cancel message " + paramString3 + " to tool " + paramk.c);
      com.avast.android.generic.util.ae.a(paramContext, paramIntent, paramk.c);
      continue;
      com.avast.android.generic.util.t.a(paramContext, "Dispatch/cancel message " + paramString3 + " to myself (FIRST ONE) directly");
      com.avast.android.generic.util.ae.a(paramContext, paramIntent, paramContext.getPackageName());
      continue;
      com.avast.android.generic.util.t.a(paramContext, "Dispatch/cancel message " + paramString3 + " to myself (MULTIPLE) directly");
      com.avast.android.generic.util.ae.a(paramContext, paramIntent, paramContext.getPackageName());
      com.avast.android.generic.util.t.a(paramContext, "Additionally dispatch message " + paramString3 + " to MULTIPLE");
      com.avast.android.generic.util.z.a(paramContext, paramString1, paramString2, paramString3);
    }
  }

  public static void a(Context paramContext, Intent paramIntent, String paramString1, String paramString2, String paramString3)
  {
    a(paramContext, paramIntent, a(paramContext, paramString3), paramString1, paramString2, paramString3);
  }

  public boolean A()
  {
    return this.q;
  }

  public void a(int paramInt)
  {
    a(paramInt, false);
  }

  public void a(int paramInt, m paramm)
  {
    a(paramInt, paramm, false);
  }

  public void a(int paramInt, m paramm, boolean paramBoolean)
  {
    a(g().getString(paramInt), paramm, true);
  }

  public void a(int paramInt, boolean paramBoolean)
  {
    a(g().getString(paramInt), paramBoolean);
  }

  public void a(a parama)
  {
    this.h = parama;
  }

  protected void a(f paramf)
  {
    this.c = paramf;
  }

  public void a(String paramString)
  {
    this.l = paramString;
  }

  public void a(String paramString, m paramm)
  {
    a(paramString, paramm, false);
  }

  public void a(String paramString, m paramm, boolean paramBoolean)
  {
    this.c = f.b;
    this.e = paramString;
    this.m = paramm;
    this.g = true;
    if (paramBoolean)
      B();
  }

  public void a(String paramString, boolean paramBoolean)
  {
    this.c = f.b;
    this.e = paramString;
    this.g = false;
    if (paramBoolean)
      B();
  }

  public void a(boolean paramBoolean)
  {
    this.k = paramBoolean;
  }

  public boolean a()
  {
    return this.n;
  }

  public String b()
  {
    return this.l;
  }

  public void b(String paramString)
  {
    a(paramString, false);
  }

  public void b(boolean paramBoolean)
  {
    this.j = paramBoolean;
  }

  public void c(boolean paramBoolean)
  {
    this.q = paramBoolean;
  }

  public boolean c()
  {
    return this.k;
  }

  public boolean d()
  {
    if (!this.g);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public f e()
  {
    return this.c;
  }

  public String f()
  {
    return this.e;
  }

  protected AvastService g()
  {
    return this.b;
  }

  protected h h()
  {
    return this.a;
  }

  public Object i()
  {
    return this.e;
  }

  public m j()
  {
    if (this.g);
    for (m localm = this.m; ; localm = m.a)
      return localm;
  }

  public f k()
  {
    return this.d;
  }

  public String l()
  {
    return this.f;
  }

  protected List m()
  {
    return this.i;
  }

  protected abstract void n();

  protected abstract void o();

  protected abstract boolean p();

  protected abstract boolean q();

  protected abstract boolean r();

  protected void s()
  {
    this.g = false;
  }

  protected void t()
  {
  }

  protected a u()
  {
    return this.h;
  }

  public boolean v()
  {
    return this.p;
  }

  public boolean w()
  {
    return this.r;
  }

  public com.avast.android.generic.internet.k x()
  {
    return this.o;
  }

  public boolean y()
  {
    return true;
  }

  public void z()
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.b.d
 * JD-Core Version:    0.6.2
 */