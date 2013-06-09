package org.antivirus.ui.performance;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import java.util.ArrayList;
import org.antivirus.ganalytics.a;
import org.antivirus.tuneup.BatteryStateActivity;
import org.antivirus.tuneup.StorageActivity;
import org.antivirus.tuneup.TrafficMeterActivity;

final class h
  implements AdapterView.OnItemClickListener
{
  h(PerformanceActivity paramPerformanceActivity)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    switch (((b)this.a.a.get(paramInt)).a)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      this.a.startActivity(new Intent(this.a, TaskKiller.class));
      a.a(this.a, "performance", "task_killer", "permitted");
      continue;
      this.a.startActivity(new Intent(this.a, BatteryStateActivity.class));
      a.a(this.a, "performance", "battery_consumption", "permitted");
      continue;
      this.a.startActivity(new Intent(this.a, TrafficMeterActivity.class));
      a.a(this.a, "performance", "data_usage", "permitted");
      continue;
      this.a.startActivity(new Intent(this.a, StorageActivity.class));
      a.a(this.a, "performance", "storage_usage", "permitted");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.performance.h
 * JD-Core Version:    0.6.2
 */