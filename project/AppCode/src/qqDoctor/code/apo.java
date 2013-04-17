import android.view.View;
import android.view.View.OnClickListener;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class apo
  implements View.OnClickListener
{
  apo(apf paramapf, Dialog paramDialog1, Dialog paramDialog2)
  {
  }

  public final void onClick(View paramView)
  {
    apf.a(false, apf.r(this.c));
    apf.s(this.c);
    this.c.getAdapter().notifyDataSetChanged();
    this.a.dismiss();
    this.b.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     apo
 * JD-Core Version:    0.6.2
 */