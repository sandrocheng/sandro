package org.antivirus.core.b;

public final class i extends Exception
{
  public boolean a;
  Exception b = null;

  public i(h paramh, Exception paramException, boolean paramBoolean)
  {
    super(paramException.getMessage());
    this.b = paramException;
    this.a = paramBoolean;
  }

  public i(h paramh, String paramString)
  {
    super(paramString);
    this.a = false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.b.i
 * JD-Core Version:    0.6.2
 */