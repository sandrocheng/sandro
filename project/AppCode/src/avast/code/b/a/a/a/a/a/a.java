package b.a.a.a.a.a;

public abstract class a
  implements c
{
  private final String a;
  private final String b;
  private final String c;

  public a(String paramString)
  {
    if (paramString == null)
      throw new IllegalArgumentException("MIME type may not be null");
    this.a = paramString;
    int i = paramString.indexOf('/');
    if (i != -1)
      this.b = paramString.substring(0, i);
    for (this.c = paramString.substring(i + 1); ; this.c = null)
    {
      return;
      this.b = paramString;
    }
  }

  public String a()
  {
    return this.a;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     b.a.a.a.a.a.a
 * JD-Core Version:    0.6.2
 */