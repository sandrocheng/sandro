package com.antivirus.apploader;

import android.database.sqlite.SQLiteDatabase;

public class f
{
  SQLiteDatabase a = null;
  e b = null;

  // ERROR //
  public java.lang.String a(android.content.Context paramContext, java.lang.String paramString1, java.lang.String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: getfield 14	com/antivirus/apploader/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   7: ifnonnull +30 -> 37
    //   10: aload_0
    //   11: new 21	com/antivirus/apploader/e
    //   14: dup
    //   15: aload_1
    //   16: ldc 23
    //   18: aconst_null
    //   19: iconst_1
    //   20: invokespecial 26	com/antivirus/apploader/e:<init>	(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    //   23: putfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   26: aload_0
    //   27: aload_0
    //   28: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   31: invokevirtual 30	com/antivirus/apploader/e:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   34: putfield 14	com/antivirus/apploader/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   37: aload_0
    //   38: getfield 14	com/antivirus/apploader/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   41: ldc 32
    //   43: iconst_1
    //   44: anewarray 34	java/lang/String
    //   47: dup
    //   48: iconst_0
    //   49: ldc 36
    //   51: aastore
    //   52: ldc 38
    //   54: iconst_1
    //   55: anewarray 34	java/lang/String
    //   58: dup
    //   59: iconst_0
    //   60: aload_2
    //   61: aastore
    //   62: aconst_null
    //   63: aconst_null
    //   64: aconst_null
    //   65: invokevirtual 44	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   68: astore 8
    //   70: aload 8
    //   72: astore 7
    //   74: aload 7
    //   76: ifnull +48 -> 124
    //   79: aload 7
    //   81: invokeinterface 50 1 0
    //   86: ifle +38 -> 124
    //   89: aload 7
    //   91: invokeinterface 54 1 0
    //   96: pop
    //   97: aload 7
    //   99: iconst_0
    //   100: invokeinterface 58 2 0
    //   105: invokestatic 64	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   108: ifne +16 -> 124
    //   111: aload 7
    //   113: iconst_0
    //   114: invokeinterface 58 2 0
    //   119: astore 12
    //   121: aload 12
    //   123: astore_3
    //   124: aload 7
    //   126: ifnull +10 -> 136
    //   129: aload 7
    //   131: invokeinterface 67 1 0
    //   136: aload_0
    //   137: invokevirtual 69	com/antivirus/apploader/f:a	()V
    //   140: aload_3
    //   141: areturn
    //   142: astore 6
    //   144: aconst_null
    //   145: astore 7
    //   147: aload 7
    //   149: ifnull +10 -> 159
    //   152: aload 7
    //   154: invokeinterface 67 1 0
    //   159: aload_0
    //   160: invokevirtual 69	com/antivirus/apploader/f:a	()V
    //   163: goto -23 -> 140
    //   166: astore 5
    //   168: aload 4
    //   170: ifnull +10 -> 180
    //   173: aload 4
    //   175: invokeinterface 67 1 0
    //   180: aload_0
    //   181: invokevirtual 69	com/antivirus/apploader/f:a	()V
    //   184: aload 5
    //   186: athrow
    //   187: astore 10
    //   189: aload 7
    //   191: astore 4
    //   193: aload 10
    //   195: astore 5
    //   197: goto -29 -> 168
    //   200: astore 9
    //   202: goto -55 -> 147
    //
    // Exception table:
    //   from	to	target	type
    //   37	70	142	java/lang/Exception
    //   37	70	166	finally
    //   79	121	187	finally
    //   79	121	200	java/lang/Exception
  }

  public void a()
  {
    if ((this.a != null) && (this.a.isOpen()))
    {
      this.a.close();
      this.a = null;
    }
    if (this.b != null)
      this.b.close();
  }

  // ERROR //
  public void a(android.content.Context paramContext, java.util.TreeMap paramTreeMap, int paramInt)
  {
    // Byte code:
    //   0: new 77	android/content/ContentValues
    //   3: dup
    //   4: invokespecial 78	android/content/ContentValues:<init>	()V
    //   7: astore 4
    //   9: aload_0
    //   10: new 21	com/antivirus/apploader/e
    //   13: dup
    //   14: aload_1
    //   15: ldc 23
    //   17: aconst_null
    //   18: iconst_1
    //   19: invokespecial 26	com/antivirus/apploader/e:<init>	(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    //   22: putfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   25: aload_0
    //   26: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   29: invokevirtual 30	com/antivirus/apploader/e:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   32: astore 10
    //   34: aload 10
    //   36: astore 8
    //   38: aload 8
    //   40: invokevirtual 81	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   43: iconst_2
    //   44: anewarray 34	java/lang/String
    //   47: astore 12
    //   49: aload_2
    //   50: invokevirtual 87	java/util/TreeMap:keySet	()Ljava/util/Set;
    //   53: invokeinterface 93 1 0
    //   58: astore 13
    //   60: aload 13
    //   62: invokeinterface 98 1 0
    //   67: ifeq +98 -> 165
    //   70: aload 13
    //   72: invokeinterface 102 1 0
    //   77: checkcast 34	java/lang/String
    //   80: astore 14
    //   82: aload 4
    //   84: ldc 104
    //   86: iload_3
    //   87: invokestatic 110	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   90: invokevirtual 114	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   93: aload 12
    //   95: iconst_0
    //   96: aload 14
    //   98: aastore
    //   99: aload 12
    //   101: iconst_1
    //   102: aload_2
    //   103: aload 14
    //   105: invokevirtual 118	java/util/TreeMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   108: checkcast 34	java/lang/String
    //   111: aastore
    //   112: aload 8
    //   114: ldc 120
    //   116: aload 4
    //   118: ldc 122
    //   120: aload 12
    //   122: invokevirtual 126	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   125: pop
    //   126: aload 4
    //   128: invokevirtual 129	android/content/ContentValues:clear	()V
    //   131: goto -71 -> 60
    //   134: astore 11
    //   136: aload 8
    //   138: astore 6
    //   140: aload 6
    //   142: ifnull +8 -> 150
    //   145: aload 6
    //   147: invokevirtual 73	android/database/sqlite/SQLiteDatabase:close	()V
    //   150: aload_0
    //   151: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   154: ifnull +10 -> 164
    //   157: aload_0
    //   158: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   161: invokevirtual 74	com/antivirus/apploader/e:close	()V
    //   164: return
    //   165: aload 8
    //   167: invokevirtual 132	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   170: aload 8
    //   172: invokevirtual 135	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   175: aload 8
    //   177: invokevirtual 73	android/database/sqlite/SQLiteDatabase:close	()V
    //   180: aload_0
    //   181: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   184: invokevirtual 74	com/antivirus/apploader/e:close	()V
    //   187: aload 8
    //   189: ifnull +8 -> 197
    //   192: aload 8
    //   194: invokevirtual 73	android/database/sqlite/SQLiteDatabase:close	()V
    //   197: aload_0
    //   198: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   201: ifnull -37 -> 164
    //   204: aload_0
    //   205: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   208: invokevirtual 74	com/antivirus/apploader/e:close	()V
    //   211: goto -47 -> 164
    //   214: astore 7
    //   216: aconst_null
    //   217: astore 8
    //   219: aload 7
    //   221: astore 9
    //   223: aload 8
    //   225: ifnull +8 -> 233
    //   228: aload 8
    //   230: invokevirtual 73	android/database/sqlite/SQLiteDatabase:close	()V
    //   233: aload_0
    //   234: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   237: ifnull +10 -> 247
    //   240: aload_0
    //   241: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   244: invokevirtual 74	com/antivirus/apploader/e:close	()V
    //   247: aload 9
    //   249: athrow
    //   250: astore 9
    //   252: goto -29 -> 223
    //   255: astore 5
    //   257: aconst_null
    //   258: astore 6
    //   260: goto -120 -> 140
    //
    // Exception table:
    //   from	to	target	type
    //   38	131	134	java/lang/Exception
    //   165	187	134	java/lang/Exception
    //   9	34	214	finally
    //   38	131	250	finally
    //   165	187	250	finally
    //   9	34	255	java/lang/Exception
  }

