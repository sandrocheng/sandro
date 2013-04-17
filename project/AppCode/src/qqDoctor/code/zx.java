import QQPIM.FeatureKey;
import QQPIM.NotifyInfo;
import android.content.ContentValues;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import java.util.ArrayList;
import java.util.List;

final class zx extends Thread
{
  zx(zs paramzs, List paramList, boolean paramBoolean, dv paramdv)
  {
  }

  public final void run()
  {
    ArrayList localArrayList = new ArrayList();
    int i = this.a.size();
    int j = 0;
    while (j < i)
    {
      mb.a locala2 = (mb.a)this.a.get(j);
      boolean bool = this.b;
      NotifyInfo localNotifyInfo = new NotifyInfo();
      localNotifyInfo.setContent(locala2.a);
      localNotifyInfo.setTitle(locala2.b);
      localNotifyInfo.setTimestamp(locala2.d);
      mb localmb = locala2.i;
      if (localmb.h == null)
      {
        AppEntity localAppEntity = ((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class)).getAppInfo(localmb.a, 25);
        if (localAppEntity != null)
        {
          FeatureKey localFeatureKey = new FeatureKey();
          String str1 = localAppEntity.getPackageName();
          if (str1 == null)
            str1 = "";
          localFeatureKey.setUniCode(str1);
          String str2 = localAppEntity.getAppName();
          if (str2 == null)
            str2 = "";
          localFeatureKey.setSoftName(str2);
          String str3 = localAppEntity.getVersion();
          if (str3 == null)
            str3 = "";
          localFeatureKey.setVersion(str3);
          localFeatureKey.setVersionCode(localAppEntity.getVersionCode());
          String str4 = localAppEntity.getCertMD5();
          if (str4 == null)
            str4 = "";
          localFeatureKey.setCert(str4);
          localFeatureKey.setFileSize((int)localAppEntity.getSize());
          localmb.h = localFeatureKey;
        }
      }
      localNotifyInfo.featurekey = localmb.h;
      Object localObject;
      if (localNotifyInfo.featurekey == null)
      {
        localObject = null;
        if (localObject != null)
          localArrayList.add(localObject);
        j++;
      }
      else
      {
        if (localNotifyInfo.title == null)
          localNotifyInfo.title = "";
        if (localNotifyInfo.content == null)
          localNotifyInfo.content = "";
        label339: int i3;
        if (bool)
        {
          localNotifyInfo.setReportType(1);
          if (!locala2.i.d)
            break label416;
          if ((0x1 & locala2.e) == 0)
            break label404;
          i3 = 1;
          label363: if (i3 == 0)
            break label410;
        }
        label404: label410: for (int i2 = 2; ; i2 = 1)
        {
          localNotifyInfo.setInfoType(i2);
          localNotifyInfo.setUrl(locala2.g);
          localObject = localNotifyInfo;
          break;
          localNotifyInfo.setReportType(2);
          break label339;
          i3 = 0;
          break label363;
        }
        label416: if ((0x1 & locala2.e) != 0);
        for (int i1 = 1; ; i1 = 0)
        {
          i2 = 0;
          if (i1 == 0)
            break;
          i2 = 3;
          break;
        }
      }
    }
    int k = ((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).reportNotifyInfo(localArrayList);
    if (this.c != null)
    {
      this.c.a(Integer.valueOf(k));
      if (k == 0)
      {
        ja localja = new ja();
        int m = this.a.size();
        for (int n = 0; n < m; n++)
        {
          mb.a locala1 = (mb.a)this.a.get(n);
          locala1.e = (0x2 | locala1.e);
          ContentValues localContentValues = ja.a(locala1);
          localja.a.a("notification_msg", localContentValues, "id=" + locala1.h, null);
          localja.a.b();
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     zx
 * JD-Core Version:    0.6.2
 */