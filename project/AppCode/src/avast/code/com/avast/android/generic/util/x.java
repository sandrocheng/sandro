package com.avast.android.generic.util;

import android.content.AsyncQueryHandler;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import java.lang.ref.WeakReference;

public class x extends AsyncQueryHandler
{
  private WeakReference a;

  public x(ContentResolver paramContentResolver, y paramy)
  {
    super(paramContentResolver);
    a(paramy);
  }

  public void a(Uri paramUri, ContentValues paramContentValues)
  {
    startUpdate(-1, null, paramUri, paramContentValues, null, null);
  }

  public void a(y paramy)
  {
    this.a = new WeakReference(paramy);
  }

  protected void onDeleteComplete(int paramInt1, Object paramObject, int paramInt2)
  {
    onUpdateComplete(paramInt1, paramObject, paramInt2);
  }

  protected void onInsertComplete(int paramInt, Object paramObject, Uri paramUri)
  {
    if (this.a == null);
    for (y localy = null; ; localy = (y)this.a.get())
    {
      if (localy != null)
        localy.a(paramInt, paramObject, null, paramUri, 0);
      return;
    }
  }

  protected void onQueryComplete(int paramInt, Object paramObject, Cursor paramCursor)
  {
    y localy;
    if (this.a == null)
    {
      localy = null;
      if (localy == null)
        break label43;
      localy.a(paramInt, paramObject, paramCursor, null, 0);
    }
    while (true)
    {
      return;
      localy = (y)this.a.get();
      break;
      label43: if (paramCursor != null)
        paramCursor.close();
    }
  }

  protected void onUpdateComplete(int paramInt1, Object paramObject, int paramInt2)
  {
    if (this.a == null);
    for (y localy = null; ; localy = (y)this.a.get())
    {
      if (localy != null)
        localy.a(paramInt1, paramObject, null, null, paramInt2);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.x
 * JD-Core Version:    0.6.2
 */