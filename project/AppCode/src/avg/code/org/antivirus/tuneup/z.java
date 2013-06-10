package org.antivirus.tuneup;

import android.view.View;
import android.view.View.OnClickListener;
import org.antivirus.ganalytics.a;

final class z
  implements View.OnClickListener
{
  z(BatteryStateActivity paramBatteryStateActivity)
  {
  }

  public final void onClick(View paramView)
  {
    BatteryStateActivity.a(this.a);
    a.a(this.a, "battery_consumption", "battery_usage", null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.z
 * JD-Core Version:    0.6.2
 */