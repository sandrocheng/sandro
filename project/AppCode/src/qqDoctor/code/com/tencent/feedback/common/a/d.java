package com.tencent.feedback.common.a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.tencent.feedback.common.ELog;

public final class d extends SQLiteOpenHelper
{
  private static String[] a = c.b;

  public d(Context paramContext)
  {
    super(paramContext, "eup_db", null, 9);
  }

  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    ELog.debug("create a new db [eup_db]");
    if ((paramSQLiteDatabase != null) && (a != null))
      for (int i = 0; i < a.length; i++)
      {
        ELog.debug("" + a[i]);
        paramSQLiteDatabase.execSQL(a[i]);
      }
    ELog.debug("create a new db done!");
  }

  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    ELog.debug("upgrade a db [eup_db] from v" + paramInt1 + " to v" + paramInt2);
    ELog.debug("deleted old tables");
    if (c.a != null)
      for (int i = 0; i < c.a.length; i++)
        paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + c.a[i]);
    ELog.debug("recreate ao table");
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS ao");
    ELog.debug("create new");
    onCreate(paramSQLiteDatabase);
    ELog.debug("upgrade a db done!");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.common.a.d
 * JD-Core Version:    0.6.2
 */