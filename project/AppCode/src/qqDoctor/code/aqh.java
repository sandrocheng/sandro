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
import java.util.List;

final class aqh
  implements AdapterView.OnItemClickListener
{
  aqh(aqf paramaqf, RadioButtonDialog paramRadioButtonDialog)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt == 2)
      aqf.h(this.b);
    while (true)
    {
      ((CheckBox)paramView.findViewById(2131230876)).setChecked(true);
      this.a.dismiss();
      return;
      IpDialManagerSetting localIpDialManagerSetting = aqf.g(this.b).getIpDialSetting();
      localIpDialManagerSetting.setIpHeader(aqf.i(this.b)[paramInt]);
      ((PreferenceAdapterModel)aqf.j(this.b).get(2)).setSummary(aqf.i(this.b)[paramInt]);
      this.b.getAdapter().notifyDataSetChanged();
      aqf.g(this.b).setIpDialSetting(localIpDialManagerSetting);
      ii localii = aqf.b(this.b);
      String str = aqf.i(this.b)[paramInt];
      localii.b.putString("number", str).commit();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aqh
 * JD-Core Version:    0.6.2
 */