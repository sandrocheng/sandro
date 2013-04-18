package com.ijinshan.kinghelper.firewall.a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

final class m extends SQLiteOpenHelper
{
  public m(Context paramContext)
  {
    super(paramContext, "firewall_user_rules.db", null, 1);
  }

  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("CREATE TABLE ").append("datable").append("(");
    localStringBuilder.append("_id INTEGER PRIMARY KEY,");
    localStringBuilder.append("rule_type INTEGER,");
    localStringBuilder.append("apply_mode INTEGER,");
    localStringBuilder.append("match_mode INTEGER,");
    localStringBuilder.append("matcher TEXT,");
    localStringBuilder.append("owner TEXT,");
    localStringBuilder.append("desc TEXT");
    localStringBuilder.append(")");
    paramSQLiteDatabase.execSQL(localStringBuilder.toString());
  }

  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.a.m
 * JD-Core Version:    0.6.2
 */