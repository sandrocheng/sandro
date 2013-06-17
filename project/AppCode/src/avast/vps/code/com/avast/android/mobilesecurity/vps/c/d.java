package com.avast.android.mobilesecurity.vps.c;

import a.a.c;
import a.a.h;
import a.a.j;
import java.io.InputStream;

public final class d extends h
{
  private static final d a;
  private int b;
  private Object c;
  private Object d;
  private byte e = -1;
  private int f = -1;

  static
  {
    d locald = new d((byte)0);
    a = locald;
    locald.c = "";
    locald.d = "";
  }

  private d()
  {
    super((byte)0);
  }

  private d(byte paramByte)
  {
  }

  public static d a()
  {
    return a;
  }

  public static d a(InputStream paramInputStream)
  {
    return e.a((e)e.a().a(paramInputStream));
  }

  private c g()
  {
    Object localObject = this.c;
    c localc;
    if ((localObject instanceof String))
    {
      localc = c.a((String)localObject);
      this.c = localc;
    }
    while (true)
    {
      return localc;
      localc = (c)localObject;
    }
  }

  private c h()
  {
    Object localObject = this.d;
    c localc;
    if ((localObject instanceof String))
    {
      localc = c.a((String)localObject);
      this.d = localc;
    }
    while (true)
    {
      return localc;
      localc = (c)localObject;
    }
  }

  public final void a(a.a.e parame)
  {
    ag();
    if ((0x1 & this.b) == 1)
      parame.a(1, g());
    if ((0x2 & this.b) == 2)
      parame.a(2, h());
  }

  public final int ag()
  {
    int i = this.f;
    if (i != -1);
    while (true)
    {
      return i;
      int j = 0x1 & this.b;
      i = 0;
      if (j == 1)
        i = 0 + a.a.e.b(1, g());
      if ((0x2 & this.b) == 2)
        i += a.a.e.b(2, h());
      this.f = i;
    }
  }

  public final boolean b()
  {
    int i = 1;
    if ((0x1 & this.b) == i);
    while (true)
    {
      return i;
      int j = 0;
    }
  }

  public final String c()
  {
    Object localObject1 = this.c;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      c localc = (c)localObject1;
      str = localc.b();
      if (j.a(localc))
        this.c = str;
    }
  }

  public final boolean d()
  {
    if ((0x2 & this.b) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String e()
  {
    Object localObject1 = this.d;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      c localc = (c)localObject1;
      str = localc.b();
      if (j.a(localc))
        this.d = str;
    }
  }

  public final boolean f()
  {
    int i = 1;
    int j = this.e;
    if (j != -1)
      if (j != i);
    while (true)
    {
      return i;
      i = 0;
      continue;
      this.e = i;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.vps.c.d
 * JD-Core Version:    0.6.2
 */