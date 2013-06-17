package com.avg.tuneup.battery;

import android.content.Intent;
import android.os.Bundle;
import com.avg.a.d;
import com.avg.a.e;
import com.avg.a.f;

public class BatterySaveSettingsActivity extends com.avg.tuneup.g
{
  public void i()
  {
    finish();
    Intent localIntent = new Intent(this, BatteryStateActivity.class);
    localIntent.setFlags(608305152);
    startActivity(localIntent);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(f.fragment_activity);
    a(true, d.ab_ic_battery_save, d.ab_ic_battery_save_p, getString(com.avg.a.g.battery_save_settings), false);
    if (paramBundle == null)
      a(new c(), e.middle_part, "BatterySaveSettingsFragment");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.battery.BatterySaveSettingsActivity
 * JD-Core Version:    0.6.2
 */