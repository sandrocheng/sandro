import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public final class is
{
  private static is d;
  public SharedPreferences.Editor a;
  public SharedPreferences b;
  private Context c;

  private is(Context paramContext)
  {
    this.c = paramContext;
    this.b = this.c.getSharedPreferences("MarketDao", 0);
    this.a = this.b.edit();
  }

  public static is a(Context paramContext)
  {
    try
    {
      if (d == null)
        d = new is(paramContext);
      is localis = d;
      return localis;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(boolean paramBoolean)
  {
    new StringBuilder("MarketDao setHasNotSeeWeek hasNotSeeWeek ").append(paramBoolean).toString();
    this.a.putBoolean("has_not_see_wek", paramBoolean).commit();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     is
 * JD-Core Version:    0.6.2
 */