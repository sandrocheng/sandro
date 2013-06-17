package com.antivirus.core.scanners;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

class d
  implements Runnable
{
  h a;
  com.antivirus.core.d.a.f b = new com.antivirus.core.d.a.f(true);
  private boolean d = true;
  private boolean e = false;
  private boolean f = false;

  public d(a parama, h paramh)
  {
    this.a = paramh;
  }

  private void a(List paramList1, Map paramMap, List paramList2)
  {
    Iterator localIterator1;
    if ((this.d) && (paramList2 != null))
      localIterator1 = paramList2.iterator();
    while (true)
    {
      f localf1;
      if (localIterator1.hasNext())
      {
        localf1 = (f)localIterator1.next();
        if (this.d);
      }
      else
      {
        return;
      }
      Iterator localIterator2 = paramMap.keySet().iterator();
      while ((this.d) && (localIterator2.hasNext()))
      {
        String str = (String)localIterator2.next();
        f localf2 = (f)paramMap.get(str);
        if ((this.d) && (localf1.a.toLowerCase().equals(localf2.a.toLowerCase())) && (localf1.b.toLowerCase().equals(localf2.b.toLowerCase())))
        {
          paramList1.remove(str);
          localIterator2.remove();
        }
      }
    }
  }

  public void a()
  {
    try
    {
      this.d = false;
      this.b.a = false;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  // ERROR //
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 20	com/antivirus/core/scanners/d:c	Lcom/antivirus/core/scanners/a;
    //   4: getfield 101	com/antivirus/core/scanners/a:b	Landroid/content/Context;
    //   7: ldc 103
    //   9: invokevirtual 109	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   12: checkcast 111	android/net/ConnectivityManager
    //   15: invokevirtual 115	android/net/ConnectivityManager:getActiveNetworkInfo	()Landroid/net/NetworkInfo;
    //   18: astore_1
    //   19: aload_1
    //   20: ifnull +10 -> 30
    //   23: aload_1
    //   24: invokevirtual 120	android/net/NetworkInfo:isConnected	()Z
    //   27: ifne +4 -> 31
    //   30: return
    //   31: aload_0
    //   32: getfield 25	com/antivirus/core/scanners/d:d	Z
    //   35: ifeq +173 -> 208
    //   38: aload_0
    //   39: getfield 38	com/antivirus/core/scanners/d:a	Lcom/antivirus/core/scanners/h;
    //   42: getfield 125	com/antivirus/core/scanners/h:c	Lcom/antivirus/core/scanners/ScannerPackagesResult;
    //   45: ifnull +163 -> 208
    //   48: aload_0
    //   49: getfield 38	com/antivirus/core/scanners/d:a	Lcom/antivirus/core/scanners/h;
    //   52: getfield 125	com/antivirus/core/scanners/h:c	Lcom/antivirus/core/scanners/ScannerPackagesResult;
    //   55: getfield 130	com/antivirus/core/scanners/ScannerPackagesResult:c	Ljava/util/ArrayList;
    //   58: ifnull +150 -> 208
    //   61: aload_0
    //   62: getfield 38	com/antivirus/core/scanners/d:a	Lcom/antivirus/core/scanners/h;
    //   65: getfield 125	com/antivirus/core/scanners/h:c	Lcom/antivirus/core/scanners/ScannerPackagesResult;
    //   68: getfield 130	com/antivirus/core/scanners/ScannerPackagesResult:c	Ljava/util/ArrayList;
    //   71: invokevirtual 136	java/util/ArrayList:size	()I
    //   74: ifle +134 -> 208
    //   77: aload_0
    //   78: getfield 38	com/antivirus/core/scanners/d:a	Lcom/antivirus/core/scanners/h;
    //   81: getfield 125	com/antivirus/core/scanners/h:c	Lcom/antivirus/core/scanners/ScannerPackagesResult;
    //   84: getfield 130	com/antivirus/core/scanners/ScannerPackagesResult:c	Ljava/util/ArrayList;
    //   87: aload_0
    //   88: getfield 38	com/antivirus/core/scanners/d:a	Lcom/antivirus/core/scanners/h;
    //   91: getfield 125	com/antivirus/core/scanners/h:c	Lcom/antivirus/core/scanners/ScannerPackagesResult;
    //   94: getfield 139	com/antivirus/core/scanners/ScannerPackagesResult:e	Ljava/util/TreeMap;
    //   97: invokestatic 142	com/antivirus/core/d/a/f:a	(Ljava/util/List;Ljava/util/Map;)Ljava/lang/StringBuilder;
    //   100: astore 6
    //   102: aload_0
    //   103: getfield 36	com/antivirus/core/scanners/d:b	Lcom/antivirus/core/d/a/f;
    //   106: aload_0
    //   107: getfield 20	com/antivirus/core/scanners/d:c	Lcom/antivirus/core/scanners/a;
    //   110: getfield 101	com/antivirus/core/scanners/a:b	Landroid/content/Context;
    //   113: aload_0
    //   114: getfield 38	com/antivirus/core/scanners/d:a	Lcom/antivirus/core/scanners/h;
    //   117: getfield 125	com/antivirus/core/scanners/h:c	Lcom/antivirus/core/scanners/ScannerPackagesResult;
    //   120: getfield 130	com/antivirus/core/scanners/ScannerPackagesResult:c	Ljava/util/ArrayList;
    //   123: invokevirtual 136	java/util/ArrayList:size	()I
    //   126: aload 6
    //   128: invokevirtual 147	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   131: invokevirtual 150	com/antivirus/core/d/a/f:a	(Landroid/content/Context;ILjava/lang/String;)I
    //   134: ifne +267 -> 401
    //   137: iconst_1
    //   138: istore 7
    //   140: aload_0
    //   141: iload 7
    //   143: putfield 27	com/antivirus/core/scanners/d:e	Z
    //   146: aload_0
    //   147: monitorenter
    //   148: aload_0
    //   149: aload_0
    //   150: getfield 38	com/antivirus/core/scanners/d:a	Lcom/antivirus/core/scanners/h;
    //   153: getfield 125	com/antivirus/core/scanners/h:c	Lcom/antivirus/core/scanners/ScannerPackagesResult;
    //   156: getfield 130	com/antivirus/core/scanners/ScannerPackagesResult:c	Ljava/util/ArrayList;
    //   159: aload_0
    //   160: getfield 38	com/antivirus/core/scanners/d:a	Lcom/antivirus/core/scanners/h;
    //   163: getfield 125	com/antivirus/core/scanners/h:c	Lcom/antivirus/core/scanners/ScannerPackagesResult;
    //   166: getfield 139	com/antivirus/core/scanners/ScannerPackagesResult:e	Ljava/util/TreeMap;
    //   169: aload_0
    //   170: getfield 36	com/antivirus/core/scanners/d:b	Lcom/antivirus/core/d/a/f;
    //   173: invokevirtual 153	com/antivirus/core/d/a/f:e	()Ljava/util/List;
    //   176: invokespecial 155	com/antivirus/core/scanners/d:a	(Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V
    //   179: aload_0
    //   180: getfield 38	com/antivirus/core/scanners/d:a	Lcom/antivirus/core/scanners/h;
    //   183: getfield 125	com/antivirus/core/scanners/h:c	Lcom/antivirus/core/scanners/ScannerPackagesResult;
    //   186: getfield 130	com/antivirus/core/scanners/ScannerPackagesResult:c	Ljava/util/ArrayList;
    //   189: invokevirtual 136	java/util/ArrayList:size	()I
    //   192: ifgt +14 -> 206
    //   195: aload_0
    //   196: getfield 38	com/antivirus/core/scanners/d:a	Lcom/antivirus/core/scanners/h;
    //   199: getfield 125	com/antivirus/core/scanners/h:c	Lcom/antivirus/core/scanners/ScannerPackagesResult;
    //   202: iconst_1
    //   203: putfield 156	com/antivirus/core/scanners/ScannerPackagesResult:a	Z
    //   206: aload_0
    //   207: monitorexit
    //   208: aload_0
    //   209: getfield 25	com/antivirus/core/scanners/d:d	Z
    //   212: ifeq -182 -> 30
    //   215: aload_0
    //   216: getfield 38	com/antivirus/core/scanners/d:a	Lcom/antivirus/core/scanners/h;
    //   219: getfield 159	com/antivirus/core/scanners/h:f	Lcom/antivirus/core/scanners/ScannerFilesResult;
    //   222: ifnull -192 -> 30
    //   225: aload_0
    //   226: getfield 38	com/antivirus/core/scanners/d:a	Lcom/antivirus/core/scanners/h;
    //   229: getfield 159	com/antivirus/core/scanners/h:f	Lcom/antivirus/core/scanners/ScannerFilesResult;
    //   232: getfield 162	com/antivirus/core/scanners/ScannerFilesResult:c	Ljava/util/ArrayList;
    //   235: ifnull -205 -> 30
    //   238: aload_0
    //   239: getfield 38	com/antivirus/core/scanners/d:a	Lcom/antivirus/core/scanners/h;
    //   242: getfield 159	com/antivirus/core/scanners/h:f	Lcom/antivirus/core/scanners/ScannerFilesResult;
    //   245: getfield 162	com/antivirus/core/scanners/ScannerFilesResult:c	Ljava/util/ArrayList;
    //   248: invokevirtual 136	java/util/ArrayList:size	()I
    //   251: ifle -221 -> 30
    //   254: aload_0
    //   255: getfield 38	com/antivirus/core/scanners/d:a	Lcom/antivirus/core/scanners/h;
    //   258: getfield 159	com/antivirus/core/scanners/h:f	Lcom/antivirus/core/scanners/ScannerFilesResult;
    //   261: getfield 162	com/antivirus/core/scanners/ScannerFilesResult:c	Ljava/util/ArrayList;
    //   264: aload_0
    //   265: getfield 38	com/antivirus/core/scanners/d:a	Lcom/antivirus/core/scanners/h;
    //   268: getfield 159	com/antivirus/core/scanners/h:f	Lcom/antivirus/core/scanners/ScannerFilesResult;
    //   271: getfield 163	com/antivirus/core/scanners/ScannerFilesResult:e	Ljava/util/TreeMap;
    //   274: invokestatic 142	com/antivirus/core/d/a/f:a	(Ljava/util/List;Ljava/util/Map;)Ljava/lang/StringBuilder;
    //   277: astore_3
    //   278: aload_0
    //   279: getfield 36	com/antivirus/core/scanners/d:b	Lcom/antivirus/core/d/a/f;
    //   282: aload_0
    //   283: getfield 20	com/antivirus/core/scanners/d:c	Lcom/antivirus/core/scanners/a;
    //   286: getfield 101	com/antivirus/core/scanners/a:b	Landroid/content/Context;
    //   289: aload_0
    //   290: getfield 38	com/antivirus/core/scanners/d:a	Lcom/antivirus/core/scanners/h;
    //   293: getfield 159	com/antivirus/core/scanners/h:f	Lcom/antivirus/core/scanners/ScannerFilesResult;
    //   296: getfield 162	com/antivirus/core/scanners/ScannerFilesResult:c	Ljava/util/ArrayList;
    //   299: invokevirtual 136	java/util/ArrayList:size	()I
    //   302: aload_3
    //   303: invokevirtual 147	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   306: invokevirtual 150	com/antivirus/core/d/a/f:a	(Landroid/content/Context;ILjava/lang/String;)I
    //   309: ifne +105 -> 414
    //   312: iconst_1
    //   313: istore 4
    //   315: aload_0
    //   316: iload 4
    //   318: putfield 29	com/antivirus/core/scanners/d:f	Z
    //   321: aload_0
    //   322: monitorenter
    //   323: aload_0
    //   324: aload_0
    //   325: getfield 38	com/antivirus/core/scanners/d:a	Lcom/antivirus/core/scanners/h;
    //   328: getfield 159	com/antivirus/core/scanners/h:f	Lcom/antivirus/core/scanners/ScannerFilesResult;
    //   331: getfield 162	com/antivirus/core/scanners/ScannerFilesResult:c	Ljava/util/ArrayList;
    //   334: aload_0
    //   335: getfield 38	com/antivirus/core/scanners/d:a	Lcom/antivirus/core/scanners/h;
    //   338: getfield 159	com/antivirus/core/scanners/h:f	Lcom/antivirus/core/scanners/ScannerFilesResult;
    //   341: getfield 163	com/antivirus/core/scanners/ScannerFilesResult:e	Ljava/util/TreeMap;
    //   344: aload_0
    //   345: getfield 36	com/antivirus/core/scanners/d:b	Lcom/antivirus/core/d/a/f;
    //   348: invokevirtual 153	com/antivirus/core/d/a/f:e	()Ljava/util/List;
    //   351: invokespecial 155	com/antivirus/core/scanners/d:a	(Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V
    //   354: aload_0
    //   355: getfield 38	com/antivirus/core/scanners/d:a	Lcom/antivirus/core/scanners/h;
    //   358: getfield 159	com/antivirus/core/scanners/h:f	Lcom/antivirus/core/scanners/ScannerFilesResult;
    //   361: getfield 162	com/antivirus/core/scanners/ScannerFilesResult:c	Ljava/util/ArrayList;
    //   364: invokevirtual 136	java/util/ArrayList:size	()I
    //   367: ifgt +14 -> 381
    //   370: aload_0
    //   371: getfield 38	com/antivirus/core/scanners/d:a	Lcom/antivirus/core/scanners/h;
    //   374: getfield 159	com/antivirus/core/scanners/h:f	Lcom/antivirus/core/scanners/ScannerFilesResult;
    //   377: iconst_1
    //   378: putfield 164	com/antivirus/core/scanners/ScannerFilesResult:a	Z
    //   381: aload_0
    //   382: monitorexit
    //   383: goto -353 -> 30
    //   386: astore 5
    //   388: aload_0
    //   389: monitorexit
    //   390: aload 5
    //   392: athrow
    //   393: astore_2
    //   394: aload_2
    //   395: invokestatic 169	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   398: goto -368 -> 30
    //   401: iconst_0
    //   402: istore 7
    //   404: goto -264 -> 140
    //   407: astore 8
    //   409: aload_0
    //   410: monitorexit
    //   411: aload 8
    //   413: athrow
    //   414: iconst_0
    //   415: istore 4
    //   417: goto -102 -> 315
    //
    // Exception table:
    //   from	to	target	type
    //   323	390	386	finally
    //   31	148	393	java/lang/Exception
    //   208	323	393	java/lang/Exception
    //   390	393	393	java/lang/Exception
    //   411	414	393	java/lang/Exception
    //   148	208	407	finally
    //   409	411	407	finally
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.scanners.d
 * JD-Core Version:    0.6.2
 */