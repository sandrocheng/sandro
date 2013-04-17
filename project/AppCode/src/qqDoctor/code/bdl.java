import android.view.View;
import android.view.View.OnClickListener;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class bdl
  implements View.OnClickListener
{
  bdl(bdk parambdk, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    bdk.a(this.b).z(false);
    bdk.a(this.b).H(-100);
    this.a.dismiss();
    xi.a(false);
    if ((!bdk.a(this.b).p()) && (bdk.a(this.b).n().equals("")) && (bdk.a(this.b).cd().equals("")))
      bdk.a(this.b).d(false);
    bdk.b(this.b);
    this.b.getAdapter().notifyDataSetChanged();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bdl
 * JD-Core Version:    0.6.2
 */