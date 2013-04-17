import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class ob
  implements View.OnClickListener
{
  ob(CheckBoxView paramCheckBoxView, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.a.getChecked())
      ho.a().ar();
    this.b.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ob
 * JD-Core Version:    0.6.2
 */