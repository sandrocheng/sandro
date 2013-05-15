package com.actionbarsherlock.internal.widget;

import android.view.View;
import android.view.View.OnClickListener;
import com.actionbarsherlock.internal.view.menu.MenuItemImpl;

class ActionBarView$2
  implements View.OnClickListener
{
  ActionBarView$2(ActionBarView paramActionBarView)
  {
  }

  public void onClick(View paramView)
  {
    MenuItemImpl localMenuItemImpl = ActionBarView.access$100(this.this$0).mCurrentExpandedItem;
    if (localMenuItemImpl != null)
      localMenuItemImpl.collapseActionView();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.widget.ActionBarView.2
 * JD-Core Version:    0.6.2
 */