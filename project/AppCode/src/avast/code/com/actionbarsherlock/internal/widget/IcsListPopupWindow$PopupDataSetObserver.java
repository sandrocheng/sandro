package com.actionbarsherlock.internal.widget;

import android.database.DataSetObserver;

class IcsListPopupWindow$PopupDataSetObserver extends DataSetObserver
{
  private IcsListPopupWindow$PopupDataSetObserver(IcsListPopupWindow paramIcsListPopupWindow)
  {
  }

  public void onChanged()
  {
    if (this.this$0.isShowing())
      this.this$0.show();
  }

  public void onInvalidated()
  {
    this.this$0.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsListPopupWindow.PopupDataSetObserver
 * JD-Core Version:    0.6.2
 */