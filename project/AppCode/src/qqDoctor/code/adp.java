import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.LowSDKwarningActivity;

public final class adp
  implements DialogInterface.OnClickListener
{
  public adp(LowSDKwarningActivity paramLowSDKwarningActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    LowSDKwarningActivity.a(this.a).finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     adp
 * JD-Core Version:    0.6.2
 */