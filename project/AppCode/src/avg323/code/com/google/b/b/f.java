package com.google.b.b;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

public class f
  implements Closeable, Flushable
{
  private static final String[] a = new String[''];
  private static final String[] b;
  private final Writer c;
  private final List d = new ArrayList();
  private String e;
  private String f;
  private boolean g;
  private boolean h;
  private String i;
  private boolean j;

  static
  {
    for (int k = 0; k <= 31; k++)
    {
      String[] arrayOfString = a;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(k);
      arrayOfString[k] = String.format("\\u%04x", arrayOfObject);
    }
    a[34] = "\\\"";
    a[92] = "\\\\";
    a[9] = "\\t";
    a[8] = "\\b";
    a[10] = "\\n";
    a[13] = "\\r";
    a[12] = "\\f";
    b = (String[])a.clone();
    b[60] = "\\u003c";
    b[62] = "\\u003e";
    b[38] = "\\u0026";
    b[61] = "\\u003d";
    b[39] = "\\u0027";
  }

  public f(Writer paramWriter)
  {
    this.d.add(d.f);
    this.f = ":";
    this.j = true;
    if (paramWriter == null)
      throw new NullPointerException("out == null");
    this.c = paramWriter;
  }

  private f a(d paramd1, d paramd2, String paramString)
  {
    d locald = f();
    if ((locald != paramd2) && (locald != paramd1))
      throw new IllegalStateException("Nesting problem: " + this.d);
    if (this.i != null)
      throw new IllegalStateException("Dangling name: " + this.i);
    this.d.remove(-1 + this.d.size());
    if (locald == paramd2)
      h();
    this.c.write(paramString);
    return this;
  }

  private f a(d paramd, String paramString)
  {
    c(true);
    this.d.add(paramd);
    this.c.write(paramString);
    return this;
  }

  private void a(d paramd)
  {
    this.d.set(-1 + this.d.size(), paramd);
  }

  private void c(String paramString)
  {
    int k = 0;
    if (this.h);
    int m;
    int n;
    int i1;
    for (String[] arrayOfString = b; ; arrayOfString = a)
    {
      this.c.write("\"");
      m = paramString.length();
      for (n = 0; ; n++)
      {
        if (n >= m)
          break label141;
        i1 = paramString.charAt(n);
        if (i1 >= 128)
          break;
        str = arrayOfString[i1];
        if (str != null)
          break label90;
      }
    }
    if (i1 == 8232);
    for (String str = "\\u2028"; ; str = "\\u2029")
    {
      label90: if (k < n)
        this.c.write(paramString, k, n - k);
      this.c.write(str);
      k = n + 1;
      break;
      if (i1 != 8233)
        break;
    }
    label141: if (k < m)
      this.c.write(paramString, k, m - k);
    this.c.write("\"");
  }

  private void c(boolean paramBoolean)
  {
    switch (g.a[f().ordinal()])
    {
    default:
      throw new IllegalStateException("Nesting problem: " + this.d);
    case 1:
      if (!this.g)
        throw new IllegalStateException("JSON must have only one top-level value.");
    case 2:
      if ((!this.g) && (!paramBoolean))
        throw new IllegalStateException("JSON must start with an array or an object.");
      a(d.g);
    case 3:
    case 4:
    case 5:
    }
    while (true)
    {
      return;
      a(d.b);
      h();
      continue;
      this.c.append(',');
      h();
      continue;
      this.c.append(this.f);
      a(d.e);
    }
  }

  private d f()
  {
    int k = this.d.size();
    if (k == 0)
      throw new IllegalStateException("JsonWriter is closed.");
    return (d)this.d.get(k - 1);
  }

  private void g()
  {
    if (this.i != null)
    {
      i();
      c(this.i);
      this.i = null;
    }
  }

  private void h()
  {
    if (this.e == null);
    while (true)
    {
      return;
      this.c.write("\n");
      for (int k = 1; k < this.d.size(); k++)
        this.c.write(this.e);
    }
  }

  private void i()
  {
    d locald = f();
    if (locald == d.e)
      this.c.write(44);
    while (locald == d.c)
    {
      h();
      a(d.d);
      return;
    }
    throw new IllegalStateException("Nesting problem: " + this.d);
  }

  public f a()
  {
    g();
    return a(d.a, "[");
  }

  public f a(long paramLong)
  {
    g();
    c(false);
    this.c.write(Long.toString(paramLong));
    return this;
  }

  public f a(Number paramNumber)
  {
    if (paramNumber == null)
      this = e();
    while (true)
    {
      return this;
      g();
      String str = paramNumber.toString();
      if ((!this.g) && ((str.equals("-Infinity")) || (str.equals("Infinity")) || (str.equals("NaN"))))
        throw new IllegalArgumentException("Numeric values must be finite, but was " + paramNumber);
      c(false);
      this.c.append(str);
    }
  }

  public f a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException("name == null");
    if (this.i != null)
      throw new IllegalStateException();
    if (this.d.isEmpty())
      throw new IllegalStateException("JsonWriter is closed.");
    this.i = paramString;
    return this;
  }

  public final void a(boolean paramBoolean)
  {
    this.g = paramBoolean;
  }

  public f b()
  {
    return a(d.a, d.b, "]");
  }

  public f b(String paramString)
  {
    if (paramString == null)
      this = e();
    while (true)
    {
      return this;
      g();
      c(false);
      c(paramString);
    }
  }

  public f b(boolean paramBoolean)
  {
    g();
    c(false);
    Writer localWriter = this.c;
    if (paramBoolean);
    for (String str = "true"; ; str = "false")
    {
      localWriter.write(str);
      return this;
    }
  }

  public f c()
  {
    g();
    return a(d.c, "{");
  }

  public void close()
  {
    this.c.close();
    int k = this.d.size();
    if ((k > 1) || ((k == 1) && (this.d.get(k - 1) != d.g)))
      throw new IOException("Incomplete document");
    this.d.clear();
  }

  public f d()
  {
    return a(d.c, d.e, "}");
  }

  public f e()
  {
    if (this.i != null)
    {
      if (this.j)
        g();
    }
    else
    {
      c(false);
      this.c.write("null");
    }
    while (true)
    {
      return this;
      this.i = null;
    }
  }

  public void flush()
  {
    if (this.d.isEmpty())
      throw new IllegalStateException("JsonWriter is closed.");
    this.c.flush();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.b.b.f
 * JD-Core Version:    0.6.2
 */