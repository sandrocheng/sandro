import android.content.Context;
import java.io.File;
import java.util.Set;

public final class rj
{
  private static rj a = null;
  private Context b = null;
  private ho c = null;
  private jp d = null;
  private hq e = null;
  private Set<Integer> f = null;
  private int g = 0;

  public static rj a()
  {
    if (a == null)
      a = new rj();
    return a;
  }

  private static String b(String paramString1, String paramString2)
  {
    return a.c() + "/" + paramString1 + paramString2 + ".dat";
  }

  public final void b()
  {
    if (!this.f.contains(Integer.valueOf(0)))
    {
      this.f.add(Integer.valueOf(0));
      this.g = 1;
      new Thread(new rk(this, 0)).start();
    }
  }

  public final void c()
  {
    if (!this.f.contains(Integer.valueOf(0)))
    {
      this.f.add(Integer.valueOf(0));
      this.g = 2;
      new Thread(new rl(this, 0)).start();
    }
  }

  public final boolean d()
  {
    String str = ft.a(this.b);
    boolean bool1 = false;
    if (str == null);
    while (true)
    {
      return bool1;
      File localFile1 = new File(b("ss_", str));
      File localFile2 = new File(b("sc_", str));
      if (!localFile1.exists())
      {
        boolean bool2 = localFile2.exists();
        bool1 = false;
        if (!bool2);
      }
      else
      {
        bool1 = true;
      }
    }
  }

  public final boolean e()
  {
    int i = this.g;
    boolean bool1 = false;
    if (i == 2)
    {
      boolean bool2 = this.f.contains(Integer.valueOf(0));
      bool1 = false;
      if (bool2)
        bool1 = true;
    }
    return bool1;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     rj
 * JD-Core Version:    0.6.2
 */