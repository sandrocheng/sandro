import QQPIM.MySoftSimpleInfo;
import QQPIM.SoftKey;
import QQPIM.SoftListType;
import QQPIM.SoftSimpleInfo;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.applist.AppListManager;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class abe
{
  public SoftwareManager a = (SoftwareManager)ManagerCreator.getManager(SoftwareManager.class);
  public AppListManager b = (AppListManager)ManagerCreator.getManager(AppListManager.class);
  public jt c = new jt();
  private kd d = new kd();
  private long e = 0L;

  public static List<kw> a(List<kw> paramList, ArrayList<MySoftSimpleInfo> paramArrayList)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator1 = paramList.iterator();
    while (true)
    {
      if (!localIterator1.hasNext())
        break label195;
      kw localkw1 = (kw)localIterator1.next();
      Iterator localIterator2 = paramArrayList.iterator();
      if (localIterator2.hasNext())
      {
        MySoftSimpleInfo localMySoftSimpleInfo = (MySoftSimpleInfo)localIterator2.next();
        SoftKey localSoftKey = localMySoftSimpleInfo.getSoftSimpleInfo().getSoftkey();
        if ((!localSoftKey.getSoftname().equals(localkw1.getPackageName())) || (localMySoftSimpleInfo.getUpdate() != 1))
          break;
        try
        {
          kw localkw2 = (kw)localkw1.clone();
          localkw2.d(1);
          localkw2.d(localMySoftSimpleInfo.getSoftSimpleInfo().getFileurl());
          localkw2.a(localSoftKey.newest_version);
          localkw2.i(localSoftKey.versioncode);
          localkw2.b(localMySoftSimpleInfo.softSimpleInfo.logourl);
          localkw2.p(localMySoftSimpleInfo.softSimpleInfo.strSource);
          localHashMap.put(localkw1.getPackageName(), localkw2);
        }
        catch (Exception localException)
        {
        }
      }
    }
    label195: return new ArrayList(localHashMap.values());
  }

  public final List<kw> a()
  {
    return this.c.a(0);
  }

  public final List<kw> a(List<kw> paramList)
  {
    int i = paramList.size();
    int j = 0;
    int k = 0;
    int i2;
    if (j < i)
    {
      kw localkw2 = (kw)paramList.get(j);
      int i1 = paramList.size();
      i2 = 0;
      label40: if (i2 < i1)
      {
        kw localkw3 = (kw)paramList.get(i2);
        if ((j == i2) || (localkw2.getPackageName() == null) || (localkw3.getPackageName() == null) || (localkw2.getPackageName().hashCode() != localkw3.getPackageName().hashCode()) || (localkw2.getVersionCode() != localkw3.getVersionCode()))
          break label268;
        localkw3.e(12);
      }
    }
    label261: label268: for (int i3 = k + 1; ; i3 = k)
    {
      i2++;
      k = i3;
      break label40;
      j++;
      break;
      this.d.b.putInt("same_apk_count", k).commit();
      Iterator localIterator = paramList.iterator();
      int m = 0;
      if (localIterator.hasNext())
      {
        kw localkw1 = (kw)localIterator.next();
        if (localkw1.n() == -1)
          b(localkw1);
        if (localkw1.n() != 9)
          break label261;
      }
      for (int n = m + 1; ; n = m)
      {
        m = n;
        break;
        this.d.b.putInt("apk_low_version_count", m).commit();
        return paramList;
      }
    }
  }

  public final boolean a(kw paramkw)
  {
    boolean bool;
    if (this.b.contains(paramkw.getPackageName(), SoftListType.WHITELIST_UNUSUAL))
      bool = false;
    while (true)
    {
      return bool;
      long l1 = (System.currentTimeMillis() - this.e) / 1000L;
      if (l1 < 1296000L)
      {
        bool = false;
      }
      else
      {
        String str = TMSApplication.getApplicaionContext().getSharedPreferences("SoftwareManagerImpl", 0).getString(paramkw.getPackageName(), null);
        bor localbor = null;
        if (str != null)
          localbor = bor.a(str);
        new StringBuilder(" name: ").append(paramkw.getAppName()).append(" useageInfo: ").append(localbor).toString();
        if ((l1 >= 1296000L) && (l1 < 2592000L))
        {
          if (localbor == null)
          {
            paramkw.h(2);
            kw.u();
            bool = true;
          }
          else
          {
            long l4 = System.currentTimeMillis() - localbor.c.getTime();
            if ((l4 >= 1296000L) && (l4 < 2592000L))
            {
              paramkw.h(2);
              kw.u();
              bool = true;
            }
          }
        }
        else if ((l1 >= 2592000L) && (l1 < 5184000L))
        {
          if (localbor == null)
          {
            paramkw.h(1);
            kw.u();
            bool = true;
          }
          else
          {
            long l3 = (System.currentTimeMillis() - localbor.c.getTime()) / 1000L;
            if (l3 >= 2592000L)
            {
              paramkw.h(1);
              kw.u();
              bool = true;
            }
            else if ((l3 >= 1296000L) && (l3 < 2592000L))
            {
              paramkw.h(2);
              kw.u();
              bool = true;
            }
          }
        }
        else if (l1 >= 5184000L)
        {
          if (localbor == null)
          {
            paramkw.h(0);
            kw.u();
            bool = true;
          }
          else
          {
            long l2 = (System.currentTimeMillis() - localbor.c.getTime()) / 1000L;
            if (l2 >= 5184000L)
            {
              paramkw.h(0);
              kw.u();
              bool = true;
            }
            else if ((l2 >= 2592000L) && (l2 < 5184000L))
            {
              paramkw.h(1);
              kw.u();
              bool = true;
            }
            else if ((l2 >= 1296000L) && (l2 < 2592000L))
            {
              paramkw.h(2);
              kw.u();
              bool = true;
            }
          }
        }
        else
          bool = false;
      }
    }
  }

  public final String b(kw paramkw)
  {
    if ((paramkw.getPackageName() == null) || (paramkw.getPackageName().equals("")))
      paramkw.e(6);
    while (true)
    {
      return paramkw.j();
      int i = this.a.getAppVersionStatus(paramkw.getPackageName(), paramkw.getVersionCode());
      if (i == 0)
        paramkw.e(2);
      else if (i == 2)
        paramkw.e(9);
      else if (i == -1)
        paramkw.e(1);
    }
  }

  public final List<kw> b()
  {
    return this.c.a(1);
  }

  public final List<kw> b(List<kw> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      kw localkw = (kw)localIterator.next();
      if (this.b.contains(localkw.getPackageName(), SoftListType.BLACKLIST_ROM))
      {
        localkw.h(4);
        localArrayList.add(localkw);
      }
    }
    kd localkd = this.d;
    int i = localArrayList.size();
    localkd.b.putInt("system_black_list_app_count", i).commit();
    return localArrayList;
  }

  public final List<kw> c(List<kw> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      kw localkw = (kw)localIterator.next();
      if (this.b.contains(localkw.getPackageName(), SoftListType.BLACKLIST_WITHPLUGIN))
      {
        localkw.h(3);
        localArrayList.add(localkw);
      }
    }
    kd localkd = this.d;
    int i = localArrayList.size();
    localkd.b.putInt("low_score_app_count", i).commit();
    return localArrayList;
  }

  public final List<kw> d(List<kw> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
      a((kw)localIterator.next());
    kd localkd = this.d;
    int i = localArrayList.size();
    localkd.b.putInt("low_useage_app_count", i).commit();
    return localArrayList;
  }

  public final void e(List<kw> paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      kw localkw = (kw)localIterator.next();
      try
      {
        AppEntity localAppEntity = this.a.getAppInfo(localkw.getPackageName(), 4);
        if (localAppEntity != null)
          localkw.setIcon(localAppEntity.getIcon());
      }
      catch (Exception localException)
      {
        localkw.setIcon(null);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     abe
 * JD-Core Version:    0.6.2
 */