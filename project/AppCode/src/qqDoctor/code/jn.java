import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import java.io.File;
import java.lang.reflect.Method;

public abstract class jn
{
  private static Class<?> f = null;
  private static Method g = null;
  private static Method h = null;
  private final String a;
  private final SQLiteDatabase.CursorFactory b;
  private final int c;
  private SQLiteDatabase d = null;
  private boolean e = false;

  public jn(String paramString, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt)
  {
    if (paramInt <= 0)
      throw new IllegalArgumentException("Version must be >= 1, was " + paramInt);
    this.a = paramString;
    this.b = null;
    this.c = paramInt;
    try
    {
      Class localClass = Class.forName("android.database.sqlite.SQLiteDatabase");
      f = localClass;
      g = localClass.getDeclaredMethod("lock", new Class[0]);
      h = f.getDeclaredMethod("unlock", new Class[0]);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  // ERROR //
  public final SQLiteDatabase a()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: getfield 36	jn:d	Landroid/database/sqlite/SQLiteDatabase;
    //   7: ifnull +35 -> 42
    //   10: aload_0
    //   11: getfield 36	jn:d	Landroid/database/sqlite/SQLiteDatabase;
    //   14: invokevirtual 90	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   17: ifeq +25 -> 42
    //   20: aload_0
    //   21: getfield 36	jn:d	Landroid/database/sqlite/SQLiteDatabase;
    //   24: invokevirtual 93	android/database/sqlite/SQLiteDatabase:isReadOnly	()Z
    //   27: ifne +15 -> 42
    //   30: aload_0
    //   31: getfield 36	jn:d	Landroid/database/sqlite/SQLiteDatabase;
    //   34: astore 4
    //   36: ldc 2
    //   38: monitorexit
    //   39: goto +366 -> 405
    //   42: aload_0
    //   43: getfield 38	jn:e	Z
    //   46: ifeq +19 -> 65
    //   49: new 95	java/lang/IllegalStateException
    //   52: dup
    //   53: ldc 97
    //   55: invokespecial 98	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   58: athrow
    //   59: astore_1
    //   60: ldc 2
    //   62: monitorexit
    //   63: aload_1
    //   64: athrow
    //   65: aload_0
    //   66: getfield 36	jn:d	Landroid/database/sqlite/SQLiteDatabase;
    //   69: astore_2
    //   70: aload_2
    //   71: ifnull +18 -> 89
    //   74: getstatic 26	jn:g	Ljava/lang/reflect/Method;
    //   77: aload_0
    //   78: getfield 36	jn:d	Landroid/database/sqlite/SQLiteDatabase;
    //   81: iconst_0
    //   82: anewarray 4	java/lang/Object
    //   85: invokevirtual 104	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   88: pop
    //   89: aload_0
    //   90: iconst_1
    //   91: putfield 38	jn:e	Z
    //   94: aload_0
    //   95: getfield 58	jn:a	Ljava/lang/String;
    //   98: ifnonnull +124 -> 222
    //   101: aconst_null
    //   102: invokestatic 108	android/database/sqlite/SQLiteDatabase:create	(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    //   105: astore 21
    //   107: aload 21
    //   109: astore 4
    //   111: aload 4
    //   113: invokevirtual 112	android/database/sqlite/SQLiteDatabase:getVersion	()I
    //   116: istore 16
    //   118: iload 16
    //   120: aload_0
    //   121: getfield 62	jn:c	I
    //   124: if_icmpeq +38 -> 162
    //   127: aload 4
    //   129: invokevirtual 115	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   132: iload 16
    //   134: ifne +115 -> 249
    //   137: aload_0
    //   138: aload 4
    //   140: invokevirtual 118	jn:a	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   143: aload 4
    //   145: aload_0
    //   146: getfield 62	jn:c	I
    //   149: invokevirtual 122	android/database/sqlite/SQLiteDatabase:setVersion	(I)V
    //   152: aload 4
    //   154: invokevirtual 125	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   157: aload 4
    //   159: invokevirtual 128	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   162: aload_0
    //   163: iconst_0
    //   164: putfield 38	jn:e	Z
    //   167: aload_0
    //   168: getfield 36	jn:d	Landroid/database/sqlite/SQLiteDatabase;
    //   171: astore 17
    //   173: aload 17
    //   175: ifnull +25 -> 200
    //   178: aload_0
    //   179: getfield 36	jn:d	Landroid/database/sqlite/SQLiteDatabase;
    //   182: invokevirtual 131	android/database/sqlite/SQLiteDatabase:close	()V
    //   185: getstatic 28	jn:h	Ljava/lang/reflect/Method;
    //   188: aload_0
    //   189: getfield 36	jn:d	Landroid/database/sqlite/SQLiteDatabase;
    //   192: iconst_0
    //   193: anewarray 4	java/lang/Object
    //   196: invokevirtual 104	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   199: pop
    //   200: aload_0
    //   201: aload 4
    //   203: putfield 36	jn:d	Landroid/database/sqlite/SQLiteDatabase;
    //   206: ldc 2
    //   208: monitorexit
    //   209: goto +196 -> 405
    //   212: astore 22
    //   214: aload 22
    //   216: invokevirtual 81	java/lang/Exception:printStackTrace	()V
    //   219: goto -130 -> 89
    //   222: aload_0
    //   223: aload_0
    //   224: getfield 58	jn:a	Ljava/lang/String;
    //   227: invokevirtual 134	jn:a	(Ljava/lang/String;)Ljava/io/File;
    //   230: invokevirtual 139	java/io/File:getPath	()Ljava/lang/String;
    //   233: aload_0
    //   234: getfield 60	jn:b	Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    //   237: invokestatic 143	android/database/sqlite/SQLiteDatabase:openOrCreateDatabase	(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    //   240: astore 13
    //   242: aload 13
    //   244: astore 4
    //   246: goto -135 -> 111
    //   249: aload_0
    //   250: aload 4
    //   252: iload 16
    //   254: aload_0
    //   255: getfield 62	jn:c	I
    //   258: invokevirtual 146	jn:a	(Landroid/database/sqlite/SQLiteDatabase;II)V
    //   261: goto -118 -> 143
    //   264: astore 20
    //   266: aload 4
    //   268: invokevirtual 128	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   271: aload 20
    //   273: athrow
    //   274: astore 15
    //   276: aload_0
    //   277: iconst_0
    //   278: putfield 38	jn:e	Z
    //   281: aload_0
    //   282: getfield 36	jn:d	Landroid/database/sqlite/SQLiteDatabase;
    //   285: astore 5
    //   287: aload 5
    //   289: ifnull +18 -> 307
    //   292: getstatic 28	jn:h	Ljava/lang/reflect/Method;
    //   295: aload_0
    //   296: getfield 36	jn:d	Landroid/database/sqlite/SQLiteDatabase;
    //   299: iconst_0
    //   300: anewarray 4	java/lang/Object
    //   303: invokevirtual 104	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   306: pop
    //   307: aload 4
    //   309: ifnull +8 -> 317
    //   312: aload 4
    //   314: invokevirtual 131	android/database/sqlite/SQLiteDatabase:close	()V
    //   317: ldc 2
    //   319: monitorexit
    //   320: aconst_null
    //   321: astore 4
    //   323: goto +82 -> 405
    //   326: aload_0
    //   327: iconst_0
    //   328: putfield 38	jn:e	Z
    //   331: aload_0
    //   332: getfield 36	jn:d	Landroid/database/sqlite/SQLiteDatabase;
    //   335: astore 10
    //   337: aload 10
    //   339: ifnull +18 -> 357
    //   342: getstatic 28	jn:h	Ljava/lang/reflect/Method;
    //   345: aload_0
    //   346: getfield 36	jn:d	Landroid/database/sqlite/SQLiteDatabase;
    //   349: iconst_0
    //   350: anewarray 4	java/lang/Object
    //   353: invokevirtual 104	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   356: pop
    //   357: aload 9
    //   359: ifnull +8 -> 367
    //   362: aload 9
    //   364: invokevirtual 131	android/database/sqlite/SQLiteDatabase:close	()V
    //   367: aload 8
    //   369: athrow
    //   370: astore 11
    //   372: goto -15 -> 357
    //   375: astore 14
    //   377: aload 4
    //   379: astore 9
    //   381: aload 14
    //   383: astore 8
    //   385: goto -59 -> 326
    //   388: astore 6
    //   390: goto -83 -> 307
    //   393: astore_3
    //   394: aconst_null
    //   395: astore 4
    //   397: goto -121 -> 276
    //   400: astore 18
    //   402: goto -202 -> 200
    //   405: aload 4
    //   407: areturn
    //   408: astore 8
    //   410: aconst_null
    //   411: astore 9
    //   413: goto -87 -> 326
    //
    // Exception table:
    //   from	to	target	type
    //   3	63	59	finally
    //   65	70	59	finally
    //   74	89	59	finally
    //   162	173	59	finally
    //   178	200	59	finally
    //   200	219	59	finally
    //   276	287	59	finally
    //   292	307	59	finally
    //   312	337	59	finally
    //   342	357	59	finally
    //   362	370	59	finally
    //   74	89	212	java/lang/Exception
    //   137	157	264	finally
    //   249	261	264	finally
    //   111	132	274	android/database/sqlite/SQLiteException
    //   157	162	274	android/database/sqlite/SQLiteException
    //   266	274	274	android/database/sqlite/SQLiteException
    //   342	357	370	java/lang/Exception
    //   111	132	375	finally
    //   157	162	375	finally
    //   266	274	375	finally
    //   292	307	388	java/lang/Exception
    //   89	107	393	android/database/sqlite/SQLiteException
    //   222	242	393	android/database/sqlite/SQLiteException
    //   178	200	400	java/lang/Exception
    //   89	107	408	finally
    //   222	242	408	finally
  }

  public abstract File a(String paramString);

  public abstract void a(SQLiteDatabase paramSQLiteDatabase);

  public abstract void a(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2);

  // ERROR //
  public final SQLiteDatabase b()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: getfield 36	jn:d	Landroid/database/sqlite/SQLiteDatabase;
    //   7: ifnull +25 -> 32
    //   10: aload_0
    //   11: getfield 36	jn:d	Landroid/database/sqlite/SQLiteDatabase;
    //   14: invokevirtual 90	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   17: ifeq +15 -> 32
    //   20: aload_0
    //   21: getfield 36	jn:d	Landroid/database/sqlite/SQLiteDatabase;
    //   24: astore 6
    //   26: ldc 2
    //   28: monitorexit
    //   29: goto +204 -> 233
    //   32: aload_0
    //   33: getfield 38	jn:e	Z
    //   36: ifeq +19 -> 55
    //   39: new 95	java/lang/IllegalStateException
    //   42: dup
    //   43: ldc 148
    //   45: invokespecial 98	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   48: athrow
    //   49: astore_1
    //   50: ldc 2
    //   52: monitorexit
    //   53: aload_1
    //   54: athrow
    //   55: aload_0
    //   56: invokevirtual 150	jn:a	()Landroid/database/sqlite/SQLiteDatabase;
    //   59: astore 7
    //   61: aload 7
    //   63: astore 6
    //   65: ldc 2
    //   67: monitorexit
    //   68: goto +165 -> 233
    //   71: astore_2
    //   72: aload_0
    //   73: getfield 58	jn:a	Ljava/lang/String;
    //   76: ifnonnull +5 -> 81
    //   79: aload_2
    //   80: athrow
    //   81: aconst_null
    //   82: astore_3
    //   83: aload_0
    //   84: iconst_1
    //   85: putfield 38	jn:e	Z
    //   88: aload_0
    //   89: aload_0
    //   90: getfield 58	jn:a	Ljava/lang/String;
    //   93: invokevirtual 134	jn:a	(Ljava/lang/String;)Ljava/io/File;
    //   96: invokevirtual 139	java/io/File:getPath	()Ljava/lang/String;
    //   99: astore 5
    //   101: aload 5
    //   103: aload_0
    //   104: getfield 60	jn:b	Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    //   107: iconst_0
    //   108: invokestatic 154	android/database/sqlite/SQLiteDatabase:openDatabase	(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    //   111: astore_3
    //   112: aload_3
    //   113: invokevirtual 112	android/database/sqlite/SQLiteDatabase:getVersion	()I
    //   116: aload_0
    //   117: getfield 62	jn:c	I
    //   120: if_icmpeq +78 -> 198
    //   123: new 84	android/database/sqlite/SQLiteException
    //   126: dup
    //   127: new 42	java/lang/StringBuilder
    //   130: dup
    //   131: ldc 156
    //   133: invokespecial 47	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   136: aload_3
    //   137: invokevirtual 112	android/database/sqlite/SQLiteDatabase:getVersion	()I
    //   140: invokevirtual 51	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   143: ldc 158
    //   145: invokevirtual 161	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   148: aload_0
    //   149: getfield 62	jn:c	I
    //   152: invokevirtual 51	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   155: ldc 163
    //   157: invokevirtual 161	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   160: aload 5
    //   162: invokevirtual 161	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   165: invokevirtual 55	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   168: invokespecial 164	android/database/sqlite/SQLiteException:<init>	(Ljava/lang/String;)V
    //   171: athrow
    //   172: astore 4
    //   174: aload_0
    //   175: iconst_0
    //   176: putfield 38	jn:e	Z
    //   179: aload_3
    //   180: ifnull +15 -> 195
    //   183: aload_3
    //   184: aload_0
    //   185: getfield 36	jn:d	Landroid/database/sqlite/SQLiteDatabase;
    //   188: if_acmpeq +7 -> 195
    //   191: aload_3
    //   192: invokevirtual 131	android/database/sqlite/SQLiteDatabase:close	()V
    //   195: aload 4
    //   197: athrow
    //   198: aload_0
    //   199: aload_3
    //   200: putfield 36	jn:d	Landroid/database/sqlite/SQLiteDatabase;
    //   203: aload_0
    //   204: getfield 36	jn:d	Landroid/database/sqlite/SQLiteDatabase;
    //   207: astore 6
    //   209: aload_0
    //   210: iconst_0
    //   211: putfield 38	jn:e	Z
    //   214: aload_3
    //   215: ifnull +15 -> 230
    //   218: aload_3
    //   219: aload_0
    //   220: getfield 36	jn:d	Landroid/database/sqlite/SQLiteDatabase;
    //   223: if_acmpeq +7 -> 230
    //   226: aload_3
    //   227: invokevirtual 131	android/database/sqlite/SQLiteDatabase:close	()V
    //   230: ldc 2
    //   232: monitorexit
    //   233: aload 6
    //   235: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   3	53	49	finally
    //   55	61	49	finally
    //   65	81	49	finally
    //   174	198	49	finally
    //   209	233	49	finally
    //   55	61	71	android/database/sqlite/SQLiteException
    //   83	172	172	finally
    //   198	209	172	finally
  }

  public final void c()
  {
    try
    {
      if (this.e)
        throw new IllegalStateException("Closed during initialization");
    }
    finally
    {
    }
    if ((this.d != null) && (this.d.isOpen()))
    {
      this.d.close();
      this.d = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     jn
 * JD-Core Version:    0.6.2
 */