import android.os.Handler;
import com.tencent.qqpimsecure.uilib.service.IRetryListener;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;

final class awx
  implements IRetryListener
{
  awx(aww paramaww, mk parammk, int paramInt)
  {
  }

  public final void onCancel()
  {
    this.c.a.getActivity().finish();
  }

  public final void onRetry()
  {
    awt.o(this.c.a).sendMessage(awt.n(this.c.a).obtainMessage(105));
    awt.p(this.c.a).a(new ml(this.a, this.b));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     awx
 * JD-Core Version:    0.6.2
 */