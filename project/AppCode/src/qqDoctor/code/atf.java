import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class atf
  implements DialogInterface.OnCancelListener
{
  atf(atb paramatb, Dialog paramDialog)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    this.a.dismiss();
    this.b.getActivity().finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     atf
 * JD-Core Version:    0.6.2
 */