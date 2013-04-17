package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.graphics.Rect;
import android.os.Message;
import android.os.SystemClock;
import android.view.MotionEvent;
import com.tencent.qqpimsecure.uilib.view.DeskAssistanceGallery;
import ho;

class ExpandedOptimizeWindow$3
  implements Runnable
{
  ExpandedOptimizeWindow$3(ExpandedOptimizeWindow paramExpandedOptimizeWindow)
  {
  }

  public void run()
  {
    while (true)
    {
      float f1;
      float f2;
      try
      {
        Thread.sleep(1000L);
        Rect localRect = new Rect();
        ExpandedOptimizeWindow.access$900(this.this$0).getGlobalVisibleRect(localRect);
        if ((localRect.height() == 0) || (localRect.width() == 0))
        {
          ExpandedOptimizeWindow.access$900(this.this$0).forceLayout();
          ExpandedOptimizeWindow.access$900(this.this$0).getGlobalVisibleRect(localRect);
        }
        f1 = localRect.centerY();
        f2 = localRect.centerX();
        float f3 = 0.4F * localRect.width() / 10.0F;
        i = 0;
        if (i < 10)
        {
          localMotionEvent2 = MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 2, f2, f1, 0);
          f2 += f3;
        }
      }
      catch (InterruptedException localInterruptedException1)
      {
        try
        {
          Thread.sleep(20L);
          if (ExpandedOptimizeWindow.access$1000(this.this$0))
          {
            return;
            localInterruptedException1 = localInterruptedException1;
            localInterruptedException1.printStackTrace();
          }
        }
        catch (InterruptedException localInterruptedException3)
        {
          int i;
          MotionEvent localMotionEvent2;
          localInterruptedException3.printStackTrace();
          continue;
          Message localMessage2 = ExpandedOptimizeWindow.access$1100(this.this$0).obtainMessage(6);
          localMessage2.obj = localMotionEvent2;
          ExpandedOptimizeWindow.access$1100(this.this$0).sendMessage(localMessage2);
          i++;
        }
        continue;
      }
      try
      {
        Thread.sleep(20L);
        label204: MotionEvent localMotionEvent1 = MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 1, f2, f1, 0);
        Message localMessage1 = ExpandedOptimizeWindow.access$1100(this.this$0).obtainMessage(6);
        localMessage1.obj = localMotionEvent1;
        ExpandedOptimizeWindow.access$1100(this.this$0).sendMessage(localMessage1);
        ho.a().dh();
      }
      catch (InterruptedException localInterruptedException2)
      {
        break label204;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.ExpandedOptimizeWindow.3
 * JD-Core Version:    0.6.2
 */