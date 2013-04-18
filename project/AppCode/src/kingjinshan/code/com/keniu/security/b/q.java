package com.keniu.security.b;

import android.database.Cursor;
import com.jxphone.mosecurity.b.a.b;
import com.jxphone.mosecurity.c.j;

final class q extends b
{
  public q(Cursor paramCursor)
  {
    super(paramCursor);
  }

  private j a()
  {
    j localj;
    if (this.a == null)
      localj = null;
    while (true)
    {
      return localj;
      if (!this.a.moveToNext())
        localj = null;
      else
        localj = p.a(this.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.b.q
 * JD-Core Version:    0.6.2
 */