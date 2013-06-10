package org.antivirus.apploader;

import android.database.sqlite.SQLiteDatabase;

public final class f
{
  SQLiteDatabase a = null;
  e b = null;

  private void a()
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
  public final java.lang.String a(android.content.Context paramContext, java.lang.String paramString1, java.lang.String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: getfield 14	org/antivirus/apploader/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   7: ifnonnull +28 -> 35
    //   10: aload_0
    //   11: new 27	org/antivirus/apploader/e
    //   14: dup
    //   15: aload_1
    //   16: ldc 33
    //   18: invokespecial 36	org/antivirus/apploader/e:<init>	(Landroid/content/Context;Ljava/lang/String;)V
    //   21: putfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   24: aload_0
    //   25: aload_0
    //   26: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   29: invokevirtual 40	org/antivirus/apploader/e:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   32: putfield 14	org/antivirus/apploader/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   35: aload_0
    //   36: getfield 14	org/antivirus/apploader/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   39: ldc 42
    //   41: iconst_1
    //   42: anewarray 44	java/lang/String
    //   45: dup
    //   46: iconst_0
    //   47: ldc 46
    //   49: aastore
    //   50: ldc 48
    //   52: iconst_1
    //   53: anewarray 44	java/lang/String
    //   56: dup
    //   57: iconst_0
    //   58: aload_2
    //   59: aastore
    //   60: aconst_null
    //   61: aconst_null
    //   62: aconst_null
    //   63: invokevirtual 52	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   66: astore 8
    //   68: aload 8
    //   70: astore 7
    //   72: aload 7
    //   74: ifnull +48 -> 122
    //   77: aload 7
    //   79: invokeinterface 58 1 0
    //   84: ifle +38 -> 122
    //   87: aload 7
    //   89: invokeinterface 61 1 0
    //   94: pop
    //   95: aload 7
    //   97: iconst_0
    //   98: invokeinterface 65 2 0
    //   103: invokestatic 71	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   106: ifne +16 -> 122
    //   109: aload 7
    //   111: iconst_0
    //   112: invokeinterface 65 2 0
    //   117: astore 12
    //   119: aload 12
    //   121: astore_3
    //   122: aload 7
    //   124: ifnull +10 -> 134
    //   127: aload 7
    //   129: invokeinterface 72 1 0
    //   134: aload_0
    //   135: invokespecial 74	org/antivirus/apploader/f:a	()V
    //   138: aload_3
    //   139: areturn
    //   140: astore 6
    //   142: aconst_null
    //   143: astore 7
    //   145: aload 7
    //   147: ifnull +10 -> 157
    //   150: aload 7
    //   152: invokeinterface 72 1 0
    //   157: aload_0
    //   158: invokespecial 74	org/antivirus/apploader/f:a	()V
    //   161: goto -23 -> 138
    //   164: astore 5
    //   166: aload 4
    //   168: ifnull +10 -> 178
    //   171: aload 4
    //   173: invokeinterface 72 1 0
    //   178: aload_0
    //   179: invokespecial 74	org/antivirus/apploader/f:a	()V
    //   182: aload 5
    //   184: athrow
    //   185: astore 10
    //   187: aload 7
    //   189: astore 4
    //   191: aload 10
    //   193: astore 5
    //   195: goto -29 -> 166
    //   198: astore 9
    //   200: goto -55 -> 145
    //
    // Exception table:
    //   from	to	target	type
    //   35	68	140	java/lang/Exception
    //   35	68	164	finally
    //   77	119	185	finally
    //   77	119	198	java/lang/Exception
  }

