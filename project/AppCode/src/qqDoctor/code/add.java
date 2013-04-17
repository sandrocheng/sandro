import QQPIM.SoftList;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.applist.AppListManager;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;

public final class add
{
  static add a;
  AppListManager b = (AppListManager)ManagerCreator.getManager(AppListManager.class);
  SoftList c;
  private SoftwareManager d = (SoftwareManager)ManagerCreator.getManager(SoftwareManager.class);

  final boolean a(String paramString1, String paramString2)
  {
    AppEntity localAppEntity = this.d.getAppInfo(paramString1, 16);
    if ((localAppEntity != null) && (localAppEntity.get("signatureCermMD5") != null) && (localAppEntity.get("signatureCermMD5").equals(paramString2)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     add
 * JD-Core Version:    0.6.2
 */