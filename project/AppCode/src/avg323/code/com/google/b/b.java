package com.google.b;

import com.google.b.b.f;
import java.io.IOException;
import java.io.StringWriter;

public abstract class b
{
  public Number b()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }

  public String c()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }

  public int d()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }

  public boolean e()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }

  public boolean f()
  {
    return this instanceof a;
  }

  public boolean g()
  {
    return this instanceof e;
  }

  public boolean h()
  {
    return this instanceof h;
  }

  public boolean i()
  {
    return this instanceof d;
  }

  public e j()
  {
    if (g())
      return (e)this;
    throw new IllegalStateException("Not a JSON Object: " + this);
  }

  public a k()
  {
    if (f())
      return (a)this;
    throw new IllegalStateException("This is not a JSON Array.");
  }

  public h l()
  {
    if (h())
      return (h)this;
    throw new IllegalStateException("This is not a JSON Primitive.");
  }

  Boolean m()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }

  public String toString()
  {
    try
    {
      StringWriter localStringWriter = new StringWriter();
      f localf = new f(localStringWriter);
      localf.a(true);
      com.google.b.a.d.a(this, localf);
      String str = localStringWriter.toString();
      return str;
    }
    catch (IOException localIOException)
    {
      throw new AssertionError(localIOException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.b.b
 * JD-Core Version:    0.6.2
 */