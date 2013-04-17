import QQPIM.CloudInfo;
import QQPIM.CloudInfoRes;
import QQPIM.CmdInfoRes;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class qs
  implements Runnable
{
  qs(qr paramqr, CmdInfoRes paramCmdInfoRes, ArrayList paramArrayList)
  {
  }

  public final void run()
  {
    if (((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).reportTipsRes(this.a) == 0)
    {
      Iterator localIterator = this.b.iterator();
      while (localIterator.hasNext())
      {
        CloudInfoRes localCloudInfoRes = (CloudInfoRes)localIterator.next();
        if ((localCloudInfoRes.getPhase() == 3) || ((localCloudInfoRes.getPhase() == 2) && (localCloudInfoRes.getAction() == 2)))
        {
          CloudInfo localCloudInfo = this.c.b(localCloudInfoRes.getTipsid());
          qr.a(this.c).remove(localCloudInfo);
          qr.b(this.c).remove(localCloudInfoRes);
        }
      }
      qr.c(this.c);
      qr.d(this.c);
      qr.e(this.c);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     qs
 * JD-Core Version:    0.6.2
 */