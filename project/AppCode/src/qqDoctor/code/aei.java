import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.SyncMobileAccountLoginActivity.a;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

public final class aei
  implements View.OnClickListener
{
  public aei(SyncMobileAccountLoginActivity.a parama)
  {
  }

  public final void onClick(View paramView)
  {
    if (SyncMobileAccountLoginActivity.a.p(this.a) != null)
      SyncMobileAccountLoginActivity.a.p(this.a).e();
    SyncMobileAccountLoginActivity.a.n(this.a).dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aei
 * JD-Core Version:    0.6.2
 */