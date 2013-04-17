public final class eq extends Exception
{
  private int a;

  public eq(int paramInt, String paramString)
  {
    super(paramString);
    this.a = paramInt;
  }

  public final int a()
  {
    return this.a;
  }

  public final String b()
  {
    String str = getMessage();
    if (str == null)
    {
      Throwable localThrowable = getCause();
      if (localThrowable != null)
        str = localThrowable.getMessage();
    }
    if (str != null);
    while (true)
    {
      return str;
      str = "";
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     eq
 * JD-Core Version:    0.6.2
 */