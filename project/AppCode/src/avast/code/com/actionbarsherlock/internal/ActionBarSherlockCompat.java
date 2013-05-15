package com.actionbarsherlock.internal;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import android.util.AndroidRuntimeException;
import android.util.Log;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewStub;
import android.view.Window;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.actionbarsherlock.ActionBarSherlock;
import com.actionbarsherlock.ActionBarSherlock.Implementation;
import com.actionbarsherlock.ActionBarSherlock.OnActionModeStartedListener;
import com.actionbarsherlock.R.attr;
import com.actionbarsherlock.R.bool;
import com.actionbarsherlock.R.id;
import com.actionbarsherlock.R.layout;
import com.actionbarsherlock.R.styleable;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.internal.app.ActionBarImpl;
import com.actionbarsherlock.internal.view.StandaloneActionMode;
import com.actionbarsherlock.internal.view.menu.ActionMenuPresenter;
import com.actionbarsherlock.internal.view.menu.MenuBuilder;
import com.actionbarsherlock.internal.view.menu.MenuBuilder.Callback;
import com.actionbarsherlock.internal.view.menu.MenuItemImpl;
import com.actionbarsherlock.internal.view.menu.MenuPresenter.Callback;
import com.actionbarsherlock.internal.widget.ActionBarContainer;
import com.actionbarsherlock.internal.widget.ActionBarContextView;
import com.actionbarsherlock.internal.widget.ActionBarView;
import com.actionbarsherlock.internal.widget.IcsProgressBar;
import com.actionbarsherlock.view.ActionMode;
import com.actionbarsherlock.view.ActionMode.Callback;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

