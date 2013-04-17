import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public final class abk
{
  private static abk b;
  private static String c = "";
  private String a = "SoftwareUsageInfoMonitor";
  private String d = "";
  private boolean e = false;
  private SharedPreferences.Editor f;
  private SharedPreferences g;
  private abv.b h = new abl(this);

  private abk(Context paramContext)
  {
    paramContext.getPackageName();
    this.g = paramContext.getSharedPreferences("SoftwareManagerImpl", 0);
    this.f = this.g.edit();
  }

  public static abk a(Context paramContext)
  {
    try
    {
      if (b == null)
        b = new abk(paramContext);
      abk localabk = b;
      return localabk;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a()
  {
    abv.a().b(this.h);
    this.e = false;
    c = "";
  }

  public final void b()
  {
    if (!this.e)
    {
      abv.a().a(this.h);
      this.e = true;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     abk
 * JD-Core Version:    0.6.2
 */