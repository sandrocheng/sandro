import QQPIM.STReportError;
import QQPIM.VECReportError;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;

final class wy
  implements Runnable
{
  wy(wr paramwr)
  {
  }

  public final void run()
  {
    ArrayList localArrayList;
    try
    {
      localArrayList = wr.b(this.a).c();
      if ((localArrayList != null) && (localArrayList.size() > 0))
      {
        String str = ft.a(wr.r(this.a));
        Iterator localIterator = localArrayList.iterator();
        while (localIterator.hasNext())
          ((STReportError)localIterator.next()).strHardInfo = str;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    while (true)
    {
      return;
      VECReportError localVECReportError = new VECReportError(localArrayList);
      AtomicReference localAtomicReference = new AtomicReference();
      if (((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).reportOperatorDataSyncErrorMsg(localVECReportError, localAtomicReference) == 0)
        wr.b(this.a).d();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     wy
 * JD-Core Version:    0.6.2
 */