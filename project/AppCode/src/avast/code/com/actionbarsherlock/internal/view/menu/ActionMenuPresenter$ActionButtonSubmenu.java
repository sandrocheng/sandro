package com.actionbarsherlock.internal.view.menu;

import android.content.Context;
import android.view.View;
import com.actionbarsherlock.view.MenuItem;

class ActionMenuPresenter$ActionButtonSubmenu extends MenuPopupHelper
{
  public ActionMenuPresenter$ActionButtonSubmenu(ActionMenuPresenter paramActionMenuPresenter, Context paramContext, SubMenuBuilder paramSubMenuBuilder)
  {
    super(paramContext, paramSubMenuBuilder);
    View localView;
    int j;
    if (!((MenuItemImpl)paramSubMenuBuilder.getItem()).isActionButton())
    {
      if (ActionMenuPresenter.access$200(paramActionMenuPresenter) == null)
      {
        localView = (View)paramActionMenuPresenter.mMenuView;
        setAnchorView(localView);
      }
    }
    else
    {
      setCallback(paramActionMenuPresenter.mPopupPresenterCallback);
      int i = paramSubMenuBuilder.size();
      j = 0;
      label63: if (j >= i)
        break label123;
      MenuItem localMenuItem = paramSubMenuBuilder.getItem(j);
      if ((!localMenuItem.isVisible()) || (localMenuItem.getIcon() == null))
        break label117;
    }
    label117: label123: for (boolean bool = true; ; bool = false)
    {
      setForceShowIcon(bool);
      return;
      localView = ActionMenuPresenter.access$200(paramActionMenuPresenter);
      break;
      j++;
      break label63;
    }
  }

  public void onDismiss()
  {
    super.onDismiss();
    ActionMenuPresenter.access$302(this.this$0, null);
    this.this$0.mOpenSubMenuId = 0;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.view.menu.ActionMenuPresenter.ActionButtonSubmenu
 * JD-Core Version:    0.6.2
 */