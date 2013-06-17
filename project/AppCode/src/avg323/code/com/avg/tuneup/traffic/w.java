package com.avg.tuneup.traffic;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.Button;
import com.avg.a.d;

class w
  implements View.OnTouchListener
{
  w(TrafficMeterActivity paramTrafficMeterActivity)
  {
  }

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0)
      TrafficMeterActivity.a(this.a).setBackgroundResource(d.ab_btn_settings_p);
    if (paramMotionEvent.getAction() == 1)
      TrafficMeterActivity.a(this.a).setBackgroundResource(d.ab_btn_settings);
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.traffic.w
 * JD-Core Version:    0.6.2
 */