  // ERROR //
  public boolean a(android.content.Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: getfield 14	com/antivirus/apploader/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   6: ifnonnull +30 -> 36
    //   9: aload_0
    //   10: new 21	com/antivirus/apploader/e
    //   13: dup
    //   14: aload_1
    //   15: ldc 23
    //   17: aconst_null
    //   18: iconst_1
    //   19: invokespecial 26	com/antivirus/apploader/e:<init>	(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    //   22: putfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   25: aload_0
    //   26: aload_0
    //   27: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   30: invokevirtual 30	com/antivirus/apploader/e:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   33: putfield 14	com/antivirus/apploader/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   36: aload_0
    //   37: getfield 14	com/antivirus/apploader/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   40: ldc 32
    //   42: iconst_1
    //   43: anewarray 34	java/lang/String
    //   46: dup
    //   47: iconst_0
    //   48: ldc 36
    //   50: aastore
    //   51: ldc 38
    //   53: iconst_1
    //   54: anewarray 34	java/lang/String
    //   57: dup
    //   58: iconst_0
    //   59: ldc 138
    //   61: aastore
    //   62: aconst_null
    //   63: aconst_null
    //   64: aconst_null
    //   65: invokevirtual 44	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   68: astore 7
    //   70: aload 7
    //   72: ifnull +123 -> 195
    //   75: aload 7
    //   77: invokeinterface 50 1 0
    //   82: ifle +113 -> 195
    //   85: aload 7
    //   87: invokeinterface 54 1 0
    //   92: pop
    //   93: aload 7
    //   95: iconst_0
    //   96: invokeinterface 58 2 0
    //   101: ldc 140
    //   103: invokevirtual 144	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   106: istore 10
    //   108: iload 10
    //   110: ifeq +85 -> 195
    //   113: iconst_1
    //   114: istore 6
    //   116: aload 7
    //   118: ifnull +10 -> 128
    //   121: aload 7
    //   123: invokeinterface 67 1 0
    //   128: aload_0
    //   129: invokevirtual 69	com/antivirus/apploader/f:a	()V
    //   132: iload 6
    //   134: ireturn
    //   135: astore 4
    //   137: aconst_null
    //   138: astore 5
    //   140: aload 5
    //   142: ifnull +10 -> 152
    //   145: aload 5
    //   147: invokeinterface 67 1 0
    //   152: aload_0
    //   153: invokevirtual 69	com/antivirus/apploader/f:a	()V
    //   156: iconst_0
    //   157: istore 6
    //   159: goto -27 -> 132
    //   162: astore_3
    //   163: aload_2
    //   164: ifnull +9 -> 173
    //   167: aload_2
    //   168: invokeinterface 67 1 0
    //   173: aload_0
    //   174: invokevirtual 69	com/antivirus/apploader/f:a	()V
    //   177: aload_3
    //   178: athrow
    //   179: astore_3
    //   180: aload 7
    //   182: astore_2
    //   183: goto -20 -> 163
    //   186: astore 8
    //   188: aload 7
    //   190: astore 5
    //   192: goto -52 -> 140
    //   195: iconst_0
    //   196: istore 6
    //   198: goto -82 -> 116
    //
    // Exception table:
    //   from	to	target	type
    //   36	70	135	java/lang/Exception
    //   36	70	162	finally
    //   75	108	179	finally
    //   75	108	186	java/lang/Exception
  }

