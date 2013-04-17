import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.dialog.ProgressDialog;

final class bpf
  implements View.OnClickListener
{
  bpf(bpe parambpe)
  {
  }

  public final void onClick(View paramView)
  {
    if (bot.r(this.a.a) != null)
    {
      bot.r(this.a.a).dismiss();
      bot.a(this.a.a, null);
    }
    bot.k(this.a.a).f();
    if (bot.j(this.a.a) != null)
    {
      ((ProgressDialog)bot.j(this.a.a)).stopProgressAnimation();
      bot.j(this.a.a).dismiss();
      bot.q(this.a.a);
    }
    bot.z(this.a.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bpf
 * JD-Core Version:    0.6.2
 */