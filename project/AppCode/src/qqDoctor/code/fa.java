import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.service.IRetryListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

public final class fa
  implements View.OnClickListener
{
  public fa(IRetryListener paramIRetryListener, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.a != null)
      this.a.onRetry();
    this.b.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     fa
 * JD-Core Version:    0.6.2
 */