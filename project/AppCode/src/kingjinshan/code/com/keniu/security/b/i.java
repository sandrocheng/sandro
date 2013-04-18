package com.keniu.security.b;

import android.database.sqlite.SQLiteDatabase;
import com.jxphone.mosecurity.d.t;

final class i extends t
{
  i(String paramString)
  {
    super(paramString);
  }

  public final void a(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("create table if not exists phone_call (id INTEGER primary key autoincrement,phone_number text,date INTEGER,type INTEGER,list_type INTEGER,ring_duration INTEGER,talk_duration INTEGER)");
  }

  public final void a(SQLiteDatabase paramSQLiteDatabase, int paramInt)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.b.i
 * JD-Core Version:    0.6.2
 */