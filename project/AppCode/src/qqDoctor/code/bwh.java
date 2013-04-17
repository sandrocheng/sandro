import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.network.TrafficEntity;
import com.tencent.tmsecure.module.tools.PackageChangedManager;

final class bwh
{
  SharedPreferences a = this.d.getSharedPreferences("traffic_xml", 0);
  SharedPreferences.Editor b = this.a.edit();
  bwt c = new bwt();
  private Context d = TMSApplication.getApplicaionContext();

  public bwh()
  {
    ((PackageChangedManager)ManagerCreator.getManager(PackageChangedManager.class)).addListener(new bwi(this));
  }

  final int a(String paramString)
  {
    try
    {
      ApplicationInfo localApplicationInfo2 = this.d.getPackageManager().getApplicationInfo(paramString, 0);
      localApplicationInfo1 = localApplicationInfo2;
      if (localApplicationInfo1 != null)
      {
        i = localApplicationInfo1.uid;
        return i;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
      {
        localNameNotFoundException.printStackTrace();
        ApplicationInfo localApplicationInfo1 = null;
        continue;
        int i = -1;
      }
    }
  }

  public final void a(String[] paramArrayOfString)
  {
    int i = paramArrayOfString.length;
    int j = 0;
    if (j >= i)
    {
      this.b.commit();
      return;
    }
    String str = paramArrayOfString[j];
    int k = a(str);
    TrafficEntity localTrafficEntity = b(str);
    if ((k != -1) && (localTrafficEntity != null))
    {
      localTrafficEntity.mLastUpValue = this.c.b(k);
      localTrafficEntity.mLastDownValue = this.c.a(k);
      localTrafficEntity.mMobileDownValue = 0L;
      localTrafficEntity.mMobileUpValue = 0L;
      localTrafficEntity.mWIFIDownValue = 0L;
      localTrafficEntity.mWIFIUpValue = 0L;
      this.b.putString(str, TrafficEntity.toString(localTrafficEntity));
    }
    while (true)
    {
      j++;
      break;
      this.b.putString(str, "EMPTY");
    }
  }

  public final TrafficEntity b(String paramString)
  {
    int i = a(paramString);
    String str = this.a.getString(paramString, null);
    TrafficEntity localTrafficEntity = null;
    if (i != -1)
    {
      localTrafficEntity = null;
      if (str != null)
      {
        boolean bool = "EMPTY".equals(str);
        localTrafficEntity = null;
        if (!bool)
          localTrafficEntity = TrafficEntity.fromString(str);
      }
    }
    return localTrafficEntity;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bwh
 * JD-Core Version:    0.6.2
 */