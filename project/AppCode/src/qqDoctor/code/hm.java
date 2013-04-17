import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public final class hm
{
  public SharedPreferences a;
  public SharedPreferences.Editor b;
  private Context c;

  public hm(Context paramContext)
  {
    this.c = paramContext;
    this.a = this.c.getSharedPreferences("CameraMonitorWindowDao", 0);
    this.b = this.a.edit();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     hm
 * JD-Core Version:    0.6.2
 */