package com.keniu.security.b;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.jxphone.mosecurity.b.a.a;
import com.jxphone.mosecurity.b.e;
import com.jxphone.mosecurity.c.c;
import com.jxphone.mosecurity.d.s;
import com.jxphone.mosecurity.d.t;
import com.jxphone.mosecurity.d.x;
import java.util.ArrayList;
import java.util.List;

final class m
  implements l
{
  static final t a = new n("sms");
  private static final String b = "sms";
  private SQLiteDatabase c;

  public m(Context paramContext)
  {
    this(paramContext, false);
  }

  public m(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean);
    for (String str = "mosecurity_dummy_comm.db"; ; str = "mosecurity_comm.db")
    {
      this.c = s.a(paramContext, str);
      return;
    }
  }

  private static com.jxphone.mosecurity.c.l[] a(Cursor paramCursor)
  {
    ArrayList localArrayList = new ArrayList(paramCursor.getCount());
    while (paramCursor.moveToNext())
    {
      com.jxphone.mosecurity.c.l locall = com.jxphone.mosecurity.c.l.a(paramCursor);
      if (locall.f() != 3)
        localArrayList.add(locall);
    }
    return (com.jxphone.mosecurity.c.l[])localArrayList.toArray(new com.jxphone.mosecurity.c.l[localArrayList.size()]);
  }

  private com.jxphone.mosecurity.c.l[] a(String paramString, String[] paramArrayOfString, boolean paramBoolean)
  {
    SQLiteDatabase localSQLiteDatabase = this.c;
    if (paramBoolean);
    Cursor localCursor;
    ArrayList localArrayList;
    for (String str = "date desc"; ; str = "date")
    {
      localCursor = localSQLiteDatabase.query("sms", null, paramString, paramArrayOfString, null, null, str);
      try
      {
        localArrayList = new ArrayList(localCursor.getCount());
        while (localCursor.moveToNext())
        {
          com.jxphone.mosecurity.c.l locall = com.jxphone.mosecurity.c.l.a(localCursor);
          if (locall.f() != 3)
            localArrayList.add(locall);
        }
      }
      finally
      {
        localCursor.close();
      }
    }
    com.jxphone.mosecurity.c.l[] arrayOfl = (com.jxphone.mosecurity.c.l[])localArrayList.toArray(new com.jxphone.mosecurity.c.l[localArrayList.size()]);
    localCursor.close();
    return arrayOfl;
  }

  private static ContentValues c(com.jxphone.mosecurity.c.l paraml)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("address", paraml.b());
    localContentValues.put("body", paraml.c());
    localContentValues.put("date", Long.valueOf(paraml.d()));
    localContentValues.put("status", Integer.valueOf(paraml.g()));
    localContentValues.put("type", Integer.valueOf(paraml.f()));
    localContentValues.put("list_type", Integer.valueOf(paraml.e().ordinal()));
    return localContentValues;
  }

  public final int a(String paramString)
  {
    return this.c.delete("sms", "address like '%" + paramString + "'", null);
  }

  public final long a(com.jxphone.mosecurity.c.l paraml)
  {
    return this.c.insert("sms", null, c(paraml));
  }

  public final com.jxphone.mosecurity.c.l a()
  {
    SQLiteDatabase localSQLiteDatabase = this.c;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = Integer.toString(3);
    Cursor localCursor = localSQLiteDatabase.query("sms", null, "type=?", arrayOfString, null, null, null);
    try
    {
      if (localCursor.moveToNext())
      {
        com.jxphone.mosecurity.c.l locall2 = com.jxphone.mosecurity.c.l.a(localCursor);
        locall1 = locall2;
        return locall1;
      }
      com.jxphone.mosecurity.c.l locall1 = null;
    }
    finally
    {
      localCursor.close();
    }
  }

  public final com.jxphone.mosecurity.c.l a(int paramInt)
  {
    SQLiteDatabase localSQLiteDatabase = this.c;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = Integer.toString(paramInt);
    Cursor localCursor = localSQLiteDatabase.query("sms", null, "id=?", arrayOfString, null, null, null);
    try
    {
      if (localCursor.moveToFirst())
      {
        com.jxphone.mosecurity.c.l locall2 = com.jxphone.mosecurity.c.l.a(localCursor);
        locall1 = locall2;
        return locall1;
      }
      com.jxphone.mosecurity.c.l locall1 = null;
    }
    finally
    {
      localCursor.close();
    }
  }

  public final boolean a(int paramInt1, int paramInt2)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("status", Integer.valueOf(paramInt2));
    SQLiteDatabase localSQLiteDatabase = this.c;
    String[] arrayOfString = new String[2];
    arrayOfString[0] = Integer.toString(paramInt1);
    arrayOfString[1] = Integer.toString(paramInt2);
    if (localSQLiteDatabase.update("sms", localContentValues, "id=? and status<>?", arrayOfString) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean a(int paramInt, c paramc)
  {
    SQLiteDatabase localSQLiteDatabase = this.c;
    String[] arrayOfString = new String[2];
    arrayOfString[0] = Integer.toString(paramInt);
    arrayOfString[1] = Integer.toString(paramc.ordinal());
    Cursor localCursor = localSQLiteDatabase.query("sms", null, "id=? and list_type=?", arrayOfString, null, null, null);
    try
    {
      int i = localCursor.getCount();
      if (i > 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
      localCursor.close();
    }
  }

  public final boolean a(com.jxphone.mosecurity.c.l paraml, c paramc)
  {
    SQLiteDatabase localSQLiteDatabase = this.c;
    String[] arrayOfString = new String[3];
    arrayOfString[0] = paraml.b();
    arrayOfString[1] = String.valueOf(paraml.d());
    arrayOfString[2] = String.valueOf(paramc.ordinal());
    Cursor localCursor = localSQLiteDatabase.query("sms", null, "address=? and date=? and list_type =?", arrayOfString, null, null, null);
    try
    {
      int i = localCursor.getCount();
      if (i > 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
      localCursor.close();
    }
  }

  public final com.jxphone.mosecurity.c.l[] a(c paramc)
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = Integer.toString(paramc.ordinal());
    return a("list_type=?", arrayOfString, true);
  }

  public final com.jxphone.mosecurity.c.l[] a(String paramString, c paramc)
  {
    return a(paramString, paramc, true);
  }

  public final com.jxphone.mosecurity.c.l[] a(String paramString, c paramc, boolean paramBoolean)
  {
    String[] arrayOfString = new String[3];
    arrayOfString[0] = paramString;
    arrayOfString[1] = Integer.toString(paramc.ordinal());
    arrayOfString[2] = Integer.toString(3);
    return a("address=? and list_type=? and type<>?", arrayOfString, paramBoolean);
  }

  public final com.jxphone.mosecurity.c.l[] a(c[] paramArrayOfc)
  {
    return a(x.a(paramArrayOfc), null, true);
  }

  public final int b(c[] paramArrayOfc)
  {
    return this.c.delete("sms", x.a(paramArrayOfc), null);
  }

  public final a b(String paramString)
  {
    return new e(this.c.query("sms", null, "address like '%" + paramString + "' and TYPE<>" + 3, null, null, null, null));
  }

  public final boolean b(int paramInt)
  {
    SQLiteDatabase localSQLiteDatabase = this.c;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = Integer.toString(paramInt);
    if (localSQLiteDatabase.delete("sms", "id=?", arrayOfString) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean b(com.jxphone.mosecurity.c.l paraml)
  {
    SQLiteDatabase localSQLiteDatabase = this.c;
    ContentValues localContentValues = c(paraml);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = Integer.toString(paraml.a());
    if (localSQLiteDatabase.update("sms", localContentValues, "id=?", arrayOfString) > 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final com.jxphone.mosecurity.c.l[] b(String paramString, c paramc)
  {
    return a("address like '%" + paramString + "' and " + "list_type" + "=" + paramc.ordinal() + " and " + "type" + "<>" + 3, null, false);
  }

  public final int c(String paramString, c paramc)
  {
    SQLiteDatabase localSQLiteDatabase = this.c;
    String[] arrayOfString = new String[2];
    arrayOfString[0] = paramString;
    arrayOfString[1] = Integer.toString(paramc.ordinal());
    return localSQLiteDatabase.delete("sms", "address=? and list_type=?", arrayOfString);
  }

  public final int d(String paramString, c paramc)
  {
    return this.c.delete("sms", "address like '%" + paramString + "' and " + "list_type" + "=" + paramc.ordinal(), null);
  }

  public final int e(String paramString, c paramc)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("list_type", Integer.valueOf(paramc.ordinal()));
    return this.c.update("sms", localContentValues, "address like '%" + paramString + "'", null);
  }

  public final int f(String paramString, c paramc)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("list_type", Integer.valueOf(paramc.ordinal()));
    return this.c.update("sms", localContentValues, "address=?", new String[] { paramString });
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.b.m
 * JD-Core Version:    0.6.2
 */