package com.b.a;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class ge
{
  private static final Pattern i = Pattern.compile("(\\s|(#.*$))++", 8);
  private static final Pattern j = Pattern.compile("[a-zA-Z_][0-9a-zA-Z_+-]*+|[.]?[0-9+-][0-9a-zA-Z_.+-]*+|\"([^\"\n\\\\]|\\\\.)*+(\"|\\\\?$)|'([^'\n\\\\]|\\\\.)*+('|\\\\?$)", 8);
  private static final Pattern k = Pattern.compile("-?inf(inity)?", 2);
  private static final Pattern l = Pattern.compile("-?inf(inity)?f?", 2);
  private static final Pattern m = Pattern.compile("nanf?", 2);
  private final CharSequence a;
  private final Matcher b;
  private String c;
  private int d = 0;
  private int e = 0;
  private int f = 0;
  private int g = 0;
  private int h = 0;

  private ge(CharSequence paramCharSequence, byte paramByte)
  {
    this.a = paramCharSequence;
    this.b = i.matcher(paramCharSequence);
    n();
    m();
  }

  private gb a(NumberFormatException paramNumberFormatException)
  {
    return c("Couldn't parse integer: " + paramNumberFormatException.getMessage());
  }

  private void a(List paramList)
  {
    if (this.c.length() > 0);
    for (int n = this.c.charAt(0); (n != 34) && (n != 39); n = 0)
      throw c("Expected string.");
    if ((this.c.length() < 2) || (this.c.charAt(this.c.length() - 1) != n))
      throw c("String missing ending quote.");
    try
    {
      i locali = fy.a(this.c.substring(1, this.c.length() - 1));
      m();
      paramList.add(locali);
      return;
    }
    catch (ga localga)
    {
      throw c(localga.getMessage());
    }
  }

  private gb b(NumberFormatException paramNumberFormatException)
  {
    return c("Couldn't parse number: " + paramNumberFormatException.getMessage());
  }

  private void m()
  {
    this.g = this.e;
    this.h = this.f;
    if (this.d < this.b.regionStart())
    {
      if (this.a.charAt(this.d) == '\n')
        this.e = (1 + this.e);
      for (this.f = 0; ; this.f = (1 + this.f))
      {
        this.d = (1 + this.d);
        break;
      }
    }
    if (this.b.regionStart() == this.b.regionEnd())
    {
      this.c = "";
      return;
    }
    this.b.usePattern(j);
    if (this.b.lookingAt())
    {
      this.c = this.b.group();
      this.b.region(this.b.end(), this.b.regionEnd());
    }
    while (true)
    {
      n();
      break;
      this.c = String.valueOf(this.a.charAt(this.d));
      this.b.region(1 + this.d, this.b.regionEnd());
    }
  }

  private void n()
  {
    this.b.usePattern(i);
    if (this.b.lookingAt())
      this.b.region(this.b.end(), this.b.regionEnd());
  }

  public final boolean a()
  {
    if (this.c.length() == 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean a(String paramString)
  {
    if (this.c.equals(paramString))
      m();
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final void b(String paramString)
  {
    if (!a(paramString))
      throw c("Expected \"" + paramString + "\".");
  }

  public final boolean b()
  {
    boolean bool;
    if (this.c.length() == 0)
      bool = false;
    while (true)
    {
      return bool;
      int n = this.c.charAt(0);
      if (((48 <= n) && (n <= 57)) || (n == 45) || (n == 43))
        bool = true;
      else
        bool = false;
    }
  }

  public final gb c(String paramString)
  {
    return new gb(1 + this.e + ":" + (1 + this.f) + ": " + paramString);
  }

  public final String c()
  {
    for (int n = 0; n < this.c.length(); n++)
    {
      int i1 = this.c.charAt(n);
      if (((97 > i1) || (i1 > 122)) && ((65 > i1) || (i1 > 90)) && ((48 > i1) || (i1 > 57)) && (i1 != 95) && (i1 != 46))
        throw c("Expected identifier.");
    }
    String str = this.c;
    m();
    return str;
  }

  public final int d()
  {
    try
    {
      int n = fy.b(this.c);
      m();
      return n;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw a(localNumberFormatException);
    }
  }

  public final gb d(String paramString)
  {
    return new gb(1 + this.g + ":" + (1 + this.h) + ": " + paramString);
  }

  public final int e()
  {
    try
    {
      int n = fy.c(this.c);
      m();
      return n;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw a(localNumberFormatException);
    }
  }

  public final long f()
  {
    try
    {
      long l1 = fy.d(this.c);
      m();
      return l1;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw a(localNumberFormatException);
    }
  }

  public final long g()
  {
    try
    {
      long l1 = fy.e(this.c);
      m();
      return l1;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw a(localNumberFormatException);
    }
  }

  public final double h()
  {
    double d1;
    if (k.matcher(this.c).matches())
    {
      boolean bool = this.c.startsWith("-");
      m();
      if (bool)
        d1 = (-1.0D / 0.0D);
    }
    while (true)
    {
      return d1;
      d1 = (1.0D / 0.0D);
      continue;
      if (this.c.equalsIgnoreCase("nan"))
      {
        m();
        d1 = (0.0D / 0.0D);
        continue;
      }
      try
      {
        d1 = Double.parseDouble(this.c);
        m();
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw b(localNumberFormatException);
      }
    }
  }

  public final float i()
  {
    float f1;
    if (l.matcher(this.c).matches())
    {
      boolean bool = this.c.startsWith("-");
      m();
      if (bool)
        f1 = (1.0F / -1.0F);
    }
    while (true)
    {
      return f1;
      f1 = (1.0F / 1.0F);
      continue;
      if (m.matcher(this.c).matches())
      {
        m();
        f1 = (0.0F / 0.0F);
        continue;
      }
      try
      {
        f1 = Float.parseFloat(this.c);
        m();
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw b(localNumberFormatException);
      }
    }
  }

  public final boolean j()
  {
    if ((this.c.equals("true")) || (this.c.equals("t")) || (this.c.equals("1")))
      m();
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      if ((!this.c.equals("false")) && (!this.c.equals("f")) && (!this.c.equals("0")))
        break;
      m();
    }
    throw c("Expected \"true\" or \"false\".");
  }

  public final String k()
  {
    return l().b();
  }

  public final i l()
  {
    ArrayList localArrayList = new ArrayList();
    a(localArrayList);
    while ((this.c.startsWith("'")) || (this.c.startsWith("\"")))
      a(localArrayList);
    return i.a(localArrayList);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.ge
 * JD-Core Version:    0.6.2
 */