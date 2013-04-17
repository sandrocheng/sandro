import com.tencent.qqpimsecure.uilib.service.IRetryListener;
import com.tencent.tmsecure.module.update.CheckResult;
import java.util.ArrayList;

final class aoj
  implements IRetryListener
{
  aoj(aoi paramaoi, CheckResult paramCheckResult)
  {
  }

  public final void onCancel()
  {
  }

  public final void onRetry()
  {
    new ss(aoa.ad(this.b.a), false, false).a(this.a, null);
    for (int i = 0; i < aoa.R(this.b.a).d.size(); i++)
    {
      lc locallc = (lc)aoa.R(this.b.a).d.get(i);
      if (locallc.b == 2009)
      {
        locallc.b = 4008;
        aoa.R(this.b.a).d.remove(locallc);
        aoa.R(this.b.a).f.add(locallc);
        aoa.g(this.b.a);
        aoa.i(this.b.a);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aoj
 * JD-Core Version:    0.6.2
 */