import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class bpk
  implements View.OnClickListener
{
  bpk(bpj parambpj, boolean paramBoolean, CheckBoxView paramCheckBoxView, int paramInt, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    boolean bool = true;
    if (this.a)
    {
      ho localho2 = bot.B(this.e.a);
      if (!this.b.getChecked());
      while (true)
      {
        localho2.k(bool);
        bot.b(this.e.a, this.c);
        this.d.dismiss();
        return;
        bool = false;
      }
    }
    ho localho1 = bot.B(this.e.a);
    if (!this.b.getChecked());
    while (true)
    {
      localho1.j(bool);
      break;
      bool = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bpk
 * JD-Core Version:    0.6.2
 */