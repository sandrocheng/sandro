package com.ijinshan.cleaner.b;

import android.database.sqlite.SQLiteDatabase;
import com.keniu.security.f.ab;

public final class a
{
  private SQLiteDatabase a;

  private SQLiteDatabase a(String paramString)
  {
    try
    {
      this.a = SQLiteDatabase.openOrCreateDatabase(paramString, null);
      localSQLiteDatabase = this.a;
      return localSQLiteDatabase;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        SQLiteDatabase localSQLiteDatabase = null;
      }
    }
  }

  private void b()
  {
    this.a.close();
  }

  public final SQLiteDatabase a()
  {
    this.a = a(ab.a().b("clearpath2.db"));
    return this.a;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.b.a
 * JD-Core Version:    0.6.2
 */