import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.software.SoftwareRemoveDialog;

public final class ahr
  implements View.OnClickListener
{
  public ahr(SoftwareRemoveDialog paramSoftwareRemoveDialog)
  {
  }

  public final void onClick(View paramView)
  {
    ((Activity)SoftwareRemoveDialog.a(this.a)).finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ahr
 * JD-Core Version:    0.6.2
 */