import android.content.Context;
import android.content.Intent;
import com.tencent.tmsecure.common.TMSService;
import com.tencent.tmsecure.module.tools.IPackageChangedListener;

public final class abd
  implements IPackageChangedListener
{
  private Context a;

  public abd(Context paramContext)
  {
    this.a = paramContext;
  }

  public final void onPackageAdded(String paramString)
  {
    Intent localIntent = new Intent(this.a, aau.class);
    localIntent.putExtra("extra_action_type", "action_type_package_add");
    localIntent.putExtra("extra_action_package_name", paramString);
    TMSService.startService(new aau(), localIntent);
  }

  public final void onPackageReinstall(String paramString)
  {
    Intent localIntent = new Intent(this.a, aau.class);
    localIntent.putExtra("extra_action_type", "action_type_package_reinstall");
    localIntent.putExtra("extra_action_package_name", paramString);
    TMSService.startService(new aau(), localIntent);
  }

  public final void onPackageRemoved(String paramString)
  {
    Intent localIntent = new Intent(this.a, aau.class);
    localIntent.putExtra("extra_action_type", "action_type_package_remove");
    localIntent.putExtra("extra_action_package_name", paramString);
    TMSService.startService(new aau(), localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     abd
 * JD-Core Version:    0.6.2
 */