import android.content.Context;
import android.content.Intent;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.market.MarketManager;
import com.tencent.tmsecure.module.market.RequestInfo;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.ArrayList;
import java.util.List;

final class aaw extends Thread
{
  aaw(aau paramaau, boolean paramBoolean)
  {
  }

  public final void run()
  {
    try
    {
      if ((!aau.a()) || (aau.b(this.b)))
      {
        aau.a(true);
        jt localjt = aau.c(this.b);
        int i = localjt.a(localjt.j, null, null, "id ASC").size();
        if ((System.currentTimeMillis() - aau.d(this.b).bo() > aau.d(this.b).bq()) || (i == 0) || (this.a))
        {
          List localList1 = aau.c(this.b).a(2);
          if ((localList1 == null) || (localList1.size() == 0) || (this.a))
          {
            localList1.clear();
            localList1.addAll(a.b(aau.e(this.b).a.getInstalledApp(121, 0)));
            localList1.addAll(a.b(aau.e(this.b).a.getInstalledApp(121, 1)));
          }
          List localList2 = a.a(new ArrayList(localList1));
          MarketManager localMarketManager = (MarketManager)ManagerCreator.getManager(MarketManager.class);
          RequestInfo localRequestInfo = new RequestInfo();
          localRequestInfo.type = 0;
          localMarketManager.fetchMySoftwareListInfo(localRequestInfo, localList2, new aax(this, localList1));
        }
        aau.a(false);
      }
    }
    catch (Exception localException)
    {
      while (true)
        aau.g(this.b).sendBroadcast(new Intent("com.tencent.qqpimsecure.NOTIFY_UI_FAILURE"));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aaw
 * JD-Core Version:    0.6.2
 */