  // ERROR //
  public final void a(android.content.Context paramContext, java.util.TreeMap paramTreeMap, int paramInt)
  {
    // Byte code:
    //   0: new 77	android/content/ContentValues
    //   3: dup
    //   4: invokespecial 78	android/content/ContentValues:<init>	()V
    //   7: astore 4
    //   9: aload_0
    //   10: new 27	org/antivirus/apploader/e
    //   13: dup
    //   14: aload_1
    //   15: ldc 33
    //   17: invokespecial 36	org/antivirus/apploader/e:<init>	(Landroid/content/Context;Ljava/lang/String;)V
    //   20: putfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   23: aload_0
    //   24: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   27: invokevirtual 40	org/antivirus/apploader/e:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   30: astore 10
    //   32: aload 10
    //   34: astore 8
    //   36: aload 8
    //   38: invokevirtual 81	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   41: iconst_2
    //   42: anewarray 44	java/lang/String
    //   45: astore 12
    //   47: aload_2
    //   48: invokevirtual 87	java/util/TreeMap:keySet	()Ljava/util/Set;
    //   51: invokeinterface 93 1 0
    //   56: astore 13
    //   58: aload 13
    //   60: invokeinterface 98 1 0
    //   65: ifeq +98 -> 163
    //   68: aload 13
    //   70: invokeinterface 102 1 0
    //   75: checkcast 44	java/lang/String
    //   78: astore 14
    //   80: aload 4
    //   82: ldc 104
    //   84: iload_3
    //   85: invokestatic 110	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   88: invokevirtual 114	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   91: aload 12
    //   93: iconst_0
    //   94: aload 14
    //   96: aastore
    //   97: aload 12
    //   99: iconst_1
    //   100: aload_2
    //   101: aload 14
    //   103: invokevirtual 118	java/util/TreeMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   106: checkcast 44	java/lang/String
    //   109: aastore
    //   110: aload 8
    //   112: ldc 120
    //   114: aload 4
    //   116: ldc 122
    //   118: aload 12
    //   120: invokevirtual 126	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   123: pop
    //   124: aload 4
    //   126: invokevirtual 129	android/content/ContentValues:clear	()V
    //   129: goto -71 -> 58
    //   132: astore 11
    //   134: aload 8
    //   136: astore 6
    //   138: aload 6
    //   140: ifnull +8 -> 148
    //   143: aload 6
    //   145: invokevirtual 25	android/database/sqlite/SQLiteDatabase:close	()V
    //   148: aload_0
    //   149: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   152: ifnull +10 -> 162
    //   155: aload_0
    //   156: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   159: invokevirtual 28	org/antivirus/apploader/e:close	()V
    //   162: return
    //   163: aload 8
    //   165: invokevirtual 132	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   168: aload 8
    //   170: invokevirtual 135	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   173: aload 8
    //   175: invokevirtual 25	android/database/sqlite/SQLiteDatabase:close	()V
    //   178: aload_0
    //   179: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   182: invokevirtual 28	org/antivirus/apploader/e:close	()V
    //   185: aload 8
    //   187: ifnull +8 -> 195
    //   190: aload 8
    //   192: invokevirtual 25	android/database/sqlite/SQLiteDatabase:close	()V
    //   195: aload_0
    //   196: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   199: ifnull -37 -> 162
    //   202: aload_0
    //   203: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   206: invokevirtual 28	org/antivirus/apploader/e:close	()V
    //   209: goto -47 -> 162
    //   212: astore 7
    //   214: aconst_null
    //   215: astore 8
    //   217: aload 7
    //   219: astore 9
    //   221: aload 8
    //   223: ifnull +8 -> 231
    //   226: aload 8
    //   228: invokevirtual 25	android/database/sqlite/SQLiteDatabase:close	()V
    //   231: aload_0
    //   232: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   235: ifnull +10 -> 245
    //   238: aload_0
    //   239: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   242: invokevirtual 28	org/antivirus/apploader/e:close	()V
    //   245: aload 9
    //   247: athrow
    //   248: astore 9
    //   250: goto -29 -> 221
    //   253: astore 5
    //   255: aconst_null
    //   256: astore 6
    //   258: goto -120 -> 138
    //
    // Exception table:
    //   from	to	target	type
    //   36	129	132	java/lang/Exception
    //   163	185	132	java/lang/Exception
    //   9	32	212	finally
    //   36	129	248	finally
    //   163	185	248	finally
    //   9	32	253	java/lang/Exception
  }

