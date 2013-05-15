package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.actionbarsherlock.internal.view.menu.MenuBuilder;
import com.actionbarsherlock.internal.view.menu.MenuItemImpl;
import com.actionbarsherlock.internal.view.menu.MenuPresenter;
import com.actionbarsherlock.internal.view.menu.MenuPresenter.Callback;
import com.actionbarsherlock.internal.view.menu.MenuView;
import com.actionbarsherlock.internal.view.menu.SubMenuBuilder;
import com.actionbarsherlock.view.CollapsibleActionView;

class ActionBarView$ExpandedActionViewMenuPresenter
  implements MenuPresenter
{
  MenuItemImpl mCurrentExpandedItem;
  MenuBuilder mMenu;

  private ActionBarView$ExpandedActionViewMenuPresenter(ActionBarView paramActionBarView)
  {
  }

  public boolean collapseItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl)
  {
    if ((this.this$0.mExpandedActionView instanceof CollapsibleActionView))
      ((CollapsibleActionView)this.this$0.mExpandedActionView).onActionViewCollapsed();
    this.this$0.removeView(this.this$0.mExpandedActionView);
    this.this$0.removeView(ActionBarView.access$600(this.this$0));
    this.this$0.mExpandedActionView = null;
    if ((0x2 & ActionBarView.access$1200(this.this$0)) != 0)
      ActionBarView.access$700(this.this$0).setVisibility(0);
    if ((0x8 & ActionBarView.access$1200(this.this$0)) != 0)
    {
      if (ActionBarView.access$800(this.this$0) != null)
        break label245;
      ActionBarView.access$1300(this.this$0);
    }
    while (true)
    {
      if ((ActionBarView.access$900(this.this$0) != null) && (ActionBarView.access$1400(this.this$0) == 2))
        ActionBarView.access$900(this.this$0).setVisibility(0);
      if ((ActionBarView.access$1000(this.this$0) != null) && (ActionBarView.access$1400(this.this$0) == 1))
        ActionBarView.access$1000(this.this$0).setVisibility(0);
      if ((ActionBarView.access$1100(this.this$0) != null) && ((0x10 & ActionBarView.access$1200(this.this$0)) != 0))
        ActionBarView.access$1100(this.this$0).setVisibility(0);
      ActionBarView.access$600(this.this$0).setIcon(null);
      this.mCurrentExpandedItem = null;
      this.this$0.requestLayout();
      paramMenuItemImpl.setActionViewExpanded(false);
      return true;
      label245: ActionBarView.access$800(this.this$0).setVisibility(0);
    }
  }

  public boolean expandItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl)
  {
    this.this$0.mExpandedActionView = paramMenuItemImpl.getActionView();
    ActionBarView.access$600(this.this$0).setIcon(ActionBarView.access$500(this.this$0).getConstantState().newDrawable());
    this.mCurrentExpandedItem = paramMenuItemImpl;
    if (this.this$0.mExpandedActionView.getParent() != this.this$0)
      this.this$0.addView(this.this$0.mExpandedActionView);
    if (ActionBarView.access$600(this.this$0).getParent() != this.this$0)
      this.this$0.addView(ActionBarView.access$600(this.this$0));
    ActionBarView.access$700(this.this$0).setVisibility(8);
    if (ActionBarView.access$800(this.this$0) != null)
      ActionBarView.access$800(this.this$0).setVisibility(8);
    if (ActionBarView.access$900(this.this$0) != null)
      ActionBarView.access$900(this.this$0).setVisibility(8);
    if (ActionBarView.access$1000(this.this$0) != null)
      ActionBarView.access$1000(this.this$0).setVisibility(8);
    if (ActionBarView.access$1100(this.this$0) != null)
      ActionBarView.access$1100(this.this$0).setVisibility(8);
    this.this$0.requestLayout();
    paramMenuItemImpl.setActionViewExpanded(true);
    if ((this.this$0.mExpandedActionView instanceof CollapsibleActionView))
      ((CollapsibleActionView)this.this$0.mExpandedActionView).onActionViewExpanded();
    return true;
  }

  public boolean flagActionItems()
  {
    return false;
  }

  public int getId()
  {
    return 0;
  }

  public MenuView getMenuView(ViewGroup paramViewGroup)
  {
    return null;
  }

  public void initForMenu(Context paramContext, MenuBuilder paramMenuBuilder)
  {
    if ((this.mMenu != null) && (this.mCurrentExpandedItem != null))
      this.mMenu.collapseItemActionView(this.mCurrentExpandedItem);
    this.mMenu = paramMenuBuilder;
  }

  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean)
  {
  }

  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
  }

  public Parcelable onSaveInstanceState()
  {
    return null;
  }

  public boolean onSubMenuSelected(SubMenuBuilder paramSubMenuBuilder)
  {
    return false;
  }

  public void setCallback(MenuPresenter.Callback paramCallback)
  {
  }

  public void updateMenuView(boolean paramBoolean)
  {
    int i;
    int j;
    if (this.mCurrentExpandedItem != null)
    {
      MenuBuilder localMenuBuilder = this.mMenu;
      i = 0;
      if (localMenuBuilder != null)
        j = this.mMenu.size();
    }
    for (int k = 0; ; k++)
    {
      i = 0;
      if (k < j)
      {
        if (this.mMenu.getItem(k) == this.mCurrentExpandedItem)
          i = 1;
      }
      else
      {
        if (i == 0)
          collapseItemActionView(this.mMenu, this.mCurrentExpandedItem);
        return;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.widget.ActionBarView.ExpandedActionViewMenuPresenter
 * JD-Core Version:    0.6.2
 */