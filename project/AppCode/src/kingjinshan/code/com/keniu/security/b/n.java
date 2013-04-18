package com.keniu.security.b;

import android.database.sqlite.SQLiteDatabase;
import com.jxphone.mosecurity.d.t;

final class n extends t
{
  n(String paramString)
  {
    super(paramString);
  }

  public final void a(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("create table if not exists sms (id INTEGER primary key autoincrement,address text,body text,date INTEGER,status INTEGER,type INTEGER,list_type INTEGER)");
  }

  public final void a(SQLiteDatabase paramSQLiteDatabase, int paramInt)
  {
    if (paramInt == 1)
      paramSQLiteDatabase.execSQL("update sms set status=-2");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.b.n
 * JD-Core Version:    0.6.2
 */