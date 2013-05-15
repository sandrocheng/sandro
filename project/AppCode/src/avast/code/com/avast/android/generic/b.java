package com.avast.android.generic;

import android.content.Context;
import android.support.v4.a.a;

public abstract class b extends a
{
  private Object f;

  public b(Context paramContext)
  {
    super(paramContext);
  }

  public void b(Object paramObject)
  {
    if (n());
    while (true)
    {
      return;
      this.f = paramObject;
      super.b(paramObject);
    }
  }

  protected void g()
  {
    if (this.f != null)
      b(this.f);
    if ((u()) || (this.f == null))
      p();
  }

  protected void h()
  {
    b();
  }

  protected void i()
  {
    super.i();
    h();
    this.f = null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.b
 * JD-Core Version:    0.6.2
 */