public class ao
{
  private static ao a;
  private int b = -1;
  private int c = -1;

  public static ao a()
  {
    try
    {
      if (a == null)
        a = new ao();
      return a;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(double paramDouble)
  {
    this.b = ((int)paramDouble);
    this.c = ((int)(60.0D * paramDouble) % 60);
  }

  public final int b()
  {
    return this.b;
  }

  public final int c()
  {
    return this.c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     ao
 * JD-Core Version:    0.6.2
 */