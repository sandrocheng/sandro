import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.software.SoftwareCenterActivity;
import com.tencent.qqpimsecure.ui.activity.software.SoftwareRemoveDialog;

public final class ahs
  implements View.OnClickListener
{
  public ahs(SoftwareRemoveDialog paramSoftwareRemoveDialog)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("start_analysis", true);
    localIntent.setClass(SoftwareRemoveDialog.a(this.a), SoftwareCenterActivity.class);
    SoftwareRemoveDialog.a(this.a).startActivity(localIntent);
    ((Activity)SoftwareRemoveDialog.a(this.a)).finish();
    nd.a().a(26417);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ahs
 * JD-Core Version:    0.6.2
 */