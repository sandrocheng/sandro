import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.qqpimsecure.uilib.service.IRetryListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

public final class eg
  implements DialogInterface.OnCancelListener
{
  public eg(Dialog paramDialog, IRetryListener paramIRetryListener)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    this.a.dismiss();
    if (this.b != null)
      this.b.onCancel();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     eg
 * JD-Core Version:    0.6.2
 */