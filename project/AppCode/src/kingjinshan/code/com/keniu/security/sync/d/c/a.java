package com.keniu.security.sync.d.c;

import android.util.Log;
import com.keniu.security.sync.d.a.c;
import com.keniu.security.sync.d.d.a.ad;
import com.keniu.security.sync.d.d.a.cf;
import com.keniu.security.sync.d.d.a.dx;
import com.keniu.security.sync.d.d.a.ge;
import com.keniu.security.sync.d.d.a.gj;
import com.keniu.security.sync.d.d.a.gn;
import com.keniu.security.sync.d.d.a.hm;
import com.keniu.security.sync.d.d.a.ie;
import com.keniu.security.sync.d.d.a.r;
import com.keniu.security.sync.d.e.d;
import com.keniu.security.sync.d.e.e;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

public final class a
{
  private static final String a = "TpanServ.AppManager";
  private com.keniu.security.sync.d.a.a b = new com.keniu.security.sync.d.a.a();
  private com.keniu.security.sync.d.a.b c = new com.keniu.security.sync.d.a.b();
  private c d = new b(this);

  public static String a(cf paramcf)
  {
    gj localgj;
    if (paramcf != null)
    {
      localgj = paramcf.n();
      if (localgj == null);
    }
    for (String str = localgj.k(); ; str = null)
      return str;
  }

  public static String a(cf paramcf, String paramString)
  {
    gj localgj;
    if (paramcf != null)
    {
      Iterator localIterator = paramcf.p().iterator();
      do
      {
        if (!localIterator.hasNext())
          break;
        localgj = (gj)localIterator.next();
      }
      while (!paramString.equals(localgj.q()));
    }
    for (String str = localgj.k(); ; str = null)
      return str;
  }

  public final int a(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    File localFile = new File(paramString3);
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.add(5, -1);
    String str1 = new SimpleDateFormat("yyyyMMddHHmmss").format(localCalendar.getTime());
    if (paramInt > 0)
      str1 = str1 + "__" + paramInt;
    String str2 = localFile.getName() + "_" + str1;
    while (true)
    {
      int m;
      int n;
      gn localgn2;
      try
      {
        dx localdx2 = com.keniu.security.sync.d.a.a.a(paramString1, paramString2, str2, localFile.length());
        i = 0;
        localdx1 = localdx2;
        if (i != 0)
        {
          m = i;
          return m;
        }
      }
      catch (d locald4)
      {
        Log.e("TpanServ.AppManager", locald4.getMessage(), locald4);
        i = locald4.a();
        localdx1 = null;
        continue;
      }
      catch (Exception localException1)
      {
        Log.e("TpanServ.AppManager", localException1.getMessage(), localException1);
        int i = -1;
        dx localdx1 = null;
        continue;
        int j = localdx1.k().k();
        if (j != 0)
        {
          m = j;
          continue;
        }
        gn localgn1 = localdx1.p();
        int k;
        hm localhm1;
        try
        {
          hm localhm2 = com.keniu.security.sync.d.a.b.a(localgn1);
          k = i;
          localhm1 = localhm2;
          if (k != 0)
            m = k;
        }
        catch (d locald3)
        {
          Log.e("TpanServ.AppManager", locald3.getMessage(), locald3);
          k = locald3.a();
          localhm1 = null;
          continue;
        }
        catch (Exception localException2)
        {
          Log.e("TpanServ.AppManager", localException2.getMessage(), localException2);
          k = -1;
          localhm1 = null;
          continue;
          m = localhm1.k().k();
        }
        if (m != 0)
          continue;
        try
        {
          ie localie2 = this.c.a(localhm1.p(), localgn1, localFile, str2, this.d);
          localie1 = localie2;
          n = k;
          if (n != 0)
            m = n;
        }
        catch (d locald2)
        {
          Log.e("TpanServ.AppManager", locald2.getMessage(), locald2);
          n = locald2.a();
          localie1 = null;
          continue;
        }
        catch (e locale)
        {
          Log.e("TpanServ.AppManager", locale.getMessage(), locale);
          n = locale.a();
          localie1 = null;
          continue;
        }
        catch (OutOfMemoryError localOutOfMemoryError)
        {
          Log.e("TpanServ.AppManager", localOutOfMemoryError.getMessage(), localOutOfMemoryError);
          n = -3;
          localie1 = null;
          continue;
        }
        catch (Exception localException3)
        {
          Log.e("TpanServ.AppManager", localException3.getMessage(), localException3);
          n = -1;
          ie localie1 = null;
          continue;
          int i1 = localie1.k().k();
          if (i1 != 0)
          {
            m = i1;
            continue;
          }
          localgn2 = localie1.n();
        }
      }
      try
      {
        r localr2 = com.keniu.security.sync.d.a.a.a(localgn2, paramString1, str2);
        int i2 = n;
        localr1 = localr2;
        m = i2;
        if (m != 0)
          continue;
        m = localr1.k().k();
      }
      catch (d locald1)
      {
        while (true)
        {
          Log.e("TpanServ.AppManager", locald1.getMessage(), locald1);
          m = locald1.a();
          localr1 = null;
        }
      }
      catch (Exception localException4)
      {
        while (true)
        {
          Log.e("TpanServ.AppManager", localException4.getMessage(), localException4);
          m = -1;
          r localr1 = null;
        }
      }
    }
  }

