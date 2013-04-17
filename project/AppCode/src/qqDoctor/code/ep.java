import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.service.IRetryListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

public final class ep
  implements View.OnClickListener
{
  public ep(Context paramContext, IRetryListener paramIRetryListener, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    fs.a(this.a);
    if (this.b != null)
      this.b.onCancel();
    this.c.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ep
 * JD-Core Version:    0.6.2
 */