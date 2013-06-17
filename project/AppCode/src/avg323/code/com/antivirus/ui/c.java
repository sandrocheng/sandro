package com.antivirus.ui;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.Button;

class c
  implements View.OnTouchListener
{
  c(b paramb, Button paramButton, int paramInt1, int paramInt2)
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
 * Qualified Name:     com.antivirus.ui.c
 * JD-Core Version:    0.6.2
 */