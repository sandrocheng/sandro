import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.tencent.qqpimsecure.uilib.model.PreferenceAdapterModel;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.module.network.NetworkManager;
import java.util.Date;
import java.util.List;

final class bah
  implements View.OnClickListener
{
  bah(azu paramazu, EditText paramEditText, int paramInt, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    String str1 = this.a.getText().toString().trim();
    try
    {
      long l = ()(1048576.0F * Float.parseFloat(str1));
      if (l < 1099511627776L)
      {
        if (l > 0L)
          nd.a().a(26221);
        azu.b(this.d, l);
        azu.g(this.d).setUsedForMonth(azu.s(this.d));
        azu.g(this.d).a(new Date().getTime());
        azu.a = false;
        azu.b = false;
        we.a = true;
        azu.h(this.d).notifyConfigChange();
        String str2 = azu.t(this.d).getString(2131428390) + a.c(azu.s(this.d));
        ((PreferenceAdapterModel)azu.u(this.d).get(this.b)).setSummary(str2);
        azu.a(this.d).notifyDataSetChanged();
      }
      while (true)
      {
        this.c.dismiss();
        return;
        ha.a(azu.v(this.d), azu.w(this.d).getString(2131428391));
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      while (true)
        ha.a(azu.x(this.d), azu.y(this.d).getString(2131428393));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bah
 * JD-Core Version:    0.6.2
 */