  // ERROR //
  public boolean a(android.content.Context paramContext, java.lang.String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_2
    //   3: invokestatic 64	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   6: ifne +120 -> 126
    //   9: new 77	android/content/ContentValues
    //   12: dup
    //   13: invokespecial 78	android/content/ContentValues:<init>	()V
    //   16: astore 4
    //   18: aload_0
    //   19: new 21	com/antivirus/apploader/e
    //   22: dup
    //   23: aload_1
    //   24: ldc 23
    //   26: aconst_null
    //   27: iconst_1
    //   28: invokespecial 26	com/antivirus/apploader/e:<init>	(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    //   31: putfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   34: aload_0
    //   35: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   38: invokevirtual 30	com/antivirus/apploader/e:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   41: astore 9
    //   43: aload 9
    //   45: astore_3
    //   46: aload_3
    //   47: invokevirtual 81	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   50: aload 4
    //   52: invokevirtual 129	android/content/ContentValues:clear	()V
    //   55: aload 4
    //   57: ldc 104
    //   59: iconst_1
    //   60: invokestatic 110	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   63: invokevirtual 114	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   66: aload_3
    //   67: ldc 120
    //   69: aload 4
    //   71: ldc 147
    //   73: iconst_1
    //   74: anewarray 34	java/lang/String
    //   77: dup
    //   78: iconst_0
    //   79: aload_2
    //   80: aastore
    //   81: invokevirtual 126	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   84: pop
    //   85: aload_3
    //   86: invokevirtual 132	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   89: aload_3
    //   90: invokevirtual 135	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   93: aload_3
    //   94: invokevirtual 73	android/database/sqlite/SQLiteDatabase:close	()V
    //   97: aload_0
    //   98: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   101: invokevirtual 74	com/antivirus/apploader/e:close	()V
    //   104: aload_3
    //   105: ifnull +7 -> 112
    //   108: aload_3
    //   109: invokevirtual 73	android/database/sqlite/SQLiteDatabase:close	()V
    //   112: aload_0
    //   113: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   116: ifnull +10 -> 126
    //   119: aload_0
    //   120: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   123: invokevirtual 74	com/antivirus/apploader/e:close	()V
    //   126: iconst_0
    //   127: ireturn
    //   128: astore 8
    //   130: aload_3
    //   131: ifnull +7 -> 138
    //   134: aload_3
    //   135: invokevirtual 73	android/database/sqlite/SQLiteDatabase:close	()V
    //   138: aload_0
    //   139: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   142: ifnull -16 -> 126
    //   145: aload_0
    //   146: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   149: invokevirtual 74	com/antivirus/apploader/e:close	()V
    //   152: goto -26 -> 126
    //   155: astore 5
    //   157: aconst_null
    //   158: astore 6
    //   160: aload 5
    //   162: astore 7
    //   164: aload 6
    //   166: ifnull +8 -> 174
    //   169: aload 6
    //   171: invokevirtual 73	android/database/sqlite/SQLiteDatabase:close	()V
    //   174: aload_0
    //   175: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   178: ifnull +10 -> 188
    //   181: aload_0
    //   182: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   185: invokevirtual 74	com/antivirus/apploader/e:close	()V
    //   188: aload 7
    //   190: athrow
    //   191: astore 10
    //   193: aload_3
    //   194: astore 6
    //   196: aload 10
    //   198: astore 7
    //   200: goto -36 -> 164
    //
    // Exception table:
    //   from	to	target	type
    //   18	43	128	java/lang/Exception
    //   46	104	128	java/lang/Exception
    //   18	43	155	finally
    //   46	104	191	finally
  }

  // ERROR //
  public java.lang.String b(android.content.Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: getfield 14	com/antivirus/apploader/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   6: ifnonnull +30 -> 36
    //   9: aload_0
    //   10: new 21	com/antivirus/apploader/e
    //   13: dup
    //   14: aload_1
    //   15: ldc 23
    //   17: aconst_null
    //   18: iconst_1
    //   19: invokespecial 26	com/antivirus/apploader/e:<init>	(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    //   22: putfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   25: aload_0
    //   26: aload_0
    //   27: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   30: invokevirtual 30	com/antivirus/apploader/e:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   33: putfield 14	com/antivirus/apploader/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   36: aload_0
    //   37: getfield 14	com/antivirus/apploader/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   40: ldc 120
    //   42: iconst_1
    //   43: anewarray 34	java/lang/String
    //   46: dup
    //   47: iconst_0
    //   48: ldc 150
    //   50: aastore
    //   51: ldc 152
    //   53: aconst_null
    //   54: aconst_null
    //   55: aconst_null
    //   56: aconst_null
    //   57: invokevirtual 44	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   60: astore 7
    //   62: aload 7
    //   64: astore 5
    //   66: aload 5
    //   68: ifnull +115 -> 183
    //   71: aload 5
    //   73: invokeinterface 50 1 0
    //   78: ifle +105 -> 183
    //   81: aload 5
    //   83: invokeinterface 54 1 0
    //   88: pop
    //   89: aload 5
    //   91: iconst_0
    //   92: invokeinterface 58 2 0
    //   97: astore 9
    //   99: aload 9
    //   101: astore 6
    //   103: aload 5
    //   105: ifnull +10 -> 115
    //   108: aload 5
    //   110: invokeinterface 67 1 0
    //   115: aload_0
    //   116: invokevirtual 69	com/antivirus/apploader/f:a	()V
    //   119: aload 6
    //   121: areturn
    //   122: astore 4
    //   124: aconst_null
    //   125: astore 5
    //   127: aload 4
    //   129: invokestatic 157	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   132: aload 5
    //   134: ifnull +10 -> 144
    //   137: aload 5
    //   139: invokeinterface 67 1 0
    //   144: aload_0
    //   145: invokevirtual 69	com/antivirus/apploader/f:a	()V
    //   148: aconst_null
    //   149: astore 6
    //   151: goto -32 -> 119
    //   154: astore_3
    //   155: aload_2
    //   156: ifnull +9 -> 165
    //   159: aload_2
    //   160: invokeinterface 67 1 0
    //   165: aload_0
    //   166: invokevirtual 69	com/antivirus/apploader/f:a	()V
    //   169: aload_3
    //   170: athrow
    //   171: astore_3
    //   172: aload 5
    //   174: astore_2
    //   175: goto -20 -> 155
    //   178: astore 4
    //   180: goto -53 -> 127
    //   183: aconst_null
    //   184: astore 6
    //   186: goto -83 -> 103
    //
    // Exception table:
    //   from	to	target	type
    //   36	62	122	java/lang/Exception
    //   36	62	154	finally
    //   71	99	171	finally
    //   127	132	171	finally
    //   71	99	178	java/lang/Exception
  }

