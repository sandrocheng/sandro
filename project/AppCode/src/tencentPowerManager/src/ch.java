import android.app.ActivityManager;
import android.content.Context;
import com.tencent.powermanager.PowerManagerApplication;
import java.util.ArrayList;
import java.util.List;

public class ch
{
  private static ch a;
  private List<ch.a> b = new ArrayList();
  private ActivityManager c = (ActivityManager)PowerManagerApplication.a().getSystemService("activity");
  private volatile boolean d = false;
  private String e;

  public static ch a()
  {
    try
    {
      if (a == null)
        a = new ch();
      return a;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(ch.a parama)
  {
    try
    {
      if (!this.b.contains(parama))
        this.b.add(parama);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void b()
  {
    this.d = false;
    new Thread(new ci(this)).start();
  }

  public final void b(ch.a parama)
  {
    try
    {
      if (!this.b.contains(parama))
        this.b.remove(parama);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void c()
  {
    this.d = true;
  }

  public static abstract interface a
  {
    public abstract void a(String paramString);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     ch
 * JD-Core Version:    0.6.2
 */