package com.actionbarsherlock.internal.app;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.widget.SpinnerAdapter;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class ActionBarWrapper extends com.actionbarsherlock.app.ActionBar
  implements android.app.ActionBar.OnMenuVisibilityListener, android.app.ActionBar.OnNavigationListener
{
  private final android.app.ActionBar mActionBar;
  private final Activity mActivity;
  private FragmentTransaction mFragmentTransaction;
  private Set mMenuVisibilityListeners = new HashSet(1);
  private com.actionbarsherlock.app.ActionBar.OnNavigationListener mNavigationListener;

  public ActionBarWrapper(Activity paramActivity)
  {
    this.mActivity = paramActivity;
    this.mActionBar = paramActivity.getActionBar();
    if (this.mActionBar != null)
      this.mActionBar.addOnMenuVisibilityListener(this);
  }

  public void addOnMenuVisibilityListener(com.actionbarsherlock.app.ActionBar.OnMenuVisibilityListener paramOnMenuVisibilityListener)
  {
    this.mMenuVisibilityListeners.add(paramOnMenuVisibilityListener);
  }

  public void addTab(com.actionbarsherlock.app.ActionBar.Tab paramTab)
  {
    this.mActionBar.addTab(((ActionBarWrapper.TabWrapper)paramTab).mNativeTab);
  }

  public void addTab(com.actionbarsherlock.app.ActionBar.Tab paramTab, int paramInt)
  {
    this.mActionBar.addTab(((ActionBarWrapper.TabWrapper)paramTab).mNativeTab, paramInt);
  }

  public void addTab(com.actionbarsherlock.app.ActionBar.Tab paramTab, int paramInt, boolean paramBoolean)
  {
    this.mActionBar.addTab(((ActionBarWrapper.TabWrapper)paramTab).mNativeTab, paramInt, paramBoolean);
  }

  public void addTab(com.actionbarsherlock.app.ActionBar.Tab paramTab, boolean paramBoolean)
  {
    this.mActionBar.addTab(((ActionBarWrapper.TabWrapper)paramTab).mNativeTab, paramBoolean);
  }

  public View getCustomView()
  {
    return this.mActionBar.getCustomView();
  }

  public int getDisplayOptions()
  {
    return this.mActionBar.getDisplayOptions();
  }

  public int getHeight()
  {
    return this.mActionBar.getHeight();
  }

  public int getNavigationItemCount()
  {
    return this.mActionBar.getNavigationItemCount();
  }

  public int getNavigationMode()
  {
    return this.mActionBar.getNavigationMode();
  }

  public int getSelectedNavigationIndex()
  {
    return this.mActionBar.getSelectedNavigationIndex();
  }

  public com.actionbarsherlock.app.ActionBar.Tab getSelectedTab()
  {
    android.app.ActionBar.Tab localTab = this.mActionBar.getSelectedTab();
    if (localTab != null);
    for (com.actionbarsherlock.app.ActionBar.Tab localTab1 = (com.actionbarsherlock.app.ActionBar.Tab)localTab.getTag(); ; localTab1 = null)
      return localTab1;
  }

  public CharSequence getSubtitle()
  {
    return this.mActionBar.getSubtitle();
  }

  public com.actionbarsherlock.app.ActionBar.Tab getTabAt(int paramInt)
  {
    android.app.ActionBar.Tab localTab = this.mActionBar.getTabAt(paramInt);
    if (localTab != null);
    for (com.actionbarsherlock.app.ActionBar.Tab localTab1 = (com.actionbarsherlock.app.ActionBar.Tab)localTab.getTag(); ; localTab1 = null)
      return localTab1;
  }

  public int getTabCount()
  {
    return this.mActionBar.getTabCount();
  }

  public Context getThemedContext()
  {
    return this.mActionBar.getThemedContext();
  }

  public CharSequence getTitle()
  {
    return this.mActionBar.getTitle();
  }

  public void hide()
  {
    this.mActionBar.hide();
  }

  public boolean isShowing()
  {
    return this.mActionBar.isShowing();
  }

  public com.actionbarsherlock.app.ActionBar.Tab newTab()
  {
    return new ActionBarWrapper.TabWrapper(this, this.mActionBar.newTab());
  }

  public void onMenuVisibilityChanged(boolean paramBoolean)
  {
    Iterator localIterator = this.mMenuVisibilityListeners.iterator();
    while (localIterator.hasNext())
      ((com.actionbarsherlock.app.ActionBar.OnMenuVisibilityListener)localIterator.next()).onMenuVisibilityChanged(paramBoolean);
  }

  public boolean onNavigationItemSelected(int paramInt, long paramLong)
  {
    return this.mNavigationListener.onNavigationItemSelected(paramInt, paramLong);
  }

  public void removeAllTabs()
  {
    this.mActionBar.removeAllTabs();
  }

  public void removeOnMenuVisibilityListener(com.actionbarsherlock.app.ActionBar.OnMenuVisibilityListener paramOnMenuVisibilityListener)
  {
    this.mMenuVisibilityListeners.remove(paramOnMenuVisibilityListener);
  }

  public void removeTab(com.actionbarsherlock.app.ActionBar.Tab paramTab)
  {
    this.mActionBar.removeTab(((ActionBarWrapper.TabWrapper)paramTab).mNativeTab);
  }

  public void removeTabAt(int paramInt)
  {
    this.mActionBar.removeTabAt(paramInt);
  }

  public void selectTab(com.actionbarsherlock.app.ActionBar.Tab paramTab)
  {
    this.mActionBar.selectTab(((ActionBarWrapper.TabWrapper)paramTab).mNativeTab);
  }

  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    this.mActionBar.setBackgroundDrawable(paramDrawable);
  }

  public void setCustomView(int paramInt)
  {
    this.mActionBar.setCustomView(paramInt);
  }

  public void setCustomView(View paramView)
  {
    this.mActionBar.setCustomView(paramView);
  }

  public void setCustomView(View paramView, com.actionbarsherlock.app.ActionBar.LayoutParams paramLayoutParams)
  {
    android.app.ActionBar.LayoutParams localLayoutParams = new android.app.ActionBar.LayoutParams(paramLayoutParams);
    localLayoutParams.gravity = paramLayoutParams.gravity;
    localLayoutParams.bottomMargin = paramLayoutParams.bottomMargin;
    localLayoutParams.topMargin = paramLayoutParams.topMargin;
    localLayoutParams.leftMargin = paramLayoutParams.leftMargin;
    localLayoutParams.rightMargin = paramLayoutParams.rightMargin;
    this.mActionBar.setCustomView(paramView, localLayoutParams);
  }

  public void setDisplayHomeAsUpEnabled(boolean paramBoolean)
  {
    this.mActionBar.setDisplayHomeAsUpEnabled(paramBoolean);
  }

  public void setDisplayOptions(int paramInt)
  {
    this.mActionBar.setDisplayOptions(paramInt);
  }

  public void setDisplayOptions(int paramInt1, int paramInt2)
  {
    this.mActionBar.setDisplayOptions(paramInt1, paramInt2);
  }

  public void setDisplayShowCustomEnabled(boolean paramBoolean)
  {
    this.mActionBar.setDisplayShowCustomEnabled(paramBoolean);
  }

  public void setDisplayShowHomeEnabled(boolean paramBoolean)
  {
    this.mActionBar.setDisplayShowHomeEnabled(paramBoolean);
  }

  public void setDisplayShowTitleEnabled(boolean paramBoolean)
  {
    this.mActionBar.setDisplayShowTitleEnabled(paramBoolean);
  }

  public void setDisplayUseLogoEnabled(boolean paramBoolean)
  {
    this.mActionBar.setDisplayUseLogoEnabled(paramBoolean);
  }

  public void setHomeButtonEnabled(boolean paramBoolean)
  {
    this.mActionBar.setHomeButtonEnabled(paramBoolean);
  }

  public void setIcon(int paramInt)
  {
    this.mActionBar.setIcon(paramInt);
  }

  public void setIcon(Drawable paramDrawable)
  {
    this.mActionBar.setIcon(paramDrawable);
  }

  public void setListNavigationCallbacks(SpinnerAdapter paramSpinnerAdapter, com.actionbarsherlock.app.ActionBar.OnNavigationListener paramOnNavigationListener)
  {
    this.mNavigationListener = paramOnNavigationListener;
    android.app.ActionBar localActionBar = this.mActionBar;
    if (paramOnNavigationListener != null);
    while (true)
    {
      localActionBar.setListNavigationCallbacks(paramSpinnerAdapter, this);
      return;
      this = null;
    }
  }

  public void setLogo(int paramInt)
  {
    this.mActionBar.setLogo(paramInt);
  }

  public void setLogo(Drawable paramDrawable)
  {
    this.mActionBar.setLogo(paramDrawable);
  }

  public void setNavigationMode(int paramInt)
  {
    this.mActionBar.setNavigationMode(paramInt);
  }

  public void setSelectedNavigationItem(int paramInt)
  {
    this.mActionBar.setSelectedNavigationItem(paramInt);
  }

  public void setSplitBackgroundDrawable(Drawable paramDrawable)
  {
    this.mActionBar.setSplitBackgroundDrawable(paramDrawable);
  }

  public void setStackedBackgroundDrawable(Drawable paramDrawable)
  {
    this.mActionBar.setStackedBackgroundDrawable(paramDrawable);
  }

  public void setSubtitle(int paramInt)
  {
    this.mActionBar.setSubtitle(paramInt);
  }

  public void setSubtitle(CharSequence paramCharSequence)
  {
    this.mActionBar.setSubtitle(paramCharSequence);
  }

  public void setTitle(int paramInt)
  {
    this.mActionBar.setTitle(paramInt);
  }

  public void setTitle(CharSequence paramCharSequence)
  {
    this.mActionBar.setTitle(paramCharSequence);
  }

  public void show()
  {
    this.mActionBar.show();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.app.ActionBarWrapper
 * JD-Core Version:    0.6.2
 */