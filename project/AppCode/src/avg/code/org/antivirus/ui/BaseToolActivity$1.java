package org.antivirus.ui;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.Button;

class BaseToolActivity$1
  implements View.OnTouchListener
{
  BaseToolActivity$1(BaseToolActivity paramBaseToolActivity, Button paramButton, int paramInt1, int paramInt2)
  {
  }

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0)
      this.a.setBackgroundResource(this.b);
    if (paramMotionEvent.getAction() == 1)
      this.a.setBackgroundResource(this.c);
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.BaseToolActivity.1
 * JD-Core Version:    0.6.2
 */