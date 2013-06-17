package com.antivirus.ui.performance;

import com.avg.tuneup.a.c;
import com.avg.tuneup.a.h;
import com.avg.tuneup.battery.BatteryStateActivity;
import com.avg.tuneup.battery.r;
import com.avg.tuneup.storage.StorageActivity;
import com.avg.tuneup.storage.b;
import com.avg.tuneup.taskkiller.TaskKillerActivity;
import com.avg.tuneup.taskkiller.d;
import com.avg.tuneup.traffic.TrafficMeterActivity;
import com.avg.tuneup.traffic.y;

public class a extends c
{
  protected h F()
  {
    return a(StorageActivity.class, b.class, "StorageFragment", "storage_usage");
  }

  protected h G()
  {
    return a(TrafficMeterActivity.class, y.class, "TrafficMeterFragment", "data_usage");
  }

  protected h H()
  {
    return a(BatteryStateActivity.class, r.class, "BatteryStateFragment", "battery_consumption");
  }

  protected h I()
  {
    return a(TaskKillerActivity.class, d.class, "TaskKillerFragment", "task_killer");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.performance.a
 * JD-Core Version:    0.6.2
 */