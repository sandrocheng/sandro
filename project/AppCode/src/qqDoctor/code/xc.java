import com.tencent.tmsecure.module.update.CheckResult;
import com.tencent.tmsecure.module.update.ICheckListener;
import java.util.List;

final class xc
  implements ICheckListener
{
  private boolean a = false;

  xc(xb paramxb, lc paramlc)
  {
  }

  public final void onCheckCanceled()
  {
  }

  public final void onCheckEvent(int paramInt)
  {
    if (paramInt < 0)
      this.a = true;
  }

  public final void onCheckFinished(CheckResult paramCheckResult)
  {
    if (!this.a)
    {
      this.b.e = paramCheckResult;
      ho localho = ho.a();
      Long.valueOf(System.currentTimeMillis());
      localho.m();
      if ((paramCheckResult != null) && (paramCheckResult.mUpdateInfoList.size() > 0))
        this.b.d = Integer.valueOf(2);
    }
    while (true)
    {
      xb.a(this.c, 102, this.b);
      return;
      this.b.d = Integer.valueOf(3);
      continue;
      this.b.d = Integer.valueOf(4);
    }
  }

  public final void onCheckStarted()
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     xc
 * JD-Core Version:    0.6.2
 */