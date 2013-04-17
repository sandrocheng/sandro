import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.service.IRetryListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

public final class en
  implements View.OnClickListener
{
  public en(IRetryListener paramIRetryListener, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.onRetry();
    this.b.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     en
 * JD-Core Version:    0.6.2
 */