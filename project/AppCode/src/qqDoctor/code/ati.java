import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class ati
  implements DialogInterface.OnCancelListener
{
  ati(Dialog paramDialog)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    this.a.getButton(-2).performClick();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ati
 * JD-Core Version:    0.6.2
 */