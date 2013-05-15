package android.support.v4.view.a;

import android.os.Build.VERSION;

public class a
{
  private static final c a;
  private final Object b;

  static
  {
    if (Build.VERSION.SDK_INT >= 16)
      a = new d();
    while (true)
    {
      return;
      if (Build.VERSION.SDK_INT >= 14)
        a = new b();
      else
        a = new e();
    }
  }

  public a(Object paramObject)
  {
    this.b = paramObject;
  }

  public Object a()
  {
    return this.b;
  }

  public void a(int paramInt)
  {
    a.a(this.b, paramInt);
  }

  public void a(CharSequence paramCharSequence)
  {
    a.a(this.b, paramCharSequence);
  }

  public void a(boolean paramBoolean)
  {
    a.a(this.b, paramBoolean);
  }

  public boolean equals(Object paramObject)
  {
    boolean bool = true;
    if (this == paramObject);
    while (true)
    {
      return bool;
      if (paramObject == null)
      {
        bool = false;
      }
      else if (getClass() != paramObject.getClass())
      {
        bool = false;
      }
      else
      {
        a locala = (a)paramObject;
        if (this.b == null)
        {
          if (locala.b != null)
            bool = false;
        }
        else if (!this.b.equals(locala.b))
          bool = false;
      }
    }
  }

  public int hashCode()
  {
    if (this.b == null);
    for (int i = 0; ; i = this.b.hashCode())
      return i;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.a.a
 * JD-Core Version:    0.6.2
 */