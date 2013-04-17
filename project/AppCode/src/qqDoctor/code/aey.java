import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.SyncQQAccountLoginActivity.a;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

public final class aey
  implements View.OnClickListener
{
  public aey(SyncQQAccountLoginActivity.a parama)
  {
  }

  public final void onClick(View paramView)
  {
    if (SyncQQAccountLoginActivity.a.n(this.a) != null)
      SyncQQAccountLoginActivity.a.n(this.a).e();
    if (SyncQQAccountLoginActivity.a.m(this.a) != null)
      SyncQQAccountLoginActivity.a.m(this.a).dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aey
 * JD-Core Version:    0.6.2
 */