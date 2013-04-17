import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.qqpimsecure.uilib.service.IRetryListener;

public final class eq
  implements DialogInterface.OnCancelListener
{
  public eq(IRetryListener paramIRetryListener)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    this.a.onCancel();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     eq
 * JD-Core Version:    0.6.2
 */