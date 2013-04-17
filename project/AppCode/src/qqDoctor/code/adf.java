import java.io.Serializable;
import java.util.ArrayList;

public final class adf extends adg
  implements Serializable
{
  private adf()
  {
    this.a = 4;
    this.c = new ArrayList();
  }

  public static adf a()
  {
    return new adf();
  }

  public final void a(adg paramadg)
  {
    this.c.add(paramadg);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     adf
 * JD-Core Version:    0.6.2
 */