  // ERROR //
  public void b(android.content.Context paramContext, java.lang.String paramString1, java.lang.String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: new 77	android/content/ContentValues
    //   6: dup
    //   7: invokespecial 78	android/content/ContentValues:<init>	()V
    //   10: astore 5
    //   12: aload_0
    //   13: new 21	com/antivirus/apploader/e
    //   16: dup
    //   17: aload_1
    //   18: ldc 23
    //   20: aconst_null
    //   21: iconst_1
    //   22: invokespecial 26	com/antivirus/apploader/e:<init>	(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    //   25: putfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   28: aload_0
    //   29: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   32: invokevirtual 30	com/antivirus/apploader/e:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   35: astore 10
    //   37: aload 10
    //   39: astore 4
    //   41: aload 4
    //   43: invokevirtual 81	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   46: aload 5
    //   48: invokevirtual 129	android/content/ContentValues:clear	()V
    //   51: aload 5
    //   53: ldc 160
    //   55: aload_2
    //   56: invokevirtual 163	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   59: aload 5
    //   61: ldc 36
    //   63: aload_3
    //   64: invokevirtual 163	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   67: aload 4
    //   69: ldc 32
    //   71: aload 5
    //   73: ldc 38
    //   75: iconst_1
    //   76: anewarray 34	java/lang/String
    //   79: dup
    //   80: iconst_0
    //   81: aload_2
    //   82: aastore
    //   83: invokevirtual 126	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   86: ifne +14 -> 100
    //   89: aload 4
    //   91: ldc 32
    //   93: aconst_null
    //   94: aload 5
    //   96: invokevirtual 167	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   99: pop2
    //   100: aload 4
    //   102: invokevirtual 132	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   105: aload 4
    //   107: invokevirtual 135	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   110: aload 4
    //   112: invokevirtual 73	android/database/sqlite/SQLiteDatabase:close	()V
    //   115: aload_0
    //   116: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   119: invokevirtual 74	com/antivirus/apploader/e:close	()V
    //   122: aload 4
    //   124: ifnull +8 -> 132
    //   127: aload 4
    //   129: invokevirtual 73	android/database/sqlite/SQLiteDatabase:close	()V
    //   132: aload_0
    //   133: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   136: ifnull +10 -> 146
    //   139: aload_0
    //   140: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   143: invokevirtual 74	com/antivirus/apploader/e:close	()V
    //   146: return
    //   147: astore 9
    //   149: aload 4
    //   151: ifnull +8 -> 159
    //   154: aload 4
    //   156: invokevirtual 73	android/database/sqlite/SQLiteDatabase:close	()V
    //   159: aload_0
    //   160: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   163: ifnull -17 -> 146
    //   166: aload_0
    //   167: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   170: invokevirtual 74	com/antivirus/apploader/e:close	()V
    //   173: goto -27 -> 146
    //   176: astore 6
    //   178: aconst_null
    //   179: astore 7
    //   181: aload 6
    //   183: astore 8
    //   185: aload 7
    //   187: ifnull +8 -> 195
    //   190: aload 7
    //   192: invokevirtual 73	android/database/sqlite/SQLiteDatabase:close	()V
    //   195: aload_0
    //   196: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   199: ifnull +10 -> 209
    //   202: aload_0
    //   203: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   206: invokevirtual 74	com/antivirus/apploader/e:close	()V
    //   209: aload 8
    //   211: athrow
    //   212: astore 11
    //   214: aload 4
    //   216: astore 7
    //   218: aload 11
    //   220: astore 8
    //   222: goto -37 -> 185
    //
    // Exception table:
    //   from	to	target	type
    //   12	37	147	java/lang/Exception
    //   41	122	147	java/lang/Exception
    //   12	37	176	finally
    //   41	122	212	finally
  }

  // ERROR //
  public boolean c(android.content.Context paramContext)
  {
    // Byte code:
    //   0: new 77	android/content/ContentValues
    //   3: dup
    //   4: invokespecial 78	android/content/ContentValues:<init>	()V
    //   7: astore_2
    //   8: aload_0
    //   9: new 21	com/antivirus/apploader/e
    //   12: dup
    //   13: aload_1
    //   14: ldc 23
    //   16: aconst_null
    //   17: iconst_1
    //   18: invokespecial 26	com/antivirus/apploader/e:<init>	(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    //   21: putfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   24: aload_0
    //   25: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   28: invokevirtual 30	com/antivirus/apploader/e:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   31: astore 7
    //   33: aload 7
    //   35: astore 6
    //   37: aload 6
    //   39: invokevirtual 81	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   42: aload_2
    //   43: invokevirtual 129	android/content/ContentValues:clear	()V
    //   46: aload_2
    //   47: ldc 104
    //   49: iconst_0
    //   50: invokestatic 110	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   53: invokevirtual 114	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   56: aload 6
    //   58: ldc 120
    //   60: aload_2
    //   61: ldc 170
    //   63: aconst_null
    //   64: invokevirtual 126	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   67: pop
    //   68: aload 6
    //   70: invokevirtual 132	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   73: aload 6
    //   75: invokevirtual 135	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   78: aload 6
    //   80: invokevirtual 73	android/database/sqlite/SQLiteDatabase:close	()V
    //   83: aload_0
    //   84: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   87: invokevirtual 74	com/antivirus/apploader/e:close	()V
    //   90: iconst_0
    //   91: ifeq +9 -> 100
    //   94: aconst_null
    //   95: invokeinterface 67 1 0
    //   100: aload 6
    //   102: ifnull +8 -> 110
    //   105: aload 6
    //   107: invokevirtual 73	android/database/sqlite/SQLiteDatabase:close	()V
    //   110: aload_0
    //   111: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   114: ifnull +10 -> 124
    //   117: aload_0
    //   118: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   121: invokevirtual 74	com/antivirus/apploader/e:close	()V
    //   124: iconst_0
    //   125: ireturn
    //   126: astore 5
    //   128: aconst_null
    //   129: astore 6
    //   131: iconst_0
    //   132: ifeq +9 -> 141
    //   135: aconst_null
    //   136: invokeinterface 67 1 0
    //   141: aload 6
    //   143: ifnull +8 -> 151
    //   146: aload 6
    //   148: invokevirtual 73	android/database/sqlite/SQLiteDatabase:close	()V
    //   151: aload_0
    //   152: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   155: ifnull -31 -> 124
    //   158: aload_0
    //   159: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   162: invokevirtual 74	com/antivirus/apploader/e:close	()V
    //   165: goto -41 -> 124
    //   168: astore_3
    //   169: aconst_null
    //   170: astore 4
    //   172: iconst_0
    //   173: ifeq +9 -> 182
    //   176: aconst_null
    //   177: invokeinterface 67 1 0
    //   182: aload 4
    //   184: ifnull +8 -> 192
    //   187: aload 4
    //   189: invokevirtual 73	android/database/sqlite/SQLiteDatabase:close	()V
    //   192: aload_0
    //   193: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   196: ifnull +10 -> 206
    //   199: aload_0
    //   200: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   203: invokevirtual 74	com/antivirus/apploader/e:close	()V
    //   206: aload_3
    //   207: athrow
    //   208: astore 9
    //   210: aload 6
    //   212: astore 4
    //   214: aload 9
    //   216: astore_3
    //   217: goto -45 -> 172
    //   220: astore 8
    //   222: goto -91 -> 131
    //
    // Exception table:
    //   from	to	target	type
    //   8	33	126	java/lang/Exception
    //   8	33	168	finally
    //   37	90	208	finally
    //   37	90	220	java/lang/Exception
  }

