import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.network.NetworkManager;
import java.util.List;

public final class wd
  implements Runnable
{
  public final void run()
  {
    try
    {
      NetworkManager localNetworkManager = (NetworkManager)ManagerCreator.getManager(NetworkManager.class);
      List localList = QQPimApplication.a().getPackageManager().getInstalledPackages(0);
      String[] arrayOfString = new String[localList.size()];
      for (int i = 0; i < localList.size(); i++)
        arrayOfString[i] = ((PackageInfo)localList.get(i)).packageName;
      ho localho = ho.a();
      if (!localho.cb())
      {
        localNetworkManager.refreshTrafficInfo(arrayOfString, true);
        localho.cc();
      }
      else
      {
        localNetworkManager.refreshTrafficInfo(arrayOfString, false);
      }
    }
    catch (RuntimeException localRuntimeException)
    {
      localRuntimeException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     wd
 * JD-Core Version:    0.6.2
 */