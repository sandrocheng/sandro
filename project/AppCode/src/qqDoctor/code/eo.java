import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.service.IRetryListener;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

public final class eo
  implements View.OnClickListener
{
  public eo(IRetryListener paramIRetryListener, boolean paramBoolean, CheckBoxView paramCheckBoxView, String paramString, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.onCancel();
    if ((this.b) && (this.c.getChecked()))
      ho.a().F(this.d);
    this.e.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     eo
 * JD-Core Version:    0.6.2
 */