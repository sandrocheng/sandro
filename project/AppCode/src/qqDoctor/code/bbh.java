import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.module.netsetting.FirewallManager;
import com.tencent.tmsecure.module.netsetting.Rule;
import java.util.ArrayList;
import java.util.List;

final class bbh extends Thread
{
  bbh(bax parambax, List paramList, int paramInt)
  {
  }

  public final void run()
  {
    Rule localRule = new Rule();
    localRule.uid = ((mn)this.a.get(0)).a;
    localRule.type = 1;
    localRule.uidMobileVerdict = a.c(this.b);
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(localRule);
    bax.g(this.c).setRules(localArrayList);
    bax.h(this.c).obtainMessage(7).sendToTarget();
    bax.j(this.c).obtainMessage(4, bax.i(this.c), 0).sendToTarget();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bbh
 * JD-Core Version:    0.6.2
 */