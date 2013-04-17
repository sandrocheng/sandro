package com.tencent.qqpimsecure.uilib.view.desktop;

import android.os.Handler;
import android.os.SystemClock;
import android.view.MotionEvent;

class DesktopLayout$4 extends Thread
{
  DesktopLayout$4(DesktopLayout paramDesktopLayout, boolean paramBoolean, int paramInt1, int paramInt2)
  {
  }

  public void run()
  {
    try
    {
      sleep(50L);
      if (this.val$isHit)
      {
        int k = this.val$tempX;
        i = this.val$tempY;
        j = k;
        MotionEvent localMotionEvent = MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 1, j, i, 0);
        DesktopLayout.access$1100(this.this$0).postDelayed(new DesktopLayout.DesktopLayoutRunnable(this.this$0, localMotionEvent), 50L);
        return;
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
      {
        localInterruptedException.printStackTrace();
        continue;
        int i = -1;
        int j = -1;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.desktop.DesktopLayout.4
 * JD-Core Version:    0.6.2
 */