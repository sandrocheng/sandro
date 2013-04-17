public final class aai
{
  private static aai a = null;
  private ho b = ho.a();
  private boolean c = false;

  public static aai a()
  {
    if (a == null);
    try
    {
      if (a == null)
        a = new aai();
      return a;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean a(String paramString1, String paramString2)
  {
    if ((!paramString1.equals("")) && (paramString1.equals(paramString2)))
    {
      this.b.c(k.b(k.a(paramString1.getBytes())));
      this.c = k.b(k.a(paramString1.getBytes())).equals(this.b.n());
    }
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final void b()
  {
    this.c = true;
  }

  public final void c()
  {
    this.c = false;
    a = null;
    try
    {
      super.finalize();
      return;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        localThrowable.printStackTrace();
    }
  }

  public final boolean d()
  {
    return this.c;
  }

  protected final void finalize()
    throws Throwable
  {
    super.finalize();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aai
 * JD-Core Version:    0.6.2
 */