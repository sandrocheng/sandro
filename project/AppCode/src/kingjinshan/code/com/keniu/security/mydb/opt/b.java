package com.keniu.security.mydb.opt;

import com.keniu.security.f.ab;
import java.util.List;

public final class b
{
  private static final String a = ab.a().b("telnum2.locate");
  private static b b = null;
  private List c = null;
  private List d = null;
  private List e = null;
  private List f = null;

  // ERROR //
  public static int a(int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: new 45	java/io/File
    //   3: dup
    //   4: getstatic 27	com/keniu/security/mydb/opt/b:a	Ljava/lang/String;
    //   7: invokespecial 48	java/io/File:<init>	(Ljava/lang/String;)V
    //   10: astore_2
    //   11: aload_2
    //   12: invokevirtual 52	java/io/File:exists	()Z
    //   15: ifeq +10 -> 25
    //   18: aload_2
    //   19: invokevirtual 55	java/io/File:isDirectory	()Z
    //   22: ifeq +7 -> 29
    //   25: iconst_m1
    //   26: istore_3
    //   27: iload_3
    //   28: ireturn
    //   29: aconst_null
    //   30: astore 4
    //   32: new 57	com/keniu/security/mydb/opt/c
    //   35: dup
    //   36: invokespecial 58	com/keniu/security/mydb/opt/c:<init>	()V
    //   39: astore 5
    //   41: new 60	java/io/FileInputStream
    //   44: dup
    //   45: aload_2
    //   46: invokespecial 63	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   49: astore 6
    //   51: aload 6
    //   53: ldc2_w 64
    //   56: invokevirtual 71	java/io/InputStream:skip	(J)J
    //   59: pop2
    //   60: aload 6
    //   62: aload 6
    //   64: iconst_5
    //   65: aload 6
    //   67: aload 5
    //   69: invokestatic 76	com/keniu/security/mydb/opt/g:a	(Ljava/io/InputStream;Lcom/keniu/security/mydb/opt/c;)Lcom/keniu/security/mydb/opt/e;
    //   72: getfield 81	com/keniu/security/mydb/opt/e:d	I
    //   75: imul
    //   76: i2l
    //   77: invokestatic 84	com/keniu/security/mydb/opt/g:b	(Ljava/io/InputStream;J)J
    //   80: invokevirtual 71	java/io/InputStream:skip	(J)J
    //   83: pop2
    //   84: aload 6
    //   86: aload 5
    //   88: invokestatic 76	com/keniu/security/mydb/opt/g:a	(Ljava/io/InputStream;Lcom/keniu/security/mydb/opt/c;)Lcom/keniu/security/mydb/opt/e;
    //   91: astore 15
    //   93: aload 6
    //   95: aload 6
    //   97: iload_0
    //   98: aload 15
    //   100: getfield 87	com/keniu/security/mydb/opt/e:e	J
    //   103: l2i
    //   104: isub
    //   105: aload 15
    //   107: getfield 81	com/keniu/security/mydb/opt/e:d	I
    //   110: imul
    //   111: i2l
    //   112: invokestatic 84	com/keniu/security/mydb/opt/g:b	(Ljava/io/InputStream;J)J
    //   115: aload 15
    //   117: getfield 89	com/keniu/security/mydb/opt/e:c	J
    //   120: lconst_1
    //   121: lsub
    //   122: iload_0
    //   123: i2l
    //   124: lsub
    //   125: aload 15
    //   127: getfield 87	com/keniu/security/mydb/opt/e:e	J
    //   130: l2i
    //   131: i2l
    //   132: ladd
    //   133: aload 15
    //   135: getfield 81	com/keniu/security/mydb/opt/e:d	I
    //   138: i2l
    //   139: lmul
    //   140: ladd
    //   141: invokevirtual 71	java/io/InputStream:skip	(J)J
    //   144: pop2
    //   145: aload 6
    //   147: aload 5
    //   149: invokestatic 76	com/keniu/security/mydb/opt/g:a	(Ljava/io/InputStream;Lcom/keniu/security/mydb/opt/c;)Lcom/keniu/security/mydb/opt/e;
    //   152: pop
    //   153: aload 6
    //   155: iload_1
    //   156: iconst_2
    //   157: imul
    //   158: i2l
    //   159: invokevirtual 71	java/io/InputStream:skip	(J)J
    //   162: pop2
    //   163: aload 6
    //   165: invokestatic 92	com/keniu/security/mydb/opt/g:a	(Ljava/io/InputStream;)I
    //   168: istore 21
    //   170: iload 21
    //   172: istore_3
    //   173: aload 6
    //   175: invokevirtual 95	java/io/InputStream:close	()V
    //   178: goto -151 -> 27
    //   181: astore 22
    //   183: goto -156 -> 27
    //   186: astore 7
    //   188: aload 7
    //   190: invokevirtual 98	java/io/IOException:printStackTrace	()V
    //   193: aload 4
    //   195: ifnull +8 -> 203
    //   198: aload 4
    //   200: invokevirtual 95	java/io/InputStream:close	()V
    //   203: iconst_m1
    //   204: istore_3
    //   205: goto -178 -> 27
    //   208: astore 8
    //   210: aload 4
    //   212: ifnull +8 -> 220
    //   215: aload 4
    //   217: invokevirtual 95	java/io/InputStream:close	()V
    //   220: aload 8
    //   222: athrow
    //   223: astore 10
    //   225: goto -22 -> 203
    //   228: astore 9
    //   230: goto -10 -> 220
    //   233: astore 8
    //   235: aload 6
    //   237: astore 4
    //   239: goto -29 -> 210
    //   242: astore 7
    //   244: aload 6
    //   246: astore 4
    //   248: goto -60 -> 188
    //
    // Exception table:
    //   from	to	target	type
    //   173	178	181	java/io/IOException
    //   41	51	186	java/io/IOException
    //   41	51	208	finally
    //   188	193	208	finally
    //   198	203	223	java/io/IOException
    //   215	220	228	java/io/IOException
    //   51	170	233	finally
    //   51	170	242	java/io/IOException
  }