  // ERROR //
  public final boolean a(android.content.Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: getfield 14	org/antivirus/apploader/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   6: ifnonnull +28 -> 34
    //   9: aload_0
    //   10: new 27	org/antivirus/apploader/e
    //   13: dup
    //   14: aload_1
    //   15: ldc 33
    //   17: invokespecial 36	org/antivirus/apploader/e:<init>	(Landroid/content/Context;Ljava/lang/String;)V
    //   20: putfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   23: aload_0
    //   24: aload_0
    //   25: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   28: invokevirtual 40	org/antivirus/apploader/e:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   31: putfield 14	org/antivirus/apploader/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   34: aload_0
    //   35: getfield 14	org/antivirus/apploader/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   38: ldc 42
    //   40: iconst_1
    //   41: anewarray 44	java/lang/String
    //   44: dup
    //   45: iconst_0
    //   46: ldc 46
    //   48: aastore
    //   49: ldc 48
    //   51: iconst_1
    //   52: anewarray 44	java/lang/String
    //   55: dup
    //   56: iconst_0
    //   57: ldc 138
    //   59: aastore
    //   60: aconst_null
    //   61: aconst_null
    //   62: aconst_null
    //   63: invokevirtual 52	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   66: astore 7
    //   68: aload 7
    //   70: ifnull +123 -> 193
    //   73: aload 7
    //   75: invokeinterface 58 1 0
    //   80: ifle +113 -> 193
    //   83: aload 7
    //   85: invokeinterface 61 1 0
    //   90: pop
    //   91: aload 7
    //   93: iconst_0
    //   94: invokeinterface 65 2 0
    //   99: ldc 140
    //   101: invokevirtual 144	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   104: istore 10
    //   106: iload 10
    //   108: ifeq +85 -> 193
    //   111: iconst_1
    //   112: istore 6
    //   114: aload 7
    //   116: ifnull +10 -> 126
    //   119: aload 7
    //   121: invokeinterface 72 1 0
    //   126: aload_0
    //   127: invokespecial 74	org/antivirus/apploader/f:a	()V
    //   130: iload 6
    //   132: ireturn
    //   133: astore 4
    //   135: aconst_null
    //   136: astore 5
    //   138: aload 5
    //   140: ifnull +10 -> 150
    //   143: aload 5
    //   145: invokeinterface 72 1 0
    //   150: aload_0
    //   151: invokespecial 74	org/antivirus/apploader/f:a	()V
    //   154: iconst_0
    //   155: istore 6
    //   157: goto -27 -> 130
    //   160: astore_3
    //   161: aload_2
    //   162: ifnull +9 -> 171
    //   165: aload_2
    //   166: invokeinterface 72 1 0
    //   171: aload_0
    //   172: invokespecial 74	org/antivirus/apploader/f:a	()V
    //   175: aload_3
    //   176: athrow
    //   177: astore_3
    //   178: aload 7
    //   180: astore_2
    //   181: goto -20 -> 161
    //   184: astore 8
    //   186: aload 7
    //   188: astore 5
    //   190: goto -52 -> 138
    //   193: iconst_0
    //   194: istore 6
    //   196: goto -82 -> 114
    //
    // Exception table:
    //   from	to	target	type
    //   34	68	133	java/lang/Exception
    //   34	68	160	finally
    //   73	106	177	finally
    //   73	106	184	java/lang/Exception
  }

