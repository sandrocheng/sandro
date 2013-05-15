package com.actionbarsherlock.internal.view.menu;

import android.graphics.drawable.Drawable;

public abstract interface MenuView$ItemView
{
  public abstract MenuItemImpl getItemData();

  public abstract void initialize(MenuItemImpl paramMenuItemImpl, int paramInt);

  public abstract boolean prefersCondensedTitle();

  public abstract void setCheckable(boolean paramBoolean);

  public abstract void setChecked(boolean paramBoolean);

  public abstract void setEnabled(boolean paramBoolean);

  public abstract void setIcon(Drawable paramDrawable);

  public abstract void setShortcut(boolean paramBoolean, char paramChar);

  public abstract void setTitle(CharSequence paramCharSequence);

  public abstract boolean showsIcon();
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.view.menu.MenuView.ItemView
 * JD-Core Version:    0.6.2
 */