package com.jxphone.mosecurity.b;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.jxphone.mosecurity.b.a.d;
import java.util.List;

public class a extends b
  implements d
{
  private static final String a = "package_name";
  private static final String b = "count";
  private static final String c = "app_id";
  private static final String d = "app_stat";

  public a(Context paramContext)
  {
    super(paramContext);
  }

  private static com.jxphone.mosecurity.c.a b(Cursor paramCursor)
  {
    com.jxphone.mosecurity.c.a locala;
    if ((paramCursor == null) || (paramCursor.getCount() <= 0))
      locala = null;
    while (true)
    {
      return locala;
      locala = new com.jxphone.mosecurity.c.a();
      int i = paramCursor.getColumnIndex("id");
      if (i >= 0)
        locala.a(paramCursor.getInt(i));
      int j = paramCursor.getColumnIndex("NAME");
      if (j >= 0)
        locala.c(paramCursor.getString(j));
      int k = paramCursor.getColumnIndex("package_name");
      if (k >= 0)
        locala.a(paramCursor.getString(k));
      int m = paramCursor.getColumnIndex("app_id");
      if (m >= 0)
        locala.b(paramCursor.getString(m));
      int n = paramCursor.getColumnIndex("count");
      if (n >= 0)
        locala.a(paramCursor.getLong(n));
    }
  }

  public final List a()
  {
    return a("app_stat", "count DESC", new String[] { "id", "package_name", "NAME", "count", "app_id" });
  }

  public final void a(SQLiteDatabase paramSQLiteDatabase)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("CREATE TABLE app_stat").append("(").append("id INTEGER PRIMARY KEY,").append("package_name TEXT,").append("count INTEGER,").append("NAME TEXT,").append("app_id TEXT").append(")");
    paramSQLiteDatabase.execSQL(localStringBuilder.toString());
  }

  public final void a(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    if (paramInt1 < 111)
    {
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS app_stat");
      a(paramSQLiteDatabase);
    }
  }

  public final boolean a(int paramInt)
  {
    SQLiteDatabase localSQLiteDatabase = c();
    String[] arrayOfString = new String[1];
    arrayOfString[0] = (paramInt + "");
    if (localSQLiteDatabase.delete("app_stat", "id=?", arrayOfString) > 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean a(com.jxphone.mosecurity.c.a parama)
  {
    boolean bool;
    if (parama == null)
      bool = false;
    while (true)
    {
      return bool;
      if (parama.a() <= 0)
      {
        parama.a(1L);
        if (parama != null)
        {
          ContentValues localContentValues2 = new ContentValues();
          localContentValues2.put("package_name", parama.b());
          localContentValues2.put("count", Long.valueOf(parama.e()));
          localContentValues2.put("NAME", parama.d());
          localContentValues2.put("app_id", parama.c());
          if (c().insert("app_stat", null, localContentValues2) > -1L)
            bool = true;
        }
        else
        {
          bool = false;
        }
      }
      else
      {
        parama.a(1L + parama.e());
        if ((parama == null) || (parama.a() <= 0))
        {
          bool = false;
        }
        else
        {
          ContentValues localContentValues1 = new ContentValues();
          localContentValues1.put("NAME", parama.d());
          localContentValues1.put("count", Long.valueOf(parama.e()));
          localContentValues1.put("app_id", parama.c());
          SQLiteDatabase localSQLiteDatabase = c();
          String[] arrayOfString = new String[1];
          arrayOfString[0] = (parama.a() + "");
          if (localSQLiteDatabase.update("app_stat", localContentValues1, "id=?", arrayOfString) >= 0)
            bool = true;
          else
            bool = false;
        }
      }
    }
  }

  public final boolean a(String paramString)
  {
    SQLiteDatabase localSQLiteDatabase = c();
    String[] arrayOfString = new String[1];
    arrayOfString[0] = (paramString + "");
    if (localSQLiteDatabase.delete("app_stat", "package_name=?", arrayOfString) > 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final com.jxphone.mosecurity.c.a b(int paramInt)
  {
    SQLiteDatabase localSQLiteDatabase = c();
    String[] arrayOfString1 = { "id", "package_name", "NAME", "count", "app_id" };
    String[] arrayOfString2 = new String[1];
    arrayOfString2[0] = (paramInt + "");
    Cursor localCursor = localSQLiteDatabase.query("app_stat", arrayOfString1, "id=?", arrayOfString2, null, null, null);
    if (localCursor != null);
    try
    {
      localCursor.moveToFirst();
      com.jxphone.mosecurity.c.a locala = b(localCursor);
      if (localCursor != null)
        localCursor.close();
      return locala;
    }
    finally
    {
      localCursor.close();
    }
  }

  public final com.jxphone.mosecurity.c.a b(String paramString)
  {
    Object localObject1;
    if ((paramString == null) || (paramString.equals("")))
      localObject1 = null;
    while (true)
    {
      return localObject1;
      Cursor localCursor = c().query("app_stat", new String[] { "id", "package_name", "NAME", "count", "app_id" }, "package_name=?", new String[] { paramString }, null, null, null);
      if (localCursor != null);
      try
      {
        localCursor.moveToFirst();
        com.jxphone.mosecurity.c.a locala = b(localCursor);
        localCursor.close();
        localObject1 = locala;
      }
      finally
      {
        localCursor.close();
      }
    }
  }

  public final void b()
  {
    SQLiteDatabase localSQLiteDatabase = c();
    if (localSQLiteDatabase != null)
      localSQLiteDatabase.close();
  }

  public final boolean b(com.jxphone.mosecurity.c.a parama)
  {
    boolean bool;
    if (parama == null)
      bool = false;
    while (true)
    {
      return bool;
      if (parama.a() > 0)
      {
        int i = parama.a();
        SQLiteDatabase localSQLiteDatabase2 = c();
        String[] arrayOfString2 = new String[1];
        arrayOfString2[0] = (i + "");
        if (localSQLiteDatabase2.delete("app_stat", "id=?", arrayOfString2) > 0)
          bool = true;
        else
          bool = false;
      }
      else
      {
        String str = parama.b();
        SQLiteDatabase localSQLiteDatabase1 = c();
        String[] arrayOfString1 = new String[1];
        arrayOfString1[0] = (str + "");
        if (localSQLiteDatabase1.delete("app_stat", "package_name=?", arrayOfString1) > 0)
          bool = true;
        else
          bool = false;
      }
    }
  }

  public final boolean c(com.jxphone.mosecurity.c.a parama)
  {
    boolean bool;
    if (parama == null)
      bool = false;
    while (true)
    {
      return bool;
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("package_name", parama.b());
      localContentValues.put("count", Long.valueOf(parama.e()));
      localContentValues.put("NAME", parama.d());
      localContentValues.put("app_id", parama.c());
      if (c().insert("app_stat", null, localContentValues) > -1L)
        bool = true;
      else
        bool = false;
    }
  }

  public final boolean d(com.jxphone.mosecurity.c.a parama)
  {
    boolean bool;
    if ((parama == null) || (parama.a() <= 0))
      bool = false;
    while (true)
    {
      return bool;
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("NAME", parama.d());
      localContentValues.put("count", Long.valueOf(parama.e()));
      localContentValues.put("app_id", parama.c());
      SQLiteDatabase localSQLiteDatabase = c();
      String[] arrayOfString = new String[1];
      arrayOfString[0] = (parama.a() + "");
      if (localSQLiteDatabase.update("app_stat", localContentValues, "id=?", arrayOfString) >= 0)
        bool = true;
      else
        bool = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.b.a
 * JD-Core Version:    0.6.2
 */