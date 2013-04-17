import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.UninstallWarningActivity;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

public final class afm
  implements View.OnClickListener
{
  public afm(UninstallWarningActivity paramUninstallWarningActivity)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.a.dismiss();
    this.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     afm
 * JD-Core Version:    0.6.2
 */