package com.actionbarsherlock.internal.widget;

import android.widget.PopupWindow;

class IcsListPopupWindow$ResizePopupRunnable
  implements Runnable
{
  private IcsListPopupWindow$ResizePopupRunnable(IcsListPopupWindow paramIcsListPopupWindow)
  {
  }

  public void run()
  {
    if ((IcsListPopupWindow.access$600(this.this$0) != null) && (IcsListPopupWindow.access$600(this.this$0).getCount() > IcsListPopupWindow.access$600(this.this$0).getChildCount()) && (IcsListPopupWindow.access$600(this.this$0).getChildCount() <= IcsListPopupWindow.access$700(this.this$0)))
    {
      IcsListPopupWindow.access$800(this.this$0).setInputMethodMode(2);
      this.this$0.show();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsListPopupWindow.ResizePopupRunnable
 * JD-Core Version:    0.6.2
 */