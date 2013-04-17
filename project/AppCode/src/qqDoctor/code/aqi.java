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
import java.util.ArrayList;
import java.util.List;

final class aqi
  implements AdapterView.OnItemClickListener
{
  aqi(aqf paramaqf, RadioButtonDialog paramRadioButtonDialog)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (aqf.k(this.b).get(paramInt) == null)
    {
      IpDialManagerSetting localIpDialManagerSetting = aqf.g(this.b).getIpDialSetting();
      aqf.l(this.b)[0] = aqf.m(this.b)[paramInt];
      aqf.l(this.b)[1] = "";
      localIpDialManagerSetting.setLocalPhoneLocation(new IpDialProvinceCity(aqf.l(this.b)[0], aqf.l(this.b)[1]));
      ((PreferenceAdapterModel)aqf.n(this.b).get(3)).setSummary(aqf.l(this.b)[0] + " " + aqf.l(this.b)[1]);
      if (aqf.a(this.b))
      {
        aqf.o(this.b);
        ii localii = aqf.b(this.b);
        boolean bool = aqf.a(this.b);
        localii.b.putBoolean("isfirst", bool).commit();
        int i = aqf.b(this.b).a.getInt("auto_cache", 1);
        localIpDialManagerSetting.setIpDialMode(i);
        ((PreferenceAdapterModel)aqf.p(this.b).get(1)).setSummary(String.valueOf(i));
      }
      aqf.b(this.b).b(aqf.l(this.b)[0], aqf.l(this.b)[1]);
      aqf.g(this.b).setIpDialSetting(localIpDialManagerSetting);
      this.b.getAdapter().notifyDataSetChanged();
    }
    while (true)
    {
      ((CheckBox)paramView.findViewById(2131230876)).setChecked(true);
      this.a.dismiss();
      return;
      aqf.a(this.b, paramInt);
      aqf.q(this.b);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aqi
 * JD-Core Version:    0.6.2
 */