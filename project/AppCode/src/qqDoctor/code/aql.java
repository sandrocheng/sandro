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
import java.util.List;

final class aql
  implements AdapterView.OnItemClickListener
{
  aql(aqf paramaqf, String[] paramArrayOfString, RadioButtonDialog paramRadioButtonDialog)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    IpDialManagerSetting localIpDialManagerSetting = aqf.g(this.c).getIpDialSetting();
    IpDialProvinceCityList localIpDialProvinceCityList = new IpDialProvinceCityList();
    aqf.w(this.c)[0] = aqf.x(this.c)[aqf.B(this.c)];
    aqf.f(this.c, paramInt);
    aqf.d(this.c, aqf.B(this.c));
    if (aqf.C(this.c) == 0)
      aqf.w(this.c)[1] = "";
    while (true)
    {
      ((PreferenceAdapterModel)aqf.D(this.c).get(4)).setSummary(aqf.w(this.c)[0] + aqf.w(this.c)[1]);
      localIpDialProvinceCityList.add(new IpDialProvinceCity(aqf.w(this.c)[0], aqf.w(this.c)[1]));
      localIpDialManagerSetting.setExcludedAreaList(localIpDialProvinceCityList);
      aqf.b(this.c).a(aqf.w(this.c)[0], aqf.w(this.c)[1]);
      aqf.g(this.c).setIpDialSetting(localIpDialManagerSetting);
      this.c.getAdapter().notifyDataSetChanged();
      ((CheckBox)paramView.findViewById(2131230876)).setChecked(true);
      this.b.dismiss();
      return;
      aqf.w(this.c)[1] = this.a[aqf.C(this.c)];
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aql
 * JD-Core Version:    0.6.2
 */