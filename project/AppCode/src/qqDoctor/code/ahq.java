import QQPIM.stUrgentInfo;
import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofUrgentContactActivity.a;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.antitheft.AntitheftManager;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import java.util.concurrent.atomic.AtomicReference;

public final class ahq extends Thread
{
  public ahq(PickproofUrgentContactActivity.a parama, String paramString)
  {
  }

  public final void run()
  {
    AtomicReference localAtomicReference = new AtomicReference();
    stUrgentInfo localstUrgentInfo = new stUrgentInfo(this.a);
    ((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).setUrgentInfo(PickproofUrgentContactActivity.a.e(this.b).getBindQQNum(), localstUrgentInfo, localAtomicReference);
    if ((localAtomicReference.get() != null) && (((Integer)localAtomicReference.get()).intValue() == 0))
    {
      Message localMessage2 = PickproofUrgentContactActivity.a.f(this.b).obtainMessage(100000);
      localMessage2.obj = this.a;
      PickproofUrgentContactActivity.a.g(this.b).sendMessage(localMessage2);
    }
    while (true)
    {
      return;
      Message localMessage1 = PickproofUrgentContactActivity.a.h(this.b).obtainMessage(100001);
      PickproofUrgentContactActivity.a.i(this.b).sendMessage(localMessage1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ahq
 * JD-Core Version:    0.6.2
 */