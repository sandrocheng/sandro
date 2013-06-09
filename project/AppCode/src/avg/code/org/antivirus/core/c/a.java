package org.antivirus.core.c;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public final class a extends SQLiteOpenHelper
{
  public a(Context paramContext, String paramString)
  {
    super(paramContext, paramString, null, 2);
  }

  public static void a(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS bpacksig (_id INTEGER PRIMARY KEY autoincrement,sha TEXT,cat INTEGER);");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS manifestsig (_id INTEGER PRIMARY KEY autoincrement,sha TEXT,cat INTEGER,adler INTEGER);");
    paramSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS manifestsig_idx ON manifestsig (adler)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS classessig (_id INTEGER PRIMARY KEY autoincrement,sha TEXT,cat INTEGER,adler INTEGER);");
    paramSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS classessig_idx ON classessig (adler)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS settings (_id INTEGER PRIMARY KEY autoincrement,settings_key TEXT,settings_value TEXT);");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS categories (_id INTEGER PRIMARY KEY, cat_name TEXT);");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS spamsig (_id INTEGER PRIMARY KEY autoincrement,sha TEXT);");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS mediasig (_id INTEGER PRIMARY KEY autoincrement,sha TEXT,cat INTEGER);");
  }

  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    a(paramSQLiteDatabase);
  }

  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.c.a
 * JD-Core Version:    0.6.2
 */