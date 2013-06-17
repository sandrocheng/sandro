package com.antivirus.core.g;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.Map;
import java.util.concurrent.Callable;

public class f
{
  private SharedPreferences a;

  // ERROR //
  public void a(Context paramContext, Callable paramCallable)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 17	java/io/File
    //   5: dup
    //   6: aload_1
    //   7: invokevirtual 23	android/content/Context:getFilesDir	()Ljava/io/File;
    //   10: invokevirtual 27	java/io/File:getParent	()Ljava/lang/String;
    //   13: ldc 29
    //   15: invokevirtual 35	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   18: ldc 37
    //   20: invokespecial 40	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   23: astore 4
    //   25: aload 4
    //   27: ifnull +11 -> 38
    //   30: aload 4
    //   32: invokevirtual 44	java/io/File:exists	()Z
    //   35: ifne +100 -> 135
    //   38: aload_2
    //   39: invokeinterface 50 1 0
    //   44: checkcast 52	java/io/InputStream
    //   47: astore 13
    //   49: new 54	java/io/FileOutputStream
    //   52: dup
    //   53: aload 4
    //   55: invokespecial 57	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   58: astore 6
    //   60: sipush 512
    //   63: newarray byte
    //   65: astore 16
    //   67: aload 13
    //   69: aload 16
    //   71: invokevirtual 61	java/io/InputStream:read	([B)I
    //   74: istore 17
    //   76: iload 17
    //   78: iconst_m1
    //   79: if_icmpeq +25 -> 104
    //   82: aload 6
    //   84: aload 16
    //   86: iconst_0
    //   87: iload 17
    //   89: invokevirtual 67	java/io/OutputStream:write	([BII)V
    //   92: aload 13
    //   94: aload 16
    //   96: invokevirtual 61	java/io/InputStream:read	([B)I
    //   99: istore 17
    //   101: goto -25 -> 76
    //   104: aload 13
    //   106: invokevirtual 70	java/io/InputStream:close	()V
    //   109: aload 6
    //   111: invokevirtual 73	java/io/OutputStream:flush	()V
    //   114: aload 6
    //   116: invokevirtual 74	java/io/OutputStream:close	()V
    //   119: iconst_0
    //   120: ifeq +7 -> 127
    //   123: aconst_null
    //   124: invokevirtual 70	java/io/InputStream:close	()V
    //   127: iconst_0
    //   128: ifeq +7 -> 135
    //   131: aconst_null
    //   132: invokevirtual 74	java/io/OutputStream:close	()V
    //   135: aload_0
    //   136: aload_1
    //   137: ldc 76
    //   139: iconst_0
    //   140: invokevirtual 80	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   143: putfield 82	com/antivirus/core/g/f:a	Landroid/content/SharedPreferences;
    //   146: return
    //   147: astore 9
    //   149: aconst_null
    //   150: astore 10
    //   152: aload 9
    //   154: invokestatic 87	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   157: aload_3
    //   158: ifnull +7 -> 165
    //   161: aload_3
    //   162: invokevirtual 70	java/io/InputStream:close	()V
    //   165: aload 10
    //   167: ifnull -32 -> 135
    //   170: aload 10
    //   172: invokevirtual 74	java/io/OutputStream:close	()V
    //   175: goto -40 -> 135
    //   178: astore 11
    //   180: aload 11
    //   182: invokestatic 87	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   185: goto -50 -> 135
    //   188: astore 5
    //   190: aconst_null
    //   191: astore 6
    //   193: aload_3
    //   194: ifnull +7 -> 201
    //   197: aload_3
    //   198: invokevirtual 70	java/io/InputStream:close	()V
    //   201: aload 6
    //   203: ifnull +8 -> 211
    //   206: aload 6
    //   208: invokevirtual 74	java/io/OutputStream:close	()V
    //   211: aload 5
    //   213: athrow
    //   214: astore 8
    //   216: aload 8
    //   218: invokestatic 87	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   221: goto -20 -> 201
    //   224: astore 7
    //   226: aload 7
    //   228: invokestatic 87	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   231: goto -20 -> 211
    //   234: astore 12
    //   236: aload 12
    //   238: invokestatic 87	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   241: goto -76 -> 165
    //   244: astore 18
    //   246: aload 18
    //   248: invokestatic 87	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   251: goto -124 -> 127
    //   254: astore 11
    //   256: goto -76 -> 180
    //   259: astore 20
    //   261: aload 13
    //   263: astore_3
    //   264: aload 20
    //   266: astore 5
    //   268: aconst_null
    //   269: astore 6
    //   271: goto -78 -> 193
    //   274: astore 15
    //   276: aload 13
    //   278: astore_3
    //   279: aload 15
    //   281: astore 5
    //   283: goto -90 -> 193
    //   286: astore 5
    //   288: aconst_null
    //   289: astore_3
    //   290: goto -97 -> 193
    //   293: astore 5
    //   295: aload 10
    //   297: astore 6
    //   299: goto -106 -> 193
    //   302: astore 19
    //   304: aload 13
    //   306: astore_3
    //   307: aload 19
    //   309: astore 9
    //   311: aconst_null
    //   312: astore 10
    //   314: goto -162 -> 152
    //   317: astore 14
    //   319: aload 13
    //   321: astore_3
    //   322: aload 14
    //   324: astore 9
    //   326: aload 6
    //   328: astore 10
    //   330: goto -178 -> 152
    //   333: astore 9
    //   335: aload 6
    //   337: astore 10
    //   339: aconst_null
    //   340: astore_3
    //   341: goto -189 -> 152
    //
    // Exception table:
    //   from	to	target	type
    //   38	49	147	java/lang/Exception
    //   170	175	178	java/io/IOException
    //   38	49	188	finally
    //   197	201	214	java/io/IOException
    //   206	211	224	java/io/IOException
    //   161	165	234	java/io/IOException
    //   123	127	244	java/io/IOException
    //   131	135	254	java/io/IOException
    //   49	60	259	finally
    //   60	109	274	finally
    //   109	119	286	finally
    //   152	157	293	finally
    //   49	60	302	java/lang/Exception
    //   60	109	317	java/lang/Exception
    //   109	119	333	java/lang/Exception
  }

  public boolean a(Context paramContext, String paramString, Callable paramCallable)
  {
    if (this.a == null)
      this.a = paramContext.getSharedPreferences("white", 0);
    SharedPreferences localSharedPreferences = this.a;
    boolean bool = false;
    if (localSharedPreferences != null)
    {
      if (this.a.getAll().size() < 10)
        a(paramContext, paramCallable);
      bool = this.a.getBoolean(paramString, false);
    }
    return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.g.f
 * JD-Core Version:    0.6.2
 */