  // ERROR //
  public void d(android.content.Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 77	android/content/ContentValues
    //   5: dup
    //   6: invokespecial 78	android/content/ContentValues:<init>	()V
    //   9: astore_3
    //   10: aload_0
    //   11: new 21	com/antivirus/apploader/e
    //   14: dup
    //   15: aload_1
    //   16: ldc 23
    //   18: aconst_null
    //   19: iconst_1
    //   20: invokespecial 26	com/antivirus/apploader/e:<init>	(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    //   23: putfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   26: aload_0
    //   27: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   30: invokevirtual 30	com/antivirus/apploader/e:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   33: astore 13
    //   35: aload 13
    //   37: astore 10
    //   39: aload 10
    //   41: invokevirtual 81	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   44: aload_3
    //   45: invokevirtual 129	android/content/ContentValues:clear	()V
    //   48: aload_3
    //   49: ldc 36
    //   51: ldc 140
    //   53: invokevirtual 163	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   56: aload_3
    //   57: ldc 160
    //   59: ldc 138
    //   61: invokevirtual 163	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   64: aload 10
    //   66: ldc 32
    //   68: aconst_null
    //   69: aload_3
    //   70: invokevirtual 167	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   73: pop2
    //   74: aload_3
    //   75: invokevirtual 129	android/content/ContentValues:clear	()V
    //   78: aload_3
    //   79: ldc 36
    //   81: ldc 174
    //   83: invokevirtual 163	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   86: aload_3
    //   87: ldc 160
    //   89: ldc 176
    //   91: invokevirtual 163	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   94: aload 10
    //   96: ldc 32
    //   98: aconst_null
    //   99: aload_3
    //   100: invokevirtual 167	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   103: pop2
    //   104: aload_1
    //   105: invokevirtual 182	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   108: iconst_0
    //   109: invokevirtual 188	android/content/pm/PackageManager:getInstalledPackages	(I)Ljava/util/List;
    //   112: invokeinterface 191 1 0
    //   117: astore 19
    //   119: aconst_null
    //   120: astore 6
    //   122: aload 19
    //   124: invokeinterface 98 1 0
    //   129: ifeq +353 -> 482
    //   132: aload 19
    //   134: invokeinterface 102 1 0
    //   139: checkcast 193	android/content/pm/PackageInfo
    //   142: astore 23
    //   144: aload_3
    //   145: invokevirtual 129	android/content/ContentValues:clear	()V
    //   148: new 195	java/io/File
    //   151: dup
    //   152: aload 23
    //   154: getfield 199	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   157: getfield 205	android/content/pm/ApplicationInfo:sourceDir	Ljava/lang/String;
    //   160: invokespecial 208	java/io/File:<init>	(Ljava/lang/String;)V
    //   163: astore 34
    //   165: aload 34
    //   167: ifnull +577 -> 744
    //   170: aload 34
    //   172: invokevirtual 211	java/io/File:exists	()Z
    //   175: ifeq +569 -> 744
    //   178: aload 34
    //   180: invokevirtual 214	java/io/File:canRead	()Z
    //   183: ifeq +561 -> 744
    //   186: new 216	java/util/jar/JarFile
    //   189: dup
    //   190: aload 34
    //   192: invokespecial 219	java/util/jar/JarFile:<init>	(Ljava/io/File;)V
    //   195: astore 31
    //   197: aload 31
    //   199: ldc 221
    //   201: invokevirtual 225	java/util/jar/JarFile:getEntry	(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    //   204: astore 37
    //   206: aload 37
    //   208: ifnull +113 -> 321
    //   211: aload 31
    //   213: aload 37
    //   215: invokevirtual 229	java/util/jar/JarFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   218: astore_2
    //   219: aload_2
    //   220: ifnull +101 -> 321
    //   223: aload_3
    //   224: ldc 231
    //   226: aload_2
    //   227: invokestatic 236	a/a/a/a/b/a:b	(Ljava/io/InputStream;)Ljava/lang/String;
    //   230: invokevirtual 163	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   233: aload_3
    //   234: ldc 238
    //   236: aload 23
    //   238: getfield 241	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   241: invokevirtual 163	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   244: aload_3
    //   245: ldc 150
    //   247: aload 23
    //   249: getfield 199	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   252: getfield 205	android/content/pm/ApplicationInfo:sourceDir	Ljava/lang/String;
    //   255: invokevirtual 163	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   258: aload_3
    //   259: ldc 243
    //   261: new 245	java/lang/StringBuilder
    //   264: dup
    //   265: invokespecial 246	java/lang/StringBuilder:<init>	()V
    //   268: aload 23
    //   270: getfield 250	android/content/pm/PackageInfo:versionCode	I
    //   273: invokevirtual 254	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   276: ldc_w 256
    //   279: invokevirtual 259	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   282: invokevirtual 263	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   285: invokevirtual 163	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   288: aload_3
    //   289: ldc 104
    //   291: iconst_0
    //   292: invokestatic 110	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   295: invokevirtual 114	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   298: aload_3
    //   299: ldc_w 265
    //   302: invokestatic 271	java/lang/System:currentTimeMillis	()J
    //   305: invokestatic 276	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   308: invokevirtual 279	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   311: aload 10
    //   313: ldc 120
    //   315: aconst_null
    //   316: aload_3
    //   317: invokevirtual 167	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   320: pop2
    //   321: aload_2
    //   322: astore 25
    //   324: aload 31
    //   326: astore 26
    //   328: aload 25
    //   330: ifnull +8 -> 338
    //   333: aload 25
    //   335: invokevirtual 282	java/io/InputStream:close	()V
    //   338: aload 26
    //   340: ifnull +8 -> 348
    //   343: aload 26
    //   345: invokevirtual 283	java/util/jar/JarFile:close	()V
    //   348: aload 26
    //   350: astore 6
    //   352: aload 25
    //   354: astore_2
    //   355: goto -233 -> 122
    //   358: astore 36
    //   360: aload_2
    //   361: astore 25
    //   363: aload 31
    //   365: astore 26
    //   367: aload 25
    //   369: ifnull +8 -> 377
    //   372: aload 25
    //   374: invokevirtual 282	java/io/InputStream:close	()V
    //   377: aload 26
    //   379: ifnull -31 -> 348
    //   382: aload 26
    //   384: invokevirtual 283	java/util/jar/JarFile:close	()V
    //   387: goto -39 -> 348
    //   390: astore 28
    //   392: aload 26
    //   394: astore 6
    //   396: aload 25
    //   398: astore_2
    //   399: aload 10
    //   401: astore 5
    //   403: aload 5
    //   405: ifnull +8 -> 413
    //   408: aload 5
    //   410: invokevirtual 73	android/database/sqlite/SQLiteDatabase:close	()V
    //   413: aload_0
    //   414: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   417: ifnull +10 -> 427
    //   420: aload_0
    //   421: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   424: invokevirtual 74	com/antivirus/apploader/e:close	()V
    //   427: aload_2
    //   428: ifnull +7 -> 435
    //   431: aload_2
    //   432: invokevirtual 282	java/io/InputStream:close	()V
    //   435: aload 6
    //   437: ifnull +8 -> 445
    //   440: aload 6
    //   442: invokevirtual 283	java/util/jar/JarFile:close	()V
    //   445: return
    //   446: astore 30
    //   448: aload_2
    //   449: ifnull +7 -> 456
    //   452: aload_2
    //   453: invokevirtual 282	java/io/InputStream:close	()V
    //   456: aload 31
    //   458: ifnull +8 -> 466
    //   461: aload 31
    //   463: invokevirtual 283	java/util/jar/JarFile:close	()V
    //   466: aload 30
    //   468: athrow
    //   469: astore 32
    //   471: aload 31
    //   473: astore 6
    //   475: aload 10
    //   477: astore 5
    //   479: goto -76 -> 403
    //   482: aload 10
    //   484: invokevirtual 132	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   487: aload 10
    //   489: invokevirtual 135	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   492: aload 10
    //   494: invokevirtual 73	android/database/sqlite/SQLiteDatabase:close	()V
    //   497: aload_0
    //   498: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   501: invokevirtual 74	com/antivirus/apploader/e:close	()V
    //   504: aload 10
    //   506: ifnull +8 -> 514
    //   509: aload 10
    //   511: invokevirtual 73	android/database/sqlite/SQLiteDatabase:close	()V
    //   514: aload_0
    //   515: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   518: ifnull +10 -> 528
    //   521: aload_0
    //   522: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   525: invokevirtual 74	com/antivirus/apploader/e:close	()V
    //   528: aload_2
    //   529: ifnull +7 -> 536
    //   532: aload_2
    //   533: invokevirtual 282	java/io/InputStream:close	()V
    //   536: aload 6
    //   538: ifnull -93 -> 445
    //   541: aload 6
    //   543: invokevirtual 283	java/util/jar/JarFile:close	()V
    //   546: goto -101 -> 445
    //   549: astore 21
    //   551: goto -106 -> 445
    //   554: astore 9
    //   556: aconst_null
    //   557: astore 6
    //   559: aconst_null
    //   560: astore 10
    //   562: aload 10
    //   564: ifnull +8 -> 572
    //   567: aload 10
    //   569: invokevirtual 73	android/database/sqlite/SQLiteDatabase:close	()V
    //   572: aload_0
    //   573: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   576: ifnull +10 -> 586
    //   579: aload_0
    //   580: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   583: invokevirtual 74	com/antivirus/apploader/e:close	()V
    //   586: aload_2
    //   587: ifnull +7 -> 594
    //   590: aload_2
    //   591: invokevirtual 282	java/io/InputStream:close	()V
    //   594: aload 6
    //   596: ifnull +8 -> 604
    //   599: aload 6
    //   601: invokevirtual 283	java/util/jar/JarFile:close	()V
    //   604: aload 9
    //   606: athrow
    //   607: astore 35
    //   609: goto -271 -> 338
    //   612: astore 29
    //   614: goto -237 -> 377
    //   617: astore 33
    //   619: goto -163 -> 456
    //   622: astore 22
    //   624: goto -88 -> 536
    //   627: astore 8
    //   629: goto -194 -> 435
    //   632: astore 7
    //   634: goto -189 -> 445
    //   637: astore 12
    //   639: goto -45 -> 594
    //   642: astore 11
    //   644: goto -40 -> 604
    //   647: astore 9
    //   649: aconst_null
    //   650: astore_2
    //   651: aconst_null
    //   652: astore 6
    //   654: goto -92 -> 562
    //   657: astore 27
    //   659: aload 26
    //   661: astore 6
    //   663: aload 25
    //   665: astore_2
    //   666: aload 27
    //   668: astore 9
    //   670: goto -108 -> 562
    //   673: astore 9
    //   675: aload 31
    //   677: astore 6
    //   679: goto -117 -> 562
    //   682: astore 9
    //   684: goto -122 -> 562
    //   687: astore 4
    //   689: aconst_null
    //   690: astore 5
    //   692: aconst_null
    //   693: astore_2
    //   694: aconst_null
    //   695: astore 6
    //   697: goto -294 -> 403
    //   700: astore 14
    //   702: aload 10
    //   704: astore 5
    //   706: aconst_null
    //   707: astore_2
    //   708: aconst_null
    //   709: astore 6
    //   711: goto -308 -> 403
    //   714: astore 20
    //   716: aload 10
    //   718: astore 5
    //   720: goto -317 -> 403
    //   723: astore 30
    //   725: aload 6
    //   727: astore 31
    //   729: goto -281 -> 448
    //   732: astore 24
    //   734: aload_2
    //   735: astore 25
    //   737: aload 6
    //   739: astore 26
    //   741: goto -374 -> 367
    //   744: aload_2
    //   745: astore 25
    //   747: aload 6
    //   749: astore 26
    //   751: goto -423 -> 328
    //
    // Exception table:
    //   from	to	target	type
    //   197	321	358	java/lang/Exception
    //   343	348	390	java/lang/Exception
    //   382	387	390	java/lang/Exception
    //   197	321	446	finally
    //   461	469	469	java/lang/Exception
    //   541	546	549	java/lang/Exception
    //   10	35	554	finally
    //   333	338	607	java/lang/Exception
    //   372	377	612	java/lang/Exception
    //   452	456	617	java/lang/Exception
    //   532	536	622	java/lang/Exception
    //   431	435	627	java/lang/Exception
    //   440	445	632	java/lang/Exception
    //   590	594	637	java/lang/Exception
    //   599	604	642	java/lang/Exception
    //   39	119	647	finally
    //   333	338	657	finally
    //   343	348	657	finally
    //   372	377	657	finally
    //   382	387	657	finally
    //   452	456	673	finally
    //   461	469	673	finally
    //   122	144	682	finally
    //   482	504	682	finally
    //   10	35	687	java/lang/Exception
    //   39	119	700	java/lang/Exception
    //   122	144	714	java/lang/Exception
    //   482	504	714	java/lang/Exception
    //   144	197	723	finally
    //   144	197	732	java/lang/Exception
  }

