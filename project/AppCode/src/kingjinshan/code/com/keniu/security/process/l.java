package com.keniu.security.process;

import java.util.HashMap;
import java.util.Map;

public final class l
{
  public Map a = new HashMap();

  public l(ProcessManagerActivity paramProcessManagerActivity)
  {
  }

  private boolean b()
  {
    return this.b.a;
  }

  public final int a(String paramString)
  {
    if ((this.a != null) && (this.a.get(paramString) != null));
    for (int i = ((Integer)this.a.get(paramString)).intValue(); ; i = 0)
      return i;
  }

  // ERROR //
  public final void a()
  {
    // Byte code:
    //   0: invokestatic 51	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   3: ldc 53
    //   5: invokevirtual 57	java/lang/Runtime:exec	(Ljava/lang/String;)Ljava/lang/Process;
    //   8: invokevirtual 63	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   11: astore 10
    //   13: aload 10
    //   15: astore_2
    //   16: aload_0
    //   17: getfield 12	com/keniu/security/process/l:b	Lcom/keniu/security/process/ProcessManagerActivity;
    //   20: getfield 26	com/keniu/security/process/ProcessManagerActivity:a	Z
    //   23: istore 14
    //   25: iload 14
    //   27: ifeq +12 -> 39
    //   30: aload_2
    //   31: ifnull +7 -> 38
    //   34: aload_2
    //   35: invokevirtual 68	java/io/InputStream:close	()V
    //   38: return
    //   39: aload_2
    //   40: ifnonnull +19 -> 59
    //   43: aload_2
    //   44: ifnull -6 -> 38
    //   47: aload_2
    //   48: invokevirtual 68	java/io/InputStream:close	()V
    //   51: goto -13 -> 38
    //   54: astore 33
    //   56: goto -18 -> 38
    //   59: new 70	java/io/BufferedReader
    //   62: dup
    //   63: new 72	java/io/InputStreamReader
    //   66: dup
    //   67: aload_2
    //   68: invokespecial 75	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   71: sipush 128
    //   74: invokespecial 78	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   77: astore 5
    //   79: aload 5
    //   81: invokevirtual 82	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   84: astore 17
    //   86: aload 17
    //   88: ifnull +284 -> 372
    //   91: aload_0
    //   92: getfield 12	com/keniu/security/process/l:b	Lcom/keniu/security/process/ProcessManagerActivity;
    //   95: getfield 26	com/keniu/security/process/ProcessManagerActivity:a	Z
    //   98: ifne +274 -> 372
    //   101: new 84	java/lang/String
    //   104: dup
    //   105: aload 17
    //   107: invokespecial 87	java/lang/String:<init>	(Ljava/lang/String;)V
    //   110: invokevirtual 90	java/lang/String:trim	()Ljava/lang/String;
    //   113: ldc 92
    //   115: invokevirtual 96	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   118: astore 19
    //   120: aload 19
    //   122: arraylength
    //   123: bipush 8
    //   125: if_icmpne +161 -> 286
    //   128: aload 19
    //   130: bipush 7
    //   132: aaload
    //   133: ldc 98
    //   135: invokevirtual 102	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   138: istore 28
    //   140: iload 28
    //   142: ifeq +367 -> 509
    //   145: aload 19
    //   147: iconst_5
    //   148: aaload
    //   149: iconst_0
    //   150: aload 19
    //   152: iconst_5
    //   153: aaload
    //   154: invokevirtual 105	java/lang/String:length	()I
    //   157: iconst_1
    //   158: isub
    //   159: invokevirtual 109	java/lang/String:substring	(II)Ljava/lang/String;
    //   162: invokestatic 112	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   165: istore 31
    //   167: aload 19
    //   169: bipush 7
    //   171: aaload
    //   172: astore 20
    //   174: iload 31
    //   176: istore 21
    //   178: aload 20
    //   180: ldc 114
    //   182: invokevirtual 117	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   185: istore 22
    //   187: iload 22
    //   189: ifle +13 -> 202
    //   192: aload 20
    //   194: iconst_0
    //   195: iload 22
    //   197: invokevirtual 109	java/lang/String:substring	(II)Ljava/lang/String;
    //   200: astore 20
    //   202: aload_0
    //   203: getfield 20	com/keniu/security/process/l:a	Ljava/util/Map;
    //   206: aload 20
    //   208: invokeinterface 33 2 0
    //   213: ifnonnull -134 -> 79
    //   216: aload_0
    //   217: getfield 20	com/keniu/security/process/l:a	Ljava/util/Map;
    //   220: aload 20
    //   222: iload 21
    //   224: invokestatic 121	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   227: invokeinterface 125 3 0
    //   232: pop
    //   233: goto -154 -> 79
    //   236: astore 16
    //   238: aload 5
    //   240: astore_3
    //   241: aload_0
    //   242: aconst_null
    //   243: putfield 20	com/keniu/security/process/l:a	Ljava/util/Map;
    //   246: aload_3
    //   247: ifnull +7 -> 254
    //   250: aload_3
    //   251: invokevirtual 126	java/io/BufferedReader:close	()V
    //   254: aload_2
    //   255: ifnull -217 -> 38
    //   258: aload_2
    //   259: invokevirtual 68	java/io/InputStream:close	()V
    //   262: goto -224 -> 38
    //   265: astore 9
    //   267: goto -229 -> 38
    //   270: astore 29
    //   272: iconst_0
    //   273: istore 30
    //   275: iload 30
    //   277: istore 21
    //   279: ldc 128
    //   281: astore 20
    //   283: goto -105 -> 178
    //   286: aload 19
    //   288: arraylength
    //   289: bipush 9
    //   291: if_icmpne +218 -> 509
    //   294: aload 19
    //   296: bipush 8
    //   298: aaload
    //   299: ldc 98
    //   301: invokevirtual 102	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   304: istore 24
    //   306: iload 24
    //   308: ifeq +201 -> 509
    //   311: aload 19
    //   313: iconst_5
    //   314: aaload
    //   315: iconst_0
    //   316: aload 19
    //   318: iconst_5
    //   319: aaload
    //   320: invokevirtual 105	java/lang/String:length	()I
    //   323: iconst_1
    //   324: isub
    //   325: invokevirtual 109	java/lang/String:substring	(II)Ljava/lang/String;
    //   328: invokestatic 112	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   331: istore 27
    //   333: iload 27
    //   335: istore 26
    //   337: aload 19
    //   339: bipush 8
    //   341: aaload
    //   342: astore 20
    //   344: iload 26
    //   346: istore 21
    //   348: goto -170 -> 178
    //   351: astore 25
    //   353: iconst_0
    //   354: istore 26
    //   356: aload 25
    //   358: invokevirtual 131	java/lang/NumberFormatException:printStackTrace	()V
    //   361: ldc 128
    //   363: astore 20
    //   365: iload 26
    //   367: istore 21
    //   369: goto -191 -> 178
    //   372: aload 5
    //   374: invokevirtual 126	java/io/BufferedReader:close	()V
    //   377: aload_2
    //   378: ifnull -340 -> 38
    //   381: aload_2
    //   382: invokevirtual 68	java/io/InputStream:close	()V
    //   385: goto -347 -> 38
    //   388: astore 18
    //   390: goto -352 -> 38
    //   393: astore 7
    //   395: aconst_null
    //   396: astore 6
    //   398: aconst_null
    //   399: astore 5
    //   401: aload 5
    //   403: ifnull +8 -> 411
    //   406: aload 5
    //   408: invokevirtual 126	java/io/BufferedReader:close	()V
    //   411: aload 6
    //   413: ifnull +8 -> 421
    //   416: aload 6
    //   418: invokevirtual 68	java/io/InputStream:close	()V
    //   421: aload 7
    //   423: athrow
    //   424: astore 34
    //   426: goto -388 -> 38
    //   429: astore 8
    //   431: goto -10 -> 421
    //   434: astore 12
    //   436: aload_2
    //   437: astore 13
    //   439: aload 12
    //   441: astore 7
    //   443: aload 13
    //   445: astore 6
    //   447: aconst_null
    //   448: astore 5
    //   450: goto -49 -> 401
    //   453: astore 15
    //   455: aload_2
    //   456: astore 6
    //   458: aload 15
    //   460: astore 7
    //   462: goto -61 -> 401
    //   465: astore 4
    //   467: aload_3
    //   468: astore 5
    //   470: aload_2
    //   471: astore 6
    //   473: aload 4
    //   475: astore 7
    //   477: goto -76 -> 401
    //   480: astore_1
    //   481: aconst_null
    //   482: astore_2
    //   483: aconst_null
    //   484: astore_3
    //   485: goto -244 -> 241
    //   488: astore 11
    //   490: aconst_null
    //   491: astore_3
    //   492: goto -251 -> 241
    //   495: astore 25
    //   497: goto -141 -> 356
    //   500: astore 32
    //   502: iload 31
    //   504: istore 30
    //   506: goto -231 -> 275
    //   509: ldc 128
    //   511: astore 20
    //   513: iconst_0
    //   514: istore 21
    //   516: goto -338 -> 178
    //
    // Exception table:
    //   from	to	target	type
    //   47	51	54	java/io/IOException
    //   79	140	236	java/lang/Exception
    //   178	233	236	java/lang/Exception
    //   286	306	236	java/lang/Exception
    //   311	333	236	java/lang/Exception
    //   337	344	236	java/lang/Exception
    //   356	361	236	java/lang/Exception
    //   250	262	265	java/io/IOException
    //   145	167	270	java/lang/Exception
    //   311	333	351	java/lang/NumberFormatException
    //   372	385	388	java/io/IOException
    //   0	13	393	finally
    //   34	38	424	java/io/IOException
    //   406	421	429	java/io/IOException
    //   16	25	434	finally
    //   59	79	434	finally
    //   79	140	453	finally
    //   145	167	453	finally
    //   167	174	453	finally
    //   178	233	453	finally
    //   286	306	453	finally
    //   311	333	453	finally
    //   337	344	453	finally
    //   356	361	453	finally
    //   241	246	465	finally
    //   0	13	480	java/lang/Exception
    //   16	25	488	java/lang/Exception
    //   59	79	488	java/lang/Exception
    //   337	344	495	java/lang/NumberFormatException
    //   167	174	500	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.process.l
 * JD-Core Version:    0.6.2
 */