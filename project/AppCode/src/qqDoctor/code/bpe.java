import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class bpe
  implements View.OnClickListener
{
  bpe(bot parambot, int paramInt)
  {
  }

  public final void onClick(View paramView)
  {
    bot.a(this.a, new Dialog(bot.y(this.a)));
    bot.r(this.a).setTitle(2131427567);
    bot.r(this.a).setIconVisibility(8);
    if ((1001 == this.b) || (1002 == this.b))
      bot.r(this.a).setMessage(2131427575);
    while (true)
    {
      bot.r(this.a).setPositiveButton(2131427397, new bpf(this), 2);
      bot.r(this.a).setNeutralButton(2131427379, new bpg(this), 2);
      bot.r(this.a).show();
      return;
      bot.r(this.a).setMessage(2131427576);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bpe
 * JD-Core Version:    0.6.2
 */