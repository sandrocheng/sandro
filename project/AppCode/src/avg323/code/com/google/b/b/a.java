package com.google.b.b;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;

public class a
  implements Closeable
{
  private static final char[] a = ")]}'\n".toCharArray();
  private final i b = new i();
  private final Reader c;
  private boolean d = false;
  private final char[] e = new char[1024];
  private int f = 0;
  private int g = 0;
  private int h = 1;
  private int i = 1;
  private d[] j = new d[32];
  private int k = 0;
  private e l;
  private String m;
  private String n;
  private int o;
  private int p;
  private boolean q;

  static
  {
    com.google.b.a.b.a = new b();
  }

  public a(Reader paramReader)
  {
    a(d.f);
    this.q = false;
    if (paramReader == null)
      throw new NullPointerException("in == null");
    this.c = paramReader;
  }

  private e a(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    int i1 = paramArrayOfChar[paramInt1];
    int i2;
    if (i1 == 45)
    {
      i2 = paramInt1 + 1;
      i1 = paramArrayOfChar[i2];
    }
    while (true)
    {
      int i3;
      int i4;
      if (i1 == 48)
      {
        i3 = i2 + 1;
        i4 = paramArrayOfChar[i3];
      }
      e locale;
      while (i4 == 46)
      {
        i3++;
        i4 = paramArrayOfChar[i3];
        while (true)
          if ((i4 >= 48) && (i4 <= 57))
          {
            i3++;
            i4 = paramArrayOfChar[i3];
            continue;
            if ((i1 >= 49) && (i1 <= 57))
            {
              i3 = i2 + 1;
              for (i4 = paramArrayOfChar[i3]; (i4 >= 48) && (i4 <= 57); i4 = paramArrayOfChar[i3])
                i3++;
              break;
            }
            locale = e.f;
          }
      }
      while (true)
      {
        return locale;
        int i5 = i4;
        int i6 = i3;
        if ((i5 == 101) || (i5 == 69))
        {
          int i7 = i6 + 1;
          int i8 = paramArrayOfChar[i7];
          if ((i8 == 43) || (i8 == 45))
          {
            i7++;
            i8 = paramArrayOfChar[i7];
          }
          int i11;
          if ((i8 >= 48) && (i8 <= 57))
          {
            int i9 = i7 + 1;
            int i10 = paramArrayOfChar[i9];
            i6 = i9;
            i11 = i10;
          }
          while (true)
            if ((i11 >= 48) && (i11 <= 57))
            {
              int i12 = i6 + 1;
              int i13 = paramArrayOfChar[i12];
              i6 = i12;
              i11 = i13;
              continue;
              locale = e.f;
              break;
            }
        }
        if (i6 == paramInt1 + paramInt2)
          locale = e.g;
        else
          locale = e.f;
      }
      i2 = paramInt1;
    }
  }

  private String a(char paramChar)
  {
    char[] arrayOfChar = this.e;
    Object localObject1 = null;
    int i1 = this.f;
    int i2 = this.g;
    int i3 = i1;
    label23: int i4;
    Object localObject2;
    int i8;
    int i6;
    int i7;
    if (i3 < i2)
    {
      i4 = i3 + 1;
      char c1 = arrayOfChar[i3];
      if (c1 == paramChar)
      {
        this.f = i4;
        String str;
        if (this.q)
          str = "skipped!";
        while (true)
        {
          return str;
          if (localObject1 == null)
          {
            str = this.b.a(arrayOfChar, i1, -1 + (i4 - i1));
          }
          else
          {
            ((StringBuilder)localObject1).append(arrayOfChar, i1, -1 + (i4 - i1));
            str = ((StringBuilder)localObject1).toString();
          }
        }
      }
      if (c1 != '\\')
        break label258;
      this.f = i4;
      if (localObject1 == null)
        localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append(arrayOfChar, i1, -1 + (i4 - i1));
      ((StringBuilder)localObject1).append(w());
      int i9 = this.f;
      int i10 = this.g;
      localObject2 = localObject1;
      i8 = i9;
      i6 = i10;
      i7 = i9;
    }
    while (true)
    {
      i3 = i7;
      i2 = i6;
      i1 = i8;
      localObject1 = localObject2;
      break label23;
      if (localObject1 == null)
        localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append(arrayOfChar, i1, i3 - i1);
      this.f = i3;
      if (a(1))
        break;
      throw b("Unterminated string");
      label258: int i5 = i1;
      i6 = i2;
      i7 = i4;
      localObject2 = localObject1;
      i8 = i5;
    }
  }

  private void a(d paramd)
  {
    if (this.k == this.j.length)
    {
      d[] arrayOfd2 = new d[2 * this.k];
      System.arraycopy(this.j, 0, arrayOfd2, 0, this.k);
      this.j = arrayOfd2;
    }
    d[] arrayOfd1 = this.j;
    int i1 = this.k;
    this.k = (i1 + 1);
    arrayOfd1[i1] = paramd;
  }

  private void a(e parame)
  {
    g();
    if (this.l != parame)
      throw new IllegalStateException("Expected " + parame + " but was " + g() + " at line " + s() + " column " + t());
    p();
  }

  private boolean a(int paramInt)
  {
    int i1 = 1;
    char[] arrayOfChar = this.e;
    int i3 = this.h;
    int i4 = this.i;
    int i5 = this.f;
    int i6 = 0;
    if (i6 < i5)
    {
      if (arrayOfChar[i6] == '\n')
        i3++;
      for (i4 = i1; ; i4++)
      {
        i6++;
        break;
      }
    }
    this.h = i3;
    this.i = i4;
    if (this.g != this.f)
    {
      this.g -= this.f;
      System.arraycopy(arrayOfChar, this.f, arrayOfChar, 0, this.g);
      this.f = 0;
      do
      {
        int i7 = this.c.read(arrayOfChar, this.g, arrayOfChar.length - this.g);
        if (i7 == -1)
          break;
        this.g = (i7 + this.g);
        if ((this.h == i1) && (this.i == i1) && (this.g > 0) && (arrayOfChar[0] == 65279))
        {
          this.f = (1 + this.f);
          this.i = (-1 + this.i);
        }
      }
      while (this.g < paramInt);
    }
    while (true)
    {
      return i1;
      this.g = 0;
      break;
      int i2 = 0;
    }
  }

  private boolean a(String paramString)
  {
    boolean bool1;
    if (this.f + paramString.length() > this.g)
    {
      boolean bool2 = a(paramString.length());
      bool1 = false;
      if (!bool2);
    }
    else
    {
      for (int i1 = 0; ; i1++)
      {
        if (i1 >= paramString.length())
          break label81;
        if (this.e[(i1 + this.f)] != paramString.charAt(i1))
        {
          this.f = (1 + this.f);
          break;
        }
      }
      label81: bool1 = true;
    }
    return bool1;
  }

  private e b(boolean paramBoolean)
  {
    label18: e locale;
    if (paramBoolean)
    {
      this.j[(-1 + this.k)] = d.b;
      switch (d(true))
      {
      default:
        this.f = (-1 + this.f);
        locale = r();
      case 93:
      case 44:
      case 59:
      }
    }
    while (true)
    {
      return locale;
      switch (d(true))
      {
      case 44:
      default:
        throw b("Unterminated array");
      case 93:
        this.k = (-1 + this.k);
        locale = e.b;
        this.l = locale;
        break;
      case 59:
        u();
        break label18;
        if (paramBoolean)
        {
          this.k = (-1 + this.k);
          locale = e.b;
          this.l = locale;
        }
        else
        {
          u();
          this.f = (-1 + this.f);
          this.n = "null";
          locale = e.i;
          this.l = locale;
        }
        break;
      }
    }
  }

  private IOException b(String paramString)
  {
    throw new h(paramString + " at line " + s() + " column " + t());
  }

  private e c(boolean paramBoolean)
  {
    int i1;
    e locale;
    if (paramBoolean)
      switch (d(true))
      {
      default:
        this.f = (-1 + this.f);
        i1 = d(true);
        switch (i1)
        {
        default:
          u();
          this.f = (-1 + this.f);
          this.m = e(false);
          if (this.m.length() == 0)
            throw b("Expected name");
          break;
        case 39:
        case 34:
        }
      case 125:
        this.k = (-1 + this.k);
        locale = e.d;
        this.l = locale;
      }
    while (true)
    {
      return locale;
      switch (d(true))
      {
      case 44:
      case 59:
      default:
        throw b("Unterminated object");
      case 125:
      }
      this.k = (-1 + this.k);
      locale = e.d;
      this.l = locale;
      continue;
      u();
      this.m = a((char)i1);
      this.j[(-1 + this.k)] = d.d;
      locale = e.e;
      this.l = locale;
    }
  }

  private int d(boolean paramBoolean)
  {
    char[] arrayOfChar = this.e;
    int i1 = this.f;
    int i2 = this.g;
    int i3;
    int i4;
    int i5;
    if (i1 == i2)
    {
      this.f = i1;
      if (!a(1))
      {
        if (paramBoolean)
          throw new EOFException("End of input at line " + s() + " column " + t());
      }
      else
      {
        i1 = this.f;
        i2 = this.g;
      }
    }
    else
    {
      i3 = i1 + 1;
      i4 = arrayOfChar[i1];
      switch (i4)
      {
      default:
        this.f = i3;
        i5 = i4;
      case 9:
      case 10:
      case 13:
      case 32:
      case 47:
      case 35:
      }
    }
    while (true)
    {
      return i5;
      i1 = i3;
      break;
      this.f = i3;
      if (i3 == i2)
      {
        this.f = (-1 + this.f);
        boolean bool = a(2);
        this.f = (1 + this.f);
        if (!bool)
          i5 = i4;
      }
      else
      {
        u();
        switch (arrayOfChar[this.f])
        {
        default:
          i5 = i4;
          break;
        case '*':
          this.f = (1 + this.f);
          if (!a("*/"))
            throw b("Unterminated comment");
          i1 = 2 + this.f;
          i2 = this.g;
          break;
        case '/':
          this.f = (1 + this.f);
          v();
          i1 = this.f;
          i2 = this.g;
          break;
          this.f = i3;
          u();
          v();
          i1 = this.f;
          i2 = this.g;
          break;
          i5 = -1;
        }
      }
    }
  }

  private String e(boolean paramBoolean)
  {
    String str = null;
    this.o = -1;
    this.p = 0;
    int i1 = 0;
    StringBuilder localStringBuilder = null;
    while (true)
      if (i1 + this.f < this.g)
      {
        switch (this.e[(i1 + this.f)])
        {
        default:
          i1++;
          break;
        case '#':
        case '/':
        case ';':
        case '=':
        case '\\':
          u();
        case '\t':
        case '\n':
        case '\f':
        case '\r':
        case ' ':
        case ',':
        case ':':
        case '[':
        case ']':
        case '{':
        case '}':
          label190: if ((paramBoolean) && (localStringBuilder == null))
            this.o = this.f;
          break;
        }
      }
      else
      {
        while (true)
        {
          this.p = (i1 + this.p);
          this.f = (i1 + this.f);
          return str;
          if (i1 < this.e.length)
          {
            if (a(i1 + 1))
              break;
            this.e[this.g] = '\000';
            break label190;
          }
          if (localStringBuilder == null)
            localStringBuilder = new StringBuilder();
          localStringBuilder.append(this.e, this.f, i1);
          this.p = (i1 + this.p);
          this.f = (i1 + this.f);
          if (a(1))
            break label385;
          i1 = 0;
          break label190;
          if (this.q)
          {
            str = "skipped!";
          }
          else if (localStringBuilder == null)
          {
            str = this.b.a(this.e, this.f, i1);
          }
          else
          {
            localStringBuilder.append(this.e, this.f, i1);
            str = localStringBuilder.toString();
          }
        }
        label385: i1 = 0;
      }
  }

  private void o()
  {
    d(true);
    this.f = (-1 + this.f);
    if ((this.f + a.length > this.g) && (!a(a.length)));
    while (true)
    {
      return;
      for (int i1 = 0; ; i1++)
      {
        if (i1 >= a.length)
          break label79;
        if (this.e[(i1 + this.f)] != a[i1])
          break;
      }
      label79: this.f += a.length;
    }
  }

  private e p()
  {
    g();
    e locale = this.l;
    this.l = null;
    this.n = null;
    this.m = null;
    return locale;
  }

  private e q()
  {
    switch (d(true))
    {
    case 59:
    case 60:
    default:
      throw b("Expected ':'");
    case 61:
      u();
      if (((this.f < this.g) || (a(1))) && (this.e[this.f] == '>'))
        this.f = (1 + this.f);
      break;
    case 58:
    }
    this.j[(-1 + this.k)] = d.e;
    return r();
  }

  private e r()
  {
    int i1 = d(true);
    e locale;
    switch (i1)
    {
    default:
      this.f = (-1 + this.f);
      locale = x();
    case 123:
    case 91:
    case 39:
    case 34:
    }
    while (true)
    {
      return locale;
      a(d.c);
      locale = e.c;
      this.l = locale;
      continue;
      a(d.a);
      locale = e.a;
      this.l = locale;
      continue;
      u();
      this.n = a((char)i1);
      locale = e.f;
      this.l = locale;
    }
  }

  private int s()
  {
    int i1 = this.h;
    for (int i2 = 0; i2 < this.f; i2++)
      if (this.e[i2] == '\n')
        i1++;
    return i1;
  }

  private int t()
  {
    int i1 = this.i;
    int i2 = 0;
    if (i2 < this.f)
    {
      if (this.e[i2] == '\n');
      for (i1 = 1; ; i1++)
      {
        i2++;
        break;
      }
    }
    return i1;
  }

  private void u()
  {
    if (!this.d)
      throw b("Use JsonReader.setLenient(true) to accept malformed JSON");
  }

  private void v()
  {
    int i2;
    do
    {
      if ((this.f >= this.g) && (!a(1)))
        break;
      char[] arrayOfChar = this.e;
      int i1 = this.f;
      this.f = (i1 + 1);
      i2 = arrayOfChar[i1];
    }
    while ((i2 != 13) && (i2 != 10));
  }

  private char w()
  {
    if ((this.f == this.g) && (!a(1)))
      throw b("Unterminated escape sequence");
    char[] arrayOfChar = this.e;
    int i1 = this.f;
    this.f = (i1 + 1);
    char c1 = arrayOfChar[i1];
    switch (c1)
    {
    default:
    case 'u':
    case 't':
    case 'b':
    case 'n':
    case 'r':
    case 'f':
    }
    while (true)
    {
      return c1;
      if ((4 + this.f > this.g) && (!a(4)))
        throw b("Unterminated escape sequence");
      int i2 = this.f;
      int i3 = i2 + 4;
      c1 = '\000';
      int i4 = i2;
      if (i4 < i3)
      {
        int i5 = this.e[i4];
        int i6 = (char)(c1 << '\004');
        if ((i5 >= 48) && (i5 <= 57))
          c1 = (char)(i6 + (i5 - 48));
        while (true)
        {
          i4++;
          break;
          if ((i5 >= 97) && (i5 <= 102))
          {
            c1 = (char)(i6 + (10 + (i5 - 97)));
          }
          else
          {
            if ((i5 < 65) || (i5 > 70))
              break label269;
            c1 = (char)(i6 + (10 + (i5 - 65)));
          }
        }
        label269: throw new NumberFormatException("\\u" + this.b.a(this.e, this.f, 4));
      }
      this.f = (4 + this.f);
      continue;
      c1 = '\t';
      continue;
      c1 = '\b';
      continue;
      c1 = '\n';
      continue;
      c1 = '\r';
      continue;
      c1 = '\f';
    }
  }

  private e x()
  {
    this.n = e(true);
    if (this.p == 0)
      throw b("Expected literal value");
    this.l = y();
    if (this.l == e.f)
      u();
    return this.l;
  }

  private e y()
  {
    e locale;
    if (this.o == -1)
      locale = e.f;
    while (true)
    {
      return locale;
      if ((this.p == 4) && (('n' == this.e[this.o]) || ('N' == this.e[this.o])) && (('u' == this.e[(1 + this.o)]) || ('U' == this.e[(1 + this.o)])) && (('l' == this.e[(2 + this.o)]) || ('L' == this.e[(2 + this.o)])) && (('l' == this.e[(3 + this.o)]) || ('L' == this.e[(3 + this.o)])))
      {
        this.n = "null";
        locale = e.i;
      }
      else if ((this.p == 4) && (('t' == this.e[this.o]) || ('T' == this.e[this.o])) && (('r' == this.e[(1 + this.o)]) || ('R' == this.e[(1 + this.o)])) && (('u' == this.e[(2 + this.o)]) || ('U' == this.e[(2 + this.o)])) && (('e' == this.e[(3 + this.o)]) || ('E' == this.e[(3 + this.o)])))
      {
        this.n = "true";
        locale = e.h;
      }
      else if ((this.p == 5) && (('f' == this.e[this.o]) || ('F' == this.e[this.o])) && (('a' == this.e[(1 + this.o)]) || ('A' == this.e[(1 + this.o)])) && (('l' == this.e[(2 + this.o)]) || ('L' == this.e[(2 + this.o)])) && (('s' == this.e[(3 + this.o)]) || ('S' == this.e[(3 + this.o)])) && (('e' == this.e[(4 + this.o)]) || ('E' == this.e[(4 + this.o)])))
      {
        this.n = "false";
        locale = e.h;
      }
      else
      {
        this.n = this.b.a(this.e, this.o, this.p);
        locale = a(this.e, this.o, this.p);
      }
    }
  }

  public final void a(boolean paramBoolean)
  {
    this.d = paramBoolean;
  }

  public final boolean a()
  {
    return this.d;
  }

  public void b()
  {
    a(e.a);
  }

  public void c()
  {
    a(e.b);
  }

  public void close()
  {
    this.n = null;
    this.l = null;
    this.j[0] = d.h;
    this.k = 1;
    this.c.close();
  }

  public void d()
  {
    a(e.c);
  }

  public void e()
  {
    a(e.d);
  }

  public boolean f()
  {
    g();
    if ((this.l != e.d) && (this.l != e.b));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public e g()
  {
    e locale;
    if (this.l != null)
      locale = this.l;
    while (true)
    {
      return locale;
      switch (c.a[this.j[(-1 + this.k)].ordinal()])
      {
      default:
        throw new AssertionError();
      case 1:
        if (this.d)
          o();
        this.j[(-1 + this.k)] = d.g;
        locale = r();
        if ((!this.d) && (this.l != e.a) && (this.l != e.c))
          throw new IOException("Expected JSON document to start with '[' or '{' but was " + this.l + " at line " + s() + " column " + t());
        break;
      case 2:
        locale = b(true);
        break;
      case 3:
        locale = b(false);
        break;
      case 4:
        locale = c(true);
        break;
      case 5:
        locale = q();
        break;
      case 6:
        locale = c(false);
        break;
      case 7:
        if (d(false) == -1)
        {
          locale = e.j;
        }
        else
        {
          this.f = (-1 + this.f);
          if (!this.d)
            throw b("Expected EOF");
          locale = r();
        }
        break;
      case 8:
      }
    }
    throw new IllegalStateException("JsonReader is closed");
  }

  public String h()
  {
    g();
    if (this.l != e.e)
      throw new IllegalStateException("Expected a name but was " + g() + " at line " + s() + " column " + t());
    String str = this.m;
    p();
    return str;
  }

  public String i()
  {
    g();
    if ((this.l != e.f) && (this.l != e.g))
      throw new IllegalStateException("Expected a string but was " + g() + " at line " + s() + " column " + t());
    String str = this.n;
    p();
    return str;
  }

  public boolean j()
  {
    g();
    if (this.l != e.h)
      throw new IllegalStateException("Expected a boolean but was " + this.l + " at line " + s() + " column " + t());
    if (this.n == "true");
    for (boolean bool = true; ; bool = false)
    {
      p();
      return bool;
    }
  }

  public void k()
  {
    g();
    if (this.l != e.i)
      throw new IllegalStateException("Expected null but was " + this.l + " at line " + s() + " column " + t());
    p();
  }

  public double l()
  {
    g();
    if ((this.l != e.f) && (this.l != e.g))
      throw new IllegalStateException("Expected a double but was " + this.l + " at line " + s() + " column " + t());
    double d1 = Double.parseDouble(this.n);
    if ((d1 >= 1.0D) && (this.n.startsWith("0")))
      throw new h("JSON forbids octal prefixes: " + this.n + " at line " + s() + " column " + t());
    if ((!this.d) && ((Double.isNaN(d1)) || (Double.isInfinite(d1))))
      throw new h("JSON forbids NaN and infinities: " + this.n + " at line " + s() + " column " + t());
    p();
    return d1;
  }

  public long m()
  {
    g();
    if ((this.l != e.f) && (this.l != e.g))
      throw new IllegalStateException("Expected a long but was " + this.l + " at line " + s() + " column " + t());
    long l1;
    try
    {
      long l2 = Long.parseLong(this.n);
      l1 = l2;
      if ((l1 >= 1L) && (this.n.startsWith("0")))
        throw new h("JSON forbids octal prefixes: " + this.n + " at line " + s() + " column " + t());
    }
    catch (NumberFormatException localNumberFormatException)
    {
      double d1;
      do
      {
        d1 = Double.parseDouble(this.n);
        l1 = ()d1;
      }
      while (l1 == d1);
      throw new NumberFormatException("Expected a long but was " + this.n + " at line " + s() + " column " + t());
    }
    p();
    return l1;
  }

  public int n()
  {
    g();
    if ((this.l != e.f) && (this.l != e.g))
      throw new IllegalStateException("Expected an int but was " + this.l + " at line " + s() + " column " + t());
    int i1;
    try
    {
      int i2 = Integer.parseInt(this.n);
      i1 = i2;
      if ((i1 >= 1L) && (this.n.startsWith("0")))
        throw new h("JSON forbids octal prefixes: " + this.n + " at line " + s() + " column " + t());
    }
    catch (NumberFormatException localNumberFormatException)
    {
      double d1;
      do
      {
        d1 = Double.parseDouble(this.n);
        i1 = (int)d1;
      }
      while (i1 == d1);
      throw new NumberFormatException("Expected an int but was " + this.n + " at line " + s() + " column " + t());
    }
    p();
    return i1;
  }

  public String toString()
  {
    return getClass().getSimpleName() + " at line " + s() + " column " + t();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.b.b.a
 * JD-Core Version:    0.6.2
 */