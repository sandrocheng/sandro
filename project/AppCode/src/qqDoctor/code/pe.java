import android.content.Context;
import android.os.Handler;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.uilib.service.IRetryListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.module.update.CheckResult;
import com.tencent.tmsecure.module.update.ICheckListener;
import com.tencent.tmsecure.module.update.IUpdateListener;

public abstract class pe
{
  public static int a = 1;
  protected Context b;
  protected Dialog c = null;
  protected CheckResult d = null;
  pe.a e = null;
  protected boolean f;
  int g = 0;
  protected IUpdateListener h = new pf(this);
  protected ICheckListener i = new pg(this);
  protected Handler j = new ph(this, QQPimApplication.a().getMainLooper());
  private int k = 0;
  private boolean l;

  public pe(Context paramContext, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.b = paramContext;
    this.l = paramBoolean1;
    this.f = paramBoolean2;
  }

  public final void a()
  {
    this.k = 1;
  }

  public void a(int paramInt)
  {
  }

  protected void a(Context paramContext, CheckResult paramCheckResult, IRetryListener paramIRetryListener)
  {
    paramIRetryListener.onRetry();
  }

  protected abstract void a(CheckResult paramCheckResult, int paramInt);

  protected abstract void a(CheckResult paramCheckResult, IUpdateListener paramIUpdateListener);

  public final void a(pe.a parama)
  {
    this.e = parama;
  }

  public final int b()
  {
    return this.g;
  }

  protected abstract void b(int paramInt);

  public final void c()
  {
    new Thread(new pm(this)).start();
  }

  protected final void d()
  {
    if (this.e != null)
      this.e.a(this.g);
  }

  protected abstract void e();

  protected abstract void f();

  public static abstract interface a
  {
    public abstract void a(int paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     pe
 * JD-Core Version:    0.6.2
 */