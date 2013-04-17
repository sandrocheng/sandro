import QQPIM.UserActionTime;
import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import java.util.ArrayList;
import java.util.List;

final class zu extends Thread
{
  zu(zs paramzs, mm parammm)
  {
  }

  public final void run()
  {
    try
    {
      ArrayList localArrayList1 = new ArrayList();
      UserActionTime localUserActionTime = new UserActionTime();
      localUserActionTime.time = ((int)(System.currentTimeMillis() / 1000L));
      localUserActionTime.userAction = 20;
      this.a.i.add(localUserActionTime);
      String str = this.a.c;
      if (this.b.d.da())
        this.a.c = "";
      localArrayList1.add(this.a);
      ArrayList localArrayList2 = zs.a(localArrayList1);
      if (((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).reportSms(localArrayList2) != 0)
      {
        Message localMessage = this.b.e.obtainMessage(5);
        this.a.i.remove(localUserActionTime);
        this.a.c = str;
        localMessage.obj = this.a;
        this.b.e.sendMessage(localMessage);
      }
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     zu
 * JD-Core Version:    0.6.2
 */