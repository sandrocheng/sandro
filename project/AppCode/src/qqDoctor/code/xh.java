import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.database.Cursor;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.permission.PermissionManager;
import com.tencent.tmsecure.module.permission.PermissionTableItem;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;
import com.tencent.tmsecure.module.tools.IPackageChangedListener;

public final class xh
  implements IPackageChangedListener
{
  private Context a;
  private jf b;
  private String c = "PermissionMonitorListener";

  public xh(Context paramContext)
  {
    this.a = paramContext;
    this.b = new jf();
  }

  public final void onPackageAdded(String paramString)
  {
    if (paramString == null)
      return;
    PackageManager localPackageManager;
    if (this.b.a())
      localPackageManager = this.a.getPackageManager();
    while (true)
    {
      try
      {
        PackageInfo localPackageInfo = localPackageManager.getPackageInfo(paramString, 4096);
        SoftwareManager localSoftwareManager = (SoftwareManager)ManagerCreator.getManager(SoftwareManager.class);
        kx localkx = kx.a(localPackageInfo);
        localkx.c = localSoftwareManager.getAppInfo(localkx.b, 1).getAppName();
        if ((localkx == null) || (localkx.c == null))
          break;
        jf localjf = this.b;
        String str1 = localkx.b;
        String str2 = "SELECT mUId FROM permission_info WHERE mPackageName='" + str1 + "'";
        Cursor localCursor = localjf.a.a(str2);
        if ((localCursor == null) || (!localCursor.moveToNext()))
          break label295;
        i = localCursor.getInt(0);
        if (localCursor != null)
          localCursor.close();
        localjf.a.b();
        if (i != -1)
        {
          localjf.a(i);
          localjf.e(i);
        }
        this.b.a(localkx);
        if (!((PermissionManager)ManagerCreator.getManager(PermissionManager.class)).isEnable())
          break;
        xi.b(xf.a(localkx.a, localkx.e, paramString));
        if (ho.a().by())
          break;
        ja.a(localkx, 2);
        PermissionTableItem localPermissionTableItem = xf.a(localkx.a, localkx.e, paramString);
        if (localPermissionTableItem == null)
          break;
        xi.a(localPermissionTableItem);
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        localNameNotFoundException.printStackTrace();
      }
      break;
      break;
      label295: int i = -1;
    }
  }

  public final void onPackageReinstall(String paramString)
  {
    onPackageRemoved(paramString);
    onPackageAdded(paramString);
  }

  public final void onPackageRemoved(String paramString)
  {
    if (!this.b.a());
    while (true)
    {
      return;
      kx localkx = this.b.a(paramString);
      if (localkx != null)
      {
        PermissionManager localPermissionManager = (PermissionManager)ManagerCreator.getManager(PermissionManager.class);
        if (localPermissionManager.isEnable())
          localPermissionManager.removePermissionTableItem(new PermissionTableItem(localkx.a, null, paramString));
        int i = localkx.a;
        this.b.a(i);
        this.b.e(i);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     xh
 * JD-Core Version:    0.6.2
 */