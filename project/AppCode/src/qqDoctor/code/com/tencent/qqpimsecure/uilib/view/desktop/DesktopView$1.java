package com.tencent.qqpimsecure.uilib.view.desktop;

import android.view.MotionEvent;

class DesktopView$1
  implements Runnable
{
  DesktopView$1(DesktopView paramDesktopView, MotionEvent paramMotionEvent)
  {
  }

  public void run()
  {
    try
    {
      this.this$0.dispatchTouchEvent(this.val$event);
      label12: return;
    }
    catch (Exception localException)
    {
      break label12;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.desktop.DesktopView.1
 * JD-Core Version:    0.6.2
 */