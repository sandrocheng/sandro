package com.tencent.qqpimsecure.uilib.view.desktop;

import android.os.Handler;
import android.os.Message;
import android.view.MotionEvent;
import com.tencent.qqpimsecure.uilib.ui.adapter.DesktopAdapter;

class DesktopLayout$1 extends Handler
{
  DesktopLayout$1(DesktopLayout paramDesktopLayout)
  {
  }

  public void dispatchMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 0:
    }
    while (true)
    {
      return;
      MotionEvent localMotionEvent = (MotionEvent)paramMessage.obj;
      if (localMotionEvent != null)
      {
        int i = DesktopLayout.access$200(this.this$0).pointToPosition(DesktopLayout.access$000(this.this$0), DesktopLayout.access$100(this.this$0));
        DesktopAdapter localDesktopAdapter1 = (DesktopAdapter)DesktopLayout.access$200(this.this$0).getAdapter();
        if (localDesktopAdapter1.getFocusPosition() != i)
        {
          localDesktopAdapter1.setFocusPosition(i);
          localDesktopAdapter1.notifyDataSetChanged();
        }
        DesktopLayout.access$300(this.this$0, localMotionEvent);
        int j = DesktopLayout.access$400(this.this$0).pointToPosition(DesktopLayout.access$000(this.this$0), DesktopLayout.access$100(this.this$0));
        DesktopAdapter localDesktopAdapter2 = (DesktopAdapter)DesktopLayout.access$400(this.this$0).getAdapter();
        if (localDesktopAdapter2.getFocusPosition() != j)
        {
          localDesktopAdapter2.setFocusPosition(j);
          localDesktopAdapter2.notifyDataSetChanged();
        }
        DesktopLayout.access$500(this.this$0, localMotionEvent);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.desktop.DesktopLayout.1
 * JD-Core Version:    0.6.2
 */