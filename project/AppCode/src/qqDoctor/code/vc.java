import android.content.Context;
import android.view.WindowManager;
import com.tencent.qqpimsecure.uilib.view.LocationShowerSuspessionView;

public final class vc
{
  public static String a = "location_shower_add";
  public static String b = "location_shower_delete";
  public static String c = "loaction";
  public static String d = "is_ip";
  public static boolean e = false;
  private LocationShowerSuspessionView f = null;
  private WindowManager g;
  private Context h;

  public vc(Context paramContext)
  {
    this.h = paramContext;
    this.g = ((WindowManager)paramContext.getSystemService("window"));
  }

  public final void a()
  {
    if (e)
    {
      this.f.removeAllMessages();
      this.g.removeView(this.f);
      e = false;
      LocationShowerSuspessionView.isinorout = 0;
    }
  }

  public final void a(String paramString, boolean paramBoolean)
  {
    if (!e)
    {
      if (ho.a().Z() == -1)
        kg.c.gravity = 49;
      this.f = new LocationShowerSuspessionView(this.h, paramString, paramBoolean);
      this.g.addView(this.f, kg.c);
      kg.c.gravity = 51;
      e = true;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     vc
 * JD-Core Version:    0.6.2
 */