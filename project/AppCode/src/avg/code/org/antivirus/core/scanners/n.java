package org.antivirus.core.scanners;

import org.antivirus.core.EngineSettings;

public class n extends j
{
  private int g = 7;

  protected n(EngineSettings paramEngineSettings)
  {
    super(paramEngineSettings, null, null);
    this.a = new r();
    ((r)this.a).b = 7;
  }

  public final void a()
  {
    super.a();
  }

  // ERROR //
  public final void a(android.content.Context paramContext)
  {
    // Byte code:
    //   0: iconst_1
    //   1: aload_0
    //   2: getfield 22	org/antivirus/core/scanners/n:g	I
    //   5: iand
    //   6: ifeq +32 -> 38
    //   9: aload_0
    //   10: getfield 34	org/antivirus/core/scanners/j:f	Z
    //   13: ifne +25 -> 38
    //   16: aload_0
    //   17: getfield 34	org/antivirus/core/scanners/j:f	Z
    //   20: ifne +18 -> 38
    //   23: aload_0
    //   24: aload_1
    //   25: ldc 36
    //   27: new 38	org/antivirus/core/scanners/q
    //   30: dup
    //   31: aload_0
    //   32: invokespecial 41	org/antivirus/core/scanners/q:<init>	(Lorg/antivirus/core/scanners/n;)V
    //   35: invokevirtual 44	org/antivirus/core/scanners/n:a	(Landroid/content/Context;Ljava/lang/String;Lorg/antivirus/core/scanners/k;)V
    //   38: iconst_2
    //   39: aload_0
    //   40: getfield 22	org/antivirus/core/scanners/n:g	I
    //   43: iand
    //   44: ifeq +99 -> 143
    //   47: aload_0
    //   48: getfield 34	org/antivirus/core/scanners/j:f	Z
    //   51: ifne +92 -> 143
    //   54: aload_0
    //   55: getfield 34	org/antivirus/core/scanners/j:f	Z
    //   58: istore 6
    //   60: iload 6
    //   62: ifne +81 -> 143
    //   65: aload_1
    //   66: invokevirtual 50	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   69: invokestatic 56	android/provider/Browser:getAllVisitedUrls	(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    //   72: astore 13
    //   74: aload 13
    //   76: astore 10
    //   78: aload 10
    //   80: ifnull +51 -> 131
    //   83: aload 10
    //   85: invokeinterface 62 1 0
    //   90: ifle +41 -> 131
    //   93: aload_0
    //   94: getfield 20	org/antivirus/core/scanners/n:a	Lorg/antivirus/core/scanners/d;
    //   97: checkcast 13	org/antivirus/core/scanners/r
    //   100: aload 10
    //   102: invokeinterface 62 1 0
    //   107: putfield 65	org/antivirus/core/scanners/r:e	I
    //   110: aload_0
    //   111: getfield 34	org/antivirus/core/scanners/j:f	Z
    //   114: ifne +17 -> 131
    //   117: aload 10
    //   119: invokeinterface 69 1 0
    //   124: istore 16
    //   126: iload 16
    //   128: ifne -18 -> 110
    //   131: aload 10
    //   133: ifnull +10 -> 143
    //   136: aload 10
    //   138: invokeinterface 72 1 0
    //   143: iconst_4
    //   144: aload_0
    //   145: getfield 22	org/antivirus/core/scanners/n:g	I
    //   148: iand
    //   149: ifeq +62 -> 211
    //   152: aload_0
    //   153: getfield 34	org/antivirus/core/scanners/j:f	Z
    //   156: ifne +55 -> 211
    //   159: aload_0
    //   160: getfield 34	org/antivirus/core/scanners/j:f	Z
    //   163: istore_3
    //   164: iload_3
    //   165: ifne +46 -> 211
    //   168: aload_0
    //   169: aload_1
    //   170: ldc 74
    //   172: new 76	org/antivirus/core/scanners/o
    //   175: dup
    //   176: aload_0
    //   177: invokespecial 77	org/antivirus/core/scanners/o:<init>	(Lorg/antivirus/core/scanners/n;)V
    //   180: invokevirtual 44	org/antivirus/core/scanners/n:a	(Landroid/content/Context;Ljava/lang/String;Lorg/antivirus/core/scanners/k;)V
    //   183: aload_0
    //   184: getfield 20	org/antivirus/core/scanners/n:a	Lorg/antivirus/core/scanners/d;
    //   187: checkcast 13	org/antivirus/core/scanners/r
    //   190: getfield 80	org/antivirus/core/scanners/r:c	I
    //   193: ifne +18 -> 211
    //   196: aload_0
    //   197: aload_1
    //   198: ldc 82
    //   200: new 84	org/antivirus/core/scanners/p
    //   203: dup
    //   204: aload_0
    //   205: invokespecial 85	org/antivirus/core/scanners/p:<init>	(Lorg/antivirus/core/scanners/n;)V
    //   208: invokevirtual 44	org/antivirus/core/scanners/n:a	(Landroid/content/Context;Ljava/lang/String;Lorg/antivirus/core/scanners/k;)V
    //   211: return
    //   212: astore 17
    //   214: aload 17
    //   216: invokestatic 91	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   219: goto -181 -> 38
    //   222: astore 15
    //   224: aload 15
    //   226: invokestatic 91	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   229: goto -98 -> 131
    //   232: astore 14
    //   234: aload 10
    //   236: astore 8
    //   238: ldc 93
    //   240: invokestatic 97	org/antivirus/core/Logger:error	(Ljava/lang/String;)V
    //   243: aload 8
    //   245: ifnull -102 -> 143
    //   248: aload 8
    //   250: invokeinterface 72 1 0
    //   255: goto -112 -> 143
    //   258: astore 5
    //   260: aload 5
    //   262: invokestatic 91	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   265: goto -122 -> 143
    //   268: astore 12
    //   270: aconst_null
    //   271: astore 10
    //   273: aload 12
    //   275: astore 11
    //   277: aload 10
    //   279: ifnull +10 -> 289
    //   282: aload 10
    //   284: invokeinterface 72 1 0
    //   289: aload 11
    //   291: athrow
    //   292: astore 4
    //   294: aload 4
    //   296: invokestatic 91	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   299: goto -116 -> 183
    //   302: astore_2
    //   303: aload_2
    //   304: invokestatic 91	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   307: goto -96 -> 211
    //   310: astore 11
    //   312: goto -35 -> 277
    //   315: astore 9
    //   317: aload 8
    //   319: astore 10
    //   321: aload 9
    //   323: astore 11
    //   325: goto -48 -> 277
    //   328: astore 7
    //   330: aconst_null
    //   331: astore 8
    //   333: goto -95 -> 238
    //
    // Exception table:
    //   from	to	target	type
    //   16	38	212	java/lang/Exception
    //   110	126	222	java/lang/Exception
    //   83	110	232	java/lang/Exception
    //   224	229	232	java/lang/Exception
    //   54	60	258	java/lang/Exception
    //   136	143	258	java/lang/Exception
    //   248	255	258	java/lang/Exception
    //   282	292	258	java/lang/Exception
    //   65	74	268	finally
    //   168	183	292	java/lang/Exception
    //   159	164	302	java/lang/Exception
    //   183	211	302	java/lang/Exception
    //   294	299	302	java/lang/Exception
    //   83	110	310	finally
    //   110	126	310	finally
    //   224	229	310	finally
    //   238	243	315	finally
    //   65	74	328	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.scanners.n
 * JD-Core Version:    0.6.2
 */