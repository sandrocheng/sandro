package com.actionbarsherlock.internal;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources.Theme;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import com.actionbarsherlock.ActionBarSherlock;
import com.actionbarsherlock.ActionBarSherlock.Implementation;
import com.actionbarsherlock.ActionBarSherlock.OnActionModeStartedListener;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.internal.app.ActionBarWrapper;
import com.actionbarsherlock.internal.view.menu.MenuWrapper;
import com.actionbarsherlock.view.ActionMode;
import com.actionbarsherlock.view.ActionMode.Callback;

@ActionBarSherlock.Implementation(api=14)
public class ActionBarSherlockNative extends ActionBarSherlock
{
  private ActionBarWrapper mActionBar;
  private ActionBarSherlockNative.ActionModeWrapper mActionMode;
  private MenuWrapper mMenu;

  public ActionBarSherlockNative(Activity paramActivity, int paramInt)
  {
    super(paramActivity, paramInt);
  }

  private void initActionBar()
  {
    if ((this.mActionBar != null) || (this.mActivity.getActionBar() == null));
    while (true)
    {
      return;
      this.mActionBar = new ActionBarWrapper(this.mActivity);
    }
  }

  public void addContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    this.mActivity.getWindow().addContentView(paramView, paramLayoutParams);
    initActionBar();
  }

  public boolean dispatchCreateOptionsMenu(Menu paramMenu)
  {
    if ((this.mMenu == null) || (paramMenu != this.mMenu.unwrap()))
      this.mMenu = new MenuWrapper(paramMenu);
    return callbackCreateOptionsMenu(this.mMenu);
  }

  public void dispatchInvalidateOptionsMenu()
  {
    this.mActivity.getWindow().invalidatePanelMenu(0);
  }

  public boolean dispatchOptionsItemSelected(MenuItem paramMenuItem)
  {
    return callbackOptionsItemSelected(this.mMenu.findItem(paramMenuItem));
  }

  public boolean dispatchPrepareOptionsMenu(Menu paramMenu)
  {
    return callbackPrepareOptionsMenu(this.mMenu);
  }

  public ActionBar getActionBar()
  {
    initActionBar();
    return this.mActionBar;
  }

  protected Context getThemedContext()
  {
    Activity localActivity = this.mActivity;
    TypedValue localTypedValue = new TypedValue();
    this.mActivity.getTheme().resolveAttribute(16843671, localTypedValue, true);
    if (localTypedValue.resourceId != 0);
    for (Object localObject = new ContextThemeWrapper(localActivity, localTypedValue.resourceId); ; localObject = localActivity)
      return localObject;
  }

  public boolean hasFeature(int paramInt)
  {
    return this.mActivity.getWindow().hasFeature(paramInt);
  }

  public boolean requestFeature(int paramInt)
  {
    return this.mActivity.getWindow().requestFeature(paramInt);
  }

  public void setContentView(int paramInt)
  {
    this.mActivity.getWindow().setContentView(paramInt);
    initActionBar();
  }

  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    this.mActivity.getWindow().setContentView(paramView, paramLayoutParams);
    initActionBar();
  }

  public void setProgress(int paramInt)
  {
    this.mActivity.setProgress(paramInt);
  }

  public void setProgressBarIndeterminate(boolean paramBoolean)
  {
    this.mActivity.setProgressBarIndeterminate(paramBoolean);
  }

  public void setProgressBarIndeterminateVisibility(boolean paramBoolean)
  {
    this.mActivity.setProgressBarIndeterminateVisibility(paramBoolean);
  }

  public void setProgressBarVisibility(boolean paramBoolean)
  {
    this.mActivity.setProgressBarVisibility(paramBoolean);
  }

  public void setSecondaryProgress(int paramInt)
  {
    this.mActivity.setSecondaryProgress(paramInt);
  }

  public void setTitle(CharSequence paramCharSequence)
  {
    this.mActivity.getWindow().setTitle(paramCharSequence);
  }

  public void setUiOptions(int paramInt)
  {
    this.mActivity.getWindow().setUiOptions(paramInt);
  }

  public void setUiOptions(int paramInt1, int paramInt2)
  {
    this.mActivity.getWindow().setUiOptions(paramInt1, paramInt2);
  }

  public ActionMode startActionMode(ActionMode.Callback paramCallback)
  {
    if (this.mActionMode != null)
      this.mActionMode.finish();
    if (paramCallback != null);
    for (ActionBarSherlockNative.ActionModeCallbackWrapper localActionModeCallbackWrapper = new ActionBarSherlockNative.ActionModeCallbackWrapper(this, paramCallback); ; localActionModeCallbackWrapper = null)
    {
      if (this.mActivity.startActionMode(localActionModeCallbackWrapper) == null)
        this.mActionMode = null;
      if (((this.mActivity instanceof ActionBarSherlock.OnActionModeStartedListener)) && (this.mActionMode != null))
        ((ActionBarSherlock.OnActionModeStartedListener)this.mActivity).onActionModeStarted(this.mActionMode);
      return this.mActionMode;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.ActionBarSherlockNative
 * JD-Core Version:    0.6.2
 */