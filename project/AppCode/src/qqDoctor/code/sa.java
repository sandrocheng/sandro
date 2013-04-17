import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

public final class sa
  implements DialogInterface.OnCancelListener
{
  public sa(rx paramrx, Dialog paramDialog)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    this.a.dismiss();
    ((Activity)this.b.a).finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     sa
 * JD-Core Version:    0.6.2
 */