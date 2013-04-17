import android.content.SharedPreferences.Editor;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import com.tencent.qqpimsecure.uilib.model.PreferenceAdapterModel;
import com.tencent.qqpimsecure.uilib.model.RadioButtonMode;
import com.tencent.qqpimsecure.uilib.view.dialog.RadioButtonDialog;
import com.tencent.tmsecure.module.phoneservice.IpDialManager;
import com.tencent.tmsecure.module.phoneservice.IpDialManagerSetting;
import java.util.List;

final class aqg
  implements AdapterView.OnItemClickListener
{
  aqg(aqf paramaqf, IpDialManagerSetting paramIpDialManagerSetting, RadioButtonDialog paramRadioButtonDialog)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = Integer.parseInt(((RadioButtonMode)paramAdapterView.getItemAtPosition(paramInt)).getRadioEventCode());
    String str = ((RadioButtonMode)paramAdapterView.getItemAtPosition(paramInt)).getRadioButtonName();
    if (aqf.a(this.c))
      if (paramInt == 0)
      {
        this.a.setIpDialMode(i);
        aqf.b(this.c).b.putInt("auto_cache", i).commit();
        ((PreferenceAdapterModel)aqf.c(this.c).get(1)).setSummary(str);
        aqf.d(this.c);
      }
    while (true)
    {
      ii localii = aqf.b(this.c);
      int j = this.a.getIpDialMode();
      localii.b.putInt("auto", j).commit();
      aqf.g(this.c).setIpDialSetting(this.a);
      ((CheckBox)paramView.findViewById(2131230876)).setChecked(true);
      this.b.dismiss();
      return;
      this.a.setIpDialMode(i);
      aqf.b(this.c).b.putInt("auto_cache", i).commit();
      ((PreferenceAdapterModel)aqf.e(this.c).get(1)).setSummary(str);
      this.c.getAdapter().notifyDataSetChanged();
      continue;
      this.a.setIpDialMode(i);
      aqf.b(this.c).b.putInt("auto_cache", i).commit();
      ((PreferenceAdapterModel)aqf.f(this.c).get(1)).setSummary(str);
      this.c.getAdapter().notifyDataSetChanged();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aqg
 * JD-Core Version:    0.6.2
 */