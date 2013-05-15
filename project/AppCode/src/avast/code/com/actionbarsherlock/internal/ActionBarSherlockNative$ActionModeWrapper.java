package com.actionbarsherlock.internal;

import android.view.View;
import com.actionbarsherlock.internal.view.menu.MenuWrapper;
import com.actionbarsherlock.view.MenuInflater;

class ActionBarSherlockNative$ActionModeWrapper extends com.actionbarsherlock.view.ActionMode
{
  private final android.view.ActionMode mActionMode;
  private MenuWrapper mMenu = null;

  ActionBarSherlockNative$ActionModeWrapper(ActionBarSherlockNative paramActionBarSherlockNative, android.view.ActionMode paramActionMode)
  {
    this.mActionMode = paramActionMode;
  }

  public void finish()
  {
    this.mActionMode.finish();
  }

  public View getCustomView()
  {
    return this.mActionMode.getCustomView();
  }

  public MenuWrapper getMenu()
  {
    if (this.mMenu == null)
      this.mMenu = new MenuWrapper(this.mActionMode.getMenu());
    return this.mMenu;
  }

  public MenuInflater getMenuInflater()
  {
    return this.this$0.getMenuInflater();
  }

  public CharSequence getSubtitle()
  {
    return this.mActionMode.getSubtitle();
  }

  public Object getTag()
  {
    return this.mActionMode.getTag();
  }

  public CharSequence getTitle()
  {
    return this.mActionMode.getTitle();
  }

  public void invalidate()
  {
    this.mActionMode.invalidate();
  }

  public void setCustomView(View paramView)
  {
    this.mActionMode.setCustomView(paramView);
  }

  public void setSubtitle(int paramInt)
  {
    this.mActionMode.setSubtitle(paramInt);
  }

  public void setSubtitle(CharSequence paramCharSequence)
  {
    this.mActionMode.setSubtitle(paramCharSequence);
  }

  public void setTag(Object paramObject)
  {
    this.mActionMode.setTag(paramObject);
  }

  public void setTitle(int paramInt)
  {
    this.mActionMode.setTitle(paramInt);
  }

  public void setTitle(CharSequence paramCharSequence)
  {
    this.mActionMode.setTitle(paramCharSequence);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.ActionBarSherlockNative.ActionModeWrapper
 * JD-Core Version:    0.6.2
 */