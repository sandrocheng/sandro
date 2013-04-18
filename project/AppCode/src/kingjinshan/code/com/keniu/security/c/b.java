package com.keniu.security.c;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.keniu.security.d.d;
import com.keniu.security.f.ab;

public final class b extends com.jxphone.mosecurity.b.b
  implements a
{
  private static final String a = "_id";
  private static final String b = "md5";
  private static final String c = "type";
  private static final String d = "name";
  private static final String e = "desc";
  private static final String f = "datable";
  private SQLiteDatabase g;

  public b(Context paramContext, boolean paramBoolean)
  {
    super(paramContext);
    ab localab = ab.a();
    if (paramBoolean);
    for (String str = localab.b("antivirus_lw.db"); ; str = localab.b("antivirus.db"))
    {
      this.g = SQLiteDatabase.openDatabase(str, null, 16);
      return;
    }
  }

  private static d b(Cursor paramCursor)
  {
    d locald;
    if ((paramCursor == null) || (paramCursor.getCount() <= 0))
      locald = null;
    while (true)
    {
      return locald;
      locald = new d();
      int i = paramCursor.getColumnIndex("_id");
      if (i >= 0)
        locald.p = paramCursor.getInt(i);
      int j = paramCursor.getColumnIndex("md5");
      if (j >= 0)
        locald.q = paramCursor.getString(j);
      int k = paramCursor.getColumnIndex("type");
      if (k >= 0)
        locald.s = paramCursor.getInt(k);
      int m = paramCursor.getColumnIndex("name");
      if (m >= 0)
        locald.t = paramCursor.getString(m);
      int n = paramCursor.getColumnIndex("desc");
      if (n >= 0)
        locald.u = paramCursor.getString(n);
    }
  }

  public final d a(String paramString)
  {
    Object localObject1;
    if ((paramString == null) || (paramString.equals("")))
      localObject1 = null;
    while (true)
    {
      return localObject1;
      try
      {
        SQLiteDatabase localSQLiteDatabase = this.g;
        String[] arrayOfString1 = { "_id", "md5", "type", "name", "desc" };
        String[] arrayOfString2 = new String[1];
        arrayOfString2[0] = (paramString + "");
        Cursor localCursor2 = localSQLiteDatabase.query("datable", arrayOfString1, "md5=?", arrayOfString2, null, null, "_id DESC");
        localCursor1 = localCursor2;
        if (localCursor1 == null);
      }
      catch (Exception localException)
      {
        try
        {
          localCursor1.moveToFirst();
          d locald = b(localCursor1);
          localCursor1.close();
          localObject1 = locald;
          continue;
          localException = localException;
          localException.printStackTrace();
          localCursor1 = null;
        }
        finally
        {
          Cursor localCursor1;
          localCursor1.close();
        }
      }
    }
  }

  public final void a()
  {
    if (this.g != null)
    {
      this.g.close();
      this.g = null;
    }
  }

  public final void a(SQLiteDatabase paramSQLiteDatabase)
  {
  }

  public final void a(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
  }

  public final void a(d paramd)
  {
    if ((paramd == null) || (paramd.q == null));
    while (true)
    {
      return;
      SQLiteDatabase localSQLiteDatabase = this.g;
      localSQLiteDatabase.beginTransaction();
      try
      {
        ContentValues localContentValues = new ContentValues();
        localContentValues.put("type", Integer.valueOf(paramd.s));
        String str1;
        if (paramd.t == null)
        {
          str1 = "";
          label53: localContentValues.put("name", str1);
          if (paramd.u != null)
            break label158;
        }
        label158: for (String str2 = ""; ; str2 = paramd.u)
        {
          localContentValues.put("desc", str2);
          if (localSQLiteDatabase.update("datable", localContentValues, "md5 = '" + paramd.q + "'", null) == 0)
          {
            localContentValues.put("md5", paramd.q);
            localSQLiteDatabase.insertOrThrow("datable", "name", localContentValues);
          }
          localSQLiteDatabase.setTransactionSuccessful();
          localSQLiteDatabase.endTransaction();
          break;
          str1 = paramd.t;
          break label53;
        }
      }
      finally
      {
        localSQLiteDatabase.endTransaction();
      }
    }
  }

  public final SQLiteDatabase c()
  {
    return this.g;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.c.b
 * JD-Core Version:    0.6.2
 */