  public static int a(long paramLong)
  {
    String str = String.valueOf(paramLong);
    if (str.length() < 7);
    for (int i = -1; ; i = a(Integer.parseInt(str.substring(0, 3)), Integer.parseInt(str.substring(3))))
    {
      return i;
      if (str.length() > 7)
        str = str.substring(0, 7);
    }
  }

  public static b a()
  {
    synchronized (g.h)
    {
      if (b == null)
      {
        b localb1 = new b();
        b = localb1;
        localb1.e();
      }
      b localb2 = b;
      return localb2;
    }
  }

  private int e(int paramInt)
  {
    if ((paramInt <= 0) || (paramInt > this.e.size()));
    for (int i = -1; ; i = ((d)this.e.get(paramInt - 1)).c)
      return i;
  }

  // ERROR //
  private boolean e()
  {
    // Byte code:
    //   0: new 45	java/io/File
    //   3: dup
    //   4: getstatic 27	com/keniu/security/mydb/opt/b:a	Ljava/lang/String;
    //   7: invokespecial 48	java/io/File:<init>	(Ljava/lang/String;)V
    //   10: astore_1
    //   11: aload_1
    //   12: invokevirtual 52	java/io/File:exists	()Z
    //   15: ifeq +10 -> 25
    //   18: aload_1
    //   19: invokevirtual 55	java/io/File:isDirectory	()Z
    //   22: ifeq +7 -> 29
    //   25: iconst_0
    //   26: istore_2
    //   27: iload_2
    //   28: ireturn
    //   29: aconst_null
    //   30: astore_3
    //   31: new 57	com/keniu/security/mydb/opt/c
    //   34: dup
    //   35: invokespecial 58	com/keniu/security/mydb/opt/c:<init>	()V
    //   38: astore 4
    //   40: new 60	java/io/FileInputStream
    //   43: dup
    //   44: aload_1
    //   45: invokespecial 63	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   48: astore 5
    //   50: aload 5
    //   52: ldc2_w 64
    //   55: invokevirtual 71	java/io/InputStream:skip	(J)J
    //   58: pop2
    //   59: aload 5
    //   61: aload 4
    //   63: invokestatic 76	com/keniu/security/mydb/opt/g:a	(Ljava/io/InputStream;Lcom/keniu/security/mydb/opt/c;)Lcom/keniu/security/mydb/opt/e;
    //   66: astore 12
    //   68: aload 5
    //   70: aload 12
    //   72: getfield 89	com/keniu/security/mydb/opt/e:c	J
    //   75: aload 12
    //   77: getfield 81	com/keniu/security/mydb/opt/e:d	I
    //   80: i2l
    //   81: lmul
    //   82: invokevirtual 71	java/io/InputStream:skip	(J)J
    //   85: pop2
    //   86: aload 5
    //   88: aload 4
    //   90: invokestatic 76	com/keniu/security/mydb/opt/g:a	(Ljava/io/InputStream;Lcom/keniu/security/mydb/opt/c;)Lcom/keniu/security/mydb/opt/e;
    //   93: astore 15
    //   95: aload_0
    //   96: aload 5
    //   98: aload 15
    //   100: getfield 89	com/keniu/security/mydb/opt/e:c	J
    //   103: aload 15
    //   105: getfield 81	com/keniu/security/mydb/opt/e:d	I
    //   108: invokestatic 149	com/keniu/security/mydb/opt/g:a	(Ljava/io/InputStream;JI)[[B
    //   111: aload 4
    //   113: invokestatic 152	com/keniu/security/mydb/opt/g:a	([[BLcom/keniu/security/mydb/opt/c;)Ljava/util/List;
    //   116: putfield 40	com/keniu/security/mydb/opt/b:f	Ljava/util/List;
    //   119: aload_0
    //   120: aload 5
    //   122: aload 5
    //   124: aload 4
    //   126: invokestatic 76	com/keniu/security/mydb/opt/g:a	(Ljava/io/InputStream;Lcom/keniu/security/mydb/opt/c;)Lcom/keniu/security/mydb/opt/e;
    //   129: getfield 89	com/keniu/security/mydb/opt/e:c	J
    //   132: invokestatic 155	com/keniu/security/mydb/opt/g:a	(Ljava/io/InputStream;J)Ljava/util/List;
    //   135: putfield 36	com/keniu/security/mydb/opt/b:d	Ljava/util/List;
    //   138: aload_0
    //   139: aload 5
    //   141: aload 5
    //   143: aload 4
    //   145: invokestatic 76	com/keniu/security/mydb/opt/g:a	(Ljava/io/InputStream;Lcom/keniu/security/mydb/opt/c;)Lcom/keniu/security/mydb/opt/e;
    //   148: getfield 89	com/keniu/security/mydb/opt/e:c	J
    //   151: invokestatic 155	com/keniu/security/mydb/opt/g:a	(Ljava/io/InputStream;J)Ljava/util/List;
    //   154: putfield 34	com/keniu/security/mydb/opt/b:c	Ljava/util/List;
    //   157: aload 5
    //   159: aload 4
    //   161: invokestatic 76	com/keniu/security/mydb/opt/g:a	(Ljava/io/InputStream;Lcom/keniu/security/mydb/opt/c;)Lcom/keniu/security/mydb/opt/e;
    //   164: astore 16
    //   166: aload 5
    //   168: aload 16
    //   170: getfield 89	com/keniu/security/mydb/opt/e:c	J
    //   173: aload 16
    //   175: getfield 81	com/keniu/security/mydb/opt/e:d	I
    //   178: i2l
    //   179: lmul
    //   180: invokevirtual 71	java/io/InputStream:skip	(J)J
    //   183: pop2
    //   184: aload 5
    //   186: aload 4
    //   188: invokestatic 76	com/keniu/security/mydb/opt/g:a	(Ljava/io/InputStream;Lcom/keniu/security/mydb/opt/c;)Lcom/keniu/security/mydb/opt/e;
    //   191: astore 19
    //   193: aload_0
    //   194: aload 5
    //   196: aload 19
    //   198: getfield 89	com/keniu/security/mydb/opt/e:c	J
    //   201: aload 19
    //   203: getfield 81	com/keniu/security/mydb/opt/e:d	I
    //   206: aload 4
    //   208: invokestatic 158	com/keniu/security/mydb/opt/g:a	(Ljava/io/InputStream;JILcom/keniu/security/mydb/opt/c;)Ljava/util/List;
    //   211: putfield 38	com/keniu/security/mydb/opt/b:e	Ljava/util/List;
    //   214: aload 5
    //   216: invokevirtual 95	java/io/InputStream:close	()V
    //   219: iconst_1
    //   220: istore_2
    //   221: goto -194 -> 27
    //   224: astore 6
    //   226: aload 6
    //   228: invokevirtual 98	java/io/IOException:printStackTrace	()V
    //   231: aload_3
    //   232: ifnull +7 -> 239
    //   235: aload_3
    //   236: invokevirtual 95	java/io/InputStream:close	()V
    //   239: iconst_0
    //   240: istore_2
    //   241: goto -214 -> 27
    //   244: astore 7
    //   246: aload_3
    //   247: ifnull +7 -> 254
    //   250: aload_3
    //   251: invokevirtual 95	java/io/InputStream:close	()V
    //   254: aload 7
    //   256: athrow
    //   257: astore 20
    //   259: goto -40 -> 219
    //   262: astore 9
    //   264: goto -25 -> 239
    //   267: astore 8
    //   269: goto -15 -> 254
    //   272: astore 7
    //   274: aload 5
    //   276: astore_3
    //   277: goto -31 -> 246
    //   280: astore 6
    //   282: aload 5
    //   284: astore_3
    //   285: goto -59 -> 226
    //
    // Exception table:
    //   from	to	target	type
    //   40	50	224	java/io/IOException
    //   40	50	244	finally
    //   226	231	244	finally
    //   214	219	257	java/io/IOException
    //   235	239	262	java/io/IOException
    //   250	254	267	java/io/IOException
    //   50	214	272	finally
    //   50	214	280	java/io/IOException
  }

