import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class bpg
  implements View.OnClickListener
{
  bpg(bpe parambpe)
  {
  }

  public final void onClick(View paramView)
  {
    if (bot.r(this.a.a) != null)
    {
      bot.r(this.a.a).dismiss();
      bot.a(this.a.a, null);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bpg
 * JD-Core Version:    0.6.2
 */