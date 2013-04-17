import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class apg
  implements View.OnClickListener
{
  apg(apf paramapf, Dialog paramDialog, CheckBoxView paramCheckBoxView)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    boolean bool = this.b.getChecked();
    this.c.getActivity().finish();
    fd.a(bool);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     apg
 * JD-Core Version:    0.6.2
 */