package com.ijinshan.kinghelper.firewall;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public final class dq
{
  public static String a = "srvsms.db";
  public static String b = "usertype";
  public static String c = "id";
  public static String d = "name";
  public static String e = "desc";
  public static int f = 201;
  public static String g = "create table if not exists usertype( id INTEGER, name VARCHAR(500),desc VARCHAR(500) )";
  public static String h = "create table if not exists usernumber( number VARCHAR(500), typeid INTEGER )";
  public static String i = "usernumber";
  public static String j = "number";
  public static String k = "typeid";
  public static String l = "create table if not exists deletedtype( id INTEGER, del INTEGER)";
  public static String m = "deletedtype";
  public static String n = "id";
  public static String o = "del";
  private Context p = null;
  private SQLiteDatabase q = null;

  public dq(Context paramContext)
  {
    this.p = paramContext;
    this.q = SQLiteDatabase.openOrCreateDatabase(new File(this.p.getFilesDir().getAbsolutePath(), a).getPath(), null);
    this.q.execSQL(g);
    this.q.execSQL(h);
    this.q.execSQL(l);
    Cursor localCursor = this.q.query(b, null, null, null, null, null, null);
    if (localCursor != null)
    {
      if (localCursor.getCount() == 0)
      {
        ContentValues localContentValues = new ContentValues();
        String str1 = this.p.getString(2131427814);
        String str2 = this.p.getString(2131427815);
        localContentValues.put(c, Integer.valueOf(f));
        localContentValues.put(d, str1);
        localContentValues.put(e, str2);
        this.q.insert(b, null, localContentValues);
      }
      localCursor.close();
    }
  }

  private void a(Context paramContext)
  {
    this.p = paramContext;
    this.q = SQLiteDatabase.openOrCreateDatabase(new File(this.p.getFilesDir().getAbsolutePath(), a).getPath(), null);
    this.q.execSQL(g);
    this.q.execSQL(h);
    this.q.execSQL(l);
    Cursor localCursor = this.q.query(b, null, null, null, null, null, null);
    if (localCursor != null)
    {
      if (localCursor.getCount() == 0)
      {
        ContentValues localContentValues = new ContentValues();
        String str1 = this.p.getString(2131427814);
        String str2 = this.p.getString(2131427815);
        localContentValues.put(c, Integer.valueOf(f));
        localContentValues.put(d, str1);
        localContentValues.put(e, str2);
        this.q.insert(b, null, localContentValues);
      }
      localCursor.close();
    }
  }

  private void b(String paramString)
  {
    this.q.delete(i, j + "=" + paramString, null);
  }

  private void c()
  {
    Cursor localCursor = this.q.query(b, null, null, null, null, null, null);
    if (localCursor != null)
    {
      if (localCursor.getCount() == 0)
      {
        ContentValues localContentValues = new ContentValues();
        String str1 = this.p.getString(2131427814);
        String str2 = this.p.getString(2131427815);
        localContentValues.put(c, Integer.valueOf(f));
        localContentValues.put(d, str1);
        localContentValues.put(e, str2);
        this.q.insert(b, null, localContentValues);
      }
      localCursor.close();
    }
  }

  private int d()
  {
    String str = "select max(" + c + ") as " + c + " from " + b;
    int i1 = f;
    Cursor localCursor = this.q.rawQuery(str, null);
    if (localCursor != null)
    {
      if (localCursor.getCount() > 0)
      {
        localCursor.moveToFirst();
        i1 = 1 + localCursor.getInt(localCursor.getColumnIndex(c));
      }
      localCursor.close();
    }
    return i1;
  }

  private boolean d(int paramInt)
  {
    String str = "select * from " + b + " where " + c + " = " + paramInt;
    Cursor localCursor = this.q.rawQuery(str, null);
    boolean bool2;
    if (localCursor != null)
      if (localCursor.getCount() > 0)
      {
        bool2 = true;
        localCursor.close();
      }
    for (boolean bool1 = bool2; ; bool1 = false)
    {
      return bool1;
      bool2 = false;
      break;
    }
  }

  public final int a(String paramString)
  {
    String[] arrayOfString = { paramString };
    Cursor localCursor1 = this.q.query(i, null, j + " = ?", arrayOfString, null, null, null);
    int i3;
    int i2;
    if ((localCursor1 != null) && (localCursor1.moveToFirst()))
    {
      i1 = localCursor1.getInt(localCursor1.getColumnIndex(k));
      if (i1 >= f)
      {
        String str = "select * from " + b + " where " + c + " = " + i1;
        Cursor localCursor2 = this.q.rawQuery(str, null);
        if (localCursor2 == null)
          break label208;
        if (localCursor2.getCount() <= 0)
          break label202;
        i3 = 1;
        localCursor2.close();
        i2 = i3;
        label169: if (i2 == 0)
          i1 = 0;
      }
      if (!b(i1));
    }
    for (int i1 = -1; ; i1 = 0)
    {
      if (localCursor1 != null)
        localCursor1.close();
      return i1;
      label202: i3 = 0;
      break;
      label208: i2 = 0;
      break label169;
    }
  }

  public final int a(String paramString1, String paramString2)
  {
    String str = "select max(" + c + ") as " + c + " from " + b;
    int i1 = f;
    Cursor localCursor = this.q.rawQuery(str, null);
    if (localCursor != null)
    {
      if (localCursor.getCount() > 0)
      {
        localCursor.moveToFirst();
        i1 = 1 + localCursor.getInt(localCursor.getColumnIndex(c));
      }
      localCursor.close();
    }
    int i2 = i1;
    ContentValues localContentValues = new ContentValues();
    localContentValues.put(c, Integer.valueOf(i2));
    localContentValues.put(d, paramString1);
    localContentValues.put(e, paramString2);
    if (-1L == this.q.insert(b, null, localContentValues))
      i2 = 0;
    return i2;
  }

  public final void a()
  {
    this.q.delete(b, null, null);
    this.q.delete(m, null, null);
    this.q.delete(i, null, null);
  }

  public final void a(int paramInt)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put(n, Integer.valueOf(paramInt));
    localContentValues.put(o, Integer.valueOf(paramInt));
    this.q.insert(m, null, localContentValues);
  }

  public final void a(String paramString, int paramInt)
  {
    this.q.delete(i, j + "=" + paramString, null);
    ContentValues localContentValues = new ContentValues();
    localContentValues.put(j, paramString);
    localContentValues.put(k, Integer.valueOf(paramInt));
    this.q.insert(i, null, localContentValues);
  }

  public final List b()
  {
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor = this.q.query(b, null, null, null, null, null, null);
    if (localCursor != null)
    {
      if (localCursor.moveToFirst())
        do
        {
          dr localdr = new dr(this);
          localdr.b = localCursor.getInt(localCursor.getColumnIndex(c));
          localdr.a = localCursor.getString(localCursor.getColumnIndex(d));
          localdr.c = localCursor.getString(localCursor.getColumnIndex(e));
          localArrayList.add(localdr);
        }
        while (localCursor.moveToNext());
      localCursor.close();
    }
    return localArrayList;
  }

  public final boolean b(int paramInt)
  {
    String str = "select * from " + m + " where " + n + " = " + paramInt;
    Cursor localCursor = this.q.rawQuery(str, null);
    boolean bool2;
    if (localCursor != null)
      if (localCursor.getCount() > 0)
      {
        bool2 = true;
        localCursor.close();
      }
    for (boolean bool1 = bool2; ; bool1 = false)
    {
      return bool1;
      bool2 = false;
      break;
    }
  }

  public final void c(int paramInt)
  {
    this.q.delete(b, c + "=" + paramInt, null);
    this.q.delete(i, k + "=" + paramInt, null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.dq
 * JD-Core Version:    0.6.2
 */