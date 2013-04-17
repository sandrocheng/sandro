import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.service.IRetryListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

public final class ey
  implements View.OnClickListener
{
  public ey(IRetryListener paramIRetryListener, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.a != null)
      this.a.onCancel();
    this.b.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ey
 * JD-Core Version:    0.6.2
 */