  // ERROR //
  public final boolean a(android.content.Context paramContext, java.lang.String paramString)
  {
    // Byte code:
    //   0: aload_2
    //   1: invokestatic 71	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   4: ifne +125 -> 129
    //   7: new 77	android/content/ContentValues
    //   10: dup
    //   11: invokespecial 78	android/content/ContentValues:<init>	()V
    //   14: astore_3
    //   15: aconst_null
    //   16: astore 4
    //   18: aload_0
    //   19: new 27	org/antivirus/apploader/e
    //   22: dup
    //   23: aload_1
    //   24: ldc 33
    //   26: invokespecial 36	org/antivirus/apploader/e:<init>	(Landroid/content/Context;Ljava/lang/String;)V
    //   29: putfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   32: aload_0
    //   33: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   36: invokevirtual 40	org/antivirus/apploader/e:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   39: astore 9
    //   41: aload 9
    //   43: astore 4
    //   45: aload 4
    //   47: invokevirtual 81	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   50: aload_3
    //   51: invokevirtual 129	android/content/ContentValues:clear	()V
    //   54: aload_3
    //   55: ldc 104
    //   57: iconst_1
    //   58: invokestatic 110	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   61: invokevirtual 114	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   64: aload 4
    //   66: ldc 120
    //   68: aload_3
    //   69: ldc 147
    //   71: iconst_1
    //   72: anewarray 44	java/lang/String
    //   75: dup
    //   76: iconst_0
    //   77: aload_2
    //   78: aastore
    //   79: invokevirtual 126	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   82: pop
    //   83: aload 4
    //   85: invokevirtual 132	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   88: aload 4
    //   90: invokevirtual 135	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   93: aload 4
    //   95: invokevirtual 25	android/database/sqlite/SQLiteDatabase:close	()V
    //   98: aload_0
    //   99: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   102: invokevirtual 28	org/antivirus/apploader/e:close	()V
    //   105: aload 4
    //   107: ifnull +8 -> 115
    //   110: aload 4
    //   112: invokevirtual 25	android/database/sqlite/SQLiteDatabase:close	()V
    //   115: aload_0
    //   116: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   119: ifnull +10 -> 129
    //   122: aload_0
    //   123: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   126: invokevirtual 28	org/antivirus/apploader/e:close	()V
    //   129: iconst_0
    //   130: ireturn
    //   131: astore 8
    //   133: aload 4
    //   135: ifnull +8 -> 143
    //   138: aload 4
    //   140: invokevirtual 25	android/database/sqlite/SQLiteDatabase:close	()V
    //   143: aload_0
    //   144: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   147: ifnull -18 -> 129
    //   150: aload_0
    //   151: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   154: invokevirtual 28	org/antivirus/apploader/e:close	()V
    //   157: goto -28 -> 129
    //   160: astore 5
    //   162: aconst_null
    //   163: astore 6
    //   165: aload 5
    //   167: astore 7
    //   169: aload 6
    //   171: ifnull +8 -> 179
    //   174: aload 6
    //   176: invokevirtual 25	android/database/sqlite/SQLiteDatabase:close	()V
    //   179: aload_0
    //   180: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   183: ifnull +10 -> 193
    //   186: aload_0
    //   187: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   190: invokevirtual 28	org/antivirus/apploader/e:close	()V
    //   193: aload 7
    //   195: athrow
    //   196: astore 10
    //   198: aload 4
    //   200: astore 6
    //   202: aload 10
    //   204: astore 7
    //   206: goto -37 -> 169
    //
    // Exception table:
    //   from	to	target	type
    //   18	41	131	java/lang/Exception
    //   45	105	131	java/lang/Exception
    //   18	41	160	finally
    //   45	105	196	finally
  }