  // ERROR //
  public final int a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    // Byte code:
    //   0: new 89	java/io/File
    //   3: dup
    //   4: aload_3
    //   5: invokespecial 92	java/io/File:<init>	(Ljava/lang/String;)V
    //   8: invokevirtual 133	java/io/File:getName	()Ljava/lang/String;
    //   11: astore 5
    //   13: aload_0
    //   14: ldc 199
    //   16: invokestatic 204	com/keniu/security/sync/i:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   19: aload_0
    //   20: getfield 30	com/keniu/security/sync/d/c/a:b	Lcom/keniu/security/sync/d/a/a;
    //   23: aload_1
    //   24: aload_2
    //   25: aload 5
    //   27: aload 4
    //   29: invokevirtual 207	com/keniu/security/sync/d/a/a:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/cx;
    //   32: astore 38
    //   34: aload 38
    //   36: astore 9
    //   38: iconst_0
    //   39: istore 8
    //   41: iload 8
    //   43: ifeq +86 -> 129
    //   46: iload 8
    //   48: istore 16
    //   50: iload 16
    //   52: ireturn
    //   53: astore 36
    //   55: ldc 8
    //   57: aload 36
    //   59: invokevirtual 208	java/io/IOException:getMessage	()Ljava/lang/String;
    //   62: aload 36
    //   64: invokestatic 151	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   67: pop
    //   68: iconst_m1
    //   69: istore 8
    //   71: aconst_null
    //   72: astore 9
    //   74: goto -33 -> 41
    //   77: astore 34
    //   79: ldc 8
    //   81: aload 34
    //   83: invokevirtual 145	com/keniu/security/sync/d/e/d:getMessage	()Ljava/lang/String;
    //   86: aload 34
    //   88: invokestatic 151	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   91: pop
    //   92: aload 34
    //   94: invokevirtual 154	com/keniu/security/sync/d/e/d:a	()I
    //   97: istore 8
    //   99: aconst_null
    //   100: astore 9
    //   102: goto -61 -> 41
    //   105: astore 6
    //   107: ldc 8
    //   109: aload 6
    //   111: invokevirtual 155	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   114: aload 6
    //   116: invokestatic 151	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   119: pop
    //   120: iconst_m1
    //   121: istore 8
    //   123: aconst_null
    //   124: astore 9
    //   126: goto -85 -> 41
    //   129: aload 9
    //   131: invokevirtual 211	com/keniu/security/sync/d/d/a/cx:k	()Lcom/keniu/security/sync/d/d/a/ge;
    //   134: invokevirtual 164	com/keniu/security/sync/d/d/a/ge:k	()I
    //   137: istore 10
    //   139: iload 10
    //   141: ifeq +10 -> 151
    //   144: iload 10
    //   146: istore 16
    //   148: goto -98 -> 50
    //   151: aload 9
    //   153: invokevirtual 212	com/keniu/security/sync/d/d/a/cx:n	()Lcom/keniu/security/sync/d/d/a/gn;
    //   156: astore 11
    //   158: aload 11
    //   160: invokevirtual 216	com/keniu/security/sync/d/d/a/gn:q	()I
    //   163: ifne +48 -> 211
    //   166: aload 9
    //   168: invokevirtual 217	com/keniu/security/sync/d/d/a/cx:q	()I
    //   171: istore 32
    //   173: iload 32
    //   175: ifle +36 -> 211
    //   178: aload_0
    //   179: getfield 35	com/keniu/security/sync/d/c/a:c	Lcom/keniu/security/sync/d/a/b;
    //   182: aload 9
    //   184: invokevirtual 218	com/keniu/security/sync/d/d/a/cx:p	()Ljava/util/List;
    //   187: aload_3
    //   188: invokevirtual 221	com/keniu/security/sync/d/a/b:a	(Ljava/util/List;Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/hs;
    //   191: pop
    //   192: iload 8
    //   194: istore 15
    //   196: iconst_1
    //   197: istore 13
    //   199: iload 15
    //   201: ifeq +137 -> 338
    //   204: iload 15
    //   206: istore 16
    //   208: goto -158 -> 50
    //   211: aload_0
    //   212: getfield 35	com/keniu/security/sync/d/c/a:c	Lcom/keniu/security/sync/d/a/b;
    //   215: aload 11
    //   217: aload_3
    //   218: invokevirtual 224	com/keniu/security/sync/d/a/b:a	(Lcom/keniu/security/sync/d/d/a/gn;Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/hs;
    //   221: pop
    //   222: iload 8
    //   224: istore 15
    //   226: iconst_0
    //   227: istore 13
    //   229: goto -30 -> 199
    //   232: astore 29
    //   234: iconst_0
    //   235: istore 13
    //   237: ldc 8
    //   239: aload 29
    //   241: invokevirtual 145	com/keniu/security/sync/d/e/d:getMessage	()Ljava/lang/String;
    //   244: aload 29
    //   246: invokestatic 151	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   249: pop
    //   250: aload 29
    //   252: invokevirtual 154	com/keniu/security/sync/d/e/d:a	()I
    //   255: istore 15
    //   257: goto -58 -> 199
    //   260: astore 27
    //   262: iconst_0
    //   263: istore 13
    //   265: ldc 8
    //   267: aload 27
    //   269: invokevirtual 179	com/keniu/security/sync/d/e/e:getMessage	()Ljava/lang/String;
    //   272: aload 27
    //   274: invokestatic 151	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   277: pop
    //   278: aload 27
    //   280: invokevirtual 180	com/keniu/security/sync/d/e/e:a	()I
    //   283: istore 15
    //   285: goto -86 -> 199
    //   288: astore 25
    //   290: iconst_0
    //   291: istore 13
    //   293: ldc 8
    //   295: aload 25
    //   297: invokevirtual 225	com/keniu/security/sync/d/b/a:getMessage	()Ljava/lang/String;
    //   300: aload 25
    //   302: invokestatic 151	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   305: pop
    //   306: invokestatic 226	com/keniu/security/sync/d/b/a:a	()I
    //   309: istore 15
    //   311: goto -112 -> 199
    //   314: astore 12
    //   316: iconst_0
    //   317: istore 13
    //   319: ldc 8
    //   321: aload 12
    //   323: invokevirtual 155	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   326: aload 12
    //   328: invokestatic 151	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   331: pop
    //   332: iconst_m1
    //   333: istore 15
    //   335: goto -136 -> 199
    //   338: iload 13
    //   340: ifne +132 -> 472
    //   343: aload_0
    //   344: getfield 30	com/keniu/security/sync/d/c/a:b	Lcom/keniu/security/sync/d/a/a;
    //   347: pop
    //   348: aload 11
    //   350: aload_1
    //   351: aload 5
    //   353: invokestatic 189	com/keniu/security/sync/d/a/a:a	(Lcom/keniu/security/sync/d/d/a/gn;Ljava/lang/String;Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/r;
    //   356: astore 23
    //   358: iload 15
    //   360: istore 24
    //   362: aload 23
    //   364: astore 19
    //   366: iload 24
    //   368: istore 16
    //   370: iload 16
    //   372: ifne -322 -> 50
    //   375: aload 19
    //   377: invokevirtual 192	com/keniu/security/sync/d/d/a/r:k	()Lcom/keniu/security/sync/d/d/a/ge;
    //   380: invokevirtual 164	com/keniu/security/sync/d/d/a/ge:k	()I
    //   383: istore 16
    //   385: goto -335 -> 50
    //   388: astore 20
    //   390: ldc 8
    //   392: aload 20
    //   394: invokevirtual 145	com/keniu/security/sync/d/e/d:getMessage	()Ljava/lang/String;
    //   397: aload 20
    //   399: invokestatic 151	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   402: pop
    //   403: aload 20
    //   405: invokevirtual 154	com/keniu/security/sync/d/e/d:a	()I
    //   408: istore 16
    //   410: aconst_null
    //   411: astore 19
    //   413: goto -43 -> 370
    //   416: astore 17
    //   418: ldc 8
    //   420: aload 17
    //   422: invokevirtual 155	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   425: aload 17
    //   427: invokestatic 151	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   430: pop
    //   431: iconst_m1
    //   432: istore 16
    //   434: aconst_null
    //   435: astore 19
    //   437: goto -67 -> 370
    //   440: astore 12
    //   442: iconst_1
    //   443: istore 13
    //   445: goto -126 -> 319
    //   448: astore 25
    //   450: iconst_1
    //   451: istore 13
    //   453: goto -160 -> 293
    //   456: astore 27
    //   458: iconst_1
    //   459: istore 13
    //   461: goto -196 -> 265
    //   464: astore 29
    //   466: iconst_1
    //   467: istore 13
    //   469: goto -232 -> 237
    //   472: iload 10
    //   474: istore 16
    //   476: goto -426 -> 50
    //
    // Exception table:
    //   from	to	target	type
    //   13	34	53	java/io/IOException
    //   13	34	77	com/keniu/security/sync/d/e/d
    //   13	34	105	java/lang/Exception
    //   158	173	232	com/keniu/security/sync/d/e/d
    //   211	222	232	com/keniu/security/sync/d/e/d
    //   158	173	260	com/keniu/security/sync/d/e/e
    //   211	222	260	com/keniu/security/sync/d/e/e
    //   158	173	288	com/keniu/security/sync/d/b/a
    //   211	222	288	com/keniu/security/sync/d/b/a
    //   158	173	314	java/lang/Exception
    //   211	222	314	java/lang/Exception
    //   343	358	388	com/keniu/security/sync/d/e/d
    //   343	358	416	java/lang/Exception
    //   178	192	440	java/lang/Exception
    //   178	192	448	com/keniu/security/sync/d/b/a
    //   178	192	456	com/keniu/security/sync/d/e/e
    //   178	192	464	com/keniu/security/sync/d/e/d
  }

  public final cf a(String paramString1, String paramString2)
  {
    try
    {
      cf localcf2 = com.keniu.security.sync.d.a.a.a(paramString1, paramString2);
      localcf1 = localcf2;
      return localcf1;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        cf localcf1 = null;
      }
    }
    catch (ExceptionInInitializerError localExceptionInInitializerError)
    {
      label26: break label26;
    }
  }

  // ERROR //
  public final String a(String paramString1, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: new 237	java/util/Date
    //   3: dup
    //   4: invokespecial 238	java/util/Date:<init>	()V
    //   7: invokevirtual 240	java/util/Date:getTime	()J
    //   10: lstore 17
    //   12: aload_0
    //   13: getfield 30	com/keniu/security/sync/d/c/a:b	Lcom/keniu/security/sync/d/a/a;
    //   16: pop
    //   17: aload_1
    //   18: aload_2
    //   19: aload_3
    //   20: lload 17
    //   22: invokestatic 243	com/keniu/security/sync/d/a/a:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/keniu/security/sync/d/d/a/cl;
    //   25: astore 20
    //   27: aload 20
    //   29: astore 9
    //   31: aload 9
    //   33: invokevirtual 246	com/keniu/security/sync/d/d/a/cl:k	()Lcom/keniu/security/sync/d/d/a/ge;
    //   36: invokevirtual 164	com/keniu/security/sync/d/d/a/ge:k	()I
    //   39: istore 23
    //   41: iload 23
    //   43: istore 8
    //   45: iload 8
    //   47: ifeq +81 -> 128
    //   50: aconst_null
    //   51: astore 11
    //   53: aload 11
    //   55: areturn
    //   56: astore 12
    //   58: aconst_null
    //   59: astore 13
    //   61: ldc 8
    //   63: aload 12
    //   65: invokevirtual 145	com/keniu/security/sync/d/e/d:getMessage	()Ljava/lang/String;
    //   68: aload 12
    //   70: invokestatic 151	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   73: pop
    //   74: aload 12
    //   76: invokevirtual 154	com/keniu/security/sync/d/e/d:a	()I
    //   79: istore 15
    //   81: aload 13
    //   83: astore 16
    //   85: iload 15
    //   87: istore 8
    //   89: aload 16
    //   91: astore 9
    //   93: goto -48 -> 45
    //   96: astore 4
    //   98: aconst_null
    //   99: astore 5
    //   101: ldc 8
    //   103: aload 4
    //   105: invokevirtual 155	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   108: aload 4
    //   110: invokestatic 151	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   113: pop
    //   114: aload 5
    //   116: astore 7
    //   118: iconst_m1
    //   119: istore 8
    //   121: aload 7
    //   123: astore 9
    //   125: goto -80 -> 45
    //   128: aload 9
    //   130: invokevirtual 247	com/keniu/security/sync/d/d/a/cl:n	()Lcom/keniu/security/sync/d/d/a/gj;
    //   133: astore 10
    //   135: aload 10
    //   137: ifnull +13 -> 150
    //   140: aload 10
    //   142: invokevirtual 48	com/keniu/security/sync/d/d/a/gj:k	()Ljava/lang/String;
    //   145: astore 11
    //   147: goto -94 -> 53
    //   150: aconst_null
    //   151: astore 11
    //   153: goto -100 -> 53
    //   156: astore 22
    //   158: aload 9
    //   160: astore 5
    //   162: aload 22
    //   164: astore 4
    //   166: goto -65 -> 101
    //   169: astore 21
    //   171: aload 9
    //   173: astore 13
    //   175: aload 21
    //   177: astore 12
    //   179: goto -118 -> 61
    //
    // Exception table:
    //   from	to	target	type
    //   0	27	56	com/keniu/security/sync/d/e/d
    //   0	27	96	java/lang/Exception
    //   31	41	156	java/lang/Exception
    //   31	41	169	com/keniu/security/sync/d/e/d
  }

  public final int b(String paramString1, String paramString2)
  {
    try
    {
      int j = com.keniu.security.sync.d.a.a.b(paramString1, paramString2).k().k();
      i = 0;
      if (j != 0)
        i = j;
      return i;
    }
    catch (d locald)
    {
      while (true)
      {
        Log.e("TpanServ.AppManager", locald.getMessage(), locald);
        i = locald.a();
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        Log.e("TpanServ.AppManager", localException.getMessage(), localException);
        int i = -1;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.c.a
 * JD-Core Version:    0.6.2
 */