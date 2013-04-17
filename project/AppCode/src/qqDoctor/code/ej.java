import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.service.IRetryListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

public final class ej
  implements View.OnClickListener
{
  public ej(Dialog paramDialog, IRetryListener paramIRetryListener)
  {
  }

  public final void onClick(View paramView)
  {
    nd.a().a(26255);
    this.a.dismiss();
    this.b.onRetry();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ej
 * JD-Core Version:    0.6.2
 */