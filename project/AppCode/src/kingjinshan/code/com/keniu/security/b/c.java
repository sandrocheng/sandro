package com.keniu.security.b;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import com.jxphone.mosecurity.d.s;
import com.jxphone.mosecurity.d.t;
import com.keniu.security.e;
import java.io.ByteArrayOutputStream;

final class c
  implements b
{
  static final t a = new d("contact");
  private static final String b = "contact";
  private static final String c = "id";
  private static final String d = "name";
  private static final String e = "phone_number";
  private static final String f = "create_date";
  private static final String g = "activity_date";
  private static final String h = "photo";
  private SQLiteDatabase i;

  public c(Context paramContext)
  {
    this(paramContext, false);
  }

  public c(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean);
    for (String str = "mosecurity_dummy_comm.db"; ; str = "mosecurity_comm.db")
    {
      this.i = s.a(paramContext, str);
      return;
    }
  }

  private static com.jxphone.mosecurity.c.b a(Cursor paramCursor)
  {
    com.jxphone.mosecurity.c.b localb = b(paramCursor);
    byte[] arrayOfByte = paramCursor.getBlob(6);
    if (arrayOfByte != null)
      localb.a(BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length));
    return localb;
  }

  private static com.jxphone.mosecurity.c.b a(Cursor paramCursor, boolean paramBoolean)
  {
    try
    {
      Object localObject2;
      if (paramCursor.moveToFirst())
        if (paramBoolean)
        {
          com.jxphone.mosecurity.c.b localb2 = a(paramCursor);
          localObject2 = localb2;
        }
      while (true)
      {
        return localObject2;
        com.jxphone.mosecurity.c.b localb1 = b(paramCursor);
        localObject2 = localb1;
        continue;
        paramCursor.close();
        localObject2 = null;
      }
    }
    finally
    {
      paramCursor.close();
    }
  }

  private static com.jxphone.mosecurity.c.b b(Cursor paramCursor)
  {
    com.jxphone.mosecurity.c.b localb = new com.jxphone.mosecurity.c.b();
    localb.a(paramCursor.getInt(0));
    localb.a(paramCursor.getString(1));
    localb.b(paramCursor.getString(2));
    localb.a(com.jxphone.mosecurity.c.c.values()[paramCursor.getInt(3)]);
    localb.a(paramCursor.getLong(4));
    localb.b(paramCursor.getLong(5));
    return localb;
  }

  public final long a(com.jxphone.mosecurity.c.b paramb)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("name", paramb.b());
    localContentValues.put("phone_number", paramb.c());
    localContentValues.put("list_type", Integer.valueOf(paramb.e().ordinal()));
    localContentValues.put("create_date", Long.valueOf(paramb.f()));
    localContentValues.put("activity_date", Long.valueOf(paramb.f()));
    Bitmap localBitmap = paramb.g();
    if (localBitmap != null)
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      localBitmap.compress(Bitmap.CompressFormat.PNG, 100, localByteArrayOutputStream);
      localContentValues.put("photo", localByteArrayOutputStream.toByteArray());
    }
    return this.i.insert("contact", null, localContentValues);
  }

  public final com.jxphone.mosecurity.c.b a(int paramInt)
  {
    SQLiteDatabase localSQLiteDatabase = this.i;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = Integer.toString(paramInt);
    Cursor localCursor = localSQLiteDatabase.query("contact", null, "id=?", arrayOfString, null, null, null);
    try
    {
      if (localCursor.moveToFirst())
      {
        com.jxphone.mosecurity.c.b localb2 = a(localCursor);
        localb1 = localb2;
        return localb1;
      }
      com.jxphone.mosecurity.c.b localb1 = null;
    }
    finally
    {
      localCursor.close();
    }
  }

  public final com.jxphone.mosecurity.c.b a(String paramString, boolean paramBoolean)
  {
    return a(this.i.query("contact", null, "phone_number=?", new String[] { paramString }, null, null, null), paramBoolean);
  }

  public final com.jxphone.mosecurity.c.b[] a(com.jxphone.mosecurity.c.c paramc)
  {
    SQLiteDatabase localSQLiteDatabase = this.i;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = Integer.toString(paramc.ordinal());
    String str;
    Cursor localCursor;
    if (e.b())
    {
      str = null;
      localCursor = localSQLiteDatabase.query("contact", null, "list_type=?", arrayOfString, null, null, str);
    }
    while (true)
    {
      com.jxphone.mosecurity.c.b[] arrayOfb2;
      try
      {
        if (localCursor.getCount() == 0)
        {
          com.jxphone.mosecurity.c.b[] arrayOfb1 = new com.jxphone.mosecurity.c.b[0];
          localCursor.close();
          localObject2 = arrayOfb1;
          return localObject2;
          str = "name";
          break;
        }
        arrayOfb2 = new com.jxphone.mosecurity.c.b[localCursor.getCount()];
        if (localCursor.moveToNext())
        {
          arrayOfb2[localCursor.getPosition()] = a(localCursor);
          continue;
        }
      }
      finally
      {
        localCursor.close();
      }
      localCursor.close();
      Object localObject2 = arrayOfb2;
    }
  }

  public final int b(com.jxphone.mosecurity.c.c paramc)
  {
    SQLiteDatabase localSQLiteDatabase = this.i;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = Integer.toString(paramc.ordinal());
    return localSQLiteDatabase.delete("contact", "list_type=?", arrayOfString);
  }

  public final com.jxphone.mosecurity.c.b b(String paramString, boolean paramBoolean)
  {
    return a(this.i.query("contact", null, "phone_number like '%" + paramString + "'", null, null, null, null), paramBoolean);
  }

  public final boolean b(int paramInt)
  {
    SQLiteDatabase localSQLiteDatabase = this.i;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = Integer.toString(paramInt);
    if (localSQLiteDatabase.delete("contact", "id=?", arrayOfString) > 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean b(com.jxphone.mosecurity.c.b paramb)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("name", paramb.b());
    localContentValues.put("phone_number", paramb.c());
    localContentValues.put("list_type", Integer.valueOf(paramb.e().ordinal()));
    localContentValues.put("activity_date", Long.valueOf(paramb.h()));
    SQLiteDatabase localSQLiteDatabase = this.i;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = Integer.toString(paramb.a());
    if (localSQLiteDatabase.update("contact", localContentValues, "id=?", arrayOfString) > 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.b.c
 * JD-Core Version:    0.6.2
 */