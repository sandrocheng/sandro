package com.actionbarsherlock.internal.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.Resources.Theme;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.SpinnerAdapter;
import com.actionbarsherlock.R.attr;
import com.actionbarsherlock.R.bool;
import com.actionbarsherlock.R.id;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.app.ActionBar.LayoutParams;
import com.actionbarsherlock.app.ActionBar.OnMenuVisibilityListener;
import com.actionbarsherlock.app.ActionBar.OnNavigationListener;
import com.actionbarsherlock.app.ActionBar.Tab;
import com.actionbarsherlock.app.ActionBar.TabListener;
import com.actionbarsherlock.internal.ResourcesCompat;
import com.actionbarsherlock.internal.nineoldandroids.animation.Animator;
import com.actionbarsherlock.internal.nineoldandroids.animation.Animator.AnimatorListener;
import com.actionbarsherlock.internal.nineoldandroids.animation.AnimatorSet;
import com.actionbarsherlock.internal.nineoldandroids.animation.AnimatorSet.Builder;
import com.actionbarsherlock.internal.nineoldandroids.animation.ObjectAnimator;
import com.actionbarsherlock.internal.nineoldandroids.widget.NineFrameLayout;
import com.actionbarsherlock.internal.widget.ActionBarContainer;
import com.actionbarsherlock.internal.widget.ActionBarContextView;
import com.actionbarsherlock.internal.widget.ActionBarView;
import com.actionbarsherlock.internal.widget.ScrollingTabContainerView;
import com.actionbarsherlock.view.ActionMode;
import com.actionbarsherlock.view.ActionMode.Callback;
import java.util.ArrayList;

public class ActionBarImpl extends ActionBar
{
  private static final int CONTEXT_DISPLAY_NORMAL = 0;
  private static final int CONTEXT_DISPLAY_SPLIT = 1;
  private static final int INVALID_POSITION = -1;
  ActionBarImpl.ActionModeImpl mActionMode;
  private ActionBarView mActionView;
  private Activity mActivity;
  private ActionBarContainer mContainerView;
  private NineFrameLayout mContentView;
  private Context mContext;
  private int mContextDisplayMode;
  private ActionBarContextView mContextView;
  private Animator mCurrentModeAnim;
  private Animator mCurrentShowAnim;
  ActionMode mDeferredDestroyActionMode;
  ActionMode.Callback mDeferredModeDestroyCallback;
  final Handler mHandler = new Handler();
  private boolean mHasEmbeddedTabs;
  final Animator.AnimatorListener mHideListener = new ActionBarImpl.1(this);
  private boolean mLastMenuVisibility;
  private ArrayList mMenuVisibilityListeners = new ArrayList();
  private int mSavedTabPosition = -1;
  private ActionBarImpl.TabImpl mSelectedTab;
  private boolean mShowHideAnimationEnabled;
  final Animator.AnimatorListener mShowListener = new ActionBarImpl.2(this);
  private ActionBarContainer mSplitView;
  private ScrollingTabContainerView mTabScrollView;
  Runnable mTabSelector;
  private ArrayList mTabs = new ArrayList();
  private Context mThemedContext;
  boolean mWasHiddenBeforeMode;

  public ActionBarImpl(Activity paramActivity, int paramInt)
  {
    this.mActivity = paramActivity;
    View localView = paramActivity.getWindow().getDecorView();
    init(localView);
    if ((paramInt & 0x200) == 0)
      this.mContentView = ((NineFrameLayout)localView.findViewById(16908290));
  }

  public ActionBarImpl(Dialog paramDialog)
  {
    init(paramDialog.getWindow().getDecorView());
  }

  private void cleanupTabs()
  {
    if (this.mSelectedTab != null)
      selectTab(null);
    this.mTabs.clear();
    if (this.mTabScrollView != null)
      this.mTabScrollView.removeAllTabs();
    this.mSavedTabPosition = -1;
  }

