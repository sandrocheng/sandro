import android.content.Context;
import android.os.IBinder;
import com.tencent.tmsecure.common.BaseService;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.software.SoftwareManager;
import com.tencent.tmsecure.module.tools.IPackageChangedListener;
import com.tencent.tmsecure.module.tools.PackageChangedManager;

public class abf extends BaseService
{
  private PackageChangedManager a;
  private SoftwareManager b;
  private boolean c;
  private Context d;
  private IPackageChangedListener e = new abg(this);

  public IBinder onBind()
  {
    return null;
  }

  public void onCreate(Context paramContext)
  {
    super.onCreate(paramContext);
    this.d = paramContext;
    this.b = ((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class));
    this.a = ((PackageChangedManager)ManagerCreator.getManager(PackageChangedManager.class));
    this.a.addListener(this.e);
  }

  public void onDestory()
  {
    super.onDestory();
    this.a.removeListener(this.e);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     abf
 * JD-Core Version:    0.6.2
 */