  private void f()
  {
    synchronized (g.h)
    {
      b = null;
      this.c = null;
      this.d = null;
      this.e = null;
      this.f = null;
      return;
    }
  }

  public final int a(String paramString)
  {
    return 1 + this.d.indexOf(paramString);
  }

  public final String a(int paramInt)
  {
    if (paramInt <= 0);
    for (String str = "unkown_str"; ; str = (String)this.c.get(paramInt - 1))
      return str;
  }

  public final int b(String paramString)
  {
    return this.c.indexOf(paramString);
  }

  public final d b(int paramInt)
  {
    if ((paramInt <= 0) || (paramInt > this.e.size()));
    for (d locald = null; ; locald = (d)this.e.get(paramInt - 1))
      return locald;
  }

  public final List b()
  {
    return this.d;
  }

  public final int c(String paramString)
  {
    int k;
    if (this.f == null)
      k = 0;
    while (true)
    {
      return k;
      int i = this.f.size();
      for (int j = 0; ; j++)
      {
        if (j >= i)
          break label101;
        if ((Long.parseLong(paramString) + "").startsWith(((f)this.f.get(j)).a))
        {
          k = ((f)this.f.get(j)).b;
          break;
        }
      }
      label101: k = 0;
    }
  }

  public final String c(int paramInt)
  {
    String str1;
    if ((paramInt <= 0) || (paramInt > this.e.size()))
    {
      str1 = "unkown_str";
      return str1;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    if (((d)this.e.get(paramInt - 1)).d == 0);
    for (String str2 = (String)this.d.get(((d)this.e.get(paramInt - 1)).c - 1); ; str2 = "")
    {
      str1 = str2 + (String)this.c.get(paramInt - 1);
      break;
    }
  }

  public final List c()
  {
    return this.c;
  }

  public final int d(int paramInt)
  {
    if ((paramInt <= 0) || (paramInt > this.e.size()));
    for (int i = -1; ; i = ((d)this.e.get(paramInt - 1)).a)
      return i;
  }

  public final List d()
  {
    return this.e;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.mydb.opt.b
 * JD-Core Version:    0.6.2
 */