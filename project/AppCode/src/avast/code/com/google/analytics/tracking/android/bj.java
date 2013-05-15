package com.google.analytics.tracking.android;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;

class bj extends SQLiteOpenHelper
{
  private boolean b;

  bj(bh parambh, Context paramContext, String paramString)
  {
    super(paramContext, paramString, null, 1);
  }

  // ERROR //
  private boolean a(String paramString, SQLiteDatabase paramSQLiteDatabase)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_2
    //   3: ldc 20
    //   5: iconst_1
    //   6: anewarray 22	java/lang/String
    //   9: dup
    //   10: iconst_0
    //   11: ldc 24
    //   13: aastore
    //   14: ldc 26
    //   16: iconst_1
    //   17: anewarray 22	java/lang/String
    //   20: dup
    //   21: iconst_0
    //   22: aload_1
    //   23: aastore
    //   24: aconst_null
    //   25: aconst_null
    //   26: aconst_null
    //   27: invokevirtual 32	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   30: astore 10
    //   32: aload 10
    //   34: invokeinterface 38 1 0
    //   39: istore 12
    //   41: iload 12
    //   43: istore 9
    //   45: aload 10
    //   47: ifnull +10 -> 57
    //   50: aload 10
    //   52: invokeinterface 42 1 0
    //   57: iload 9
    //   59: ireturn
    //   60: astore 5
    //   62: aconst_null
    //   63: astore 6
    //   65: new 44	java/lang/StringBuilder
    //   68: dup
    //   69: invokespecial 46	java/lang/StringBuilder:<init>	()V
    //   72: ldc 48
    //   74: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   77: aload_1
    //   78: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: invokevirtual 56	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   84: invokestatic 62	com/google/analytics/tracking/android/ay:h	(Ljava/lang/String;)I
    //   87: pop
    //   88: aload 6
    //   90: ifnull +10 -> 100
    //   93: aload 6
    //   95: invokeinterface 42 1 0
    //   100: iconst_0
    //   101: istore 9
    //   103: goto -46 -> 57
    //   106: astore 4
    //   108: aload_3
    //   109: ifnull +9 -> 118
    //   112: aload_3
    //   113: invokeinterface 42 1 0
    //   118: aload 4
    //   120: athrow
    //   121: astore 4
    //   123: aload 10
    //   125: astore_3
    //   126: goto -18 -> 108
    //   129: astore 7
    //   131: aload 6
    //   133: astore_3
    //   134: aload 7
    //   136: astore 4
    //   138: goto -30 -> 108
    //   141: astore 11
    //   143: aload 10
    //   145: astore 6
    //   147: goto -82 -> 65
    //
    // Exception table:
    //   from	to	target	type
    //   2	32	60	android/database/sqlite/SQLiteException
    //   2	32	106	finally
    //   32	41	121	finally
    //   65	88	129	finally
    //   32	41	141	android/database/sqlite/SQLiteException
  }

  public SQLiteDatabase getWritableDatabase()
  {
    if (this.b)
      throw new SQLiteException("Database creation failed");
    return super.getWritableDatabase();
  }

  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    v.a(paramSQLiteDatabase.getPath());
  }

  public void onOpen(SQLiteDatabase paramSQLiteDatabase)
  {
    try
    {
      if (!a("hits2", paramSQLiteDatabase))
        paramSQLiteDatabase.execSQL(bh.f());
      return;
    }
    catch (SQLiteException localSQLiteException)
    {
      while (true)
      {
        ay.h("Error on database open");
        this.b = true;
      }
    }
  }

  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.bj
 * JD-Core Version:    0.6.2
 */