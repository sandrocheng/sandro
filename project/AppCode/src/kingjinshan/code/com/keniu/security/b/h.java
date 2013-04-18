package com.keniu.security.b;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.jxphone.mosecurity.b.a.a;
import com.jxphone.mosecurity.b.d;
import com.jxphone.mosecurity.c.c;
import com.jxphone.mosecurity.c.j;
import com.jxphone.mosecurity.d.s;
import com.jxphone.mosecurity.d.t;
import com.jxphone.mosecurity.d.x;

final class h
  implements g
{
  static final t a = new i("phone_call");
  private static final String b = "phone_call";
  private static final String c = "date";
  private static final String d = "ring_duration";
  private static final String e = "talk_duration";
  private static final String f = "phone_number";
  private final SQLiteDatabase g;

  public h(Context paramContext)
  {
    this(paramContext, false);
  }

  public h(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean);
    for (String str = "mosecurity_dummy_comm.db"; ; str = "mosecurity_comm.db")
    {
      this.g = s.a(paramContext, str);
      return;
    }
  }

  private static j[] a(Cursor paramCursor)
  {
    j[] arrayOfj = new j[paramCursor.getCount()];
    while (paramCursor.moveToNext())
      arrayOfj[paramCursor.getPosition()] = j.b(paramCursor);
    return arrayOfj;
  }

  private static ContentValues c(j paramj)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("phone_number", paramj.d());
    localContentValues.put("date", Long.valueOf(paramj.c()));
    localContentValues.put("type", Integer.valueOf(paramj.f()));
    localContentValues.put("list_type", Integer.valueOf(paramj.g().ordinal()));
    localContentValues.put("ring_duration", Long.valueOf(paramj.h()));
    localContentValues.put("talk_duration", Long.valueOf(paramj.i()));
    return localContentValues;
  }

  private j[] g(String paramString, c paramc)
  {
    Cursor localCursor = this.g.rawQuery("select * from phone_call where list_type=" + paramc.ordinal() + " order by " + "date" + " desc limit " + paramString, null);
    try
    {
      j[] arrayOfj = a(localCursor);
      return arrayOfj;
    }
    finally
    {
      localCursor.close();
    }
  }

  public final long a(j paramj)
  {
    return this.g.insert("phone_call", null, c(paramj));
  }

  public final j a(int paramInt)
  {
    SQLiteDatabase localSQLiteDatabase = this.g;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = Integer.toString(paramInt);
    Cursor localCursor = localSQLiteDatabase.query("phone_call", null, "id=?", arrayOfString, null, null, "date desc");
    try
    {
      if (localCursor.moveToFirst())
      {
        j localj2 = j.b(localCursor);
        localj1 = localj2;
        return localj1;
      }
      j localj1 = null;
    }
    finally
    {
      localCursor.close();
    }
  }

  public final boolean a(int paramInt, c paramc)
  {
    SQLiteDatabase localSQLiteDatabase = this.g;
    String[] arrayOfString = new String[2];
    arrayOfString[0] = Integer.toString(paramInt);
    arrayOfString[1] = Integer.toString(paramc.ordinal());
    Cursor localCursor = localSQLiteDatabase.query("phone_call", null, "id=? and list_type=?", arrayOfString, null, null, null);
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

  public final j[] a(int paramInt1, int paramInt2, c paramc)
  {
    return g(paramInt1 + "," + paramInt2, paramc);
  }

  public final j[] a(c paramc)
  {
    return g("0,2147483647", paramc);
  }

  public final j[] a(String paramString)
  {
    Cursor localCursor = this.g.query("phone_call", null, "phone_number=?", new String[] { paramString }, null, null, "date desc");
    try
    {
      int i = localCursor.getCount();
      j[] arrayOfj1 = new j[i];
      if (i == 0)
        localCursor.close();
      for (j[] arrayOfj2 = arrayOfj1; ; arrayOfj2 = arrayOfj1)
      {
        return arrayOfj2;
        int k;
        for (int j = 0; localCursor.moveToNext(); j = k)
        {
          k = j + 1;
          arrayOfj1[j] = j.b(localCursor);
        }
        localCursor.close();
      }
    }
    finally
    {
      localCursor.close();
    }
  }

  public final j[] a(String paramString, c paramc)
  {
    SQLiteDatabase localSQLiteDatabase = this.g;
    String[] arrayOfString = new String[2];
    arrayOfString[0] = paramString;
    arrayOfString[1] = Integer.toString(paramc.ordinal());
    Cursor localCursor = localSQLiteDatabase.query("phone_call", null, "phone_number=? and list_type=?", arrayOfString, null, null, "date desc");
    try
    {
      j[] arrayOfj = a(localCursor);
      return arrayOfj;
    }
    finally
    {
      localCursor.close();
    }
  }

  public final j[] a(c[] paramArrayOfc)
  {
    Cursor localCursor = this.g.query("phone_call", null, x.a(paramArrayOfc), null, null, null, "date desc");
    try
    {
      j[] arrayOfj = a(localCursor);
      return arrayOfj;
    }
    finally
    {
      localCursor.close();
    }
  }

  public final int b(int paramInt)
  {
    SQLiteDatabase localSQLiteDatabase = this.g;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = Integer.toString(paramInt);
    return localSQLiteDatabase.delete("phone_call", "id=?", arrayOfString);
  }

  public final int b(String paramString)
  {
    return this.g.delete("phone_call", "phone_number like '%" + paramString + "'", null);
  }

  public final int b(c[] paramArrayOfc)
  {
    return this.g.delete("phone_call", x.a(paramArrayOfc), null);
  }

  public final boolean b(j paramj)
  {
    SQLiteDatabase localSQLiteDatabase = this.g;
    ContentValues localContentValues = c(paramj);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = Integer.toString(paramj.a());
    if (localSQLiteDatabase.update("phone_call", localContentValues, "id=?", arrayOfString) > 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final j[] b(String paramString, c paramc)
  {
    Cursor localCursor = this.g.query("phone_call", null, "phone_number like '%" + paramString + "' and " + "list_type" + "=" + paramc.ordinal(), null, null, null, "date desc");
    try
    {
      j[] arrayOfj = a(localCursor);
      return arrayOfj;
    }
    finally
    {
      localCursor.close();
    }
  }

  public final int c(String paramString, c paramc)
  {
    SQLiteDatabase localSQLiteDatabase = this.g;
    String[] arrayOfString = new String[2];
    arrayOfString[0] = paramString;
    arrayOfString[1] = Integer.toString(paramc.ordinal());
    return localSQLiteDatabase.delete("phone_call", "phone_number=? and list_type=?", arrayOfString);
  }

  public final a c(String paramString)
  {
    int i = paramString.length();
    if (i > 11);
    for (String str = paramString.substring(i - 11, i); ; str = paramString)
      return new d(this.g.query("phone_call", null, "phone_number like '%" + str + "'", null, null, null, null));
  }

  public final int d(String paramString, c paramc)
  {
    return this.g.delete("phone_call", "phone_number like '%" + paramString + "' and " + "list_type" + "=" + paramc.ordinal(), null);
  }

  public final int e(String paramString, c paramc)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("list_type", Integer.valueOf(paramc.ordinal()));
    return this.g.update("phone_call", localContentValues, "phone_number like '%" + paramString + "'", null);
  }

  public final int f(String paramString, c paramc)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("list_type", Integer.valueOf(paramc.ordinal()));
    return this.g.update("phone_call", localContentValues, "phone_number=?", new String[] { paramString });
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.b.h
 * JD-Core Version:    0.6.2
 */