@ActionBarSherlock.Implementation(api=7)
public class ActionBarSherlockCompat extends ActionBarSherlock
  implements MenuItem.OnMenuItemClickListener, MenuBuilder.Callback, MenuPresenter.Callback, com.actionbarsherlock.view.Window.Callback
{
  protected static final int DEFAULT_FEATURES = 0;
  private static final String PANELS_TAG = "sherlock:Panels";
  private ActionBarImpl aActionBar;
  private ActionMode mActionMode;
  private ActionBarContextView mActionModeView;
  private IcsProgressBar mCircularProgressBar;
  private boolean mClosingActionMenu;
  private ViewGroup mContentParent;
  private ViewGroup mDecor;
  private int mFeatures = 0;
  private IcsProgressBar mHorizontalProgressBar;
  private boolean mIsDestroyed = false;
  private boolean mIsFloating;
  private boolean mIsTitleReady = false;
  private MenuBuilder mMenu;
  private Bundle mMenuFrozenActionViewState;
  private boolean mMenuIsPrepared;
  private boolean mMenuKeyIsLongPress = false;
  private boolean mMenuRefreshContent;
  protected HashMap mNativeItemMap;
  private boolean mReserveOverflow;
  private boolean mReserveOverflowSet = false;
  private CharSequence mTitle = null;
  private TextView mTitleView;
  private int mUiOptions = 0;
  private ActionBarView wActionBar;

  public ActionBarSherlockCompat(Activity paramActivity, int paramInt)
  {
    super(paramActivity, paramInt);
  }

  public static String cleanActivityName(String paramString1, String paramString2)
  {
    if (paramString2.charAt(0) == '.')
      paramString2 = paramString1 + paramString2;
    while (true)
    {
      return paramString2;
      if (paramString2.indexOf('.', 1) == -1)
        paramString2 = paramString1 + "." + paramString2;
    }
  }

  private ViewGroup generateLayout()
  {
    TypedArray localTypedArray = this.mActivity.getTheme().obtainStyledAttributes(R.styleable.SherlockTheme);
    this.mIsFloating = localTypedArray.getBoolean(0, false);
    if (!localTypedArray.hasValue(60))
      throw new IllegalStateException("You must use Theme.Sherlock, Theme.Sherlock.Light, Theme.Sherlock.Light.DarkActionBar, or a derivative.");
    int i;
    if (localTypedArray.getBoolean(59, false))
    {
      requestFeature(1);
      if (localTypedArray.getBoolean(61, false))
        requestFeature(9);
      if (localTypedArray.getBoolean(62, false))
        requestFeature(10);
      localTypedArray.recycle();
      if (hasFeature(1))
        break label242;
      if (!this.mIsFloating)
        break label219;
      this.mDecor = ((ViewGroup)this.mDecor.getParent());
      this.mDecor.removeAllViews();
      i = R.layout.abs__dialog_title_holo;
    }
    ViewGroup localViewGroup;
    while (true)
    {
      View localView = this.mActivity.getLayoutInflater().inflate(i, null);
      this.mDecor.addView(localView, new ViewGroup.LayoutParams(-1, -1));
      localViewGroup = (ViewGroup)this.mDecor.findViewById(R.id.abs__content);
      if (localViewGroup != null)
        break label273;
      throw new RuntimeException("Couldn't find content container view");
      if (!localTypedArray.getBoolean(60, false))
        break;
      requestFeature(8);
      break;
      label219: if (hasFeature(9))
      {
        i = R.layout.abs__screen_action_bar_overlay;
      }
      else
      {
        i = R.layout.abs__screen_action_bar;
        continue;
        label242: if ((hasFeature(10)) && (!hasFeature(1)))
          i = R.layout.abs__screen_simple_overlay_action_mode;
        else
          i = R.layout.abs__screen_simple;
      }
    }
    label273: this.mDecor.setId(-1);
    localViewGroup.setId(16908290);
    if (hasFeature(5))
    {
      IcsProgressBar localIcsProgressBar = getCircularProgressBar(false);
      if (localIcsProgressBar != null)
        localIcsProgressBar.setIndeterminate(true);
    }
    return localViewGroup;
  }

  private IcsProgressBar getCircularProgressBar(boolean paramBoolean)
  {
    if (this.mCircularProgressBar != null);
    for (IcsProgressBar localIcsProgressBar = this.mCircularProgressBar; ; localIcsProgressBar = this.mCircularProgressBar)
    {
      return localIcsProgressBar;
      if ((this.mContentParent == null) && (paramBoolean))
        installDecor();
      this.mCircularProgressBar = ((IcsProgressBar)this.mDecor.findViewById(R.id.abs__progress_circular));
      if (this.mCircularProgressBar != null)
        this.mCircularProgressBar.setVisibility(4);
    }
  }

  private int getFeatures()
  {
    return this.mFeatures;
  }

  private IcsProgressBar getHorizontalProgressBar(boolean paramBoolean)
  {
    if (this.mHorizontalProgressBar != null);
    for (IcsProgressBar localIcsProgressBar = this.mHorizontalProgressBar; ; localIcsProgressBar = this.mHorizontalProgressBar)
    {
      return localIcsProgressBar;
      if ((this.mContentParent == null) && (paramBoolean))
        installDecor();
      this.mHorizontalProgressBar = ((IcsProgressBar)this.mDecor.findViewById(R.id.abs__progress_horizontal));
      if (this.mHorizontalProgressBar != null)
        this.mHorizontalProgressBar.setVisibility(4);
    }
  }

  private void hideProgressBars(IcsProgressBar paramIcsProgressBar1, IcsProgressBar paramIcsProgressBar2)
  {
    int i = this.mFeatures;
    Animation localAnimation = AnimationUtils.loadAnimation(this.mActivity, 17432577);
    localAnimation.setDuration(1000L);
    if (((i & 0x20) != 0) && (paramIcsProgressBar2.getVisibility() == 0))
    {
      paramIcsProgressBar2.startAnimation(localAnimation);
      paramIcsProgressBar2.setVisibility(4);
    }
    if (((i & 0x4) != 0) && (paramIcsProgressBar1.getVisibility() == 0))
    {
      paramIcsProgressBar1.startAnimation(localAnimation);
      paramIcsProgressBar1.setVisibility(4);
    }
  }

  private void initActionBar()
  {
    if (this.mDecor == null)
      installDecor();
    if ((this.aActionBar != null) || (!hasFeature(8)) || (hasFeature(1)) || (this.mActivity.isChild()));
    while (true)
    {
      return;
      this.aActionBar = new ActionBarImpl(this.mActivity, this.mFeatures);
      if (!this.mIsDelegate)
        this.wActionBar.setWindowTitle(this.mActivity.getTitle());
    }
  }

  private boolean initializePanelMenu()
  {
    Activity localActivity = this.mActivity;
    int i;
    if (this.wActionBar != null)
    {
      TypedValue localTypedValue = new TypedValue();
      localActivity.getTheme().resolveAttribute(R.attr.actionBarWidgetTheme, localTypedValue, true);
      i = localTypedValue.resourceId;
      if (i == 0);
    }
    for (Object localObject = new ContextThemeWrapper(localActivity, i); ; localObject = localActivity)
    {
      this.mMenu = new MenuBuilder((Context)localObject);
      this.mMenu.setCallback(this);
      return true;
    }
  }

  private void installDecor()
  {
    if (this.mDecor == null)
      this.mDecor = ((ViewGroup)this.mActivity.getWindow().getDecorView().findViewById(16908290));
    if (this.mContentParent == null)
    {
      if (this.mDecor.getChildCount() > 0)
      {
        localArrayList = new ArrayList(1);
        int i = this.mDecor.getChildCount();
        for (int j = 0; j < i; j++)
        {
          View localView2 = this.mDecor.getChildAt(0);
          this.mDecor.removeView(localView2);
          localArrayList.add(localView2);
        }
      }
      ArrayList localArrayList = null;
      this.mContentParent = generateLayout();
      if (localArrayList != null)
      {
        Iterator localIterator = localArrayList.iterator();
        while (localIterator.hasNext())
        {
          View localView1 = (View)localIterator.next();
          this.mContentParent.addView(localView1);
        }
      }
      this.mTitleView = ((TextView)this.mDecor.findViewById(16908310));
      if (this.mTitleView == null)
        break label237;
      if (!hasFeature(1))
        break label223;
      this.mTitleView.setVisibility(8);
      if ((this.mContentParent instanceof FrameLayout))
        ((FrameLayout)this.mContentParent).setForeground(null);
    }
    label223: label237: 
    do
    {
      while (true)
      {
        return;
        this.mTitleView.setText(this.mTitle);
      }
      this.wActionBar = ((ActionBarView)this.mDecor.findViewById(R.id.abs__action_bar));
    }
    while (this.wActionBar == null);
    this.wActionBar.setWindowCallback(this);
    if (this.wActionBar.getTitle() == null)
      this.wActionBar.setWindowTitle(this.mActivity.getTitle());
    if (hasFeature(2))
      this.wActionBar.initProgress();
    if (hasFeature(5))
      this.wActionBar.initIndeterminateProgress();
    int k = loadUiOptionsFromManifest(this.mActivity);
    if (k != 0)
      this.mUiOptions = k;
    boolean bool1;
    label355: boolean bool2;
    if ((0x1 & this.mUiOptions) != 0)
    {
      bool1 = true;
      if (!bool1)
        break label488;
      bool2 = ResourcesCompat.getResources_getBoolean(this.mActivity, R.bool.abs__split_action_bar_is_narrow);
      label372: ActionBarContainer localActionBarContainer = (ActionBarContainer)this.mDecor.findViewById(R.id.abs__split_action_bar);
      if (localActionBarContainer == null)
        break label512;
      this.wActionBar.setSplitView(localActionBarContainer);
      this.wActionBar.setSplitActionBar(bool2);
      this.wActionBar.setSplitWhenNarrow(bool1);
      this.mActionModeView = ((ActionBarContextView)this.mDecor.findViewById(R.id.abs__action_context_bar));
      this.mActionModeView.setSplitView(localActionBarContainer);
      this.mActionModeView.setSplitActionBar(bool2);
      this.mActionModeView.setSplitWhenNarrow(bool1);
    }
    while (true)
    {
      this.mDecor.post(new ActionBarSherlockCompat.1(this));
      break;
      bool1 = false;
      break label355;
      label488: bool2 = this.mActivity.getTheme().obtainStyledAttributes(R.styleable.SherlockTheme).getBoolean(63, false);
      break label372;
      label512: if (bool2)
        Log.e("ActionBarSherlock", "Requested split action bar with incompatible window decor! Ignoring request.");
    }
  }

  private boolean isReservingOverflow()
  {
    if (!this.mReserveOverflowSet)
    {
      this.mReserveOverflow = ActionMenuPresenter.reserveOverflow(this.mActivity);
      this.mReserveOverflowSet = true;
    }
    return this.mReserveOverflow;
  }

  private static int loadUiOptionsFromManifest(Activity paramActivity)
  {
    try
    {
      str1 = paramActivity.getClass().getName();
      str2 = paramActivity.getApplicationInfo().packageName;
      localXmlResourceParser = paramActivity.createPackageContext(str2, 0).getAssets().openXmlResourceParser("AndroidManifest.xml");
      int j = localXmlResourceParser.getEventType();
      k = j;
      i = 0;
      if (k != 1)
        if (k != 2)
          break label333;
    }
    catch (Exception localException3)
    {
      while (true)
      {
        int i;
        int i1;
        try
        {
          str3 = localXmlResourceParser.getName();
          if ("application".equals(str3))
          {
            i3 = -1 + localXmlResourceParser.getAttributeCount();
            if (i3 >= 0)
            {
              if ("uiOptions".equals(localXmlResourceParser.getAttributeName(i3)))
              {
                int i4 = localXmlResourceParser.getAttributeIntValue(i3, 0);
                i = i4;
              }
            }
            else
              m = i;
          }
        }
        catch (Exception localException3)
        {
          try
          {
            String str1;
            String str2;
            XmlResourceParser localXmlResourceParser;
            String str3;
            int i3;
            int n = localXmlResourceParser.nextToken();
            i = m;
            int k = n;
            continue;
            i3--;
            continue;
            if ("activity".equals(str3))
            {
              i1 = -1 + localXmlResourceParser.getAttributeCount();
              int i2 = 0;
              String str4 = null;
              Integer localInteger = null;
              if (i1 >= 0)
              {
                String str5 = localXmlResourceParser.getAttributeName(i1);
                if ("uiOptions".equals(str5))
                {
                  localInteger = Integer.valueOf(localXmlResourceParser.getAttributeIntValue(i1, 0));
                  if ((localInteger == null) || (str4 == null))
                    break label339;
                  i = localInteger.intValue();
                  break label339;
                }
                if (!"name".equals(str5))
                  continue;
                str4 = cleanActivityName(str2, localXmlResourceParser.getAttributeValue(i1));
                boolean bool = str1.equals(str4);
                if (bool);
              }
              else
              {
                if (i2 == 0)
                  break label333;
                return i;
              }
              i2 = 1;
              continue;
              localException1 = localException1;
              Exception localException2 = localException1;
              i = 0;
              localException2.printStackTrace();
              continue;
              localException3 = localException3;
              continue;
            }
          }
          catch (Exception localException4)
          {
            i = m;
            Object localObject = localException4;
            continue;
          }
        }
        label333: int m = i;
        continue;
        label339: i1--;
      }
    }
  }

  private void onIntChanged(int paramInt1, int paramInt2)
  {
    if ((paramInt1 == 2) || (paramInt1 == 5))
      updateProgressBars(paramInt2);
  }

  private boolean preparePanel()
  {
    boolean bool2;
    if (this.mMenuIsPrepared)
      bool2 = true;
    while (true)
    {
      return bool2;
      if ((this.mMenu == null) || (this.mMenuRefreshContent))
      {
        if (this.mMenu == null)
        {
          boolean bool3 = initializePanelMenu();
          bool2 = false;
          if (bool3)
          {
            MenuBuilder localMenuBuilder2 = this.mMenu;
            bool2 = false;
            if (localMenuBuilder2 == null);
          }
        }
        else
        {
          if (this.wActionBar != null)
            this.wActionBar.setMenu(this.mMenu, this);
          this.mMenu.stopDispatchingItemsChanged();
          if (!callbackCreateOptionsMenu(this.mMenu))
          {
            this.mMenu = null;
            ActionBarView localActionBarView = this.wActionBar;
            bool2 = false;
            if (localActionBarView != null)
            {
              this.wActionBar.setMenu(null, this);
              bool2 = false;
            }
          }
          else
          {
            this.mMenuRefreshContent = false;
          }
        }
      }
      else
      {
        this.mMenu.stopDispatchingItemsChanged();
        if (this.mMenuFrozenActionViewState != null)
        {
          this.mMenu.restoreActionViewStates(this.mMenuFrozenActionViewState);
          this.mMenuFrozenActionViewState = null;
        }
        if (!callbackPrepareOptionsMenu(this.mMenu))
        {
          if (this.wActionBar != null)
            this.wActionBar.setMenu(null, this);
          this.mMenu.startDispatchingItemsChanged();
          bool2 = false;
        }
        else
        {
          KeyCharacterMap localKeyCharacterMap = KeyCharacterMap.load(-1);
          MenuBuilder localMenuBuilder1 = this.mMenu;
          int i = localKeyCharacterMap.getKeyboardType();
          boolean bool1 = false;
          if (i != 1)
            bool1 = true;
          localMenuBuilder1.setQwertyMode(bool1);
          this.mMenu.startDispatchingItemsChanged();
          this.mMenuIsPrepared = true;
          bool2 = true;
        }
      }
    }
  }

  private void reopenMenu(boolean paramBoolean)
  {
    if ((this.wActionBar != null) && (this.wActionBar.isOverflowReserved()))
    {
      if ((this.wActionBar.isOverflowMenuShowing()) && (paramBoolean))
        break label61;
      if ((this.wActionBar.getVisibility() == 0) && (callbackPrepareOptionsMenu(this.mMenu)))
        this.wActionBar.showOverflowMenu();
    }
    while (true)
    {
      return;
      label61: this.wActionBar.hideOverflowMenu();
    }
  }

  private void setFeatureInt(int paramInt1, int paramInt2)
  {
    updateInt(paramInt1, paramInt2, false);
  }

  private void showProgressBars(IcsProgressBar paramIcsProgressBar1, IcsProgressBar paramIcsProgressBar2)
  {
    int i = this.mFeatures;
    if (((i & 0x20) != 0) && (paramIcsProgressBar2.getVisibility() == 4))
      paramIcsProgressBar2.setVisibility(0);
    if (((i & 0x4) != 0) && (paramIcsProgressBar1.getProgress() < 10000))
      paramIcsProgressBar1.setVisibility(0);
  }

  private void updateInt(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (this.mContentParent == null);
    while (true)
    {
      return;
      if (((1 << paramInt1 & getFeatures()) != 0) || (paramBoolean))
        onIntChanged(paramInt1, paramInt2);
    }
  }

  private void updateProgressBars(int paramInt)
  {
    IcsProgressBar localIcsProgressBar1 = getCircularProgressBar(true);
    IcsProgressBar localIcsProgressBar2 = getHorizontalProgressBar(true);
    int i = this.mFeatures;
    int k;
    if (paramInt == -1)
      if ((i & 0x4) != 0)
      {
        int j = localIcsProgressBar2.getProgress();
        if ((localIcsProgressBar2.isIndeterminate()) || (j < 10000))
        {
          k = 0;
          localIcsProgressBar2.setVisibility(k);
        }
      }
      else if ((i & 0x20) != 0)
      {
        localIcsProgressBar1.setVisibility(0);
      }
    while (true)
    {
      return;
      k = 4;
      break;
      if (paramInt == -2)
      {
        if ((i & 0x4) != 0)
          localIcsProgressBar2.setVisibility(8);
        if ((i & 0x20) != 0)
          localIcsProgressBar1.setVisibility(8);
      }
      else if (paramInt == -3)
      {
        localIcsProgressBar2.setIndeterminate(true);
      }
      else if (paramInt == -4)
      {
        localIcsProgressBar2.setIndeterminate(false);
      }
      else if ((paramInt >= 0) && (paramInt <= 10000))
      {
        localIcsProgressBar2.setProgress(paramInt + 0);
        if (paramInt < 10000)
          showProgressBars(localIcsProgressBar2, localIcsProgressBar1);
        else
          hideProgressBars(localIcsProgressBar2, localIcsProgressBar1);
      }
      else if ((20000 <= paramInt) && (paramInt <= 30000))
      {
        localIcsProgressBar2.setSecondaryProgress(paramInt - 20000);
        showProgressBars(localIcsProgressBar2, localIcsProgressBar1);
      }
    }
  }

  public void addContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (this.mContentParent == null)
      installDecor();
    this.mContentParent.addView(paramView, paramLayoutParams);
    initActionBar();
  }

  void checkCloseActionMenu(com.actionbarsherlock.view.Menu paramMenu)
  {
    if (this.mClosingActionMenu);
    while (true)
    {
      return;
      this.mClosingActionMenu = true;
      this.wActionBar.dismissPopupMenus();
      this.mClosingActionMenu = false;
    }
  }

  public boolean dispatchCloseOptionsMenu()
  {
    boolean bool1 = isReservingOverflow();
    boolean bool2 = false;
    if (!bool1);
    while (true)
    {
      return bool2;
      ActionBarView localActionBarView = this.wActionBar;
      bool2 = false;
      if (localActionBarView != null)
        bool2 = this.wActionBar.hideOverflowMenu();
    }
  }

  public void dispatchConfigurationChanged(Configuration paramConfiguration)
  {
    if (this.aActionBar != null)
      this.aActionBar.onConfigurationChanged(paramConfiguration);
  }

  public boolean dispatchCreateOptionsMenu(android.view.Menu paramMenu)
  {
    return true;
  }

  public void dispatchDestroy()
  {
    this.mIsDestroyed = true;
  }

  public void dispatchInvalidateOptionsMenu()
  {
    if (this.mMenu != null)
    {
      Bundle localBundle = new Bundle();
      this.mMenu.saveActionViewStates(localBundle);
      if (localBundle.size() > 0)
        this.mMenuFrozenActionViewState = localBundle;
      this.mMenu.stopDispatchingItemsChanged();
      this.mMenu.clear();
    }
    this.mMenuRefreshContent = true;
    if (this.wActionBar != null)
    {
      this.mMenuIsPrepared = false;
      preparePanel();
    }
  }

  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    int i = 1;
    int j = paramKeyEvent.getKeyCode();
    if (j == 4)
    {
      int n = paramKeyEvent.getAction();
      if (this.mActionMode != null)
        if (n == i)
          this.mActionMode.finish();
      while (true)
      {
        return i;
        if ((this.wActionBar == null) || (!this.wActionBar.hasExpandedActionView()))
          break;
        if (n == i)
          this.wActionBar.collapseActionView();
      }
    }
    int k = 0;
    if (j == 82)
    {
      boolean bool = isReservingOverflow();
      k = 0;
      if (bool)
      {
        if ((paramKeyEvent.getAction() != 0) || (!paramKeyEvent.isLongPress()))
          break label121;
        this.mMenuKeyIsLongPress = i;
      }
    }
    label121: int m;
    do
    {
      i = k;
      break;
      m = paramKeyEvent.getAction();
      k = 0;
    }
    while (m != i);
    if (!this.mMenuKeyIsLongPress)
      if ((this.mActionMode == null) && (this.wActionBar != null))
      {
        if (!this.wActionBar.isOverflowMenuShowing())
          break label186;
        this.wActionBar.hideOverflowMenu();
      }
    while (true)
    {
      this.mMenuKeyIsLongPress = false;
      k = i;
      break;
      label186: this.wActionBar.showOverflowMenu();
      continue;
      i = 0;
    }
  }

  public boolean dispatchMenuOpened(int paramInt, android.view.Menu paramMenu)
  {
    boolean bool = true;
    if ((paramInt == 8) || (paramInt == 0))
      if (this.aActionBar != null)
        this.aActionBar.dispatchMenuVisibilityChanged(bool);
    while (true)
    {
      return bool;
      bool = false;
    }
  }

  public boolean dispatchOpenOptionsMenu()
  {
    if (!isReservingOverflow());
    for (boolean bool = false; ; bool = this.wActionBar.showOverflowMenu())
      return bool;
  }

  public boolean dispatchOptionsItemSelected(android.view.MenuItem paramMenuItem)
  {
    throw new IllegalStateException("Native callback invoked. Create a test case and report!");
  }

  public void dispatchPanelClosed(int paramInt, android.view.Menu paramMenu)
  {
    if (((paramInt == 8) || (paramInt == 0)) && (this.aActionBar != null))
      this.aActionBar.dispatchMenuVisibilityChanged(false);
  }

  public void dispatchPause()
  {
    if ((this.wActionBar != null) && (this.wActionBar.isOverflowMenuShowing()))
      this.wActionBar.hideOverflowMenu();
  }

  public void dispatchPostCreate(Bundle paramBundle)
  {
    if (this.mIsDelegate)
      this.mIsTitleReady = true;
    if (this.mDecor == null)
      initActionBar();
  }

  public void dispatchPostResume()
  {
    if (this.aActionBar != null)
      this.aActionBar.setShowHideAnimationEnabled(true);
  }

  public boolean dispatchPrepareOptionsMenu(android.view.Menu paramMenu)
  {
    ActionMode localActionMode = this.mActionMode;
    boolean bool1 = false;
    if (localActionMode != null);
    boolean bool3;
    do
    {
      boolean bool2;
      do
      {
        return bool1;
        this.mMenuIsPrepared = false;
        bool2 = preparePanel();
        bool1 = false;
      }
      while (!bool2);
      bool3 = isReservingOverflow();
      bool1 = false;
    }
    while (bool3);
    if (this.mNativeItemMap == null)
      this.mNativeItemMap = new HashMap();
    while (true)
    {
      MenuBuilder localMenuBuilder = this.mMenu;
      bool1 = false;
      if (localMenuBuilder == null)
        break;
      bool1 = this.mMenu.bindNativeOverflow(paramMenu, this, this.mNativeItemMap);
      break;
      this.mNativeItemMap.clear();
    }
  }

  public void dispatchRestoreInstanceState(Bundle paramBundle)
  {
    this.mMenuFrozenActionViewState = ((Bundle)paramBundle.getParcelable("sherlock:Panels"));
  }

  public void dispatchSaveInstanceState(Bundle paramBundle)
  {
    if (this.mMenu != null)
    {
      this.mMenuFrozenActionViewState = new Bundle();
      this.mMenu.saveActionViewStates(this.mMenuFrozenActionViewState);
    }
    paramBundle.putParcelable("sherlock:Panels", this.mMenuFrozenActionViewState);
  }

  public void dispatchStop()
  {
    if (this.aActionBar != null)
      this.aActionBar.setShowHideAnimationEnabled(false);
  }

  public void dispatchTitleChanged(CharSequence paramCharSequence, int paramInt)
  {
    if ((!this.mIsDelegate) || (this.mIsTitleReady))
    {
      if (this.mTitleView == null)
        break label35;
      this.mTitleView.setText(paramCharSequence);
    }
    while (true)
    {
      this.mTitle = paramCharSequence;
      return;
      label35: if (this.wActionBar != null)
        this.wActionBar.setWindowTitle(paramCharSequence);
    }
  }

  public ActionBar getActionBar()
  {
    initActionBar();
    return this.aActionBar;
  }

  protected Context getThemedContext()
  {
    return this.aActionBar.getThemedContext();
  }

  public boolean hasFeature(int paramInt)
  {
    int i = 1;
    if ((this.mFeatures & i << paramInt) != 0);
    while (true)
    {
      return i;
      i = 0;
    }
  }

  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean)
  {
    checkCloseActionMenu(paramMenuBuilder);
  }

  public boolean onMenuItemClick(android.view.MenuItem paramMenuItem)
  {
    MenuItemImpl localMenuItemImpl = (MenuItemImpl)this.mNativeItemMap.get(paramMenuItem);
    if (localMenuItemImpl != null)
      localMenuItemImpl.invoke();
    while (true)
    {
      return true;
      Log.e("ActionBarSherlock", "Options item \"" + paramMenuItem + "\" not found in mapping");
    }
  }

  public boolean onMenuItemSelected(int paramInt, com.actionbarsherlock.view.MenuItem paramMenuItem)
  {
    return callbackOptionsItemSelected(paramMenuItem);
  }

  public boolean onMenuItemSelected(MenuBuilder paramMenuBuilder, com.actionbarsherlock.view.MenuItem paramMenuItem)
  {
    return callbackOptionsItemSelected(paramMenuItem);
  }

  public void onMenuModeChange(MenuBuilder paramMenuBuilder)
  {
    reopenMenu(true);
  }

  public boolean onOpenSubMenu(MenuBuilder paramMenuBuilder)
  {
    return true;
  }

  public boolean requestFeature(int paramInt)
  {
    int i = 1;
    if (this.mContentParent != null)
      throw new AndroidRuntimeException("requestFeature() must be called before adding content");
    switch (paramInt)
    {
    case 3:
    case 4:
    case 6:
    case 7:
    default:
      i = 0;
    case 1:
    case 2:
    case 5:
    case 8:
    case 9:
    case 10:
    }
    while (true)
    {
      return i;
      this.mFeatures |= i << paramInt;
    }
  }

  public void setContentView(int paramInt)
  {
    if (this.mContentParent == null)
      installDecor();
    while (true)
    {
      this.mActivity.getLayoutInflater().inflate(paramInt, this.mContentParent);
      android.view.Window.Callback localCallback = this.mActivity.getWindow().getCallback();
      if (localCallback != null)
        localCallback.onContentChanged();
      initActionBar();
      return;
      this.mContentParent.removeAllViews();
    }
  }

  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (this.mContentParent == null)
      installDecor();
    while (true)
    {
      this.mContentParent.addView(paramView, paramLayoutParams);
      android.view.Window.Callback localCallback = this.mActivity.getWindow().getCallback();
      if (localCallback != null)
        localCallback.onContentChanged();
      initActionBar();
      return;
      this.mContentParent.removeAllViews();
    }
  }

  public void setProgress(int paramInt)
  {
    setFeatureInt(2, paramInt + 0);
  }

  public void setProgressBarIndeterminate(boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = -3; ; i = -4)
    {
      setFeatureInt(2, i);
      return;
    }
  }

  public void setProgressBarIndeterminateVisibility(boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = -1; ; i = -2)
    {
      setFeatureInt(5, i);
      return;
    }
  }

  public void setProgressBarVisibility(boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = -1; ; i = -2)
    {
      setFeatureInt(2, i);
      return;
    }
  }

  public void setSecondaryProgress(int paramInt)
  {
    setFeatureInt(2, paramInt + 20000);
  }

  public void setTitle(CharSequence paramCharSequence)
  {
    dispatchTitleChanged(paramCharSequence, 0);
  }

  public void setUiOptions(int paramInt)
  {
    this.mUiOptions = paramInt;
  }

  public void setUiOptions(int paramInt1, int paramInt2)
  {
    this.mUiOptions = (this.mUiOptions & (paramInt2 ^ 0xFFFFFFFF) | paramInt1 & paramInt2);
  }

  public ActionMode startActionMode(ActionMode.Callback paramCallback)
  {
    if (this.mActionMode != null)
      this.mActionMode.finish();
    ActionBarSherlockCompat.ActionModeCallbackWrapper localActionModeCallbackWrapper = new ActionBarSherlockCompat.ActionModeCallbackWrapper(this, paramCallback);
    initActionBar();
    if (this.aActionBar != null);
    for (ActionMode localActionMode = this.aActionBar.startActionMode(localActionModeCallbackWrapper); ; localActionMode = null)
    {
      if (localActionMode != null)
        this.mActionMode = localActionMode;
      while (true)
      {
        if ((this.mActionMode != null) && ((this.mActivity instanceof ActionBarSherlock.OnActionModeStartedListener)))
          ((ActionBarSherlock.OnActionModeStartedListener)this.mActivity).onActionModeStarted(this.mActionMode);
        return this.mActionMode;
        if (this.mActionModeView == null)
        {
          ViewStub localViewStub = (ViewStub)this.mDecor.findViewById(R.id.abs__action_mode_bar_stub);
          if (localViewStub != null)
            this.mActionModeView = ((ActionBarContextView)localViewStub.inflate());
        }
        if (this.mActionModeView != null)
        {
          this.mActionModeView.killMode();
          StandaloneActionMode localStandaloneActionMode = new StandaloneActionMode(this.mActivity, this.mActionModeView, localActionModeCallbackWrapper, true);
          if (paramCallback.onCreateActionMode(localStandaloneActionMode, localStandaloneActionMode.getMenu()))
          {
            localStandaloneActionMode.invalidate();
            this.mActionModeView.initForMode(localStandaloneActionMode);
            this.mActionModeView.setVisibility(0);
            this.mActionMode = localStandaloneActionMode;
            this.mActionModeView.sendAccessibilityEvent(32);
          }
          else
          {
            this.mActionMode = null;
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.ActionBarSherlockCompat
 * JD-Core Version:    0.6.2
 */