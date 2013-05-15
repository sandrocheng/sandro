package com.actionbarsherlock.internal.view.menu;

import android.database.DataSetObserver;

class MenuPopupHelper$ExpandedIndexObserver extends DataSetObserver
{
  private MenuPopupHelper$ExpandedIndexObserver(MenuPopupHelper paramMenuPopupHelper)
  {
  }

  public void onChanged()
  {
    MenuPopupHelper.access$500(this.this$0).findExpandedIndex();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.view.menu.MenuPopupHelper.ExpandedIndexObserver
 * JD-Core Version:    0.6.2
 */