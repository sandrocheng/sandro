import QQPIM.SoftList;
import QQPIM.SoftListType;
import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.applist.AppListManager;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

final class rq
  implements Runnable
{
  rq(rn paramrn, String paramString)
  {
  }

  public final void run()
  {
    rn.c(this.b);
    String str = this.a;
    AppListManager localAppListManager = (AppListManager)ManagerCreator.getManager(AppListManager.class);
    SoftwareManager localSoftwareManager = (SoftwareManager)ManagerCreator.getManager(SoftwareManager.class);
    SoftList localSoftList = localAppListManager.loadAppList(SoftListType.DEEPCLEAN_SOFT_PATH_LIST);
    HashMap localHashMap = new HashMap();
    Iterator localIterator1 = eb.a(localSoftList, localHashMap, new HashMap()).iterator();
    Object localObject1;
    List localList1;
    Object localObject2;
    while (localIterator1.hasNext())
    {
      lh locallh = (lh)localIterator1.next();
      if (locallh.a.equals(str))
        if (locallh.c)
        {
          Iterator localIterator2 = locallh.d.iterator();
          localObject1 = null;
          while (localIterator2.hasNext())
          {
            lg locallg = (lg)localIterator2.next();
            localList1 = eb.a(locallg.a, locallg.d);
            if ((localList1 != null) && (localList1.size() != 0) && (!rm.a(locallh.a, locallg, localHashMap, localSoftwareManager)))
            {
              if (localObject1 != null)
                break label346;
              localObject2 = new kw();
              ((kw)localObject2).setPackageName(locallh.a);
              ((kw)localObject2).setAppName(locallh.b);
            }
          }
        }
    }
    while (true)
    {
      List localList2 = ((kw)localObject2).T();
      if (localList2 != null)
      {
        localList2.addAll(localList1);
        ((kw)localObject2).a(localList2);
      }
      while (true)
      {
        ((kw)localObject2).g(((kw)localObject2).S() + a.e(localList1));
        localObject1 = localObject2;
        break;
        ((kw)localObject2).a(localList1);
      }
      if ((localObject1 == null) || (localObject1.T() == null))
        break;
      if (localObject1 == null);
      while (true)
      {
        return;
        localObject1 = null;
        break;
        Message localMessage = rn.b(this.b).obtainMessage(1);
        localMessage.obj = localObject1;
        localMessage.sendToTarget();
      }
      label346: localObject2 = localObject1;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     rq
 * JD-Core Version:    0.6.2
 */