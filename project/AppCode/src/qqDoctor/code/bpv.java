import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class bpv
  implements View.OnClickListener
{
  bpv(bpu parambpu, kw paramkw, CheckBoxView paramCheckBoxView, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    bpu.a(this.d, this.a);
    if (this.b.getChecked())
      bpu.a(this.d).bW();
    this.c.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bpv
 * JD-Core Version:    0.6.2
 */