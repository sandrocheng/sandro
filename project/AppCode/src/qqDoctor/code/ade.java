import java.io.Serializable;

public final class ade extends adg
  implements Serializable
{
  private ade()
  {
    this.a = 2;
  }

  public static ade a()
  {
    return new ade();
  }

  public final String toString()
  {
    return "Audio File - " + this.d;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ade
 * JD-Core Version:    0.6.2
 */