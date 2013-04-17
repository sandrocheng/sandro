import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.SyncSettingsActivity.a;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

public final class aff
  implements View.OnClickListener
{
  public aff(SyncSettingsActivity.a parama, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.a != null)
    {
      this.a.dismiss();
      SyncSettingsActivity.a.i(this.b);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aff
 * JD-Core Version:    0.6.2
 */