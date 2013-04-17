import QQPIM.stUrgentInfo;
import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.antitheft.AntitheftManager;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import java.util.concurrent.atomic.AtomicReference;

final class bfh extends Thread
{
  bfh(bfg parambfg, String paramString)
  {
  }

  public final void run()
  {
    AtomicReference localAtomicReference = new AtomicReference();
    stUrgentInfo localstUrgentInfo = new stUrgentInfo(this.a);
    ((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).setUrgentInfo(bfg.a(this.b).getBindQQNum(), localstUrgentInfo, localAtomicReference);
    if ((localAtomicReference.get() != null) && (((Integer)localAtomicReference.get()).intValue() == 0))
    {
      Message localMessage2 = bfg.b(this.b).obtainMessage(100000);
      localMessage2.obj = this.a;
      bfg.c(this.b).sendMessage(localMessage2);
    }
    while (true)
    {
      return;
      Message localMessage1 = bfg.d(this.b).obtainMessage(100001);
      bfg.e(this.b).sendMessage(localMessage1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bfh
 * JD-Core Version:    0.6.2
 */