  // ERROR //
  public final java.lang.String b(android.content.Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: getfield 14	org/antivirus/apploader/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   6: ifnonnull +28 -> 34
    //   9: aload_0
    //   10: new 27	org/antivirus/apploader/e
    //   13: dup
    //   14: aload_1
    //   15: ldc 33
    //   17: invokespecial 36	org/antivirus/apploader/e:<init>	(Landroid/content/Context;Ljava/lang/String;)V
    //   20: putfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   23: aload_0
    //   24: aload_0
    //   25: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   28: invokevirtual 40	org/antivirus/apploader/e:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   31: putfield 14	org/antivirus/apploader/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   34: aload_0
    //   35: getfield 14	org/antivirus/apploader/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   38: ldc 120
    //   40: iconst_1
    //   41: anewarray 44	java/lang/String
    //   44: dup
    //   45: iconst_0
    //   46: ldc 150
    //   48: aastore
    //   49: ldc 152
    //   51: aconst_null
    //   52: aconst_null
    //   53: aconst_null
    //   54: aconst_null
    //   55: invokevirtual 52	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   58: astore 7
    //   60: aload 7
    //   62: astore 5
    //   64: aload 5
    //   66: ifnull +115 -> 181
    //   69: aload 5
    //   71: invokeinterface 58 1 0
    //   76: ifle +105 -> 181
    //   79: aload 5
    //   81: invokeinterface 61 1 0
    //   86: pop
    //   87: aload 5
    //   89: iconst_0
    //   90: invokeinterface 65 2 0
    //   95: astore 9
    //   97: aload 9
    //   99: astore 6
    //   101: aload 5
    //   103: ifnull +10 -> 113
    //   106: aload 5
    //   108: invokeinterface 72 1 0
    //   113: aload_0
    //   114: invokespecial 74	org/antivirus/apploader/f:a	()V
    //   117: aload 6
    //   119: areturn
    //   120: astore 4
    //   122: aconst_null
    //   123: astore 5
    //   125: aload 4
    //   127: invokestatic 158	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   130: aload 5
    //   132: ifnull +10 -> 142
    //   135: aload 5
    //   137: invokeinterface 72 1 0
    //   142: aload_0
    //   143: invokespecial 74	org/antivirus/apploader/f:a	()V
    //   146: aconst_null
    //   147: astore 6
    //   149: goto -32 -> 117
    //   152: astore_3
    //   153: aload_2
    //   154: ifnull +9 -> 163
    //   157: aload_2
    //   158: invokeinterface 72 1 0
    //   163: aload_0
    //   164: invokespecial 74	org/antivirus/apploader/f:a	()V
    //   167: aload_3
    //   168: athrow
    //   169: astore_3
    //   170: aload 5
    //   172: astore_2
    //   173: goto -20 -> 153
    //   176: astore 4
    //   178: goto -53 -> 125
    //   181: aconst_null
    //   182: astore 6
    //   184: goto -83 -> 101
    //
    // Exception table:
    //   from	to	target	type
    //   34	60	120	java/lang/Exception
    //   34	60	152	finally
    //   69	97	169	finally
    //   125	130	169	finally
    //   69	97	176	java/lang/Exception
  }

  // ERROR //
  public final void b(android.content.Context paramContext, java.lang.String paramString1, java.lang.String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: new 77	android/content/ContentValues
    //   6: dup
    //   7: invokespecial 78	android/content/ContentValues:<init>	()V
    //   10: astore 5
    //   12: aload_0
    //   13: new 27	org/antivirus/apploader/e
    //   16: dup
    //   17: aload_1
    //   18: ldc 33
    //   20: invokespecial 36	org/antivirus/apploader/e:<init>	(Landroid/content/Context;Ljava/lang/String;)V
    //   23: putfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   26: aload_0
    //   27: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   30: invokevirtual 40	org/antivirus/apploader/e:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   33: astore 10
    //   35: aload 10
    //   37: astore 4
    //   39: aload 4
    //   41: invokevirtual 81	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   44: aload 5
    //   46: invokevirtual 129	android/content/ContentValues:clear	()V
    //   49: aload 5
    //   51: ldc 161
    //   53: aload_2
    //   54: invokevirtual 164	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   57: aload 5
    //   59: ldc 46
    //   61: aload_3
    //   62: invokevirtual 164	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   65: aload 4
    //   67: ldc 42
    //   69: aload 5
    //   71: ldc 48
    //   73: iconst_1
    //   74: anewarray 44	java/lang/String
    //   77: dup
    //   78: iconst_0
    //   79: aload_2
    //   80: aastore
    //   81: invokevirtual 126	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   84: ifne +14 -> 98
    //   87: aload 4
    //   89: ldc 42
    //   91: aconst_null
    //   92: aload 5
    //   94: invokevirtual 168	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   97: pop2
    //   98: aload 4
    //   100: invokevirtual 132	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   103: aload 4
    //   105: invokevirtual 135	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   108: aload 4
    //   110: invokevirtual 25	android/database/sqlite/SQLiteDatabase:close	()V
    //   113: aload_0
    //   114: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   117: invokevirtual 28	org/antivirus/apploader/e:close	()V
    //   120: aload 4
    //   122: ifnull +8 -> 130
    //   125: aload 4
    //   127: invokevirtual 25	android/database/sqlite/SQLiteDatabase:close	()V
    //   130: aload_0
    //   131: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   134: ifnull +10 -> 144
    //   137: aload_0
    //   138: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   141: invokevirtual 28	org/antivirus/apploader/e:close	()V
    //   144: return
    //   145: astore 9
    //   147: aload 4
    //   149: ifnull +8 -> 157
    //   152: aload 4
    //   154: invokevirtual 25	android/database/sqlite/SQLiteDatabase:close	()V
    //   157: aload_0
    //   158: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   161: ifnull -17 -> 144
    //   164: aload_0
    //   165: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   168: invokevirtual 28	org/antivirus/apploader/e:close	()V
    //   171: goto -27 -> 144
    //   174: astore 6
    //   176: aconst_null
    //   177: astore 7
    //   179: aload 6
    //   181: astore 8
    //   183: aload 7
    //   185: ifnull +8 -> 193
    //   188: aload 7
    //   190: invokevirtual 25	android/database/sqlite/SQLiteDatabase:close	()V
    //   193: aload_0
    //   194: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   197: ifnull +10 -> 207
    //   200: aload_0
    //   201: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   204: invokevirtual 28	org/antivirus/apploader/e:close	()V
    //   207: aload 8
    //   209: athrow
    //   210: astore 11
    //   212: aload 4
    //   214: astore 7
    //   216: aload 11
    //   218: astore 8
    //   220: goto -37 -> 183
    //
    // Exception table:
    //   from	to	target	type
    //   12	35	145	java/lang/Exception
    //   39	120	145	java/lang/Exception
    //   12	35	174	finally
    //   39	120	210	finally
  }

