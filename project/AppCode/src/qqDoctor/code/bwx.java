import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import com.tencent.tmsecure.module.optimize.IAutoBootHelper;
import com.tencent.tmsecure.module.optimize.IAutoBootHelper.Pair;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

final class bwx
  implements IAutoBootHelper
{
  private final ConcurrentHashMap<String, ArrayList<String>> a = new ConcurrentHashMap(new HashMap());
  private Context b;

  public bwx(Context paramContext)
  {
    this.b = paramContext;
  }

  private boolean a(String paramString)
  {
    ArrayList localArrayList = (ArrayList)this.a.get(paramString);
    Iterator localIterator;
    boolean bool2;
    boolean bool1;
    if ((localArrayList != null) && (localArrayList.size() > 0))
    {
      localIterator = localArrayList.iterator();
      bool2 = true;
      if (!localIterator.hasNext())
        bool1 = bool2;
    }
    while (true)
    {
      label45: return bool1;
      String str = (String)localIterator.next();
      if (this.b.getPackageManager().getComponentEnabledSetting(new ComponentName(paramString, str)) != 2);
      for (int i = 1; ; i = 0)
      {
        bool1 = i & bool2;
        if (!bool1)
          break label45;
        bool2 = bool1;
        break;
      }
      bool1 = false;
    }
  }

  public final ArrayList<IAutoBootHelper.Pair<String, Boolean>> getAllAutoBootApps()
  {
    ArrayList localArrayList1 = new ArrayList();
    List localList = this.b.getPackageManager().queryBroadcastReceivers(new Intent("android.intent.action.BOOT_COMPLETED"), 512);
    this.a.clear();
    Iterator localIterator1 = localList.iterator();
    Iterator localIterator2;
    if (!localIterator1.hasNext())
      localIterator2 = this.a.entrySet().iterator();
    while (true)
    {
      if (!localIterator2.hasNext())
      {
        return localArrayList1;
        ResolveInfo localResolveInfo = (ResolveInfo)localIterator1.next();
        String str1 = localResolveInfo.activityInfo.packageName;
        String str2 = localResolveInfo.activityInfo.name;
        ArrayList localArrayList2;
        if (!this.a.containsKey(str1))
        {
          localArrayList2 = new ArrayList();
          this.a.put(str1, localArrayList2);
        }
        while (true)
        {
          if (localArrayList2.contains(str2))
            break label180;
          localArrayList2.add(str2);
          break;
          localArrayList2 = (ArrayList)this.a.get(str1);
        }
        label180: break;
      }
      Map.Entry localEntry = (Map.Entry)localIterator2.next();
      localArrayList1.add(new IAutoBootHelper.Pair((String)localEntry.getKey(), Boolean.valueOf(a((String)localEntry.getKey()))));
    }
  }

  public final boolean setAutoBootEnable(String paramString, boolean paramBoolean)
  {
    List localList;
    ArrayList localArrayList;
    Iterator localIterator2;
    if ((ScriptHelper.providerSupportPmRelative()) || (ScriptHelper.isSystemUid()) || (ScriptHelper.isRootGot()))
    {
      localList = (List)this.a.get(paramString);
      localArrayList = new ArrayList();
      if (localList != null)
      {
        if (!ScriptHelper.providerSupportPmRelative())
          break label104;
        localIterator2 = localList.iterator();
        if (localIterator2.hasNext())
          break label82;
      }
    }
    label67: if (a(paramString) == paramBoolean);
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      label82: localIterator2.next();
      if (!ScriptHelper.provider$24edfebd().h())
        break label67;
      break;
      label104: Iterator localIterator1 = localList.iterator();
      if (!localIterator1.hasNext())
      {
        ScriptHelper.runScriptIfSystemUidOrAsRoot(localArrayList);
        break label67;
      }
      String str1 = (String)localIterator1.next();
      Object[] arrayOfObject = new Object[3];
      if (paramBoolean);
      for (String str2 = "enable"; ; str2 = "disable")
      {
        arrayOfObject[0] = str2;
        arrayOfObject[1] = paramString;
        arrayOfObject[2] = str1;
        localArrayList.add(String.format("pm %s '%s/%s'", arrayOfObject));
        break;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bwx
 * JD-Core Version:    0.6.2
 */