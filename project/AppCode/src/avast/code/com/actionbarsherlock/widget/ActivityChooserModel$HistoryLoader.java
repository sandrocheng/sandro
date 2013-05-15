package com.actionbarsherlock.widget;

final class ActivityChooserModel$HistoryLoader
  implements Runnable
{
  private ActivityChooserModel$HistoryLoader(ActivityChooserModel paramActivityChooserModel)
  {
  }

  // ERROR //
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 12	com/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader:this$0	Lcom/actionbarsherlock/widget/ActivityChooserModel;
    //   4: invokestatic 31	com/actionbarsherlock/widget/ActivityChooserModel:access$400	(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Landroid/content/Context;
    //   7: aload_0
    //   8: getfield 12	com/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader:this$0	Lcom/actionbarsherlock/widget/ActivityChooserModel;
    //   11: invokestatic 35	com/actionbarsherlock/widget/ActivityChooserModel:access$300	(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Ljava/lang/String;
    //   14: invokevirtual 41	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   17: astore_2
    //   18: invokestatic 47	android/util/Xml:newPullParser	()Lorg/xmlpull/v1/XmlPullParser;
    //   21: astore 11
    //   23: aload 11
    //   25: aload_2
    //   26: aconst_null
    //   27: invokeinterface 53 3 0
    //   32: iconst_0
    //   33: istore 12
    //   35: iload 12
    //   37: iconst_1
    //   38: if_icmpeq +21 -> 59
    //   41: iload 12
    //   43: iconst_2
    //   44: if_icmpeq +15 -> 59
    //   47: aload 11
    //   49: invokeinterface 57 1 0
    //   54: istore 12
    //   56: goto -21 -> 35
    //   59: ldc 59
    //   61: aload 11
    //   63: invokeinterface 63 1 0
    //   68: invokevirtual 69	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   71: ifne +58 -> 129
    //   74: new 23	org/xmlpull/v1/XmlPullParserException
    //   77: dup
    //   78: ldc 71
    //   80: invokespecial 74	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   83: athrow
    //   84: astore 8
    //   86: invokestatic 77	com/actionbarsherlock/widget/ActivityChooserModel:access$1100	()Ljava/lang/String;
    //   89: new 79	java/lang/StringBuilder
    //   92: dup
    //   93: invokespecial 80	java/lang/StringBuilder:<init>	()V
    //   96: ldc 82
    //   98: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: aload_0
    //   102: getfield 12	com/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader:this$0	Lcom/actionbarsherlock/widget/ActivityChooserModel;
    //   105: invokestatic 35	com/actionbarsherlock/widget/ActivityChooserModel:access$300	(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Ljava/lang/String;
    //   108: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   111: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   114: aload 8
    //   116: invokestatic 95	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   119: pop
    //   120: aload_2
    //   121: ifnull +7 -> 128
    //   124: aload_2
    //   125: invokevirtual 100	java/io/FileInputStream:close	()V
    //   128: return
    //   129: new 102	java/util/ArrayList
    //   132: dup
    //   133: invokespecial 103	java/util/ArrayList:<init>	()V
    //   136: astore 13
    //   138: aload 11
    //   140: invokeinterface 57 1 0
    //   145: istore 14
    //   147: iload 14
    //   149: iconst_1
    //   150: if_icmpne +77 -> 227
    //   153: aload_0
    //   154: getfield 12	com/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader:this$0	Lcom/actionbarsherlock/widget/ActivityChooserModel;
    //   157: invokestatic 107	com/actionbarsherlock/widget/ActivityChooserModel:access$500	(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Ljava/lang/Object;
    //   160: astore 16
    //   162: aload 16
    //   164: monitorenter
    //   165: new 109	java/util/LinkedHashSet
    //   168: dup
    //   169: aload 13
    //   171: invokespecial 112	java/util/LinkedHashSet:<init>	(Ljava/util/Collection;)V
    //   174: astore 17
    //   176: aload_0
    //   177: getfield 12	com/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader:this$0	Lcom/actionbarsherlock/widget/ActivityChooserModel;
    //   180: invokestatic 116	com/actionbarsherlock/widget/ActivityChooserModel:access$600	(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Ljava/util/List;
    //   183: astore 19
    //   185: iconst_m1
    //   186: aload 19
    //   188: invokeinterface 121 1 0
    //   193: iadd
    //   194: istore 20
    //   196: iload 20
    //   198: iflt +183 -> 381
    //   201: aload 17
    //   203: aload 19
    //   205: iload 20
    //   207: invokeinterface 125 2 0
    //   212: checkcast 127	com/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord
    //   215: invokeinterface 132 2 0
    //   220: pop
    //   221: iinc 20 255
    //   224: goto -28 -> 196
    //   227: iload 14
    //   229: iconst_3
    //   230: if_icmpeq -92 -> 138
    //   233: iload 14
    //   235: iconst_4
    //   236: if_icmpeq -98 -> 138
    //   239: ldc 134
    //   241: aload 11
    //   243: invokeinterface 63 1 0
    //   248: invokevirtual 69	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   251: ifne +65 -> 316
    //   254: new 23	org/xmlpull/v1/XmlPullParserException
    //   257: dup
    //   258: ldc 136
    //   260: invokespecial 74	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   263: athrow
    //   264: astore 5
    //   266: invokestatic 77	com/actionbarsherlock/widget/ActivityChooserModel:access$1100	()Ljava/lang/String;
    //   269: new 79	java/lang/StringBuilder
    //   272: dup
    //   273: invokespecial 80	java/lang/StringBuilder:<init>	()V
    //   276: ldc 82
    //   278: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   281: aload_0
    //   282: getfield 12	com/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader:this$0	Lcom/actionbarsherlock/widget/ActivityChooserModel;
    //   285: invokestatic 35	com/actionbarsherlock/widget/ActivityChooserModel:access$300	(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Ljava/lang/String;
    //   288: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   291: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   294: aload 5
    //   296: invokestatic 95	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   299: pop
    //   300: aload_2
    //   301: ifnull -173 -> 128
    //   304: aload_2
    //   305: invokevirtual 100	java/io/FileInputStream:close	()V
    //   308: goto -180 -> 128
    //   311: astore 7
    //   313: goto -185 -> 128
    //   316: aload 13
    //   318: new 127	com/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord
    //   321: dup
    //   322: aload 11
    //   324: aconst_null
    //   325: ldc 138
    //   327: invokeinterface 142 3 0
    //   332: aload 11
    //   334: aconst_null
    //   335: ldc 144
    //   337: invokeinterface 142 3 0
    //   342: invokestatic 150	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   345: aload 11
    //   347: aconst_null
    //   348: ldc 152
    //   350: invokeinterface 142 3 0
    //   355: invokestatic 158	java/lang/Float:parseFloat	(Ljava/lang/String;)F
    //   358: invokespecial 161	com/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord:<init>	(Ljava/lang/String;JF)V
    //   361: invokeinterface 162 2 0
    //   366: pop
    //   367: goto -229 -> 138
    //   370: astore_3
    //   371: aload_2
    //   372: ifnull +7 -> 379
    //   375: aload_2
    //   376: invokevirtual 100	java/io/FileInputStream:close	()V
    //   379: aload_3
    //   380: athrow
    //   381: aload 19
    //   383: invokeinterface 121 1 0
    //   388: aload 17
    //   390: invokeinterface 163 1 0
    //   395: if_icmpne +22 -> 417
    //   398: aload 16
    //   400: monitorexit
    //   401: aload_2
    //   402: ifnull -274 -> 128
    //   405: aload_2
    //   406: invokevirtual 100	java/io/FileInputStream:close	()V
    //   409: goto -281 -> 128
    //   412: astore 25
    //   414: goto -286 -> 128
    //   417: aload 19
    //   419: invokeinterface 166 1 0
    //   424: aload 19
    //   426: aload 17
    //   428: invokeinterface 170 2 0
    //   433: pop
    //   434: aload_0
    //   435: getfield 12	com/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader:this$0	Lcom/actionbarsherlock/widget/ActivityChooserModel;
    //   438: iconst_1
    //   439: invokestatic 174	com/actionbarsherlock/widget/ActivityChooserModel:access$702	(Lcom/actionbarsherlock/widget/ActivityChooserModel;Z)Z
    //   442: pop
    //   443: aload_0
    //   444: getfield 12	com/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader:this$0	Lcom/actionbarsherlock/widget/ActivityChooserModel;
    //   447: invokestatic 178	com/actionbarsherlock/widget/ActivityChooserModel:access$1000	(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Landroid/os/Handler;
    //   450: new 180	com/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader$1
    //   453: dup
    //   454: aload_0
    //   455: invokespecial 183	com/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader$1:<init>	(Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;)V
    //   458: invokevirtual 189	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   461: pop
    //   462: aload 16
    //   464: monitorexit
    //   465: aload_2
    //   466: ifnull -338 -> 128
    //   469: aload_2
    //   470: invokevirtual 100	java/io/FileInputStream:close	()V
    //   473: goto -345 -> 128
    //   476: astore 24
    //   478: goto -350 -> 128
    //   481: astore 18
    //   483: aload 16
    //   485: monitorexit
    //   486: aload 18
    //   488: athrow
    //   489: astore 10
    //   491: goto -363 -> 128
    //   494: astore 4
    //   496: goto -117 -> 379
    //   499: astore_1
    //   500: goto -372 -> 128
    //
    // Exception table:
    //   from	to	target	type
    //   18	84	84	org/xmlpull/v1/XmlPullParserException
    //   129	165	84	org/xmlpull/v1/XmlPullParserException
    //   239	264	84	org/xmlpull/v1/XmlPullParserException
    //   316	367	84	org/xmlpull/v1/XmlPullParserException
    //   486	489	84	org/xmlpull/v1/XmlPullParserException
    //   18	84	264	java/io/IOException
    //   129	165	264	java/io/IOException
    //   239	264	264	java/io/IOException
    //   316	367	264	java/io/IOException
    //   486	489	264	java/io/IOException
    //   304	308	311	java/io/IOException
    //   18	84	370	finally
    //   86	120	370	finally
    //   129	165	370	finally
    //   239	264	370	finally
    //   266	300	370	finally
    //   316	367	370	finally
    //   486	489	370	finally
    //   405	409	412	java/io/IOException
    //   469	473	476	java/io/IOException
    //   165	221	481	finally
    //   381	401	481	finally
    //   417	465	481	finally
    //   483	486	481	finally
    //   124	128	489	java/io/IOException
    //   375	379	494	java/io/IOException
    //   0	18	499	java/io/FileNotFoundException
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.widget.ActivityChooserModel.HistoryLoader
 * JD-Core Version:    0.6.2
 */