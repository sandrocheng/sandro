package com.keniu.security.b;

import android.database.Cursor;
import com.jxphone.mosecurity.b.e;
import com.jxphone.mosecurity.c.l;

final class x extends e
{
  private x(Cursor paramCursor, byte paramByte)
  {
    super(paramCursor);
  }

  public final l a()
  {
    if (!this.a.moveToNext());
    for (l locall = null; ; locall = v.a(this.a))
      return locall;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.b.x
 * JD-Core Version:    0.6.2
 */