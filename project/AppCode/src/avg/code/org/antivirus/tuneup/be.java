package org.antivirus.tuneup;

import android.content.Intent;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import org.antivirus.AVSettings;
import org.antivirus.ganalytics.a;
import org.antivirus.widget.a.k;

final class be
  implements CompoundButton.OnCheckedChangeListener
{
  be(TrafficMeterActivity paramTrafficMeterActivity)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramBoolean == AVSettings.isTrafficCounterOn());
    while (true)
    {
      return;
      if (AVSettings.isTrafficCounterOn())
      {
        AVSettings.setTrafficCounterOn(false);
        paramCompoundButton.setChecked(ba.d());
        ba.a(this.a.getApplicationContext()).g();
        TrafficMeterActivity.a(this.a);
        TrafficMeterActivity.b(this.a);
        k.a(this.a).b(null);
        a.a(this.a, "data_usage", "usage_count", "off");
      }
      else
      {
        paramCompoundButton.setChecked(false);
        AVSettings.setTrafficCounterOn(true);
        Intent localIntent = new Intent(this.a.getApplicationContext(), DataPlanSettingsActivity.class);
        localIntent.putExtra("new_activation", true);
        this.a.startActivity(localIntent);
        a.a(this.a, "data_usage", "usage_count", "on");
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.be
 * JD-Core Version:    0.6.2
 */