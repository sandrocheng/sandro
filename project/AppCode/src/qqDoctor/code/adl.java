import java.io.Serializable;

public final class adl extends adg
  implements Serializable
{
  private String e;

  private adl()
  {
    this.a = 0;
  }

  public static adl a()
  {
    return new adl();
  }

  public final void c(String paramString)
  {
    this.e = paramString;
  }

  public final String g()
  {
    return this.e;
  }

  public final String toString()
  {
    return "Text - " + this.e;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     adl
 * JD-Core Version:    0.6.2
 */