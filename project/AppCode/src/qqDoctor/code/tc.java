import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.dialog.ProgressDialog;

final class tc
  implements View.OnClickListener
{
  tc(ta paramta)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.a.a.a.h != null)
    {
      this.a.a.a.h.dismiss();
      this.a.a.a.h = null;
    }
    this.a.a.a.j = false;
    if (this.a.a.a.g != null)
    {
      ((ProgressDialog)this.a.a.a.g).stopProgressAnimation();
      this.a.a.a.g.dismiss();
      this.a.a.a.g = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     tc
 * JD-Core Version:    0.6.2
 */