import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import com.tencent.qqpimsecure.uilib.model.PreferenceAdapterModel;
import com.tencent.qqpimsecure.uilib.view.dialog.RadioButtonDialog;
import com.tencent.tmsecure.module.phoneservice.IpDialManager;
import com.tencent.tmsecure.module.phoneservice.IpDialManagerSetting;
import com.tencent.tmsecure.module.phoneservice.IpDialProvinceCity;
import java.util.List;

final class aqj
  implements AdapterView.OnItemClickListener
{
  aqj(aqf paramaqf, RadioButtonDialog paramRadioButtonDialog)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    IpDialManagerSetting localIpDialManagerSetting = aqf.g(this.b).getIpDialSetting();
    aqf.b(this.b, paramInt);
    aqf.c(this.b, aqf.r(this.b));
    aqf.l(this.b)[0] = aqf.m(this.b)[aqf.r(this.b)];
    aqf.l(this.b)[1] = ((String[])aqf.k(this.b).get(aqf.s(this.b)))[aqf.t(this.b)];
    localIpDialManagerSetting.setLocalPhoneLocation(new IpDialProvinceCity(aqf.l(this.b)[0], aqf.l(this.b)[1]));
    ((PreferenceAdapterModel)aqf.u(this.b).get(3)).setSummary(aqf.l(this.b)[0] + aqf.l(this.b)[1]);
    if (aqf.a(this.b))
    {
      aqf.o(this.b);
      ii localii = aqf.b(this.b);
      boolean bool = aqf.a(this.b);
      localii.b.putBoolean("isfirst", bool).commit();
      int i = aqf.b(this.b).a.getInt("auto_cache", 1);
      localIpDialManagerSetting.setIpDialMode(i);
      ((PreferenceAdapterModel)aqf.v(this.b).get(1)).setSummary(String.valueOf(i));
    }
    this.b.getAdapter().notifyDataSetChanged();
    aqf.g(this.b).setIpDialSetting(localIpDialManagerSetting);
    aqf.b(this.b).b(aqf.l(this.b)[0], aqf.l(this.b)[1]);
    ((CheckBox)paramView.findViewById(2131230876)).setChecked(true);
    this.a.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aqj
 * JD-Core Version:    0.6.2
 */