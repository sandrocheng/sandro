package com.hoi.netstat;

import android.content.Context;
import com.hoi.string.LocalString;
import com.keniu.security.h.a;
import java.io.File;
import java.util.ArrayList;

class NetStatJni
  implements g
{
  private static final String a = "^((rmnet[0-9])|(pdp[0-9])|(pdp_ip[0-9])|(gprs[0-9])|(ppp[0-9])|(ccinet[0-9]))$";
  private static final String b = new LocalString().malloc(6);
  private static final String c = new LocalString().malloc(7);

  static
  {
    a.a("syscore");
  }

  private static boolean c(String paramString)
  {
    try
    {
      boolean bool2 = new File("/sys/class/net/" + paramString + "/wireless").exists();
      bool1 = bool2;
      return bool1;
    }
    catch (Exception localException)
    {
      while (true)
        boolean bool1 = false;
    }
  }

  private native long getMobileRxBytes();

  private native long getMobileTxBytes();

  private native long getTotalRxBytesL(String paramString);

  private native long getTotalTxBytesL(String paramString);

  private native long getUidRxBytes(int paramInt);

  private native long getUidTxBytes(int paramInt);

  private native void recycle();

  private native String tryMallocL();

  public final long a()
  {
    long l1 = 0L;
    File[] arrayOfFile = new File(tryMallocL()).listFiles();
    if (arrayOfFile == null);
    for (long l2 = l1; ; l2 = l1)
    {
      return l2;
      int i = arrayOfFile.length;
      for (int j = 0; j < i; j++)
      {
        String str = arrayOfFile[j].getName();
        if (!str.matches(c))
          l1 += getTotalTxBytesL(str);
      }
    }
  }

  public final long a(int paramInt)
  {
    return getUidTxBytes(paramInt);
  }

  public final long a(Context paramContext)
  {
    File[] arrayOfFile = new File(tryMallocL()).listFiles();
    if (arrayOfFile == null);
    long l1;
    for (long l2 = 0L; ; l2 = l1)
    {
      return l2;
      int i = arrayOfFile.length;
      int j = 0;
      l1 = 0L;
      while (j < i)
      {
        String str = arrayOfFile[j].getName();
        if ((!str.matches(c)) && (str.matches("^((rmnet[0-9])|(pdp[0-9])|(pdp_ip[0-9])|(gprs[0-9])|(ppp[0-9])|(ccinet[0-9]))$")))
          l1 += getTotalTxBytesL(str);
        j++;
      }
    }
  }

  public final long a(String paramString)
  {
    try
    {
      long l2 = getTotalRxBytesL(paramString);
      l1 = l2;
      return l1;
    }
    catch (Exception localException)
    {
      while (true)
        long l1 = 0L;
    }
  }

  public final long b()
  {
    long l1 = 0L;
    File[] arrayOfFile = new File(tryMallocL()).listFiles();
    if (arrayOfFile == null);
    for (long l2 = l1; ; l2 = l1)
    {
      return l2;
      int i = arrayOfFile.length;
      for (int j = 0; j < i; j++)
      {
        String str = arrayOfFile[j].getName();
        if (!str.matches(c))
          l1 += getTotalRxBytesL(str);
      }
    }
  }

  public final long b(int paramInt)
  {
    return getUidRxBytes(paramInt);
  }

  public final long b(Context paramContext)
  {
    File[] arrayOfFile = new File(tryMallocL()).listFiles();
    if (arrayOfFile == null);
    long l1;
    for (long l2 = 0L; ; l2 = l1)
    {
      return l2;
      int i = arrayOfFile.length;
      int j = 0;
      l1 = 0L;
      while (j < i)
      {
        String str = arrayOfFile[j].getName();
        if ((!str.matches(c)) && (str.matches("^((rmnet[0-9])|(pdp[0-9])|(pdp_ip[0-9])|(gprs[0-9])|(ppp[0-9])|(ccinet[0-9]))$")))
          l1 += getTotalRxBytesL(str);
        j++;
      }
    }
  }

  public final long b(String paramString)
  {
    try
    {
      long l2 = getTotalTxBytesL(paramString);
      l1 = l2;
      return l1;
    }
    catch (Exception localException)
    {
      while (true)
        long l1 = 0L;
    }
  }

  // ERROR //
  public final ArrayList c()
  {
    // Byte code:
    //   0: new 102	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 103	java/util/ArrayList:<init>	()V
    //   7: astore_1
    //   8: new 105	java/io/RandomAccessFile
    //   11: dup
    //   12: new 40	java/io/File
    //   15: dup
    //   16: ldc 107
    //   18: invokespecial 57	java/io/File:<init>	(Ljava/lang/String;)V
    //   21: ldc 109
    //   23: invokespecial 112	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   26: astore_2
    //   27: aconst_null
    //   28: astore_3
    //   29: aload_2
    //   30: invokevirtual 115	java/io/RandomAccessFile:readLine	()Ljava/lang/String;
    //   33: astore 15
    //   35: aload 15
    //   37: astore_3
    //   38: aload_3
    //   39: ifnull +352 -> 391
    //   42: aload_3
    //   43: ldc 117
    //   45: invokevirtual 121	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   48: iconst_m1
    //   49: if_icmpeq -20 -> 29
    //   52: new 123	com/hoi/netstat/j
    //   55: dup
    //   56: invokespecial 124	com/hoi/netstat/j:<init>	()V
    //   59: astore 12
    //   61: aload_3
    //   62: invokevirtual 127	java/lang/String:trim	()Ljava/lang/String;
    //   65: ldc 129
    //   67: invokevirtual 133	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   70: astore 13
    //   72: aload 12
    //   74: aload 13
    //   76: iconst_0
    //   77: aaload
    //   78: putfield 135	com/hoi/netstat/j:a	Ljava/lang/String;
    //   81: aload 12
    //   83: getfield 138	com/hoi/netstat/j:b	Lcom/hoi/netstat/k;
    //   86: aload 13
    //   88: iconst_1
    //   89: aaload
    //   90: invokestatic 143	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   93: putfield 148	com/hoi/netstat/k:a	I
    //   96: aload 12
    //   98: getfield 138	com/hoi/netstat/j:b	Lcom/hoi/netstat/k;
    //   101: aload 13
    //   103: iconst_2
    //   104: aaload
    //   105: invokestatic 143	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   108: putfield 150	com/hoi/netstat/k:b	I
    //   111: aload 12
    //   113: getfield 138	com/hoi/netstat/j:b	Lcom/hoi/netstat/k;
    //   116: aload 13
    //   118: iconst_3
    //   119: aaload
    //   120: invokestatic 143	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   123: putfield 152	com/hoi/netstat/k:c	I
    //   126: aload 12
    //   128: getfield 138	com/hoi/netstat/j:b	Lcom/hoi/netstat/k;
    //   131: aload 13
    //   133: iconst_4
    //   134: aaload
    //   135: invokestatic 143	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   138: putfield 155	com/hoi/netstat/k:d	I
    //   141: aload 12
    //   143: getfield 138	com/hoi/netstat/j:b	Lcom/hoi/netstat/k;
    //   146: aload 13
    //   148: iconst_5
    //   149: aaload
    //   150: invokestatic 143	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   153: putfield 158	com/hoi/netstat/k:e	I
    //   156: aload 12
    //   158: getfield 138	com/hoi/netstat/j:b	Lcom/hoi/netstat/k;
    //   161: aload 13
    //   163: bipush 6
    //   165: aaload
    //   166: invokestatic 143	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   169: putfield 161	com/hoi/netstat/k:f	I
    //   172: aload 12
    //   174: getfield 138	com/hoi/netstat/j:b	Lcom/hoi/netstat/k;
    //   177: aload 13
    //   179: bipush 7
    //   181: aaload
    //   182: invokestatic 143	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   185: putfield 164	com/hoi/netstat/k:g	I
    //   188: aload 12
    //   190: getfield 138	com/hoi/netstat/j:b	Lcom/hoi/netstat/k;
    //   193: aload 13
    //   195: bipush 8
    //   197: aaload
    //   198: invokestatic 143	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   201: putfield 167	com/hoi/netstat/k:h	I
    //   204: aload 12
    //   206: getfield 170	com/hoi/netstat/j:c	Lcom/hoi/netstat/l;
    //   209: aload 13
    //   211: bipush 9
    //   213: aaload
    //   214: invokestatic 143	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   217: putfield 173	com/hoi/netstat/l:a	I
    //   220: aload 12
    //   222: getfield 170	com/hoi/netstat/j:c	Lcom/hoi/netstat/l;
    //   225: aload 13
    //   227: bipush 10
    //   229: aaload
    //   230: invokestatic 143	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   233: putfield 174	com/hoi/netstat/l:b	I
    //   236: aload 12
    //   238: getfield 170	com/hoi/netstat/j:c	Lcom/hoi/netstat/l;
    //   241: aload 13
    //   243: bipush 11
    //   245: aaload
    //   246: invokestatic 143	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   249: putfield 175	com/hoi/netstat/l:c	I
    //   252: aload 12
    //   254: getfield 170	com/hoi/netstat/j:c	Lcom/hoi/netstat/l;
    //   257: aload 13
    //   259: bipush 12
    //   261: aaload
    //   262: invokestatic 143	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   265: putfield 176	com/hoi/netstat/l:d	I
    //   268: aload 12
    //   270: getfield 170	com/hoi/netstat/j:c	Lcom/hoi/netstat/l;
    //   273: aload 13
    //   275: bipush 13
    //   277: aaload
    //   278: invokestatic 143	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   281: putfield 177	com/hoi/netstat/l:e	I
    //   284: aload 12
    //   286: getfield 170	com/hoi/netstat/j:c	Lcom/hoi/netstat/l;
    //   289: aload 13
    //   291: bipush 14
    //   293: aaload
    //   294: invokestatic 143	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   297: putfield 178	com/hoi/netstat/l:f	I
    //   300: aload 12
    //   302: getfield 170	com/hoi/netstat/j:c	Lcom/hoi/netstat/l;
    //   305: aload 13
    //   307: bipush 15
    //   309: aaload
    //   310: invokestatic 143	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   313: putfield 179	com/hoi/netstat/l:g	I
    //   316: aload 12
    //   318: getfield 170	com/hoi/netstat/j:c	Lcom/hoi/netstat/l;
    //   321: aload 13
    //   323: bipush 16
    //   325: aaload
    //   326: invokestatic 143	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   329: putfield 180	com/hoi/netstat/l:h	I
    //   332: aload_1
    //   333: aload 12
    //   335: invokevirtual 184	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   338: pop
    //   339: goto -310 -> 29
    //   342: astore 8
    //   344: aload_2
    //   345: astore 9
    //   347: aload 8
    //   349: astore 10
    //   351: aload 10
    //   353: invokevirtual 187	java/io/FileNotFoundException:printStackTrace	()V
    //   356: aload 9
    //   358: ifnull +8 -> 366
    //   361: aload 9
    //   363: invokevirtual 190	java/io/RandomAccessFile:close	()V
    //   366: aload_1
    //   367: areturn
    //   368: astore 6
    //   370: aload 6
    //   372: invokevirtual 191	java/io/IOException:printStackTrace	()V
    //   375: goto -337 -> 38
    //   378: astore 4
    //   380: aload_2
    //   381: ifnull +7 -> 388
    //   384: aload_2
    //   385: invokevirtual 190	java/io/RandomAccessFile:close	()V
    //   388: aload 4
    //   390: athrow
    //   391: aload_2
    //   392: invokevirtual 190	java/io/RandomAccessFile:close	()V
    //   395: goto -29 -> 366
    //   398: astore 7
    //   400: aload 7
    //   402: invokevirtual 191	java/io/IOException:printStackTrace	()V
    //   405: goto -39 -> 366
    //   408: astore 11
    //   410: aload 11
    //   412: invokevirtual 191	java/io/IOException:printStackTrace	()V
    //   415: goto -49 -> 366
    //   418: astore 5
    //   420: aload 5
    //   422: invokevirtual 191	java/io/IOException:printStackTrace	()V
    //   425: goto -37 -> 388
    //   428: astore 4
    //   430: aconst_null
    //   431: astore_2
    //   432: goto -52 -> 380
    //   435: astore 4
    //   437: aload 9
    //   439: astore_2
    //   440: goto -60 -> 380
    //   443: astore 10
    //   445: aconst_null
    //   446: astore 9
    //   448: goto -97 -> 351
    //
    // Exception table:
    //   from	to	target	type
    //   29	35	342	java/io/FileNotFoundException
    //   42	339	342	java/io/FileNotFoundException
    //   370	375	342	java/io/FileNotFoundException
    //   29	35	368	java/io/IOException
    //   29	35	378	finally
    //   42	339	378	finally
    //   370	375	378	finally
    //   391	395	398	java/io/IOException
    //   361	366	408	java/io/IOException
    //   384	388	418	java/io/IOException
    //   8	27	428	finally
    //   351	356	435	finally
    //   8	27	443	java/io/FileNotFoundException
  }

  public final ArrayList d()
  {
    ArrayList localArrayList1 = new ArrayList();
    File[] arrayOfFile = new File(tryMallocL()).listFiles();
    if (arrayOfFile == null);
    for (ArrayList localArrayList2 = localArrayList1; ; localArrayList2 = localArrayList1)
    {
      return localArrayList2;
      int i = arrayOfFile.length;
      for (int j = 0; j < i; j++)
      {
        String str = arrayOfFile[j].getName();
        localArrayList1.add(new h(str, getTotalTxBytesL(str), getTotalRxBytesL(str)));
      }
    }
  }

  public final long e()
  {
    long l1 = 0L;
    File[] arrayOfFile = new File(tryMallocL()).listFiles();
    if (arrayOfFile == null);
    for (long l2 = l1; ; l2 = l1)
    {
      return l2;
      int i = arrayOfFile.length;
      for (int j = 0; j < i; j++)
      {
        String str = arrayOfFile[j].getName();
        if ((!str.matches(c)) && (c(str)))
          l1 += getTotalRxBytesL(str);
      }
    }
  }

  public final long f()
  {
    long l1 = 0L;
    File[] arrayOfFile = new File(tryMallocL()).listFiles();
    if (arrayOfFile == null);
    for (long l2 = l1; ; l2 = l1)
    {
      return l2;
      int i = arrayOfFile.length;
      for (int j = 0; j < i; j++)
      {
        String str = arrayOfFile[j].getName();
        if ((!str.matches(c)) && (c(str)))
          l1 += getTotalTxBytesL(str);
      }
    }
  }

  protected void finalize()
  {
    recycle();
    super.finalize();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.netstat.NetStatJni
 * JD-Core Version:    0.6.2
 */