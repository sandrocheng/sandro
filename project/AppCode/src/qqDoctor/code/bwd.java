import QQPIM.AnalyseInfo;
import QQPIM.FeatureKey;
import QQPIM.SoftInfo;
import QQPIM.SoftKey;
import QQPIM.SoftSimpleInfo;
import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import java.util.Iterator;
import java.util.List;

public final class bwd extends BaseManager
{
  public WupSessionManager a;

  public static void a(List<SoftSimpleInfo> paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      SoftSimpleInfo localSoftSimpleInfo = (SoftSimpleInfo)localIterator.next();
      String str = localSoftSimpleInfo.getNick_name();
      if ((str != null) && (!str.equals("")))
        localSoftSimpleInfo.getSoftkey().setName(str);
    }
  }

  public static void b(List<AnalyseInfo> paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      AnalyseInfo localAnalyseInfo = (AnalyseInfo)localIterator.next();
      SoftInfo localSoftInfo = localAnalyseInfo.getSoftInfo();
      if (localSoftInfo != null)
      {
        String str = localSoftInfo.getNick_name();
        if ((str != null) && (!str.equals("")))
          localAnalyseInfo.getFeatureKey().setSoftName(str);
      }
    }
  }

  public final int getSingletonType()
  {
    return 2;
  }

  public final void onCreate(Context paramContext)
  {
    this.a = ((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bwd
 * JD-Core Version:    0.6.2
 */