  // ERROR //
  public java.util.TreeMap e(android.content.Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 83	java/util/TreeMap
    //   5: dup
    //   6: invokespecial 286	java/util/TreeMap:<init>	()V
    //   9: astore_3
    //   10: aload_0
    //   11: getfield 14	com/antivirus/apploader/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   14: ifnonnull +30 -> 44
    //   17: aload_0
    //   18: new 21	com/antivirus/apploader/e
    //   21: dup
    //   22: aload_1
    //   23: ldc 23
    //   25: aconst_null
    //   26: iconst_1
    //   27: invokespecial 26	com/antivirus/apploader/e:<init>	(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    //   30: putfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   33: aload_0
    //   34: aload_0
    //   35: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   38: invokevirtual 30	com/antivirus/apploader/e:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   41: putfield 14	com/antivirus/apploader/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   44: aload_0
    //   45: getfield 14	com/antivirus/apploader/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   48: ldc 120
    //   50: iconst_2
    //   51: anewarray 34	java/lang/String
    //   54: dup
    //   55: iconst_0
    //   56: ldc 238
    //   58: aastore
    //   59: dup
    //   60: iconst_1
    //   61: ldc 231
    //   63: aastore
    //   64: ldc_w 288
    //   67: aconst_null
    //   68: aconst_null
    //   69: aconst_null
    //   70: aconst_null
    //   71: invokevirtual 44	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   74: astore 7
    //   76: aload 7
    //   78: astore 6
    //   80: aload 6
    //   82: ifnull +59 -> 141
    //   85: aload 6
    //   87: invokeinterface 50 1 0
    //   92: ifle +49 -> 141
    //   95: iconst_0
    //   96: istore 10
    //   98: aload 6
    //   100: invokeinterface 54 1 0
    //   105: ifeq +36 -> 141
    //   108: iload 10
    //   110: iconst_5
    //   111: if_icmpge +30 -> 141
    //   114: aload_3
    //   115: aload 6
    //   117: iconst_0
    //   118: invokeinterface 58 2 0
    //   123: aload 6
    //   125: iconst_1
    //   126: invokeinterface 58 2 0
    //   131: invokevirtual 291	java/util/TreeMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   134: pop
    //   135: iinc 10 1
    //   138: goto -40 -> 98
    //   141: aload 6
    //   143: ifnull +10 -> 153
    //   146: aload 6
    //   148: invokeinterface 67 1 0
    //   153: aload_0
    //   154: invokevirtual 69	com/antivirus/apploader/f:a	()V
    //   157: aload_3
    //   158: areturn
    //   159: astore 5
    //   161: aconst_null
    //   162: astore 6
    //   164: aload 6
    //   166: ifnull +10 -> 176
    //   169: aload 6
    //   171: invokeinterface 67 1 0
    //   176: aload_0
    //   177: invokevirtual 69	com/antivirus/apploader/f:a	()V
    //   180: goto -23 -> 157
    //   183: astore 4
    //   185: aload_2
    //   186: ifnull +9 -> 195
    //   189: aload_2
    //   190: invokeinterface 67 1 0
    //   195: aload_0
    //   196: invokevirtual 69	com/antivirus/apploader/f:a	()V
    //   199: aload 4
    //   201: athrow
    //   202: astore 9
    //   204: aload 6
    //   206: astore_2
    //   207: aload 9
    //   209: astore 4
    //   211: goto -26 -> 185
    //   214: astore 8
    //   216: goto -52 -> 164
    //
    // Exception table:
    //   from	to	target	type
    //   44	76	159	java/lang/Exception
    //   44	76	183	finally
    //   85	135	202	finally
    //   85	135	214	java/lang/Exception
  }

