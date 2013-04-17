package com.tencent.qqpimsecure.uilib.view;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;

class TabMenuView$2
  implements View.OnKeyListener
{
  TabMenuView$2(TabMenuView paramTabMenuView)
  {
  }

  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    int i = 1;
    if ((paramInt == 82) && (paramKeyEvent.getRepeatCount() == 0) && (paramKeyEvent.getAction() == i) && (this.this$0.isShowing()))
      this.this$0.dismiss();
    while (true)
    {
      return i;
      int j = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.TabMenuView.2
 * JD-Core Version:    0.6.2
 */