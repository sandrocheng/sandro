package com.keniu.security.b;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.provider.Contacts.People;
import android.provider.Contacts.Phones;
import com.jxphone.mosecurity.c.b;
import com.jxphone.mosecurity.c.c;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

class s
  implements r
{
  protected ContentResolver a;

  public s(Context paramContext)
  {
    this.a = paramContext.getContentResolver();
  }

  private static b a(ContentResolver paramContentResolver, Cursor paramCursor, int paramInt1, int paramInt2, int paramInt3)
  {
    b localb = a(paramCursor, paramInt1, paramInt2, paramInt3);
    Cursor localCursor = paramContentResolver.query(Uri.withAppendedPath(ContentUris.withAppendedId(Contacts.People.CONTENT_URI, paramCursor.getInt(paramInt3)), "photo"), null, null, null, null);
    if (localCursor != null);
    try
    {
      if (localCursor.moveToFirst())
      {
        byte[] arrayOfByte = localCursor.getBlob(localCursor.getColumnIndex("data"));
        if (arrayOfByte != null)
          localb.a(BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length));
      }
      return localb;
    }
    finally
    {
      localCursor.close();
    }
  }

  private static b a(Cursor paramCursor, int paramInt1, int paramInt2, int paramInt3)
  {
    b localb = new b();
    localb.a(paramCursor.getString(paramInt1));
    localb.b(paramCursor.getString(paramInt2));
    localb.a(paramCursor.getInt(paramInt3));
    localb.a(c.f);
    return localb;
  }

  public b a(String paramString)
  {
    return a(paramString, true);
  }

  public b a(String paramString, boolean paramBoolean)
  {
    Cursor localCursor = this.a.query(Contacts.Phones.CONTENT_URI, new String[] { "display_name", "number", "person" }, "number like '%" + paramString + "'", null, null);
    while (true)
    {
      try
      {
        if (localCursor.moveToFirst())
        {
          int i = localCursor.getColumnIndex("display_name");
          int j = localCursor.getColumnIndex("number");
          int k = localCursor.getColumnIndex("person");
          if (paramBoolean)
          {
            b localb2 = a(this.a, localCursor, i, j, k);
            localObject2 = localb2;
            return localObject2;
          }
          b localb1 = a(localCursor, i, j, k);
          localObject2 = localb1;
          continue;
        }
      }
      finally
      {
        localCursor.close();
      }
      Object localObject2 = null;
    }
  }

  public List a()
  {
    Cursor localCursor = this.a.query(Contacts.Phones.CONTENT_URI, null, null, null, "display_name COLLATE LOCALIZED asc");
    try
    {
      ArrayList localArrayList = new ArrayList(localCursor.getCount());
      HashSet localHashSet = new HashSet(localCursor.getCount());
      if (localCursor.moveToNext())
      {
        int i = localCursor.getColumnIndex("display_name");
        int j = localCursor.getColumnIndex("number");
        int k = localCursor.getColumnIndex("person");
        boolean bool;
        do
        {
          String str = localCursor.getString(j);
          if (!localHashSet.contains(str))
          {
            localHashSet.add(str);
            localArrayList.add(a(this.a, localCursor, i, j, k));
          }
          bool = localCursor.moveToNext();
        }
        while (bool);
      }
      return localArrayList;
    }
    finally
    {
      localCursor.close();
    }
  }

  public final boolean a(String paramString1, String paramString2)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("name", paramString1);
    Uri localUri1 = this.a.insert(Contacts.People.CONTENT_URI, localContentValues);
    localContentValues.clear();
    Uri localUri2 = Uri.withAppendedPath(localUri1, "phones");
    localContentValues.put("type", Integer.valueOf(2));
    localContentValues.put("number", paramString2);
    this.a.insert(localUri2, localContentValues);
    return true;
  }

  public boolean b(String paramString)
  {
    Cursor localCursor = this.a.query(Contacts.Phones.CONTENT_URI, null, "number like '%" + paramString + "'", null, null);
    try
    {
      boolean bool = localCursor.moveToFirst();
      return bool;
    }
    finally
    {
      localCursor.close();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.b.s
 * JD-Core Version:    0.6.2
 */