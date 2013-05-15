package com.actionbarsherlock.internal.app;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import com.actionbarsherlock.internal.view.menu.MenuBuilder;
import com.actionbarsherlock.internal.view.menu.MenuBuilder.Callback;
import com.actionbarsherlock.internal.view.menu.MenuPopupHelper;
import com.actionbarsherlock.internal.view.menu.SubMenuBuilder;
import com.actionbarsherlock.internal.widget.ActionBarContextView;
import com.actionbarsherlock.internal.widget.ActionBarView;
import com.actionbarsherlock.view.ActionMode;
import com.actionbarsherlock.view.ActionMode.Callback;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import java.lang.ref.WeakReference;

public class ActionBarImpl$ActionModeImpl extends ActionMode
  implements MenuBuilder.Callback
{
  private ActionMode.Callback mCallback;
  private WeakReference mCustomView;
  private MenuBuilder mMenu;

  public ActionBarImpl$ActionModeImpl(ActionBarImpl paramActionBarImpl, ActionMode.Callback paramCallback)
  {
    this.mCallback = paramCallback;
    this.mMenu = new MenuBuilder(paramActionBarImpl.getThemedContext()).setDefaultShowAsAction(1);
    this.mMenu.setCallback(this);
  }

  public boolean dispatchOnCreate()
  {
    this.mMenu.stopDispatchingItemsChanged();
    try
    {
      boolean bool = this.mCallback.onCreateActionMode(this, this.mMenu);
      return bool;
    }
    finally
    {
      this.mMenu.startDispatchingItemsChanged();
    }
  }

  public void finish()
  {
    if (this.this$0.mActionMode != this)
      return;
    if (this.this$0.mWasHiddenBeforeMode)
    {
      this.this$0.mDeferredDestroyActionMode = this;
      this.this$0.mDeferredModeDestroyCallback = this.mCallback;
    }
    while (true)
    {
      this.mCallback = null;
      this.this$0.animateToMode(false);
      ActionBarImpl.access$500(this.this$0).closeMode();
      ActionBarImpl.access$600(this.this$0).sendAccessibilityEvent(32);
      this.this$0.mActionMode = null;
      if (!this.this$0.mWasHiddenBeforeMode)
        break;
      this.this$0.hide();
      break;
      this.mCallback.onDestroyActionMode(this);
    }
  }

  public View getCustomView()
  {
    if (this.mCustomView != null);
    for (View localView = (View)this.mCustomView.get(); ; localView = null)
      return localView;
  }

  public Menu getMenu()
  {
    return this.mMenu;
  }

  public MenuInflater getMenuInflater()
  {
    return new MenuInflater(this.this$0.getThemedContext());
  }

  public CharSequence getSubtitle()
  {
    return ActionBarImpl.access$500(this.this$0).getSubtitle();
  }

  public CharSequence getTitle()
  {
    return ActionBarImpl.access$500(this.this$0).getTitle();
  }

  public void invalidate()
  {
    this.mMenu.stopDispatchingItemsChanged();
    try
    {
      this.mCallback.onPrepareActionMode(this, this.mMenu);
      return;
    }
    finally
    {
      this.mMenu.startDispatchingItemsChanged();
    }
  }

  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean)
  {
  }

  public void onCloseSubMenu(SubMenuBuilder paramSubMenuBuilder)
  {
  }

  public boolean onMenuItemSelected(MenuBuilder paramMenuBuilder, MenuItem paramMenuItem)
  {
    if (this.mCallback != null);
    for (boolean bool = this.mCallback.onActionItemClicked(this, paramMenuItem); ; bool = false)
      return bool;
  }

  public void onMenuModeChange(MenuBuilder paramMenuBuilder)
  {
    if (this.mCallback == null);
    while (true)
    {
      return;
      invalidate();
      ActionBarImpl.access$500(this.this$0).showOverflowMenu();
    }
  }

  public boolean onSubMenuSelected(SubMenuBuilder paramSubMenuBuilder)
  {
    boolean bool = true;
    if (this.mCallback == null)
      bool = false;
    while (true)
    {
      return bool;
      if (paramSubMenuBuilder.hasVisibleItems())
        new MenuPopupHelper(this.this$0.getThemedContext(), paramSubMenuBuilder).show();
    }
  }

  public void setCustomView(View paramView)
  {
    ActionBarImpl.access$500(this.this$0).setCustomView(paramView);
    this.mCustomView = new WeakReference(paramView);
  }

  public void setSubtitle(int paramInt)
  {
    setSubtitle(ActionBarImpl.access$700(this.this$0).getResources().getString(paramInt));
  }

  public void setSubtitle(CharSequence paramCharSequence)
  {
    ActionBarImpl.access$500(this.this$0).setSubtitle(paramCharSequence);
  }

  public void setTitle(int paramInt)
  {
    setTitle(ActionBarImpl.access$700(this.this$0).getResources().getString(paramInt));
  }

  public void setTitle(CharSequence paramCharSequence)
  {
    ActionBarImpl.access$500(this.this$0).setTitle(paramCharSequence);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.app.ActionBarImpl.ActionModeImpl
 * JD-Core Version:    0.6.2
 */