  // ERROR //
  public void f(android.content.Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: new 21	com/antivirus/apploader/e
    //   4: dup
    //   5: aload_1
    //   6: ldc 23
    //   8: aconst_null
    //   9: iconst_1
    //   10: invokespecial 26	com/antivirus/apploader/e:<init>	(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    //   13: putfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   16: aload_0
    //   17: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   20: invokevirtual 30	com/antivirus/apploader/e:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   23: astore 6
    //   25: aload 6
    //   27: astore 5
    //   29: aload 5
    //   31: invokevirtual 81	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   34: aload 5
    //   36: ldc_w 294
    //   39: invokevirtual 297	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   42: aload 5
    //   44: invokevirtual 132	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   47: aload 5
    //   49: invokevirtual 135	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   52: aload 5
    //   54: invokevirtual 73	android/database/sqlite/SQLiteDatabase:close	()V
    //   57: aload_0
    //   58: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   61: invokevirtual 74	com/antivirus/apploader/e:close	()V
    //   64: iconst_0
    //   65: ifeq +9 -> 74
    //   68: aconst_null
    //   69: invokeinterface 67 1 0
    //   74: aload 5
    //   76: ifnull +8 -> 84
    //   79: aload 5
    //   81: invokevirtual 73	android/database/sqlite/SQLiteDatabase:close	()V
    //   84: aload_0
    //   85: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   88: ifnull +10 -> 98
    //   91: aload_0
    //   92: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   95: invokevirtual 74	com/antivirus/apploader/e:close	()V
    //   98: return
    //   99: astore 4
    //   101: aconst_null
    //   102: astore 5
    //   104: iconst_0
    //   105: ifeq +9 -> 114
    //   108: aconst_null
    //   109: invokeinterface 67 1 0
    //   114: aload 5
    //   116: ifnull +8 -> 124
    //   119: aload 5
    //   121: invokevirtual 73	android/database/sqlite/SQLiteDatabase:close	()V
    //   124: aload_0
    //   125: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   128: ifnull -30 -> 98
    //   131: aload_0
    //   132: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   135: invokevirtual 74	com/antivirus/apploader/e:close	()V
    //   138: goto -40 -> 98
    //   141: astore_2
    //   142: aconst_null
    //   143: astore_3
    //   144: iconst_0
    //   145: ifeq +9 -> 154
    //   148: aconst_null
    //   149: invokeinterface 67 1 0
    //   154: aload_3
    //   155: ifnull +7 -> 162
    //   158: aload_3
    //   159: invokevirtual 73	android/database/sqlite/SQLiteDatabase:close	()V
    //   162: aload_0
    //   163: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   166: ifnull +10 -> 176
    //   169: aload_0
    //   170: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   173: invokevirtual 74	com/antivirus/apploader/e:close	()V
    //   176: aload_2
    //   177: athrow
    //   178: astore 8
    //   180: aload 5
    //   182: astore_3
    //   183: aload 8
    //   185: astore_2
    //   186: goto -42 -> 144
    //   189: astore 7
    //   191: goto -87 -> 104
    //
    // Exception table:
    //   from	to	target	type
    //   0	25	99	java/lang/Exception
    //   0	25	141	finally
    //   29	64	178	finally
    //   29	64	189	java/lang/Exception
  }

