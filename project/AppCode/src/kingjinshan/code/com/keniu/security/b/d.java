package com.keniu.security.b;

import android.database.sqlite.SQLiteDatabase;
import com.jxphone.mosecurity.d.t;

final class d extends t
{
  d(String paramString)
  {
    super(paramString);
  }

  public final void a(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("create table if not exists contact (id INTEGER primary key autoincrement,name text,phone_number text,list_type INTEGER,create_date INTEGER,activity_date INTEGER,photo BLOB)");
  }

  public final void a(SQLiteDatabase paramSQLiteDatabase, int paramInt)
  {
    if (paramInt == 1)
      paramSQLiteDatabase.execSQL("alter table contact add photo blob");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.b.d
 * JD-Core Version:    0.6.2
 */