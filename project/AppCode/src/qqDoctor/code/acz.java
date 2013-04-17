import android.content.SharedPreferences;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.market.MarketManager;
import com.tencent.tmsecure.module.market.RequestInfo;
import java.util.ArrayList;

public final class acz
{
  int a;
  is b = is.a(QQPimApplication.a());
  jt c = new jt();

  public final void a(String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    MarketManager localMarketManager = (MarketManager)ManagerCreator.getManager(MarketManager.class);
    RequestInfo localRequestInfo1 = new RequestInfo();
    localRequestInfo1.type = 11;
    localRequestInfo1.pushType = 1;
    new StringBuilder("requestWeekRecData 11 toAppInfo mMarketDao.getLastWeekTime() ").append(this.b.b.getLong("last_week_time", -1L)).toString();
    localRequestInfo1.time = this.b.b.getLong("last_week_time", -1L);
    localMarketManager.fetchCategoryList(localRequestInfo1, new ada(this, paramString1, paramString2, localArrayList));
    if (this.a > 0);
    while (true)
    {
      return;
      RequestInfo localRequestInfo2 = new RequestInfo();
      localRequestInfo2.type = 11;
      localRequestInfo2.pushType = 2;
      new StringBuilder("requestWeekRecData 22 toAppInfo mMarketDao.getLastWeekTime() ").append(this.b.b.getLong("last_week_time", -1L)).toString();
      localRequestInfo2.time = this.b.b.getLong("last_week_time", -1L);
      localMarketManager.fetchCategoryList(localRequestInfo2, new adb(this, paramString1, paramString2, localArrayList));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     acz
 * JD-Core Version:    0.6.2
 */