  private void configureTab(ActionBar.Tab paramTab, int paramInt)
  {
    ActionBarImpl.TabImpl localTabImpl = (ActionBarImpl.TabImpl)paramTab;
    if (localTabImpl.getCallback() == null)
      throw new IllegalStateException("Action Bar Tab must have a Callback");
    localTabImpl.setPosition(paramInt);
    this.mTabs.add(paramInt, localTabImpl);
    int i = this.mTabs.size();
    for (int j = paramInt + 1; j < i; j++)
      ((ActionBarImpl.TabImpl)this.mTabs.get(j)).setPosition(j);
  }

  private void ensureTabsExist()
  {
    if (this.mTabScrollView != null);
    ScrollingTabContainerView localScrollingTabContainerView;
    while (true)
    {
      return;
      localScrollingTabContainerView = new ScrollingTabContainerView(this.mContext);
      if (!this.mHasEmbeddedTabs)
        break;
      localScrollingTabContainerView.setVisibility(0);
      this.mActionView.setEmbeddedTabView(localScrollingTabContainerView);
      this.mTabScrollView = localScrollingTabContainerView;
    }
    int i = getNavigationMode();
    int j = 0;
    if (i == 2);
    while (true)
    {
      localScrollingTabContainerView.setVisibility(j);
      this.mContainerView.setTabContainer(localScrollingTabContainerView);
      break;
      j = 8;
    }
  }

  private void init(View paramView)
  {
    int i = 1;
    this.mContext = paramView.getContext();
    this.mActionView = ((ActionBarView)paramView.findViewById(R.id.abs__action_bar));
    this.mContextView = ((ActionBarContextView)paramView.findViewById(R.id.abs__action_context_bar));
    this.mContainerView = ((ActionBarContainer)paramView.findViewById(R.id.abs__action_bar_container));
    this.mSplitView = ((ActionBarContainer)paramView.findViewById(R.id.abs__split_action_bar));
    if ((this.mActionView == null) || (this.mContextView == null) || (this.mContainerView == null))
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used " + "with a compatible window decor layout");
    this.mActionView.setContextView(this.mContextView);
    int j;
    if (this.mActionView.isSplitActionBar())
    {
      j = i;
      this.mContextDisplayMode = j;
      if (this.mContext.getApplicationInfo().targetSdkVersion >= 14)
        break label195;
    }
    while (true)
    {
      setHomeButtonEnabled(i);
      setHasEmbeddedTabs(ResourcesCompat.getResources_getBoolean(this.mContext, R.bool.abs__action_bar_embed_tabs));
      return;
      j = 0;
      break;
      label195: i = 0;
    }
  }

  private void setHasEmbeddedTabs(boolean paramBoolean)
  {
    boolean bool1 = true;
    this.mHasEmbeddedTabs = paramBoolean;
    boolean bool2;
    label43: int i;
    label63: ActionBarView localActionBarView;
    if (!this.mHasEmbeddedTabs)
    {
      this.mActionView.setEmbeddedTabView(null);
      this.mContainerView.setTabContainer(this.mTabScrollView);
      if (getNavigationMode() != 2)
        break label116;
      bool2 = bool1;
      if (this.mTabScrollView != null)
      {
        ScrollingTabContainerView localScrollingTabContainerView = this.mTabScrollView;
        if (!bool2)
          break label121;
        i = 0;
        localScrollingTabContainerView.setVisibility(i);
      }
      localActionBarView = this.mActionView;
      if ((this.mHasEmbeddedTabs) || (!bool2))
        break label128;
    }
    while (true)
    {
      localActionBarView.setCollapsable(bool1);
      return;
      this.mContainerView.setTabContainer(null);
      this.mActionView.setEmbeddedTabView(this.mTabScrollView);
      break;
      label116: bool2 = false;
      break label43;
      label121: i = 8;
      break label63;
      label128: bool1 = false;
    }
  }

