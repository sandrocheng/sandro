import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.view.securespace.SecureSmsDialogueView;

public final class bjl
  implements View.OnClickListener
{
  public bjl(SecureSmsDialogueView paramSecureSmsDialogueView, int paramInt, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    SecureSmsDialogueView.b(this.c, this.a);
    this.b.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bjl
 * JD-Core Version:    0.6.2
 */