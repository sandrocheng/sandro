package com.jxphone.mosecurity.b;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.Iterator;
import java.util.List;

public class c extends b
  implements com.jxphone.mosecurity.b.a.e
{
  private static final String a = "id";
  private static final String b = "process_name";
  private static final String c = "title";
  private static final String d = "checked";
  private static final String e = "hidden_process";

  public c(Context paramContext)
  {
    super(paramContext);
  }

  private void a(List paramList)
  {
    if (paramList == null);
    while (true)
    {
      return;
      SQLiteDatabase localSQLiteDatabase = c();
      try
      {
        localSQLiteDatabase.beginTransaction();
        localSQLiteDatabase.delete("hidden_process", null, null);
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext())
          localSQLiteDatabase.insert("hidden_process", null, d((com.keniu.security.d.e)localIterator.next()));
      }
      catch (Exception localException)
      {
        if (!localSQLiteDatabase.isOpen())
          continue;
        localSQLiteDatabase.endTransaction();
        localSQLiteDatabase.close();
        continue;
        localSQLiteDatabase.setTransactionSuccessful();
        if (!localSQLiteDatabase.isOpen())
          continue;
        localSQLiteDatabase.endTransaction();
        localSQLiteDatabase.close();
      }
      finally
      {
        if (localSQLiteDatabase.isOpen())
        {
          localSQLiteDatabase.endTransaction();
          localSQLiteDatabase.close();
        }
      }
    }
  }

  private static com.keniu.security.d.e b(Cursor paramCursor)
  {
    com.keniu.security.d.e locale;
    if ((paramCursor == null) || (paramCursor.getCount() <= 0))
      locale = null;
    while (true)
    {
      return locale;
      locale = new com.keniu.security.d.e();
      int i = paramCursor.getColumnIndex("id");
      if (i >= 0)
        locale.a(paramCursor.getInt(i));
      int j = paramCursor.getColumnIndex("process_name");
      if (j >= 0)
        locale.a(paramCursor.getString(j));
      int k = paramCursor.getColumnIndex("title");
      if (k >= 0)
        locale.b(paramCursor.getString(k));
      int m = paramCursor.getColumnIndex("checked");
      if (m >= 0)
        if (paramCursor.getInt(m) == 1)
          locale.a(true);
        else
          locale.a(false);
    }
  }

  private static ContentValues d(com.keniu.security.d.e parame)
  {
    boolean bool = parame.a();
    int i = 0;
    if (bool)
      i = 1;
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("process_name", parame.b());
    localContentValues.put("title", parame.c());
    localContentValues.put("checked", Integer.valueOf(i));
    return localContentValues;
  }

  public final List a()
  {
    return a("hidden_process", "id DESC", new String[] { "id", "process_name", "title", "checked" });
  }

  public final void a(SQLiteDatabase paramSQLiteDatabase)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("CREATE TABLE hidden_process").append("(").append("id INTEGER PRIMARY KEY,").append("title TEXT,").append("process_name TEXT,").append("checked INTEGER").append(")");
    paramSQLiteDatabase.execSQL(localStringBuffer.toString());
  }

  public final void a(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    if (paramInt2 == 100)
    {
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS hidden_process");
      a(paramSQLiteDatabase);
    }
  }

  public final void a(com.keniu.security.d.e parame)
  {
    if (parame == null);
    while (true)
    {
      return;
      SQLiteDatabase localSQLiteDatabase = c();
      String[] arrayOfString1 = { "id", "process_name", "title", "checked" };
      String[] arrayOfString2 = new String[1];
      arrayOfString2[0] = (parame.b() + "");
      Cursor localCursor = localSQLiteDatabase.query("hidden_process", arrayOfString1, "process_name=?", arrayOfString2, null, null, "id DESC");
      if (localCursor != null);
      try
      {
        if (localCursor.getCount() == 0)
          c().insert("hidden_process", null, d(parame));
        localCursor.close();
      }
      finally
      {
        localCursor.close();
      }
    }
  }

  public final boolean a(long paramLong)
  {
    SQLiteDatabase localSQLiteDatabase = c();
    String[] arrayOfString = new String[1];
    arrayOfString[0] = (paramLong + "");
    if (localSQLiteDatabase.delete("hidden_process", "id=?", arrayOfString) > 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean a(String paramString)
  {
    boolean bool;
    if ((paramString == null) || (paramString.equals("")))
      bool = false;
    while (true)
    {
      return bool;
      SQLiteDatabase localSQLiteDatabase = c();
      String[] arrayOfString = new String[1];
      arrayOfString[0] = (paramString + "");
      if (localSQLiteDatabase.delete("hidden_process", "process_name=?", arrayOfString) > 0)
        bool = true;
      else
        bool = false;
    }
  }

  public final void b()
  {
    SQLiteDatabase localSQLiteDatabase = c();
    if (localSQLiteDatabase != null)
      localSQLiteDatabase.close();
  }

  public final boolean b(com.keniu.security.d.e parame)
  {
    boolean bool;
    if (parame == null)
      bool = false;
    while (true)
    {
      return bool;
      SQLiteDatabase localSQLiteDatabase = c();
      String[] arrayOfString1 = { "id", "process_name", "title", "checked" };
      String[] arrayOfString2 = new String[1];
      arrayOfString2[0] = (parame.b() + "");
      Cursor localCursor = localSQLiteDatabase.query("hidden_process", arrayOfString1, "process_name=?", arrayOfString2, null, null, "id DESC");
      if ((localCursor == null) || (localCursor.getCount() == 0))
      {
        if (localCursor != null)
          localCursor.close();
        bool = false;
      }
      else
      {
        localCursor.close();
        bool = true;
      }
    }
  }

  public final boolean c(com.keniu.security.d.e parame)
  {
    boolean bool;
    if (parame == null)
      bool = false;
    while (true)
    {
      return bool;
      SQLiteDatabase localSQLiteDatabase = c();
      String[] arrayOfString1 = { "id", "process_name", "title", "checked" };
      String[] arrayOfString2 = new String[1];
      arrayOfString2[0] = (parame.b() + "");
      Cursor localCursor = localSQLiteDatabase.query("hidden_process", arrayOfString1, "process_name=?", arrayOfString2, null, null, "id DESC");
      if ((localCursor == null) || (localCursor.getCount() == 0))
      {
        if (localCursor != null)
          localCursor.close();
        bool = false;
      }
      else
      {
        localCursor.moveToFirst();
        int i = localCursor.getColumnIndex("checked");
        if (i >= 0)
        {
          if (localCursor.getInt(i) == 1)
          {
            localCursor.close();
            bool = true;
          }
          else
          {
            localCursor.close();
            bool = false;
          }
        }
        else
        {
          localCursor.close();
          bool = false;
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.b.c
 * JD-Core Version:    0.6.2
 */