package com.avg.tuneup.traffic;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CompoundButton;
import com.avg.toolkit.f;
import com.avg.tuneup.j;
import com.avg.tuneup.traffic.widget.TrafficWidgetPlugin;

class ac
  implements DialogInterface.OnClickListener
{
  ac(y paramy, CompoundButton paramCompoundButton)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    j.a(false);
    this.a.setChecked(s.e());
    s.a(y.c(this.b).getApplicationContext()).h();
    if (!y.d(this.b).o())
      ((TrafficMeterActivity)y.e(this.b)).l();
    y.f(this.b);
    f.a(y.g(this.b), 25000, 8, TrafficWidgetPlugin.k());
    com.avg.toolkit.c.a.a(y.h(this.b), "data_usage", "usage_count", "off", 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.traffic.ac
 * JD-Core Version:    0.6.2
 */