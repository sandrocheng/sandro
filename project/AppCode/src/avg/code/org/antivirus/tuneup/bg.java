package org.antivirus.tuneup;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import org.antivirus.ganalytics.a;

final class bg
  implements View.OnClickListener
{
  bg(TrafficMeterActivity paramTrafficMeterActivity)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.startActivity(new Intent(this.a.getApplicationContext(), DataPlanSettingsActivity.class));
    a.a(this.a, "data_usage", "data_usage_settings", null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.bg
 * JD-Core Version:    0.6.2
 */