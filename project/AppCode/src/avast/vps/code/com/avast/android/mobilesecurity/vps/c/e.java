package com.avast.android.mobilesecurity.vps.c;

import a.a.i;

public final class e extends i
{
  private int a;
  private Object b = "";
  private Object c = "";

  private e b()
  {
    e locale = new e();
    d locald = c();
    if (locald != d.a())
    {
      if (locald.b())
      {
        String str2 = locald.c();
        if (str2 == null)
          throw new NullPointerException();
        locale.a = (0x1 | locale.a);
        locale.b = str2;
      }
      if (locald.d())
      {
        String str1 = locald.e();
        if (str1 == null)
          throw new NullPointerException();
        locale.a = (0x2 | locale.a);
        locale.c = str1;
      }
    }
    return locale;
  }

  private d c()
  {
    int i = 1;
    d locald = new d('\000');
    int j = this.a;
    if ((j & 0x1) == i);
    while (true)
    {
      d.a(locald, this.b);
      if ((j & 0x2) == 2)
        i |= 2;
      d.b(locald, this.c);
      d.a(locald, i);
      return locald;
      i = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.vps.c.e
 * JD-Core Version:    0.6.2
 */