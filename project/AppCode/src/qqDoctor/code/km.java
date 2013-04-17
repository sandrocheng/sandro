import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public final class km
{
  public SharedPreferences.Editor a;
  public SharedPreferences b;
  private Context c;

  public km(Context paramContext)
  {
    this.c = paramContext;
    this.b = this.c.getSharedPreferences("VirusScanConfigDao", 0);
    this.a = this.b.edit();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     km
 * JD-Core Version:    0.6.2
 */