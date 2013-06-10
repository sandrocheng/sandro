package org.antivirus.tuneup;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.Button;

final class y
  implements View.OnTouchListener
{
  y(BatteryStateActivity paramBatteryStateActivity, Button paramButton)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0)
      this.a.setBackgroundResource(2130837505);
    if (paramMotionEvent.getAction() == 1)
      this.a.setBackgroundResource(2130837504);
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.y
 * JD-Core Version:    0.6.2
 */