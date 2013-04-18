package com.ijinshan.bootmanager.c;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

final class b extends SQLiteOpenHelper
{
  public b(a parama, Context paramContext)
  {
    super(paramContext, "kingsoft_autoboot_white.db", null, 1);
  }

  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("CREATE TABLE ").append("autoboot_white").append("(");
    localStringBuilder.append("id  INTEGER PRIMARY KEY,");
    localStringBuilder.append("packageName  TEXT,");
    localStringBuilder.append("chineseName  TEXT,");
    localStringBuilder.append("type TEXT ");
    localStringBuilder.append(")");
    paramSQLiteDatabase.execSQL(localStringBuilder.toString());
  }

  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.bootmanager.c.b
 * JD-Core Version:    0.6.2
 */