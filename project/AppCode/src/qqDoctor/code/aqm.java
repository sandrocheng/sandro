import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.BaseAdapter;
import android.widget.EditText;
import com.tencent.qqpimsecure.uilib.model.PreferenceAdapterModel;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.module.phoneservice.IpDialManager;
import com.tencent.tmsecure.module.phoneservice.IpDialManagerSetting;
import java.util.List;

final class aqm
  implements View.OnClickListener
{
  aqm(aqf paramaqf, EditText paramEditText, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    String str = this.a.getText().toString().trim();
    if (str.length() == 0)
      ha.a(aqf.E(this.c), aqf.F(this.c).getString(2131428387));
    while (true)
    {
      return;
      IpDialManagerSetting localIpDialManagerSetting = aqf.g(this.c).getIpDialSetting();
      aqf.b(this.c).b.putString("selfnum", str).commit();
      ((PreferenceAdapterModel)aqf.G(this.c).get(2)).setSummary(str);
      localIpDialManagerSetting.setIpHeader(str);
      aqf.g(this.c).setIpDialSetting(localIpDialManagerSetting);
      this.c.getAdapter().notifyDataSetChanged();
      this.b.dismiss();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aqm
 * JD-Core Version:    0.6.2
 */