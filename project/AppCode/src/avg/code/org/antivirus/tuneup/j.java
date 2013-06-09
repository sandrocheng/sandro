package org.antivirus.tuneup;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import org.antivirus.ganalytics.a;

final class j
  implements AdapterView.OnItemClickListener
{
  j(BatterySaveSettingsActivity paramBatterySaveSettingsActivity)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    switch (BatterySaveSettingsActivity.a(this.a)[((int)paramLong)])
    {
    case 1:
    case 3:
    case 4:
    case 6:
    case 7:
    case 8:
    default:
    case 0:
    case 9:
    case 2:
    case 5:
    case 10:
    case 11:
    }
    while (true)
    {
      return;
      BatterySaveSettingsActivity.b(this.a);
      a.a(this.a, "power_saving_options", "battery_warn_level", null);
      continue;
      BatterySaveSettingsActivity.c(this.a);
      a.a(this.a, "power_saving_options", "screen_timeout", null);
      continue;
      BatterySaveSettingsActivity.d(this.a);
      a.a(this.a, "power_saving_options", "wifi_hotspot", null);
      continue;
      BatterySaveSettingsActivity.e(this.a);
      a.a(this.a, "power_saving_options", "mobile_data", null);
      continue;
      BatterySaveSettingsActivity.f(this.a);
      a.a(this.a, "power_saving_options", "ringer", null);
      continue;
      BatterySaveSettingsActivity.g(this.a);
      a.a(this.a, "power_saving_options", "volume_control", null);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.j
 * JD-Core Version:    0.6.2
 */