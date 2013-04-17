import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public final class ih
{
  public static boolean a = false;
  private static ih b;
  private SharedPreferences c;
  private SharedPreferences.Editor d;
  private Context e;

  private ih(Context paramContext)
  {
    this.e = paramContext;
    this.c = this.e.getSharedPreferences("firewallData", 0);
    this.d = this.c.edit();
  }

  public static ih a(Context paramContext)
  {
    try
    {
      if (b == null)
        b = new ih(paramContext);
      return b;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(boolean paramBoolean)
  {
    this.d.putBoolean("last_init_success", paramBoolean).commit();
  }

  public final boolean a()
  {
    return this.c.getBoolean("is_warn_no_root", true);
  }

  public final void b()
  {
    this.d.putBoolean("is_warn_no_root", false).commit();
  }

  public final boolean c()
  {
    return this.c.getBoolean("is_get_root", true);
  }

  public final void d()
  {
    this.d.putBoolean("is_get_root", false).commit();
  }

  public final boolean e()
  {
    return this.c.getBoolean("last_init_success", false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ih
 * JD-Core Version:    0.6.2
 */