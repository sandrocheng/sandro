import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.module.update.CheckResult;
import com.tencent.tmsecure.module.update.IUpdateListener;
import com.tencent.tmsecure.module.update.UpdateManager;
import java.util.List;

public final class sq extends pe
{
  private UpdateManager k = null;
  private CheckResult l;
  private sq.a m = null;
  private Handler n = new sr(this);

  public sq(Context paramContext)
  {
    super(paramContext, false, false);
  }

  private void c(int paramInt)
  {
    Message localMessage = new Message();
    localMessage.what = 11;
    if (paramInt == 0)
      if ((this.l != null) && (this.l.mUpdateInfoList != null) && (this.l.mUpdateInfoList.size() > 0))
        if (this.g == 0)
        {
          localMessage.arg1 = 2;
          this.n.sendMessage(localMessage);
        }
    while (true)
    {
      return;
      localMessage.arg1 = 1;
      this.n.sendMessage(localMessage);
      continue;
      localMessage.arg1 = 3;
      this.n.sendMessage(localMessage);
      continue;
      localMessage.arg1 = 1;
      this.n.sendMessage(localMessage);
    }
  }

  public final void a(int paramInt)
  {
    nd.a().a(26175, paramInt);
  }

  protected final void a(CheckResult paramCheckResult, int paramInt)
  {
    this.l = paramCheckResult;
    if ((this.l == null) || (this.l.mUpdateInfoList == null) || (this.l.mUpdateInfoList.isEmpty()))
      c(paramInt);
  }

  protected final void a(CheckResult paramCheckResult, IUpdateListener paramIUpdateListener)
  {
    this.k.update(paramCheckResult.mUpdateInfoList, paramIUpdateListener);
    nd.a().a(4);
  }

  public final void a(sq.a parama)
  {
    this.m = parama;
  }

  protected final void b(int paramInt)
  {
    c(paramInt);
  }

  public final void e()
  {
    this.k.check(8, this.i);
  }

  protected final void f()
  {
    if (this.k != null)
      this.k.cancel();
  }

  public static abstract interface a
  {
    public abstract void a(int paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     sq
 * JD-Core Version:    0.6.2
 */