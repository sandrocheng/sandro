package org.antivirus.apploader;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public final class e extends SQLiteOpenHelper
{
  public e(Context paramContext, String paramString)
  {
    super(paramContext, paramString, null, 1);
  }

  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS signatures (_id INTEGER PRIMARY KEY autoincrement,sha TEXT,basepack TEXT,sourcedir TEXT,version TEXT,date INTEGER,up INTEGER);");
    paramSQLiteDatabase.execSQL("CREATE INDEX sha_idx ON signatures(sha)");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS settings (_id INTEGER PRIMARY KEY autoincrement,_key TEXT,_value TEXT);");
  }

  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.apploader.e
 * JD-Core Version:    0.6.2
 */