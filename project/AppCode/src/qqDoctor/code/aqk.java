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
import com.tencent.tmsecure.module.phoneservice.IpDialProvinceCityList;
import java.util.ArrayList;
import java.util.List;

final class aqk
  implements AdapterView.OnItemClickListener
{
  aqk(aqf paramaqf, RadioButtonDialog paramRadioButtonDialog)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    IpDialManagerSetting localIpDialManagerSetting = aqf.g(this.b).getIpDialSetting();
    IpDialProvinceCityList localIpDialProvinceCityList = new IpDialProvinceCityList();
    if (paramInt == 0)
    {
      aqf.w(this.b)[0] = aqf.x(this.b)[paramInt];
      aqf.d(this.b, 0);
      aqf.w(this.b)[1] = "";
      localIpDialProvinceCityList.add(new IpDialProvinceCity(aqf.w(this.b)[0], aqf.w(this.b)[1]));
      localIpDialManagerSetting.setExcludedAreaList(localIpDialProvinceCityList);
      ((PreferenceAdapterModel)aqf.y(this.b).get(4)).setSummary(aqf.w(this.b)[0] + aqf.w(this.b)[1]);
      aqf.g(this.b).setIpDialSetting(localIpDialManagerSetting);
      aqf.b(this.b).a(aqf.w(this.b)[0], aqf.w(this.b)[1]);
      this.b.getAdapter().notifyDataSetChanged();
    }
    while (true)
    {
      ((CheckBox)paramView.findViewById(2131230876)).setChecked(true);
      this.a.dismiss();
      return;
      if (aqf.k(this.b).get(paramInt - 1) == null)
      {
        aqf.w(this.b)[0] = aqf.x(this.b)[paramInt];
        aqf.d(this.b, paramInt);
        aqf.w(this.b)[1] = "";
        localIpDialProvinceCityList.add(new IpDialProvinceCity(aqf.w(this.b)[0], aqf.w(this.b)[1]));
        localIpDialManagerSetting.setExcludedAreaList(localIpDialProvinceCityList);
        ((PreferenceAdapterModel)aqf.z(this.b).get(4)).setSummary(aqf.w(this.b)[0] + " " + aqf.w(this.b)[1]);
        aqf.b(this.b).a(aqf.w(this.b)[0], aqf.w(this.b)[1]);
        aqf.g(this.b).setIpDialSetting(localIpDialManagerSetting);
        this.b.getAdapter().notifyDataSetChanged();
      }
      else
      {
        aqf.e(this.b, paramInt);
        aqf.A(this.b);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aqk
 * JD-Core Version:    0.6.2
 */