  // ERROR //
  public final boolean c(android.content.Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 77	android/content/ContentValues
    //   5: dup
    //   6: invokespecial 78	android/content/ContentValues:<init>	()V
    //   9: astore_3
    //   10: aload_0
    //   11: new 27	org/antivirus/apploader/e
    //   14: dup
    //   15: aload_1
    //   16: ldc 33
    //   18: invokespecial 36	org/antivirus/apploader/e:<init>	(Landroid/content/Context;Ljava/lang/String;)V
    //   21: putfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   24: aload_0
    //   25: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   28: invokevirtual 40	org/antivirus/apploader/e:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   31: astore 8
    //   33: aload 8
    //   35: astore_2
    //   36: aload_2
    //   37: invokevirtual 81	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   40: aload_3
    //   41: invokevirtual 129	android/content/ContentValues:clear	()V
    //   44: aload_3
    //   45: ldc 104
    //   47: iconst_0
    //   48: invokestatic 110	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   51: invokevirtual 114	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   54: aload_2
    //   55: ldc 120
    //   57: aload_3
    //   58: ldc 171
    //   60: aconst_null
    //   61: invokevirtual 126	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   64: pop
    //   65: aload_2
    //   66: invokevirtual 132	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   69: aload_2
    //   70: invokevirtual 135	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   73: aload_2
    //   74: invokevirtual 25	android/database/sqlite/SQLiteDatabase:close	()V
    //   77: aload_0
    //   78: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   81: invokevirtual 28	org/antivirus/apploader/e:close	()V
    //   84: aload_2
    //   85: ifnull +7 -> 92
    //   88: aload_2
    //   89: invokevirtual 25	android/database/sqlite/SQLiteDatabase:close	()V
    //   92: aload_0
    //   93: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   96: ifnull +10 -> 106
    //   99: aload_0
    //   100: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   103: invokevirtual 28	org/antivirus/apploader/e:close	()V
    //   106: iconst_0
    //   107: ireturn
    //   108: astore 7
    //   110: aload_2
    //   111: ifnull +7 -> 118
    //   114: aload_2
    //   115: invokevirtual 25	android/database/sqlite/SQLiteDatabase:close	()V
    //   118: aload_0
    //   119: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   122: ifnull -16 -> 106
    //   125: aload_0
    //   126: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   129: invokevirtual 28	org/antivirus/apploader/e:close	()V
    //   132: goto -26 -> 106
    //   135: astore 4
    //   137: aconst_null
    //   138: astore 5
    //   140: aload 4
    //   142: astore 6
    //   144: aload 5
    //   146: ifnull +8 -> 154
    //   149: aload 5
    //   151: invokevirtual 25	android/database/sqlite/SQLiteDatabase:close	()V
    //   154: aload_0
    //   155: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   158: ifnull +10 -> 168
    //   161: aload_0
    //   162: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   165: invokevirtual 28	org/antivirus/apploader/e:close	()V
    //   168: aload 6
    //   170: athrow
    //   171: astore 9
    //   173: aload_2
    //   174: astore 5
    //   176: aload 9
    //   178: astore 6
    //   180: goto -36 -> 144
    //
    // Exception table:
    //   from	to	target	type
    //   10	33	108	java/lang/Exception
    //   36	84	108	java/lang/Exception
    //   10	33	135	finally
    //   36	84	171	finally
  }

