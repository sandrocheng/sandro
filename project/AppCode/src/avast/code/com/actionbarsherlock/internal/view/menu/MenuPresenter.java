package com.actionbarsherlock.internal.view.menu;

import android.content.Context;
import android.os.Parcelable;
import android.view.ViewGroup;

public abstract interface MenuPresenter
{
  public abstract boolean collapseItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl);

  public abstract boolean expandItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl);

  public abstract boolean flagActionItems();

  public abstract int getId();

  public abstract MenuView getMenuView(ViewGroup paramViewGroup);

  public abstract void initForMenu(Context paramContext, MenuBuilder paramMenuBuilder);

  public abstract void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean);

  public abstract void onRestoreInstanceState(Parcelable paramParcelable);

  public abstract Parcelable onSaveInstanceState();

  public abstract boolean onSubMenuSelected(SubMenuBuilder paramSubMenuBuilder);

  public abstract void setCallback(MenuPresenter.Callback paramCallback);

  public abstract void updateMenuView(boolean paramBoolean);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.view.menu.MenuPresenter
 * JD-Core Version:    0.6.2
 */