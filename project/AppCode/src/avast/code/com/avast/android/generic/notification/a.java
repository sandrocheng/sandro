package com.avast.android.generic.notification;

import android.database.Cursor;

public class a
{
  long a;
  public long b = 0L;
  public long c;
  CharSequence d;
  public int e;
  public int f;
  public AvastPendingIntent g;
  public long h;
  CharSequence i;
  CharSequence j;

  public a(long paramLong, CharSequence paramCharSequence)
  {
    this.a = paramLong;
    a(paramCharSequence);
    this.h = System.currentTimeMillis();
  }

  public a(Cursor paramCursor)
  {
    this.a = paramCursor.getLong(paramCursor.getColumnIndex("_id"));
    this.i = paramCursor.getString(paramCursor.getColumnIndex("contentTitle"));
    this.j = paramCursor.getString(paramCursor.getColumnIndex("contentText"));
    this.f = paramCursor.getInt(paramCursor.getColumnIndex("flags"));
    this.e = paramCursor.getInt(paramCursor.getColumnIndex("number"));
    this.h = paramCursor.getLong(paramCursor.getColumnIndex("timestamp"));
    this.g = new AvastPendingIntent(paramCursor);
  }

  public void a(CharSequence paramCharSequence)
  {
    this.d = paramCharSequence;
  }

  public void a(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    this.i = paramCharSequence1;
    this.j = paramCharSequence2;
    this.h = System.currentTimeMillis();
  }

  public void a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, AvastPendingIntent paramAvastPendingIntent)
  {
    this.i = paramCharSequence1;
    this.j = paramCharSequence2;
    this.g = paramAvastPendingIntent;
    this.h = System.currentTimeMillis();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.notification.a
 * JD-Core Version:    0.6.2
 */