  // ERROR //
  public final java.util.TreeMap d(android.content.Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 83	java/util/TreeMap
    //   5: dup
    //   6: invokespecial 174	java/util/TreeMap:<init>	()V
    //   9: astore_3
    //   10: aload_0
    //   11: getfield 14	org/antivirus/apploader/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   14: ifnonnull +28 -> 42
    //   17: aload_0
    //   18: new 27	org/antivirus/apploader/e
    //   21: dup
    //   22: aload_1
    //   23: ldc 33
    //   25: invokespecial 36	org/antivirus/apploader/e:<init>	(Landroid/content/Context;Ljava/lang/String;)V
    //   28: putfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   31: aload_0
    //   32: aload_0
    //   33: getfield 16	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   36: invokevirtual 40	org/antivirus/apploader/e:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   39: putfield 14	org/antivirus/apploader/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   42: aload_0
    //   43: getfield 14	org/antivirus/apploader/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   46: ldc 120
    //   48: iconst_2
    //   49: anewarray 44	java/lang/String
    //   52: dup
    //   53: iconst_0
    //   54: ldc 176
    //   56: aastore
    //   57: dup
    //   58: iconst_1
    //   59: ldc 178
    //   61: aastore
    //   62: ldc 180
    //   64: aconst_null
    //   65: aconst_null
    //   66: aconst_null
    //   67: aconst_null
    //   68: invokevirtual 52	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   71: astore 7
    //   73: aload 7
    //   75: astore 6
    //   77: aload 6
    //   79: ifnull +59 -> 138
    //   82: aload 6
    //   84: invokeinterface 58 1 0
    //   89: ifle +49 -> 138
    //   92: iconst_0
    //   93: istore 10
    //   95: aload 6
    //   97: invokeinterface 61 1 0
    //   102: ifeq +36 -> 138
    //   105: iload 10
    //   107: iconst_5
    //   108: if_icmpge +30 -> 138
    //   111: aload_3
    //   112: aload 6
    //   114: iconst_0
    //   115: invokeinterface 65 2 0
    //   120: aload 6
    //   122: iconst_1
    //   123: invokeinterface 65 2 0
    //   128: invokevirtual 183	java/util/TreeMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   131: pop
    //   132: iinc 10 1
    //   135: goto -40 -> 95
    //   138: aload 6
    //   140: ifnull +10 -> 150
    //   143: aload 6
    //   145: invokeinterface 72 1 0
    //   150: aload_0
    //   151: invokespecial 74	org/antivirus/apploader/f:a	()V
    //   154: aload_3
    //   155: areturn
    //   156: astore 5
    //   158: aconst_null
    //   159: astore 6
    //   161: aload 6
    //   163: ifnull +10 -> 173
    //   166: aload 6
    //   168: invokeinterface 72 1 0
    //   173: aload_0
    //   174: invokespecial 74	org/antivirus/apploader/f:a	()V
    //   177: goto -23 -> 154
    //   180: astore 4
    //   182: aload_2
    //   183: ifnull +9 -> 192
    //   186: aload_2
    //   187: invokeinterface 72 1 0
    //   192: aload_0
    //   193: invokespecial 74	org/antivirus/apploader/f:a	()V
    //   196: aload 4
    //   198: athrow
    //   199: astore 9
    //   201: aload 6
    //   203: astore_2
    //   204: aload 9
    //   206: astore 4
    //   208: goto -26 -> 182
    //   211: astore 8
    //   213: goto -52 -> 161
    //
    // Exception table:
    //   from	to	target	type
    //   42	73	156	java/lang/Exception
    //   42	73	180	finally
    //   82	132	199	finally
    //   82	132	211	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.apploader.f
 * JD-Core Version:    0.6.2
 */