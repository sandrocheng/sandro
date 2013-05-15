package com.actionbarsherlock.view;

import android.graphics.drawable.Drawable;
import android.view.View;

public abstract interface SubMenu extends Menu
{
  public abstract void clearHeader();

  public abstract MenuItem getItem();

  public abstract SubMenu setHeaderIcon(int paramInt);

  public abstract SubMenu setHeaderIcon(Drawable paramDrawable);

  public abstract SubMenu setHeaderTitle(int paramInt);

  public abstract SubMenu setHeaderTitle(CharSequence paramCharSequence);

  public abstract SubMenu setHeaderView(View paramView);

  public abstract SubMenu setIcon(int paramInt);

  public abstract SubMenu setIcon(Drawable paramDrawable);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.view.SubMenu
 * JD-Core Version:    0.6.2
 */