import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.module.network.NetworkManager;

final class bae
  implements View.OnClickListener
{
  bae(azu paramazu, EditText paramEditText, int paramInt, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    String str = this.a.getText().toString().trim();
    if (str.length() > 0);
    while (true)
    {
      try
      {
        long l = Long.parseLong(str);
        azu.a(this.d, 1048576L * l);
        if (azu.d(this.d) >= 1099511627776L)
        {
          ha.a(azu.e(this.d), azu.f(this.d).getString(2131428388));
          this.c.dismiss();
          return;
        }
        if (l >= 0L)
        {
          azu.g(this.d).setTotalForMonth(azu.d(this.d));
          azu.a = false;
          azu.b = false;
          we.a = true;
          azu.h(this.d).notifyConfigChange();
          azu.a(this.d).b();
          if (l == this.b)
            continue;
          azu.g(this.d).a(false, false);
          continue;
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        ha.a(azu.k(this.d), azu.l(this.d).getString(2131428388));
        continue;
        ha.a(azu.i(this.d), azu.j(this.d).getResources().getString(2131429155));
        continue;
      }
      ha.a(azu.m(this.d), azu.n(this.d).getString(2131428389));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bae
 * JD-Core Version:    0.6.2
 */