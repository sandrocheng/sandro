import android.view.View;
import android.view.View.OnClickListener;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class apq
  implements View.OnClickListener
{
  apq(apf paramapf, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    apf.a(true, apf.t(this.b));
    apf.s(this.b);
    this.b.getAdapter().notifyDataSetChanged();
    this.a.dismiss();
    ha.a(apf.u(this.b), 2131429809);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     apq
 * JD-Core Version:    0.6.2
 */