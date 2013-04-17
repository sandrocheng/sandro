package com.tencent.qqpimsecure.uilib.view;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.widget.PopupWindow;

class PopListView$1
  implements View.OnKeyListener
{
  PopListView$1(PopListView paramPopListView)
  {
  }

  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 82) && (PopListView.access$000(this.this$0).isShowing()) && (paramKeyEvent.getAction() == 0))
      PopListView.access$000(this.this$0).dismiss();
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.PopListView.1
 * JD-Core Version:    0.6.2
 */