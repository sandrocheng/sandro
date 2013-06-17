package com.avg.toolkit.e;

public class i extends Exception
{
  public boolean a;
  Exception b = null;

  public i(h paramh, Exception paramException, boolean paramBoolean)
  {
    super(paramException.getMessage());
    this.b = paramException;
    this.a = paramBoolean;
  }

  public i(h paramh, String paramString, boolean paramBoolean)
  {
    super(paramString);
    this.a = paramBoolean;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.e.i
 * JD-Core Version:    0.6.2
 */