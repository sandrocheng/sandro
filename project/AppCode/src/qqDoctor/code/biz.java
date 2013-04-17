import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.view.securespace.SecureSmsDialogueView;

public final class biz
  implements View.OnClickListener
{
  public biz(SecureSmsDialogueView paramSecureSmsDialogueView, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    SecureSmsDialogueView.t(this.b);
    this.a.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     biz
 * JD-Core Version:    0.6.2
 */