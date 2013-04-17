import android.content.Context;
import android.os.Handler;
import com.tencent.qqpimsecure.ui.activity.faceverify.CameraCaptureActivity;
import com.tencent.qqpimsecure.ui.activity.faceverify.VerifyResultActivity;
import com.tencent.qqpimsecure.ui.activity.privacy.PrivacyPatternPasswordEnterActivity;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class sv
{
  public static Set<String> a = new HashSet();
  public static Map<String, Integer> b = new HashMap();
  public static String c = "";
  private static sv e;
  private String d = "LockMonitor";
  private Context f;
  private Handler g = null;
  private boolean h = false;
  private fv i;
  private String j;
  private String k = "";
  private ho l;
  private abv.b m;

  private sv(Context paramContext)
  {
    PrivacyPatternPasswordEnterActivity.class.getName();
    CameraCaptureActivity.class.getName();
    VerifyResultActivity.class.getName();
    this.m = new sx(this);
    this.f = paramContext;
    this.l = ho.a();
    this.i = new fv(paramContext);
    paramContext.getSystemService("activity");
    this.j = paramContext.getPackageName();
    this.g = new sw(this, paramContext.getApplicationContext().getMainLooper());
  }

  public static sv a(Context paramContext)
  {
    if (e == null)
      e = new sv(paramContext);
    return e;
  }

  public final void a()
  {
    abv.a().b(this.m);
    this.h = false;
    c = "";
  }

  public final void b()
  {
    if (!this.h)
    {
      fv localfv = this.i;
      HashSet localHashSet = new HashSet();
      Iterator localIterator = localfv.a.b().iterator();
      while (localIterator.hasNext())
      {
        String str = ((mf)localIterator.next()).a;
        if ((str != null) && (!str.equals("")))
          localHashSet.add(str);
      }
      a = localHashSet;
      if (localHashSet.size() > 0)
      {
        abv.a().a(this.m);
        this.h = true;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     sv
 * JD-Core Version:    0.6.2
 */