  public void addOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener paramOnMenuVisibilityListener)
  {
    this.mMenuVisibilityListeners.add(paramOnMenuVisibilityListener);
  }

  public void addTab(ActionBar.Tab paramTab)
  {
    addTab(paramTab, this.mTabs.isEmpty());
  }

  public void addTab(ActionBar.Tab paramTab, int paramInt)
  {
    addTab(paramTab, paramInt, this.mTabs.isEmpty());
  }

  public void addTab(ActionBar.Tab paramTab, int paramInt, boolean paramBoolean)
  {
    ensureTabsExist();
    this.mTabScrollView.addTab(paramTab, paramInt, paramBoolean);
    configureTab(paramTab, paramInt);
    if (paramBoolean)
      selectTab(paramTab);
  }

  public void addTab(ActionBar.Tab paramTab, boolean paramBoolean)
  {
    ensureTabsExist();
    this.mTabScrollView.addTab(paramTab, paramBoolean);
    configureTab(paramTab, this.mTabs.size());
    if (paramBoolean)
      selectTab(paramTab);
  }

  void animateToMode(boolean paramBoolean)
  {
    int i = 8;
    if (paramBoolean)
      show(false);
    if (this.mCurrentModeAnim != null)
      this.mCurrentModeAnim.end();
    ActionBarView localActionBarView = this.mActionView;
    int j;
    int k;
    label57: ScrollingTabContainerView localScrollingTabContainerView;
    if (paramBoolean)
    {
      j = i;
      localActionBarView.animateToVisibility(j);
      ActionBarContextView localActionBarContextView = this.mContextView;
      if (!paramBoolean)
        break label114;
      k = 0;
      localActionBarContextView.animateToVisibility(k);
      if ((this.mTabScrollView != null) && (!this.mActionView.hasEmbeddedTabs()) && (this.mActionView.isCollapsed()))
      {
        localScrollingTabContainerView = this.mTabScrollView;
        if (!paramBoolean)
          break label120;
      }
    }
    while (true)
    {
      localScrollingTabContainerView.animateToVisibility(i);
      return;
      j = 0;
      break;
      label114: k = i;
      break label57;
      label120: i = 0;
    }
  }

  void completeDeferredDestroyActionMode()
  {
    if (this.mDeferredModeDestroyCallback != null)
    {
      this.mDeferredModeDestroyCallback.onDestroyActionMode(this.mDeferredDestroyActionMode);
      this.mDeferredDestroyActionMode = null;
      this.mDeferredModeDestroyCallback = null;
    }
  }

  public void dispatchMenuVisibilityChanged(boolean paramBoolean)
  {
    if (paramBoolean == this.mLastMenuVisibility);
    while (true)
    {
      return;
      this.mLastMenuVisibility = paramBoolean;
      int i = this.mMenuVisibilityListeners.size();
      for (int j = 0; j < i; j++)
        ((ActionBar.OnMenuVisibilityListener)this.mMenuVisibilityListeners.get(j)).onMenuVisibilityChanged(paramBoolean);
    }
  }

  public View getCustomView()
  {
    return this.mActionView.getCustomNavigationView();
  }

  public int getDisplayOptions()
  {
    return this.mActionView.getDisplayOptions();
  }

  public int getHeight()
  {
    return this.mContainerView.getHeight();
  }

  public int getNavigationItemCount()
  {
    int i = this.mActionView.getNavigationMode();
    int j = 0;
    switch (i)
    {
    default:
    case 2:
    case 1:
    }
    while (true)
    {
      return j;
      j = this.mTabs.size();
      continue;
      SpinnerAdapter localSpinnerAdapter = this.mActionView.getDropdownAdapter();
      j = 0;
      if (localSpinnerAdapter != null)
        j = localSpinnerAdapter.getCount();
    }
  }

  public int getNavigationMode()
  {
    return this.mActionView.getNavigationMode();
  }

  public int getSelectedNavigationIndex()
  {
    int i = -1;
    switch (this.mActionView.getNavigationMode())
    {
    default:
    case 2:
    case 1:
    }
    while (true)
    {
      return i;
      if (this.mSelectedTab != null)
      {
        i = this.mSelectedTab.getPosition();
        continue;
        i = this.mActionView.getDropdownSelectedPosition();
      }
    }
  }

  public ActionBar.Tab getSelectedTab()
  {
    return this.mSelectedTab;
  }

  public CharSequence getSubtitle()
  {
    return this.mActionView.getSubtitle();
  }

  public ActionBar.Tab getTabAt(int paramInt)
  {
    return (ActionBar.Tab)this.mTabs.get(paramInt);
  }

  public int getTabCount()
  {
    return this.mTabs.size();
  }

  public Context getThemedContext()
  {
    int i;
    if (this.mThemedContext == null)
    {
      TypedValue localTypedValue = new TypedValue();
      this.mContext.getTheme().resolveAttribute(R.attr.actionBarWidgetTheme, localTypedValue, true);
      i = localTypedValue.resourceId;
      if (i == 0)
        break label61;
    }
    label61: for (this.mThemedContext = new ContextThemeWrapper(this.mContext, i); ; this.mThemedContext = this.mContext)
      return this.mThemedContext;
  }

  public CharSequence getTitle()
  {
    return this.mActionView.getTitle();
  }

  public void hide()
  {
    if (this.mCurrentShowAnim != null)
      this.mCurrentShowAnim.end();
    if (this.mContainerView.getVisibility() == 8);
    while (true)
    {
      return;
      if (this.mShowHideAnimationEnabled)
      {
        this.mContainerView.setAlpha(1.0F);
        this.mContainerView.setTransitioning(true);
        AnimatorSet localAnimatorSet = new AnimatorSet();
        AnimatorSet.Builder localBuilder = localAnimatorSet.play(ObjectAnimator.ofFloat(this.mContainerView, "alpha", new float[] { 0.0F }));
        if (this.mContentView != null)
        {
          NineFrameLayout localNineFrameLayout = this.mContentView;
          float[] arrayOfFloat1 = new float[2];
          arrayOfFloat1[0] = 0.0F;
          arrayOfFloat1[1] = (-this.mContainerView.getHeight());
          localBuilder.with(ObjectAnimator.ofFloat(localNineFrameLayout, "translationY", arrayOfFloat1));
          ActionBarContainer localActionBarContainer = this.mContainerView;
          float[] arrayOfFloat2 = new float[1];
          arrayOfFloat2[0] = (-this.mContainerView.getHeight());
          localBuilder.with(ObjectAnimator.ofFloat(localActionBarContainer, "translationY", arrayOfFloat2));
        }
        if ((this.mSplitView != null) && (this.mSplitView.getVisibility() == 0))
        {
          this.mSplitView.setAlpha(1.0F);
          localBuilder.with(ObjectAnimator.ofFloat(this.mSplitView, "alpha", new float[] { 0.0F }));
        }
        localAnimatorSet.addListener(this.mHideListener);
        this.mCurrentShowAnim = localAnimatorSet;
        localAnimatorSet.start();
      }
      else
      {
        this.mHideListener.onAnimationEnd(null);
      }
    }
  }

  public boolean isShowing()
  {
    if (this.mContainerView.getVisibility() == 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public ActionBar.Tab newTab()
  {
    return new ActionBarImpl.TabImpl(this);
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    setHasEmbeddedTabs(ResourcesCompat.getResources_getBoolean(this.mContext, R.bool.abs__action_bar_embed_tabs));
    if (Build.VERSION.SDK_INT < 8)
    {
      this.mActionView.onConfigurationChanged(paramConfiguration);
      if (this.mContextView != null)
        this.mContextView.onConfigurationChanged(paramConfiguration);
    }
  }

  public void removeAllTabs()
  {
    cleanupTabs();
  }

  public void removeOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener paramOnMenuVisibilityListener)
  {
    this.mMenuVisibilityListeners.remove(paramOnMenuVisibilityListener);
  }

  public void removeTab(ActionBar.Tab paramTab)
  {
    removeTabAt(paramTab.getPosition());
  }

  public void removeTabAt(int paramInt)
  {
    if (this.mTabScrollView == null);
    int i;
    do
    {
      return;
      if (this.mSelectedTab != null);
      for (i = this.mSelectedTab.getPosition(); ; i = this.mSavedTabPosition)
      {
        this.mTabScrollView.removeTabAt(paramInt);
        ActionBarImpl.TabImpl localTabImpl = (ActionBarImpl.TabImpl)this.mTabs.remove(paramInt);
        if (localTabImpl != null)
          localTabImpl.setPosition(-1);
        int j = this.mTabs.size();
        for (int k = paramInt; k < j; k++)
          ((ActionBarImpl.TabImpl)this.mTabs.get(k)).setPosition(k);
      }
    }
    while (i != paramInt);
    if (this.mTabs.isEmpty());
    for (Object localObject = null; ; localObject = (ActionBarImpl.TabImpl)this.mTabs.get(Math.max(0, paramInt - 1)))
    {
      selectTab((ActionBar.Tab)localObject);
      break;
    }
  }

  public void selectTab(ActionBar.Tab paramTab)
  {
    int i = -1;
    int j;
    if (getNavigationMode() != 2)
      if (paramTab != null)
      {
        j = paramTab.getPosition();
        this.mSavedTabPosition = j;
      }
    label212: 
    while (true)
    {
      return;
      j = i;
      break;
      boolean bool = this.mActivity instanceof FragmentActivity;
      FragmentTransaction localFragmentTransaction = null;
      if (bool)
        localFragmentTransaction = ((FragmentActivity)this.mActivity).getSupportFragmentManager().beginTransaction().disallowAddToBackStack();
      if (this.mSelectedTab == paramTab)
        if (this.mSelectedTab != null)
        {
          this.mSelectedTab.getCallback().onTabReselected(this.mSelectedTab, localFragmentTransaction);
          this.mTabScrollView.animateToTab(paramTab.getPosition());
        }
      while (true)
      {
        if ((localFragmentTransaction == null) || (localFragmentTransaction.isEmpty()))
          break label212;
        localFragmentTransaction.commit();
        break;
        ScrollingTabContainerView localScrollingTabContainerView = this.mTabScrollView;
        if (paramTab != null)
          i = paramTab.getPosition();
        localScrollingTabContainerView.setTabSelected(i);
        if (this.mSelectedTab != null)
          this.mSelectedTab.getCallback().onTabUnselected(this.mSelectedTab, localFragmentTransaction);
        this.mSelectedTab = ((ActionBarImpl.TabImpl)paramTab);
        if (this.mSelectedTab != null)
          this.mSelectedTab.getCallback().onTabSelected(this.mSelectedTab, localFragmentTransaction);
      }
    }
  }

  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    this.mContainerView.setPrimaryBackground(paramDrawable);
  }

  public void setCustomView(int paramInt)
  {
    setCustomView(LayoutInflater.from(getThemedContext()).inflate(paramInt, this.mActionView, false));
  }

  public void setCustomView(View paramView)
  {
    this.mActionView.setCustomNavigationView(paramView);
  }

  public void setCustomView(View paramView, ActionBar.LayoutParams paramLayoutParams)
  {
    paramView.setLayoutParams(paramLayoutParams);
    this.mActionView.setCustomNavigationView(paramView);
  }

  public void setDisplayHomeAsUpEnabled(boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 4; ; i = 0)
    {
      setDisplayOptions(i, 4);
      return;
    }
  }

  public void setDisplayOptions(int paramInt)
  {
    this.mActionView.setDisplayOptions(paramInt);
  }

  public void setDisplayOptions(int paramInt1, int paramInt2)
  {
    int i = this.mActionView.getDisplayOptions();
    this.mActionView.setDisplayOptions(paramInt1 & paramInt2 | i & (paramInt2 ^ 0xFFFFFFFF));
  }

  public void setDisplayShowCustomEnabled(boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 16; ; i = 0)
    {
      setDisplayOptions(i, 16);
      return;
    }
  }

  public void setDisplayShowHomeEnabled(boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 2; ; i = 0)
    {
      setDisplayOptions(i, 2);
      return;
    }
  }

  public void setDisplayShowTitleEnabled(boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 8; ; i = 0)
    {
      setDisplayOptions(i, 8);
      return;
    }
  }

  public void setDisplayUseLogoEnabled(boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 1; ; i = 0)
    {
      setDisplayOptions(i, 1);
      return;
    }
  }

  public void setHomeButtonEnabled(boolean paramBoolean)
  {
    this.mActionView.setHomeButtonEnabled(paramBoolean);
  }

  public void setIcon(int paramInt)
  {
    this.mActionView.setIcon(paramInt);
  }

  public void setIcon(Drawable paramDrawable)
  {
    this.mActionView.setIcon(paramDrawable);
  }

  public void setListNavigationCallbacks(SpinnerAdapter paramSpinnerAdapter, ActionBar.OnNavigationListener paramOnNavigationListener)
  {
    this.mActionView.setDropdownAdapter(paramSpinnerAdapter);
    this.mActionView.setCallback(paramOnNavigationListener);
  }

  public void setLogo(int paramInt)
  {
    this.mActionView.setLogo(paramInt);
  }

  public void setLogo(Drawable paramDrawable)
  {
    this.mActionView.setLogo(paramDrawable);
  }

  public void setNavigationMode(int paramInt)
  {
    switch (this.mActionView.getNavigationMode())
    {
    default:
      this.mActionView.setNavigationMode(paramInt);
      switch (paramInt)
      {
      default:
      case 2:
      }
      break;
    case 2:
    }
    while (true)
    {
      ActionBarView localActionBarView = this.mActionView;
      boolean bool1 = false;
      if (paramInt == 2)
      {
        boolean bool2 = this.mHasEmbeddedTabs;
        bool1 = false;
        if (!bool2)
          bool1 = true;
      }
      localActionBarView.setCollapsable(bool1);
      return;
      this.mSavedTabPosition = getSelectedNavigationIndex();
      selectTab(null);
      this.mTabScrollView.setVisibility(8);
      break;
      ensureTabsExist();
      this.mTabScrollView.setVisibility(0);
      if (this.mSavedTabPosition != -1)
      {
        setSelectedNavigationItem(this.mSavedTabPosition);
        this.mSavedTabPosition = -1;
      }
    }
  }

  public void setSelectedNavigationItem(int paramInt)
  {
    switch (this.mActionView.getNavigationMode())
    {
    default:
      throw new IllegalStateException("setSelectedNavigationIndex not valid for current navigation mode");
    case 2:
      selectTab((ActionBar.Tab)this.mTabs.get(paramInt));
    case 1:
    }
    while (true)
    {
      return;
      this.mActionView.setDropdownSelectedPosition(paramInt);
    }
  }

  public void setShowHideAnimationEnabled(boolean paramBoolean)
  {
    this.mShowHideAnimationEnabled = paramBoolean;
    if ((!paramBoolean) && (this.mCurrentShowAnim != null))
      this.mCurrentShowAnim.end();
  }

  public void setSplitBackgroundDrawable(Drawable paramDrawable)
  {
    if (this.mSplitView != null)
      this.mSplitView.setSplitBackground(paramDrawable);
  }

  public void setStackedBackgroundDrawable(Drawable paramDrawable)
  {
    this.mContainerView.setStackedBackground(paramDrawable);
  }

  public void setSubtitle(int paramInt)
  {
    setSubtitle(this.mContext.getString(paramInt));
  }

  public void setSubtitle(CharSequence paramCharSequence)
  {
    this.mActionView.setSubtitle(paramCharSequence);
  }

  public void setTitle(int paramInt)
  {
    setTitle(this.mContext.getString(paramInt));
  }

  public void setTitle(CharSequence paramCharSequence)
  {
    this.mActionView.setTitle(paramCharSequence);
  }

  public void show()
  {
    show(true);
  }

  void show(boolean paramBoolean)
  {
    if (this.mCurrentShowAnim != null)
      this.mCurrentShowAnim.end();
    if (this.mContainerView.getVisibility() == 0)
      if (paramBoolean)
        this.mWasHiddenBeforeMode = false;
    while (true)
    {
      return;
      this.mContainerView.setVisibility(0);
      if (this.mShowHideAnimationEnabled)
      {
        this.mContainerView.setAlpha(0.0F);
        AnimatorSet localAnimatorSet = new AnimatorSet();
        AnimatorSet.Builder localBuilder = localAnimatorSet.play(ObjectAnimator.ofFloat(this.mContainerView, "alpha", new float[] { 1.0F }));
        if (this.mContentView != null)
        {
          NineFrameLayout localNineFrameLayout = this.mContentView;
          float[] arrayOfFloat = new float[2];
          arrayOfFloat[0] = (-this.mContainerView.getHeight());
          arrayOfFloat[1] = 0.0F;
          localBuilder.with(ObjectAnimator.ofFloat(localNineFrameLayout, "translationY", arrayOfFloat));
          this.mContainerView.setTranslationY(-this.mContainerView.getHeight());
          localBuilder.with(ObjectAnimator.ofFloat(this.mContainerView, "translationY", new float[] { 0.0F }));
        }
        if ((this.mSplitView != null) && (this.mContextDisplayMode == 1))
        {
          this.mSplitView.setAlpha(0.0F);
          this.mSplitView.setVisibility(0);
          localBuilder.with(ObjectAnimator.ofFloat(this.mSplitView, "alpha", new float[] { 1.0F }));
        }
        localAnimatorSet.addListener(this.mShowListener);
        this.mCurrentShowAnim = localAnimatorSet;
        localAnimatorSet.start();
      }
      else
      {
        this.mContainerView.setAlpha(1.0F);
        this.mContainerView.setTranslationY(0.0F);
        this.mShowListener.onAnimationEnd(null);
      }
    }
  }

  public ActionMode startActionMode(ActionMode.Callback paramCallback)
  {
    boolean bool1;
    if (this.mActionMode != null)
    {
      bool1 = this.mWasHiddenBeforeMode;
      this.mActionMode.finish();
    }
    while (true)
    {
      this.mContextView.killMode();
      ActionBarImpl.ActionModeImpl localActionModeImpl1 = new ActionBarImpl.ActionModeImpl(this, paramCallback);
      boolean bool2;
      if (localActionModeImpl1.dispatchOnCreate())
        if ((!isShowing()) || (bool1))
        {
          bool2 = true;
          this.mWasHiddenBeforeMode = bool2;
          localActionModeImpl1.invalidate();
          this.mContextView.initForMode(localActionModeImpl1);
          animateToMode(true);
          if ((this.mSplitView != null) && (this.mContextDisplayMode == 1))
            this.mSplitView.setVisibility(0);
          this.mContextView.sendAccessibilityEvent(32);
          this.mActionMode = localActionModeImpl1;
        }
      for (ActionBarImpl.ActionModeImpl localActionModeImpl2 = localActionModeImpl1; ; localActionModeImpl2 = null)
      {
        return localActionModeImpl2;
        bool2 = false;
        break;
      }
      bool1 = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.app.ActionBarImpl
 * JD-Core Version:    0.6.2
 */