import java.io.Serializable;
import java.util.ArrayList;

public final class adj extends adg
  implements Serializable
{
  private adj()
  {
    this.a = 5;
    this.c = new ArrayList();
  }

  public static adj a()
  {
    return new adj();
  }

  public final void a(adg paramadg)
  {
    this.c.add(paramadg);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     adj
 * JD-Core Version:    0.6.2
 */