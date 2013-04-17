import java.io.Serializable;
import java.util.ArrayList;

public final class adi
  implements Serializable
{
  private ArrayList<adg> a;

  public static adi a()
  {
    adi localadi = new adi();
    localadi.a = new ArrayList();
    return localadi;
  }

  public final void a(adg paramadg)
  {
    this.a.add(paramadg);
  }

  public final ArrayList<adg> b()
  {
    return this.a;
  }

  public final void b(adg paramadg)
  {
    int i;
    if (paramadg.c() != null)
    {
      i = paramadg.c().size();
      if (i != 0)
        break label20;
    }
    while (true)
    {
      return;
      label20: for (int j = 0; j < i; j++)
      {
        if (paramadg.b > 0)
        {
          ((adg)paramadg.c().get(j)).b = paramadg.b;
          new StringBuilder().append(((adg)paramadg.c().get(j)).toString()).append(paramadg.b).toString();
        }
        b((adg)paramadg.c().get(j));
      }
      if (j != i);
    }
  }

  public final adg c()
  {
    return (adg)this.a.get(0);
  }

  public final String toString()
  {
    return null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     adi
 * JD-Core Version:    0.6.2
 */