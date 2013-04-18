package com.jxphone.mosecurity.b.a;

import android.database.Cursor;

public abstract class b
  implements a
{
  protected Cursor a;
  private final int b;

  protected b(Cursor paramCursor)
  {
    this.a = paramCursor;
    this.b = (paramCursor.getCount() - 1);
  }

  public final int b()
  {
    if (this.a == null);
    for (int i = 0; ; i = this.a.getCount())
      return i;
  }

  public final void c()
  {
    if (this.a != null)
      this.a.close();
  }

  public boolean hasNext()
  {
    boolean bool;
    if (this.a == null)
      bool = false;
    while (true)
    {
      return bool;
      if (this.a.getPosition() < this.b)
        bool = true;
      else
        bool = false;
    }
  }

  public void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.b.a.b
 * JD-Core Version:    0.6.2
 */