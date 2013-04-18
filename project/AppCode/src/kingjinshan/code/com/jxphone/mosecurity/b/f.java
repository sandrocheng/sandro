package com.jxphone.mosecurity.b;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.jxphone.mosecurity.b.a.g;

public class f extends b
  implements g
{
  private static final String a = "id";
  private static final String b = "name";
  private static final String c = "count";
  private static final String d = "stat_info";
  private static final String e = "stat_count";

  public f(Context paramContext)
  {
    super(paramContext);
  }

  private boolean a(long paramLong)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("count", Long.valueOf(paramLong));
    if (c().update("stat_info", localContentValues, "name=?", new String[] { "stat_count" }) > 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private static Long b(Cursor paramCursor)
  {
    Long localLong;
    if (paramCursor == null)
    {
      localLong = Long.valueOf(-1L);
      return localLong;
    }
    int i;
    if (paramCursor.getCount() > 0)
    {
      i = paramCursor.getColumnIndex("count");
      if (i < 0);
    }
    for (long l = paramCursor.getLong(i); ; l = -1L)
    {
      localLong = Long.valueOf(l);
      break;
    }
  }

  private boolean e()
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("count", Integer.valueOf(1));
    localContentValues.put("name", "stat_count");
    if (c().insert("stat_info", null, localContentValues) > 0L);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final void a(SQLiteDatabase paramSQLiteDatabase)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("CREATE TABLE stat_info").append("(").append("id INTEGER PRIMARY KEY,").append("count INTEGER,").append("name TEXT").append(")");
    paramSQLiteDatabase.execSQL(localStringBuilder.toString());
  }

  public final void a(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    if (paramInt2 == 112)
    {
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS stat_info");
      a(paramSQLiteDatabase);
    }
  }

  public final boolean a()
  {
    Cursor localCursor = c().query("stat_info", new String[] { "count" }, "name=?", new String[] { "stat_count" }, null, null, null);
    if (localCursor != null);
    try
    {
      boolean bool;
      if (localCursor.getCount() <= 0)
      {
        ContentValues localContentValues1 = new ContentValues();
        localContentValues1.put("count", Integer.valueOf(1));
        localContentValues1.put("name", "stat_count");
        long l1 = c().insert("stat_info", null, localContentValues1);
        if (l1 > 0L)
          bool = true;
      }
      while (true)
      {
        return bool;
        bool = false;
        continue;
        localCursor.moveToFirst();
        long l2 = 1L + b(localCursor).longValue();
        ContentValues localContentValues2 = new ContentValues();
        localContentValues2.put("count", Long.valueOf(l2));
        int i = c().update("stat_info", localContentValues2, "name=?", new String[] { "stat_count" });
        if (i > 0)
          bool = true;
        else
          bool = false;
      }
    }
    finally
    {
      localCursor.close();
    }
  }

  public final long b()
  {
    Cursor localCursor = c().query("stat_info", new String[] { "count" }, "name=?", new String[] { "stat_count" }, null, null, null);
    if (localCursor != null);
    try
    {
      localCursor.moveToFirst();
      long l = b(localCursor).longValue();
      return l;
    }
    finally
    {
      localCursor.close();
    }
  }

  public final void d()
  {
    SQLiteDatabase localSQLiteDatabase = c();
    if (localSQLiteDatabase != null)
      localSQLiteDatabase.close();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.b.f
 * JD-Core Version:    0.6.2
 */