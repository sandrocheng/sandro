package com.avast.android.generic.d;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import com.avast.android.generic.util.x;

public class d
  implements e, f
{
  protected Uri a;
  protected Cursor b;
  private x c;
  private ContentResolver d;

  public d(ContentResolver paramContentResolver, Uri paramUri)
  {
    this.a = paramUri;
    this.c = null;
    this.d = paramContentResolver;
  }

  public d(ContentResolver paramContentResolver, Uri paramUri, x paramx)
  {
    this.a = paramUri;
    this.c = paramx;
    this.d = paramContentResolver;
  }

  private void a(ContentValues paramContentValues)
  {
    if (this.a == null);
    while (true)
    {
      return;
      if (this.c != null)
        this.c.a(this.a, paramContentValues);
      else
        this.d.update(this.a, paramContentValues, null, null);
    }
  }

  public int a(String paramString)
  {
    return b(paramString, 0);
  }

  public Uri a()
  {
    return this.a;
  }

  public boolean a(String paramString, int paramInt)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put(paramString, Integer.valueOf(paramInt));
    a(localContentValues);
    return true;
  }

  public boolean a(String paramString1, String paramString2)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put(paramString1, paramString2);
    a(localContentValues);
    return true;
  }

  public boolean a(String paramString, boolean paramBoolean)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put(paramString, Boolean.valueOf(paramBoolean));
    a(localContentValues);
    return true;
  }

  public int b(String paramString, int paramInt)
  {
    if (this.b == null);
    while (true)
    {
      return paramInt;
      int i = this.b.getColumnIndex(paramString.toLowerCase());
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
      int i = this.b.getColumnIndex(paramString1.toLowerCase());
      if (!this.b.isNull(i))
        paramString2 = this.b.getString(i);
    }
  }

  public void b()
  {
    c();
    if (this.a == null)
      throw new NullPointerException("You must set the uri before calling this method.");
    this.b = this.d.query(this.a, null, null, null, null);
    if ((this.b != null) && (this.b.getCount() > 0))
      this.b.moveToFirst();
    while (true)
    {
      return;
      if (this.b != null)
      {
        this.b.close();
        this.b = null;
      }
    }
  }

  public boolean b(String paramString, boolean paramBoolean)
  {
    if (this.b == null);
    int i;
    do
    {
      return paramBoolean;
      i = this.b.getColumnIndex(paramString.toLowerCase());
    }
    while (this.b.isNull(i));
    if (this.b.getInt(i) > 0);
    for (boolean bool = true; ; bool = false)
    {
      paramBoolean = bool;
      break;
    }
  }

  public void c()
  {
    if (this.b != null)
      this.b.close();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.d.d
 * JD-Core Version:    0.6.2
 */