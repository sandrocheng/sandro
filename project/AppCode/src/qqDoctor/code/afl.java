import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.UninstallWarningActivity;
import com.tencent.qqpimsecure.ui.activity.permission.PermissionControlActivity;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

public final class afl
  implements View.OnClickListener
{
  public afl(UninstallWarningActivity paramUninstallWarningActivity)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.a.dismiss();
    this.a.finish();
    this.a.b.a();
    Intent localIntent = new Intent(this.a, PermissionControlActivity.class);
    this.a.startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     afl
 * JD-Core Version:    0.6.2
 */