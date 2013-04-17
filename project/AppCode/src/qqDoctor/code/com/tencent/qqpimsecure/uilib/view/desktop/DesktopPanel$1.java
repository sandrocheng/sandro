package com.tencent.qqpimsecure.uilib.view.desktop;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

class DesktopPanel$1
  implements View.OnTouchListener
{
  DesktopPanel$1(DesktopPanel paramDesktopPanel)
  {
  }

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    int i = 1;
    DesktopPanel.access$202(this.this$0, false);
    if (paramView.getId() == 2131231106)
      DesktopPanel.access$202(this.this$0, i);
    int j = paramMotionEvent.getAction();
    if (j == i)
      if (this.this$0.mScrolling)
        this.this$0.onScrollEndAnimation();
    while (true)
    {
      return i;
      if ((DesktopPanel.access$300(this.this$0)) && (!this.this$0.mScrolling))
        this.this$0.onEndAnimation(false);
      else if ((DesktopPanel.access$400(this.this$0) == null) || (!DesktopPanel.access$400(this.this$0).onTouchEvent(paramMotionEvent)))
        do
        {
          new StringBuilder("miss action: ").append(j).toString();
          i = 0;
          break;
        }
        while ((DesktopPanel.access$400(this.this$0) == null) || (!DesktopPanel.access$400(this.this$0).onTouchEvent(paramMotionEvent)));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.desktop.DesktopPanel.1
 * JD-Core Version:    0.6.2
 */