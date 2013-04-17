import QQPIM.DownInfo;
import com.tencent.tmsecure.common.ErrorCode;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import java.util.ArrayList;

final class oi
  implements Runnable
{
  oi(oh paramoh, kv paramkv, boolean paramBoolean)
  {
  }

  public final void run()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(oh.a(this.c, this.a, this.b));
    if (localArrayList.size() > 0)
    {
      DownInfo localDownInfo = new DownInfo("AQQSecure_GA_2_0/011201&ADR&" + ft.a() + "&V2", 0, localArrayList);
      int i = ((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).reportDownSoft(localDownInfo);
      if ((i == 0) || (ErrorCode.judgeErrorCode(i) != 0));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     oi
 * JD-Core Version:    0.6.2
 */