package org.antivirus.tuneup;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.Button;

final class w
  implements View.OnTouchListener
{
  w(BatteryStateActivity paramBatteryStateActivity, Button paramButton)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0)
      this.a.setBackgroundResource(2130837507);
    if (paramMotionEvent.getAction() == 1)
      this.a.setBackgroundResource(2130837506);
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.w
 * JD-Core Version:    0.6.2
 */