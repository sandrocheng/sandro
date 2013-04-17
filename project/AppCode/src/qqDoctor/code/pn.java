import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.optimize.IAutoBootHelper;
import com.tencent.tmsecure.module.optimize.IAutoBootHelper.Pair;
import com.tencent.tmsecure.module.optimize.OptimizeManager;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class pn
{
  public static pn a;
  public ho b = ho.a();
  public String c = this.b.bC();
  public List<String> d = new ArrayList();

  public pn()
  {
    for (String str : this.c.split(";"))
      this.d.add(str);
  }

  public static List<kw> a()
  {
    IAutoBootHelper localIAutoBootHelper = ((OptimizeManager)ManagerCreator.getManager(OptimizeManager.class)).getAutoBootHelper();
    SoftwareManager localSoftwareManager = (SoftwareManager)ManagerCreator.getManager(SoftwareManager.class);
    ArrayList localArrayList1 = localIAutoBootHelper.getAllAutoBootApps();
    ArrayList localArrayList2 = new ArrayList();
    Iterator localIterator = localArrayList1.iterator();
    while (localIterator.hasNext())
    {
      IAutoBootHelper.Pair localPair = (IAutoBootHelper.Pair)localIterator.next();
      if (localPair != null)
      {
        kw localkw = a.a(localSoftwareManager.getAppInfo((String)localPair.first, 73), false);
        if ((localkw != null) && (!localkw.isSystemApp()) && (!((String)localPair.first).equals(new hg().a)))
        {
          localkw.a(((Boolean)localPair.second).booleanValue());
          localArrayList2.add(localkw);
        }
      }
    }
    return localArrayList2;
  }

  public static int b()
  {
    Iterator localIterator = a().iterator();
    int i = 0;
    if (localIterator.hasNext())
      if (!((kw)localIterator.next()).m())
        break label46;
    label46: for (int j = i + 1; ; j = i)
    {
      i = j;
      break;
      return i;
    }
  }

  public static boolean b(kw paramkw)
  {
    if (((OptimizeManager)ManagerCreator.getManager(OptimizeManager.class)).getAutoBootHelper().setAutoBootEnable(paramkw.getPackageName(), false))
      paramkw.a(false);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean a(kw paramkw)
  {
    boolean bool;
    if (this.d == null)
      bool = false;
    while (true)
    {
      return bool;
      Iterator localIterator = this.d.iterator();
      while (true)
        if (localIterator.hasNext())
          if (((String)localIterator.next()).equals(paramkw.getPackageName()))
          {
            bool = true;
            break;
          }
      bool = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     pn
 * JD-Core Version:    0.6.2
 */