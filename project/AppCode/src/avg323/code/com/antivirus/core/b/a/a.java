package com.antivirus.core.b.a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class a extends SQLiteOpenHelper
{
  public a(Context paramContext)
  {
    super(paramContext, "CallMessageDB", null, 1);
  }

  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS blocked_contacts (_id INTEGER PRIMARY KEY autoincrement,phone_number TEXT unique,message_type INTEGER,call_type INTEGER,reject_call_message TEXT);");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS calls_log (_id INTEGER PRIMARY KEY unique,incoming_call_id NUMBER,call_type INTEGER,date NUMBER unique);");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS messages_log (_id INTEGER PRIMARY KEY unique,incoming_msg_id NUMBER,message_type INTEGER,message_snippet TEXT,phone_number TEXT,date NUMBER unique);");
  }

  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    onCreate(paramSQLiteDatabase);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.b.a.a
 * JD-Core Version:    0.6.2
 */