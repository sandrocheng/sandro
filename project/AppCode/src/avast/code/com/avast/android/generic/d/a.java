package com.avast.android.generic.d;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import com.avast.android.generic.util.x;

public class a
  implements e, f
{
  protected Uri a;
  private Cursor b;
  private x c;

  public a(x paramx, Cursor paramCursor, Uri paramUri)
  {
    this.c = paramx;
    this.b = paramCursor;
    this.a = paramUri;
  }

  public int a(String paramString)
  {
    return b(paramString, 0);
  }

  public Cursor a(Cursor paramCursor)
  {
    Cursor localCursor;
    if (this.b == paramCursor)
      localCursor = null;
    while (true)
    {
      return localCursor;
      localCursor = this.b;
      this.b = paramCursor;
    }
  }

  public Uri a()
  {
    return this.a;
  }

  public boolean a(String paramString, int paramInt)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put(paramString, Integer.valueOf(paramInt));
    this.c.a(this.a, localContentValues);
    return true;
  }

  public boolean a(String paramString1, String paramString2)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put(paramString1, paramString2);
    this.c.a(this.a, localContentValues);
    return true;
  }

  public boolean a(String paramString, boolean paramBoolean)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put(paramString, Boolean.valueOf(paramBoolean));
    this.c.a(this.a, localContentValues);
    return true;
  }

  public int b(String paramString, int paramInt)
  {
    if (this.b == null);
    while (true)
    {
      return paramInt;
      int i = this.b.getColumnIndex(paramString);
      if (!this.b.isNull(i))
        paramInt = this.b.getInt(i);
    }
  }

  public String b(String paramString)
  {
    return b(paramString, null);
  }

  public String b(String paramString1, String paramString2)
  {
    if (this.b == null);
    while (true)
    {
      return paramString2;
      int i = this.b.getColumnIndex(paramString1);
      if (!this.b.isNull(i))
        paramString2 = this.b.getString(i);
    }
  }

  public boolean b(String paramString, boolean paramBoolean)
  {
    if (this.b == null);
    int i;
    do
    {
      return paramBoolean;
      i = this.b.getColumnIndex(paramString);
    }
    while (this.b.isNull(i));
    if (this.b.getInt(i) > 0);
    for (boolean bool = true; ; bool = false)
    {
      paramBoolean = bool;
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.d.a
 * JD-Core Version:    0.6.2
 */