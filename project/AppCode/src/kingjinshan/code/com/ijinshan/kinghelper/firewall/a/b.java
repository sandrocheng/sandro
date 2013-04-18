package com.ijinshan.kinghelper.firewall.a;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

final class b extends SQLiteOpenHelper
{
  public b(Context paramContext)
  {
    super(paramContext, "kingsoft_firewall_log.db", null, 3);
  }

  private static void a(SQLiteDatabase paramSQLiteDatabase, String paramString1, String paramString2, String paramString3)
  {
    Cursor localCursor = paramSQLiteDatabase.query(paramString1, null, null, null, null, null, null);
    if (localCursor != null)
    {
      int i = 1;
      if (-1 == localCursor.getColumnIndex(paramString2))
        i = 0;
      localCursor.close();
      if (i == 0)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("ALTER TABLE ").append(paramString1 + " ADD ").append(paramString2 + " " + paramString3);
        paramSQLiteDatabase.execSQL(localStringBuilder.toString());
      }
    }
  }

  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    localStringBuilder1.append("CREATE TABLE ").append("kingsoft_firewall_log_sms").append("(");
    localStringBuilder1.append("_id INTEGER PRIMARY KEY,");
    localStringBuilder1.append("address TEXT,");
    localStringBuilder1.append("subject TEXT,");
    localStringBuilder1.append("service_center TEXT,");
    localStringBuilder1.append("read INTEGER,");
    localStringBuilder1.append("protocol INTEGER,");
    localStringBuilder1.append("person INTEGER,");
    localStringBuilder1.append("body TEXT,");
    localStringBuilder1.append("date INTEGER,");
    localStringBuilder1.append("firewall_log_time INTEGER,");
    localStringBuilder1.append("firewall_log_description TEXT,");
    localStringBuilder1.append("firewall_log_rule_id INTEGER,");
    localStringBuilder1.append("firewall_from INTEGER,");
    localStringBuilder1.append("logtype INTEGER,");
    localStringBuilder1.append("exp INTEGER,");
    localStringBuilder1.append("ct_l TEXT,");
    localStringBuilder1.append("m_size INTEGER,");
    localStringBuilder1.append("tr_id TEXT,");
    localStringBuilder1.append("ct_t INTEGER,");
    localStringBuilder1.append("v INTEGER");
    localStringBuilder1.append(")");
    paramSQLiteDatabase.execSQL(localStringBuilder1.toString());
    StringBuilder localStringBuilder2 = new StringBuilder();
    localStringBuilder2.append("CREATE TABLE ").append("kingsoft_firewall_log_call").append("(");
    localStringBuilder2.append("_id INTEGER PRIMARY KEY,");
    localStringBuilder2.append("type INTEGER,");
    localStringBuilder2.append("number TEXT,");
    localStringBuilder2.append("new INTEGER,");
    localStringBuilder2.append("duration INTEGER,");
    localStringBuilder2.append("date INTEGER,");
    localStringBuilder2.append("firewall_log_description TEXT,");
    localStringBuilder2.append("firewall_log_rule_id INTEGER");
    localStringBuilder2.append(")");
    paramSQLiteDatabase.execSQL(localStringBuilder2.toString());
  }

  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    if ((paramInt1 == 1) && (paramInt2 == 2))
      a(paramSQLiteDatabase, "kingsoft_firewall_log_sms", "firewall_from", "INTEGER");
    while (true)
    {
      return;
      if ((paramInt1 == 1) && (paramInt2 == 3))
      {
        a(paramSQLiteDatabase, "kingsoft_firewall_log_sms", "firewall_from", "INTEGER");
        a(paramSQLiteDatabase, "kingsoft_firewall_log_sms", "logtype", "INTEGER");
        a(paramSQLiteDatabase, "kingsoft_firewall_log_sms", "exp", "INTEGER");
        a(paramSQLiteDatabase, "kingsoft_firewall_log_sms", "ct_l", "TEXT");
        a(paramSQLiteDatabase, "kingsoft_firewall_log_sms", "m_size", "INTEGER");
        a(paramSQLiteDatabase, "kingsoft_firewall_log_sms", "tr_id", "TEXT");
        a(paramSQLiteDatabase, "kingsoft_firewall_log_sms", "ct_t", "INTEGER");
        a(paramSQLiteDatabase, "kingsoft_firewall_log_sms", "v", "INTEGER");
      }
      else if ((paramInt1 == 2) && (paramInt2 == 3))
      {
        a(paramSQLiteDatabase, "kingsoft_firewall_log_sms", "logtype", "INTEGER");
        a(paramSQLiteDatabase, "kingsoft_firewall_log_sms", "exp", "INTEGER");
        a(paramSQLiteDatabase, "kingsoft_firewall_log_sms", "ct_l", "TEXT");
        a(paramSQLiteDatabase, "kingsoft_firewall_log_sms", "m_size", "INTEGER");
        a(paramSQLiteDatabase, "kingsoft_firewall_log_sms", "tr_id", "TEXT");
        a(paramSQLiteDatabase, "kingsoft_firewall_log_sms", "ct_t", "INTEGER");
        a(paramSQLiteDatabase, "kingsoft_firewall_log_sms", "v", "INTEGER");
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.a.b
 * JD-Core Version:    0.6.2
 */