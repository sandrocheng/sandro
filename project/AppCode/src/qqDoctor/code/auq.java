import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class auq
  implements View.OnClickListener
{
  auq(atz paramatz, int paramInt)
  {
  }

  public final void onClick(View paramView)
  {
    atz.a(this.a, new Dialog(atz.q(this.a)));
    atz.r(this.a).setTitle(2131427567);
    if (1005 == this.b)
      atz.r(this.a).setMessage(2131427575);
    while (true)
    {
      atz.r(this.a).setPositiveButton(2131427397, new aur(this), 2);
      atz.r(this.a).setNeutralButton(2131427379, new aus(this), 2);
      atz.r(this.a).show();
      return;
      atz.r(this.a).setMessage(2131427576);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     auq
 * JD-Core Version:    0.6.2
 */