package com.avast.android.mobilesecurity.app.manager.a;

import android.database.Cursor;
import android.os.AsyncTask;

class f extends AsyncTask
{
  f(e parame, Cursor paramCursor, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
  }

  // ERROR //
  protected Void a(Void[] paramArrayOfVoid)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 17	com/avast/android/mobilesecurity/app/manager/a/f:f	Lcom/avast/android/mobilesecurity/app/manager/a/e;
    //   4: iconst_1
    //   5: invokestatic 36	com/avast/android/mobilesecurity/app/manager/a/e:a	(Lcom/avast/android/mobilesecurity/app/manager/a/e;Z)Z
    //   8: pop
    //   9: iconst_0
    //   10: istore_3
    //   11: iconst_0
    //   12: istore 4
    //   14: iconst_0
    //   15: istore 5
    //   17: aload_0
    //   18: getfield 19	com/avast/android/mobilesecurity/app/manager/a/f:a	Landroid/database/Cursor;
    //   21: ifnull +437 -> 458
    //   24: aload_0
    //   25: getfield 19	com/avast/android/mobilesecurity/app/manager/a/f:a	Landroid/database/Cursor;
    //   28: invokeinterface 42 1 0
    //   33: ifne +425 -> 458
    //   36: aload_0
    //   37: invokevirtual 45	com/avast/android/mobilesecurity/app/manager/a/f:isCancelled	()Z
    //   40: ifne +418 -> 458
    //   43: iload 5
    //   45: aload_0
    //   46: getfield 19	com/avast/android/mobilesecurity/app/manager/a/f:a	Landroid/database/Cursor;
    //   49: invokeinterface 49 1 0
    //   54: if_icmpge +404 -> 458
    //   57: aload_0
    //   58: getfield 19	com/avast/android/mobilesecurity/app/manager/a/f:a	Landroid/database/Cursor;
    //   61: astore 13
    //   63: aload 13
    //   65: monitorenter
    //   66: aload_0
    //   67: getfield 19	com/avast/android/mobilesecurity/app/manager/a/f:a	Landroid/database/Cursor;
    //   70: iload 5
    //   72: invokeinterface 53 2 0
    //   77: pop
    //   78: aload_0
    //   79: getfield 19	com/avast/android/mobilesecurity/app/manager/a/f:a	Landroid/database/Cursor;
    //   82: aload_0
    //   83: getfield 21	com/avast/android/mobilesecurity/app/manager/a/f:b	I
    //   86: invokeinterface 57 2 0
    //   91: astore 16
    //   93: aload_0
    //   94: getfield 19	com/avast/android/mobilesecurity/app/manager/a/f:a	Landroid/database/Cursor;
    //   97: aload_0
    //   98: getfield 23	com/avast/android/mobilesecurity/app/manager/a/f:c	I
    //   101: invokeinterface 61 2 0
    //   106: istore 17
    //   108: aload_0
    //   109: getfield 19	com/avast/android/mobilesecurity/app/manager/a/f:a	Landroid/database/Cursor;
    //   112: aload_0
    //   113: getfield 25	com/avast/android/mobilesecurity/app/manager/a/f:d	I
    //   116: invokeinterface 61 2 0
    //   121: istore 18
    //   123: aload 13
    //   125: monitorexit
    //   126: iload 17
    //   128: ifle +132 -> 260
    //   131: aload_0
    //   132: getfield 17	com/avast/android/mobilesecurity/app/manager/a/f:f	Lcom/avast/android/mobilesecurity/app/manager/a/e;
    //   135: invokestatic 64	com/avast/android/mobilesecurity/app/manager/a/e:a	(Lcom/avast/android/mobilesecurity/app/manager/a/e;)Ljava/util/Map;
    //   138: iload 17
    //   140: invokestatic 70	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   143: invokeinterface 76 2 0
    //   148: checkcast 78	com/avast/android/mobilesecurity/app/manager/a/g
    //   151: astore 22
    //   153: aload 22
    //   155: ifnonnull +25 -> 180
    //   158: new 78	com/avast/android/mobilesecurity/app/manager/a/g
    //   161: dup
    //   162: aconst_null
    //   163: invokespecial 81	com/avast/android/mobilesecurity/app/manager/a/g:<init>	(Lcom/avast/android/mobilesecurity/app/manager/a/f;)V
    //   166: astore 22
    //   168: aload 22
    //   170: iconst_m1
    //   171: putfield 82	com/avast/android/mobilesecurity/app/manager/a/g:b	I
    //   174: aload 22
    //   176: iconst_m1
    //   177: putfield 84	com/avast/android/mobilesecurity/app/manager/a/g:a	I
    //   180: aload_0
    //   181: getfield 27	com/avast/android/mobilesecurity/app/manager/a/f:e	I
    //   184: iconst_3
    //   185: if_icmpne +10 -> 195
    //   188: aload 22
    //   190: iload 18
    //   192: putfield 82	com/avast/android/mobilesecurity/app/manager/a/g:b	I
    //   195: aload_0
    //   196: getfield 27	com/avast/android/mobilesecurity/app/manager/a/f:e	I
    //   199: iconst_2
    //   200: if_icmpne +149 -> 349
    //   203: aload 22
    //   205: iload 18
    //   207: putfield 84	com/avast/android/mobilesecurity/app/manager/a/g:a	I
    //   210: aload_0
    //   211: getfield 17	com/avast/android/mobilesecurity/app/manager/a/f:f	Lcom/avast/android/mobilesecurity/app/manager/a/e;
    //   214: invokestatic 64	com/avast/android/mobilesecurity/app/manager/a/e:a	(Lcom/avast/android/mobilesecurity/app/manager/a/e;)Ljava/util/Map;
    //   217: astore 23
    //   219: aload 23
    //   221: monitorenter
    //   222: aload_0
    //   223: getfield 17	com/avast/android/mobilesecurity/app/manager/a/f:f	Lcom/avast/android/mobilesecurity/app/manager/a/e;
    //   226: invokestatic 64	com/avast/android/mobilesecurity/app/manager/a/e:a	(Lcom/avast/android/mobilesecurity/app/manager/a/e;)Ljava/util/Map;
    //   229: iload 17
    //   231: invokestatic 70	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   234: aload 22
    //   236: invokeinterface 88 3 0
    //   241: pop
    //   242: aload 23
    //   244: monitorexit
    //   245: aload 22
    //   247: getfield 84	com/avast/android/mobilesecurity/app/manager/a/g:a	I
    //   250: iload_3
    //   251: if_icmple +9 -> 260
    //   254: aload 22
    //   256: getfield 84	com/avast/android/mobilesecurity/app/manager/a/g:a	I
    //   259: istore_3
    //   260: aload_0
    //   261: getfield 27	com/avast/android/mobilesecurity/app/manager/a/f:e	I
    //   264: iconst_1
    //   265: if_icmpne +113 -> 378
    //   268: aload_0
    //   269: getfield 17	com/avast/android/mobilesecurity/app/manager/a/f:f	Lcom/avast/android/mobilesecurity/app/manager/a/e;
    //   272: invokestatic 90	com/avast/android/mobilesecurity/app/manager/a/e:c	(Lcom/avast/android/mobilesecurity/app/manager/a/e;)Ljava/util/Map;
    //   275: aload 16
    //   277: iload 18
    //   279: invokestatic 70	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   282: invokeinterface 88 3 0
    //   287: pop
    //   288: iload 18
    //   290: istore 19
    //   292: iload 19
    //   294: iload 4
    //   296: if_icmple +332 -> 628
    //   299: aload_0
    //   300: getfield 17	com/avast/android/mobilesecurity/app/manager/a/f:f	Lcom/avast/android/mobilesecurity/app/manager/a/e;
    //   303: invokestatic 93	com/avast/android/mobilesecurity/app/manager/a/e:d	(Lcom/avast/android/mobilesecurity/app/manager/a/e;)I
    //   306: iconst_m1
    //   307: if_icmpne +24 -> 331
    //   310: iload 5
    //   312: aload_0
    //   313: getfield 17	com/avast/android/mobilesecurity/app/manager/a/f:f	Lcom/avast/android/mobilesecurity/app/manager/a/e;
    //   316: invokestatic 95	com/avast/android/mobilesecurity/app/manager/a/e:e	(Lcom/avast/android/mobilesecurity/app/manager/a/e;)I
    //   319: irem
    //   320: ifne +11 -> 331
    //   323: aload_0
    //   324: iconst_0
    //   325: anewarray 97	java/lang/Void
    //   328: invokevirtual 101	com/avast/android/mobilesecurity/app/manager/a/f:publishProgress	([Ljava/lang/Object;)V
    //   331: iinc 5 1
    //   334: iload 19
    //   336: istore 4
    //   338: goto -321 -> 17
    //   341: astore 14
    //   343: aload 13
    //   345: monitorexit
    //   346: aload 14
    //   348: athrow
    //   349: aload 22
    //   351: aload_0
    //   352: getfield 17	com/avast/android/mobilesecurity/app/manager/a/f:f	Lcom/avast/android/mobilesecurity/app/manager/a/e;
    //   355: invokestatic 104	com/avast/android/mobilesecurity/app/manager/a/e:b	(Lcom/avast/android/mobilesecurity/app/manager/a/e;)Lcom/avast/android/mobilesecurity/app/manager/a/b;
    //   358: iload 17
    //   360: invokevirtual 109	com/avast/android/mobilesecurity/app/manager/a/b:a	(I)J
    //   363: l2i
    //   364: putfield 84	com/avast/android/mobilesecurity/app/manager/a/g:a	I
    //   367: goto -157 -> 210
    //   370: astore 24
    //   372: aload 23
    //   374: monitorexit
    //   375: aload 24
    //   377: athrow
    //   378: aload_0
    //   379: getfield 17	com/avast/android/mobilesecurity/app/manager/a/f:f	Lcom/avast/android/mobilesecurity/app/manager/a/e;
    //   382: invokestatic 90	com/avast/android/mobilesecurity/app/manager/a/e:c	(Lcom/avast/android/mobilesecurity/app/manager/a/e;)Ljava/util/Map;
    //   385: aload 16
    //   387: invokeinterface 113 2 0
    //   392: ifne +41 -> 433
    //   395: aload_0
    //   396: getfield 17	com/avast/android/mobilesecurity/app/manager/a/f:f	Lcom/avast/android/mobilesecurity/app/manager/a/e;
    //   399: invokestatic 104	com/avast/android/mobilesecurity/app/manager/a/e:b	(Lcom/avast/android/mobilesecurity/app/manager/a/e;)Lcom/avast/android/mobilesecurity/app/manager/a/b;
    //   402: aload 16
    //   404: invokevirtual 116	com/avast/android/mobilesecurity/app/manager/a/b:a	(Ljava/lang/String;)J
    //   407: l2i
    //   408: istore 19
    //   410: aload_0
    //   411: getfield 17	com/avast/android/mobilesecurity/app/manager/a/f:f	Lcom/avast/android/mobilesecurity/app/manager/a/e;
    //   414: invokestatic 90	com/avast/android/mobilesecurity/app/manager/a/e:c	(Lcom/avast/android/mobilesecurity/app/manager/a/e;)Ljava/util/Map;
    //   417: aload 16
    //   419: iload 19
    //   421: invokestatic 70	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   424: invokeinterface 88 3 0
    //   429: pop
    //   430: goto -138 -> 292
    //   433: aload_0
    //   434: getfield 17	com/avast/android/mobilesecurity/app/manager/a/f:f	Lcom/avast/android/mobilesecurity/app/manager/a/e;
    //   437: invokestatic 90	com/avast/android/mobilesecurity/app/manager/a/e:c	(Lcom/avast/android/mobilesecurity/app/manager/a/e;)Ljava/util/Map;
    //   440: aload 16
    //   442: invokeinterface 76 2 0
    //   447: checkcast 66	java/lang/Integer
    //   450: invokevirtual 119	java/lang/Integer:intValue	()I
    //   453: istore 19
    //   455: goto -163 -> 292
    //   458: aload_0
    //   459: getfield 19	com/avast/android/mobilesecurity/app/manager/a/f:a	Landroid/database/Cursor;
    //   462: ifnull +52 -> 514
    //   465: aload_0
    //   466: getfield 19	com/avast/android/mobilesecurity/app/manager/a/f:a	Landroid/database/Cursor;
    //   469: invokeinterface 42 1 0
    //   474: ifne +40 -> 514
    //   477: aload_0
    //   478: getfield 17	com/avast/android/mobilesecurity/app/manager/a/f:f	Lcom/avast/android/mobilesecurity/app/manager/a/e;
    //   481: iload_3
    //   482: invokestatic 122	com/avast/android/mobilesecurity/app/manager/a/e:a	(Lcom/avast/android/mobilesecurity/app/manager/a/e;I)I
    //   485: pop
    //   486: aload_0
    //   487: getfield 17	com/avast/android/mobilesecurity/app/manager/a/f:f	Lcom/avast/android/mobilesecurity/app/manager/a/e;
    //   490: iload 4
    //   492: invokestatic 124	com/avast/android/mobilesecurity/app/manager/a/e:b	(Lcom/avast/android/mobilesecurity/app/manager/a/e;I)I
    //   495: pop
    //   496: aload_0
    //   497: iconst_0
    //   498: anewarray 97	java/lang/Void
    //   501: invokevirtual 101	com/avast/android/mobilesecurity/app/manager/a/f:publishProgress	([Ljava/lang/Object;)V
    //   504: aload_0
    //   505: getfield 17	com/avast/android/mobilesecurity/app/manager/a/f:f	Lcom/avast/android/mobilesecurity/app/manager/a/e;
    //   508: invokestatic 104	com/avast/android/mobilesecurity/app/manager/a/e:b	(Lcom/avast/android/mobilesecurity/app/manager/a/e;)Lcom/avast/android/mobilesecurity/app/manager/a/b;
    //   511: invokevirtual 126	com/avast/android/mobilesecurity/app/manager/a/b:a	()V
    //   514: aload_0
    //   515: getfield 17	com/avast/android/mobilesecurity/app/manager/a/f:f	Lcom/avast/android/mobilesecurity/app/manager/a/e;
    //   518: invokestatic 64	com/avast/android/mobilesecurity/app/manager/a/e:a	(Lcom/avast/android/mobilesecurity/app/manager/a/e;)Ljava/util/Map;
    //   521: astore 6
    //   523: aload 6
    //   525: monitorenter
    //   526: aload_0
    //   527: getfield 17	com/avast/android/mobilesecurity/app/manager/a/f:f	Lcom/avast/android/mobilesecurity/app/manager/a/e;
    //   530: invokestatic 64	com/avast/android/mobilesecurity/app/manager/a/e:a	(Lcom/avast/android/mobilesecurity/app/manager/a/e;)Ljava/util/Map;
    //   533: invokeinterface 130 1 0
    //   538: invokeinterface 136 1 0
    //   543: astore 8
    //   545: aload 8
    //   547: invokeinterface 141 1 0
    //   552: ifeq +62 -> 614
    //   555: aload 8
    //   557: invokeinterface 145 1 0
    //   562: checkcast 147	java/util/Map$Entry
    //   565: astore 10
    //   567: aload 10
    //   569: invokeinterface 150 1 0
    //   574: checkcast 78	com/avast/android/mobilesecurity/app/manager/a/g
    //   577: aload_0
    //   578: getfield 17	com/avast/android/mobilesecurity/app/manager/a/f:f	Lcom/avast/android/mobilesecurity/app/manager/a/e;
    //   581: invokestatic 104	com/avast/android/mobilesecurity/app/manager/a/e:b	(Lcom/avast/android/mobilesecurity/app/manager/a/e;)Lcom/avast/android/mobilesecurity/app/manager/a/b;
    //   584: aload 10
    //   586: invokeinterface 153 1 0
    //   591: checkcast 66	java/lang/Integer
    //   594: invokevirtual 119	java/lang/Integer:intValue	()I
    //   597: invokevirtual 155	com/avast/android/mobilesecurity/app/manager/a/b:b	(I)I
    //   600: putfield 82	com/avast/android/mobilesecurity/app/manager/a/g:b	I
    //   603: goto -58 -> 545
    //   606: astore 7
    //   608: aload 6
    //   610: monitorexit
    //   611: aload 7
    //   613: athrow
    //   614: aload 6
    //   616: monitorexit
    //   617: aload_0
    //   618: getfield 17	com/avast/android/mobilesecurity/app/manager/a/f:f	Lcom/avast/android/mobilesecurity/app/manager/a/e;
    //   621: iconst_0
    //   622: invokestatic 36	com/avast/android/mobilesecurity/app/manager/a/e:a	(Lcom/avast/android/mobilesecurity/app/manager/a/e;Z)Z
    //   625: pop
    //   626: aconst_null
    //   627: areturn
    //   628: iload 4
    //   630: istore 19
    //   632: goto -333 -> 299
    //
    // Exception table:
    //   from	to	target	type
    //   66	126	341	finally
    //   343	346	341	finally
    //   222	245	370	finally
    //   372	375	370	finally
    //   526	611	606	finally
    //   614	617	606	finally
  }

  protected void a(Void paramVoid)
  {
    super.onPostExecute(paramVoid);
    e.f(this.f).a();
  }

  protected void b(Void[] paramArrayOfVoid)
  {
    super.onProgressUpdate(paramArrayOfVoid);
    e.f(this.f).a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.manager.a.f
 * JD-Core Version:    0.6.2
 */