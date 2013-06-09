package org.antivirus.tuneup;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import org.antivirus.ganalytics.a;

final class x
  implements View.OnClickListener
{
  x(BatteryStateActivity paramBatteryStateActivity)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.startActivity(new Intent(this.a.getApplicationContext(), BatterySaveSettingsActivity.class));
    a.a(this.a, "battery_consumption", "power_saving_options", null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.x
 * JD-Core Version:    0.6.2
 */