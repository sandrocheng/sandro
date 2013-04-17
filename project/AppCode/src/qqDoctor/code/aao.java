import QQPIM.FeatureKey;
import QQPIM.SoftAction;
import android.database.Cursor;
import com.tencent.tmsecure.module.permission.PermissionRequestInfo;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class aao
  implements Runnable
{
  aao(aan paramaan, PermissionRequestInfo paramPermissionRequestInfo)
  {
  }

  public final void run()
  {
    int i = 1;
    jf localjf = this.b.d;
    int j = this.a.mUid;
    String str1 = "SELECT * FROM permission_info WHERE mUId=" + j;
    Cursor localCursor = localjf.a.a(str1);
    kx localkx2;
    int m;
    if ((localCursor != null) && (localCursor.moveToNext()))
    {
      localkx2 = new kx();
      localkx2.a = localCursor.getInt(0);
      localkx2.b = localCursor.getString(i);
      localkx2.c = localCursor.getString(2);
      localkx2.e = localCursor.getBlob(3);
      if (localCursor.getInt(4) == i)
      {
        m = i;
        localkx2.f = m;
        if (localCursor.getInt(5) != i)
          break label503;
        label157: localkx2.g = i;
      }
    }
    for (kx localkx1 = localkx2; ; localkx1 = null)
    {
      if (localCursor != null)
        localCursor.close();
      localjf.a.b();
      int k;
      FeatureKey localFeatureKey;
      SoftAction localSoftAction;
      if (localkx1 != null)
      {
        k = aan.a(this.b, localkx1.b);
        if (k != 0)
        {
          AppEntity localAppEntity = this.b.e.getAppInfo(localkx1.b, 17);
          if (localAppEntity != null)
          {
            localFeatureKey = new FeatureKey();
            String str2 = localAppEntity.getPackageName();
            if (str2 == null)
              str2 = "";
            localFeatureKey.setUniCode(str2);
            String str3 = localAppEntity.getAppName();
            if (str3 == null)
              str3 = "";
            localFeatureKey.setSoftName(str3);
            String str4 = localAppEntity.getVersion();
            if (str4 == null)
              str4 = "";
            localFeatureKey.setVersion(str4);
            localFeatureKey.setVersionCode(localAppEntity.getVersionCode());
            String str5 = localAppEntity.getCertMD5();
            if (str5 == null)
              str5 = "";
            localFeatureKey.setCert(str5);
            localFeatureKey.setFileSize((int)localAppEntity.getSize());
            Iterator localIterator = this.b.c.iterator();
            do
            {
              if (!localIterator.hasNext())
                break;
              localSoftAction = (SoftAction)localIterator.next();
            }
            while (!localSoftAction.featurekey.uniCode.equals(localkx1.b));
          }
        }
      }
      while (true)
      {
        if (localSoftAction == null)
        {
          localSoftAction = new SoftAction();
          localSoftAction.featurekey = localFeatureKey;
          localSoftAction.vecaction = new ArrayList();
          this.b.c.add(localSoftAction);
        }
        aan.a(this.b, localSoftAction, k, this.a);
        fj.a(this.b.a, this.b.c, "label_sa", "sa.dat");
        return;
        m = 0;
        break;
        label503: i = 0;
        break label157;
        localSoftAction = null;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aao
 * JD-Core Version:    0.6.2
 */