package org.antivirus.tuneup;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.Button;

final class bf
  implements View.OnTouchListener
{
  bf(TrafficMeterActivity paramTrafficMeterActivity)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0)
      this.a.c.setBackgroundResource(2130837509);
    if (paramMotionEvent.getAction() == 1)
      this.a.c.setBackgroundResource(2130837508);
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.bf
 * JD-Core Version:    0.6.2
 */