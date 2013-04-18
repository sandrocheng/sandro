package com.keniu.security.i;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.io.File;

final class a extends SQLiteOpenHelper
{
  public static final String a = "path";
  public static final String b = "sname";
  public static final String c = "pname";
  public static final String d = "vname";
  public static final String e = "watcher";
  public static final String f = "ftype";
  public static final String g = "fsize";
  public static final String h = "ftime";
  public static final String i = "stime";
  private static final String j = "fw_cache.db";
  private static final int k = 1;
  private static final String l = "items";
  private static final String[] m = { "sname", "pname", "vname", "watcher", "ftype", "fsize", "ftime", "stime" };
  private static final String n = "path=?";

  public a(Context paramContext)
  {
    super(paramContext, "fw_cache.db", null, 1);
  }

  private static String b(String paramString)
  {
    if (paramString == null);
    for (String str = ""; ; str = paramString)
      return str;
  }

  public final b a(String paramString)
  {
    Cursor localCursor = getReadableDatabase().query("items", m, "path=?", new String[] { paramString }, null, null, "_id");
    b localb2;
    if (localCursor != null)
      if (localCursor.moveToFirst())
      {
        localb2 = new b(this);
        localb2.a = paramString;
        localb2.b = localCursor.getString(0);
        localb2.c = localCursor.getString(1);
        localb2.d = localCursor.getString(2);
        localb2.e = localCursor.getInt(3);
        localb2.f = localCursor.getInt(4);
        localb2.g = localCursor.getLong(5);
        localb2.i = localCursor.getLong(6);
        localb2.h = localCursor.getLong(7);
        localCursor.close();
      }
    for (b localb1 = localb2; ; localb1 = null)
    {
      return localb1;
      localCursor.close();
    }
  }

  public final b a(String paramString1, String paramString2, String paramString3, String paramString4, int paramInt1, int paramInt2)
  {
    File localFile = new File(paramString1);
    b localb1;
    if (localFile.exists())
    {
      localb1 = new b(this);
      localb1.a = paramString1;
      localb1.b = paramString2;
      localb1.c = paramString3;
      localb1.d = paramString4;
      localb1.e = paramInt1;
      localb1.f = paramInt2;
      localb1.g = localFile.length();
      localb1.i = localFile.lastModified();
      localb1.h = System.currentTimeMillis();
    }
    for (b localb2 = localb1; ; localb2 = null)
      return localb2;
  }

  public final void a(b paramb, boolean paramBoolean)
  {
    SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
    try
    {
      localSQLiteDatabase.beginTransaction();
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("sname", b(paramb.b));
      localContentValues.put("pname", b(paramb.c));
      localContentValues.put("vname", b(paramb.d));
      localContentValues.put("watcher", Integer.valueOf(paramb.e));
      localContentValues.put("ftype", Integer.valueOf(paramb.f));
      localContentValues.put("fsize", Long.valueOf(paramb.g));
      localContentValues.put("ftime", Long.valueOf(paramb.i));
      localContentValues.put("stime", Long.valueOf(paramb.h));
      int i1 = 0;
      if (paramBoolean)
        i1 = localSQLiteDatabase.update("items", localContentValues, "path = '" + paramb.a + "'", null);
      if (i1 == 0)
      {
        localContentValues.put("path", paramb.a);
        localSQLiteDatabase.insertOrThrow("items", null, localContentValues);
      }
      localSQLiteDatabase.setTransactionSuccessful();
      return;
    }
    finally
    {
      localSQLiteDatabase.endTransaction();
    }
  }

  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE items (_id INTEGER PRIMARY KEY, path TEXT, sname TEXT, pname TEXT, vname TEXT, watcher INTEGER, ftype INTEGER, fsize BIGINT, ftime BIGINT, stime BIGINT);");
  }

  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.i.a
 * JD-Core Version:    0.6.2
 */