  // ERROR //
  public void g(android.content.Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: new 21	com/antivirus/apploader/e
    //   6: dup
    //   7: aload_1
    //   8: ldc 23
    //   10: aconst_null
    //   11: iconst_1
    //   12: invokespecial 26	com/antivirus/apploader/e:<init>	(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    //   15: putfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   18: aload_0
    //   19: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   22: invokevirtual 301	com/antivirus/apploader/e:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   25: astore 7
    //   27: aload 7
    //   29: astore_2
    //   30: aload_2
    //   31: ldc_w 303
    //   34: invokevirtual 297	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   37: aload_2
    //   38: ifnull +7 -> 45
    //   41: aload_2
    //   42: invokevirtual 73	android/database/sqlite/SQLiteDatabase:close	()V
    //   45: aload_0
    //   46: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   49: ifnull +10 -> 59
    //   52: aload_0
    //   53: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   56: invokevirtual 74	com/antivirus/apploader/e:close	()V
    //   59: return
    //   60: astore 6
    //   62: aload_2
    //   63: ifnull +7 -> 70
    //   66: aload_2
    //   67: invokevirtual 73	android/database/sqlite/SQLiteDatabase:close	()V
    //   70: aload_0
    //   71: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   74: ifnull -15 -> 59
    //   77: aload_0
    //   78: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   81: invokevirtual 74	com/antivirus/apploader/e:close	()V
    //   84: goto -25 -> 59
    //   87: astore_3
    //   88: aconst_null
    //   89: astore 4
    //   91: aload_3
    //   92: astore 5
    //   94: aload 4
    //   96: ifnull +8 -> 104
    //   99: aload 4
    //   101: invokevirtual 73	android/database/sqlite/SQLiteDatabase:close	()V
    //   104: aload_0
    //   105: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   108: ifnull +10 -> 118
    //   111: aload_0
    //   112: getfield 16	com/antivirus/apploader/f:b	Lcom/antivirus/apploader/e;
    //   115: invokevirtual 74	com/antivirus/apploader/e:close	()V
    //   118: aload 5
    //   120: athrow
    //   121: astore 8
    //   123: aload_2
    //   124: astore 4
    //   126: aload 8
    //   128: astore 5
    //   130: goto -36 -> 94
    //
    // Exception table:
    //   from	to	target	type
    //   2	27	60	java/lang/Exception
    //   30	37	60	java/lang/Exception
    //   2	27	87	finally
    //   30	37	121	finally
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.apploader.f
 * JD-Core Version:    0.6.2
 */