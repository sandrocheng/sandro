public class cw
{
  private static cw a = null;
  private String b = null;
  private String c = null;
  private boolean d = false;

  private cw()
  {
    ca localca = bl.f();
    this.c = localca.a(ca.a.y);
    this.b = a.a(de.d(localca.a(ca.a.z)), (de.a(de.b) + "h^J9o`").getBytes());
    if ((this.c != null) && (this.b != null) && (this.c.length() != 0) && (this.b.length() != 0))
      this.d = true;
  }

  public static cw d()
  {
    if (a == null);
    try
    {
      if (a == null)
        a = new cw();
      return a;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void g()
  {
  }

  public final void a()
  {
    this.b = null;
    this.c = null;
    this.d = false;
    ca localca = bl.f();
    localca.a(ca.a.y, "");
    localca.a(ca.a.z, "");
    dk.b("LoginInformation", "clearLoginInformation");
  }

  public final void a(String paramString)
  {
    this.b = paramString;
  }

  public final void b(String paramString)
  {
    this.c = paramString;
  }

  public final boolean b()
  {
    return this.d;
  }

  public final void c()
  {
    this.d = true;
  }

  public final String e()
  {
    return this.b;
  }

  public final String f()
  {
    return this.c;
  }

  public final int h()
  {
    int i;
    if ((!this.d) || (this.c == null) || (this.b == null))
      i = -1;
    while (true)
    {
      return i;
      if (this.c.startsWith("+"))
        i = 2;
      else
        i = 1;
    }
  }

  public final boolean i()
  {
    boolean bool1 = this.d;
    boolean bool2 = false;
    if (bool1)
    {
      String str1 = this.c;
      bool2 = false;
      if (str1 != null)
      {
        String str2 = this.b;
        bool2 = false;
        if (str2 != null)
          break label37;
      }
    }
    while (true)
    {
      return bool2;
      label37: String str3 = de.a(a.a(this.b, (de.a(de.b) + "h^J9o`").getBytes()));
      bool2 = false;
      if (str3 != null)
      {
        ca localca = bl.f();
        localca.a(ca.a.y, this.c);
        localca.a(ca.a.z, str3);
        bool2 = true;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     cw
 * JD-Core Version:    0.6.2
 */