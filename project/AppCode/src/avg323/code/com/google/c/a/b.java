package com.google.c.a;

public class b extends Exception
{
  private c a;
  private String b;

  public b(c paramc, String paramString)
  {
    super(paramString);
    this.b = paramString;
    this.a = paramc;
  }

  public c a()
  {
    return this.a;
  }

  public String toString()
  {
    return "Error type: " + this.a + ". " + this.b;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.c.a.b
 * JD-Core Version:    0.6.2
 */