package org.antivirus.core.a;

public final class ac extends Exception
{
  public boolean a;
  Exception b = null;

  public ac(ab paramab, Exception paramException, boolean paramBoolean)
  {
    this.b = paramException;
    this.a = paramBoolean;
  }

  public ac(ab paramab, String paramString, boolean paramBoolean)
  {
    super(paramString);
    this.a = paramBoolean;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.a.ac
 * JD-Core Version:    0.6.2
 */