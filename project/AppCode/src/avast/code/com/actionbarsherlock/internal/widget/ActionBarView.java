package com.actionbarsherlock.internal.widget;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.actionbarsherlock.R.attr;
import com.actionbarsherlock.R.bool;
import com.actionbarsherlock.R.id;
import com.actionbarsherlock.R.layout;
import com.actionbarsherlock.R.string;
import com.actionbarsherlock.R.styleable;
import com.actionbarsherlock.app.ActionBar.LayoutParams;
import com.actionbarsherlock.app.ActionBar.OnNavigationListener;
import com.actionbarsherlock.internal.ActionBarSherlockCompat;
import com.actionbarsherlock.internal.ResourcesCompat;
import com.actionbarsherlock.internal.view.menu.ActionMenuItem;
import com.actionbarsherlock.internal.view.menu.ActionMenuPresenter;
import com.actionbarsherlock.internal.view.menu.ActionMenuView;
import com.actionbarsherlock.internal.view.menu.MenuBuilder;
import com.actionbarsherlock.internal.view.menu.MenuItemImpl;
import com.actionbarsherlock.internal.view.menu.MenuPresenter.Callback;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuItem;
import com.actionbarsherlock.view.Window.Callback;

public class ActionBarView extends AbsActionBarView
{
  private static final boolean DEBUG = false;
  private static final int DEFAULT_CUSTOM_GRAVITY = 19;
  public static final int DISPLAY_DEFAULT = 0;
  private static final int DISPLAY_RELAYOUT_MASK = 31;
  private static final String TAG = "ActionBarView";
  private ActionBar.OnNavigationListener mCallback;
  private ActionBarContextView mContextView;
  private View mCustomNavView;
  private int mDisplayOptions = -1;
  View mExpandedActionView;
  private final View.OnClickListener mExpandedActionViewUpListener = new ActionBarView.2(this);
  private ActionBarView.HomeView mExpandedHomeLayout;
  private ActionBarView.ExpandedActionViewMenuPresenter mExpandedMenuPresenter;
  private ActionBarView.HomeView mHomeLayout;
  private Drawable mIcon;
  private boolean mIncludeTabs;
  private int mIndeterminateProgressStyle;
  private IcsProgressBar mIndeterminateProgressView;
  private boolean mIsCollapsable;
  private boolean mIsCollapsed;
  private int mItemPadding;
  private IcsLinearLayout mListNavLayout;
  private Drawable mLogo;
  private ActionMenuItem mLogoNavItem;
  private final IcsAdapterView.OnItemSelectedListener mNavItemSelectedListener = new ActionBarView.1(this);
  private int mNavigationMode;
  private MenuBuilder mOptionsMenu;
  private int mProgressBarPadding;
  private int mProgressStyle;
  private IcsProgressBar mProgressView;
  private IcsSpinner mSpinner;
  private SpinnerAdapter mSpinnerAdapter;
  private CharSequence mSubtitle;
  private int mSubtitleStyleRes;
  private TextView mSubtitleView;
  private ScrollingTabContainerView mTabScrollView;
  private CharSequence mTitle;
  private LinearLayout mTitleLayout;
  private int mTitleStyleRes;
  private View mTitleUpView;
  private TextView mTitleView;
  private final View.OnClickListener mUpClickListener = new ActionBarView.3(this);
  private boolean mUserTitle;
  Window.Callback mWindowCallback;

  public ActionBarView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setBackgroundResource(0);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.SherlockActionBar, R.attr.actionBarStyle, 0);
    ApplicationInfo localApplicationInfo = paramContext.getApplicationInfo();
    PackageManager localPackageManager = paramContext.getPackageManager();
    this.mNavigationMode = localTypedArray.getInt(6, 0);
    this.mTitle = localTypedArray.getText(8);
    this.mSubtitle = localTypedArray.getText(9);
    this.mLogo = localTypedArray.getDrawable(11);
    if (this.mLogo == null)
    {
      if (Build.VERSION.SDK_INT >= 11)
        break label492;
      if ((paramContext instanceof Activity))
      {
        int k = loadLogoFromManifest((Activity)paramContext);
        if (k != 0)
          this.mLogo = paramContext.getResources().getDrawable(k);
      }
    }
    while (true)
    {
      this.mIcon = localTypedArray.getDrawable(10);
      if ((this.mIcon != null) || ((paramContext instanceof Activity)));
      try
      {
        this.mIcon = localPackageManager.getActivityIcon(((Activity)paramContext).getComponentName());
        if (this.mIcon == null)
          this.mIcon = localApplicationInfo.loadIcon(localPackageManager);
        LayoutInflater localLayoutInflater = LayoutInflater.from(paramContext);
        int i = localTypedArray.getResourceId(14, R.layout.abs__action_bar_home);
        this.mHomeLayout = ((ActionBarView.HomeView)localLayoutInflater.inflate(i, this, false));
        this.mExpandedHomeLayout = ((ActionBarView.HomeView)localLayoutInflater.inflate(i, this, false));
        this.mExpandedHomeLayout.setUp(true);
        this.mExpandedHomeLayout.setOnClickListener(this.mExpandedActionViewUpListener);
        this.mExpandedHomeLayout.setContentDescription(getResources().getText(R.string.abs__action_bar_up_description));
        this.mTitleStyleRes = localTypedArray.getResourceId(0, 0);
        this.mSubtitleStyleRes = localTypedArray.getResourceId(1, 0);
        this.mProgressStyle = localTypedArray.getResourceId(15, 0);
        this.mIndeterminateProgressStyle = localTypedArray.getResourceId(16, 0);
        this.mProgressBarPadding = localTypedArray.getDimensionPixelOffset(17, 0);
        this.mItemPadding = localTypedArray.getDimensionPixelOffset(18, 0);
        setDisplayOptions(localTypedArray.getInt(7, 0));
        int j = localTypedArray.getResourceId(13, 0);
        if (j != 0)
        {
          this.mCustomNavView = localLayoutInflater.inflate(j, this, false);
          this.mNavigationMode = 0;
          setDisplayOptions(0x10 | this.mDisplayOptions);
        }
        this.mContentHeight = localTypedArray.getLayoutDimension(4, 0);
        localTypedArray.recycle();
        this.mLogoNavItem = new ActionMenuItem(paramContext, 0, 16908332, 0, 0, this.mTitle);
        this.mHomeLayout.setOnClickListener(this.mUpClickListener);
        this.mHomeLayout.setClickable(true);
        this.mHomeLayout.setFocusable(true);
        return;
        label492: if ((paramContext instanceof Activity));
        try
        {
          this.mLogo = localPackageManager.getActivityLogo(((Activity)paramContext).getComponentName());
          if (this.mLogo != null)
            continue;
          this.mLogo = localApplicationInfo.loadLogo(localPackageManager);
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException2)
        {
          while (true)
            Log.e("ActionBarView", "Activity component name not found!", localNameNotFoundException2);
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException1)
      {
        while (true)
          Log.e("ActionBarView", "Activity component name not found!", localNameNotFoundException1);
      }
    }
  }

  private void configPresenters(MenuBuilder paramMenuBuilder)
  {
    if (paramMenuBuilder != null)
    {
      paramMenuBuilder.addMenuPresenter(this.mActionMenuPresenter);
      paramMenuBuilder.addMenuPresenter(this.mExpandedMenuPresenter);
    }
    while (true)
    {
      return;
      this.mActionMenuPresenter.initForMenu(this.mContext, null);
      this.mExpandedMenuPresenter.initForMenu(this.mContext, null);
      this.mActionMenuPresenter.updateMenuView(true);
      this.mExpandedMenuPresenter.updateMenuView(true);
    }
  }

  private void initTitle()
  {
    boolean bool1 = true;
    boolean bool2;
    boolean bool3;
    label200: int i;
    label217: LinearLayout localLinearLayout;
    if (this.mTitleLayout == null)
    {
      this.mTitleLayout = ((LinearLayout)LayoutInflater.from(getContext()).inflate(R.layout.abs__action_bar_title_item, this, false));
      this.mTitleView = ((TextView)this.mTitleLayout.findViewById(R.id.abs__action_bar_title));
      this.mSubtitleView = ((TextView)this.mTitleLayout.findViewById(R.id.abs__action_bar_subtitle));
      this.mTitleUpView = this.mTitleLayout.findViewById(R.id.abs__up);
      this.mTitleLayout.setOnClickListener(this.mUpClickListener);
      if (this.mTitleStyleRes != 0)
        this.mTitleView.setTextAppearance(this.mContext, this.mTitleStyleRes);
      if (this.mTitle != null)
        this.mTitleView.setText(this.mTitle);
      if (this.mSubtitleStyleRes != 0)
        this.mSubtitleView.setTextAppearance(this.mContext, this.mSubtitleStyleRes);
      if (this.mSubtitle != null)
      {
        this.mSubtitleView.setText(this.mSubtitle);
        this.mSubtitleView.setVisibility(0);
      }
      if ((0x4 & this.mDisplayOptions) == 0)
        break label289;
      bool2 = bool1;
      if ((0x2 & this.mDisplayOptions) == 0)
        break label294;
      bool3 = bool1;
      View localView = this.mTitleUpView;
      if (bool3)
        break label305;
      if (!bool2)
        break label299;
      i = 0;
      localView.setVisibility(i);
      localLinearLayout = this.mTitleLayout;
      if ((!bool2) || (bool3))
        break label312;
    }
    while (true)
    {
      localLinearLayout.setEnabled(bool1);
      addView(this.mTitleLayout);
      if ((this.mExpandedActionView != null) || ((TextUtils.isEmpty(this.mTitle)) && (TextUtils.isEmpty(this.mSubtitle))))
        this.mTitleLayout.setVisibility(8);
      return;
      label289: bool2 = false;
      break;
      label294: bool3 = false;
      break label200;
      label299: i = 4;
      break label217;
      label305: i = 8;
      break label217;
      label312: bool1 = false;
    }
  }

  private static int loadLogoFromManifest(Activity paramActivity)
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
              if ("logo".equals(localXmlResourceParser.getAttributeName(i3)))
              {
                int i4 = localXmlResourceParser.getAttributeResourceValue(i3, 0);
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
                if ("logo".equals(str5))
                {
                  localInteger = Integer.valueOf(localXmlResourceParser.getAttributeResourceValue(i1, 0));
                  if ((localInteger == null) || (str4 == null))
                    break label339;
                  i = localInteger.intValue();
                  break label339;
                }
                if (!"name".equals(str5))
                  continue;
                str4 = ActionBarSherlockCompat.cleanActivityName(str2, localXmlResourceParser.getAttributeValue(i1));
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

  private void setTitleImpl(CharSequence paramCharSequence)
  {
    this.mTitle = paramCharSequence;
    int i;
    LinearLayout localLinearLayout;
    int j;
    if (this.mTitleView != null)
    {
      this.mTitleView.setText(paramCharSequence);
      if ((this.mExpandedActionView != null) || ((0x8 & this.mDisplayOptions) == 0) || ((TextUtils.isEmpty(this.mTitle)) && (TextUtils.isEmpty(this.mSubtitle))))
        break label96;
      i = 1;
      localLinearLayout = this.mTitleLayout;
      j = 0;
      if (i == 0)
        break label101;
    }
    while (true)
    {
      localLinearLayout.setVisibility(j);
      if (this.mLogoNavItem != null)
        this.mLogoNavItem.setTitle(paramCharSequence);
      return;
      label96: i = 0;
      break;
      label101: j = 8;
    }
  }

  public void collapseActionView()
  {
    if (this.mExpandedMenuPresenter == null);
    for (MenuItemImpl localMenuItemImpl = null; ; localMenuItemImpl = this.mExpandedMenuPresenter.mCurrentExpandedItem)
    {
      if (localMenuItemImpl != null)
        localMenuItemImpl.collapseActionView();
      return;
    }
  }

  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new ActionBar.LayoutParams(19);
  }

  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new ActionBar.LayoutParams(getContext(), paramAttributeSet);
  }

  public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if (paramLayoutParams == null)
      paramLayoutParams = generateDefaultLayoutParams();
    return paramLayoutParams;
  }

  public View getCustomNavigationView()
  {
    return this.mCustomNavView;
  }

  public int getDisplayOptions()
  {
    return this.mDisplayOptions;
  }

  public SpinnerAdapter getDropdownAdapter()
  {
    return this.mSpinnerAdapter;
  }

  public int getDropdownSelectedPosition()
  {
    return this.mSpinner.getSelectedItemPosition();
  }

  public int getNavigationMode()
  {
    return this.mNavigationMode;
  }

  public CharSequence getSubtitle()
  {
    return this.mSubtitle;
  }

  public CharSequence getTitle()
  {
    return this.mTitle;
  }

  public boolean hasEmbeddedTabs()
  {
    return this.mIncludeTabs;
  }

  public boolean hasExpandedActionView()
  {
    if ((this.mExpandedMenuPresenter != null) && (this.mExpandedMenuPresenter.mCurrentExpandedItem != null));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public void initIndeterminateProgress()
  {
    this.mIndeterminateProgressView = new IcsProgressBar(this.mContext, null, 0, this.mIndeterminateProgressStyle);
    this.mIndeterminateProgressView.setId(R.id.abs__progress_circular);
    addView(this.mIndeterminateProgressView);
  }

  public void initProgress()
  {
    this.mProgressView = new IcsProgressBar(this.mContext, null, 0, this.mProgressStyle);
    this.mProgressView.setId(R.id.abs__progress_horizontal);
    this.mProgressView.setMax(10000);
    addView(this.mProgressView);
  }

  public boolean isCollapsed()
  {
    return this.mIsCollapsed;
  }

  public boolean isSplitActionBar()
  {
    return this.mSplitActionBar;
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    this.mTitleView = null;
    this.mSubtitleView = null;
    this.mTitleUpView = null;
    if ((this.mTitleLayout != null) && (this.mTitleLayout.getParent() == this))
      removeView(this.mTitleLayout);
    this.mTitleLayout = null;
    if ((0x8 & this.mDisplayOptions) != 0)
      initTitle();
    if ((this.mTabScrollView != null) && (this.mIncludeTabs))
    {
      ViewGroup.LayoutParams localLayoutParams = this.mTabScrollView.getLayoutParams();
      if (localLayoutParams != null)
      {
        localLayoutParams.width = -2;
        localLayoutParams.height = -1;
      }
      this.mTabScrollView.setAllowCollapse(true);
    }
  }

  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.mActionMenuPresenter != null)
    {
      this.mActionMenuPresenter.hideOverflowMenu();
      this.mActionMenuPresenter.hideSubMenus();
    }
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    addView(this.mHomeLayout);
    if ((this.mCustomNavView != null) && ((0x10 & this.mDisplayOptions) != 0))
    {
      ViewParent localViewParent = this.mCustomNavView.getParent();
      if (localViewParent != this)
      {
        if ((localViewParent instanceof ViewGroup))
          ((ViewGroup)localViewParent).removeView(this.mCustomNavView);
        addView(this.mCustomNavView);
      }
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = getPaddingLeft();
    int j = getPaddingTop();
    int k = paramInt4 - paramInt2 - getPaddingTop() - getPaddingBottom();
    if (k <= 0)
      return;
    ActionBarView.HomeView localHomeView;
    label47: int i23;
    if (this.mExpandedActionView != null)
    {
      localHomeView = this.mExpandedHomeLayout;
      if (localHomeView.getVisibility() == 8)
        break label960;
      i23 = localHomeView.getLeftOffset();
    }
    label180: label184: label443: label960: for (int m = i + (i23 + positionChild(localHomeView, i + i23, j, k)); ; m = i)
    {
      int i22;
      if (this.mExpandedActionView == null)
      {
        if ((this.mTitleLayout == null) || (this.mTitleLayout.getVisibility() == 8) || ((0x8 & this.mDisplayOptions) == 0))
          break label640;
        i22 = 1;
        label126: if (i22 != 0)
          m += positionChild(this.mTitleLayout, m, j, k);
      }
      int n;
      int i1;
      switch (this.mNavigationMode)
      {
      default:
        n = m;
        i1 = paramInt3 - paramInt1 - getPaddingRight();
        if ((this.mMenuView != null) && (this.mMenuView.getParent() == this))
        {
          positionChildInverse(this.mMenuView, i1, j, k);
          i1 -= this.mMenuView.getMeasuredWidth();
        }
        if ((this.mIndeterminateProgressView != null) && (this.mIndeterminateProgressView.getVisibility() != 8))
          positionChildInverse(this.mIndeterminateProgressView, i1, j, k);
        break;
      case 0:
      case 1:
      case 2:
      }
      for (int i2 = i1 - this.mIndeterminateProgressView.getMeasuredWidth(); ; i2 = i1)
      {
        View localView;
        if (this.mExpandedActionView != null)
          localView = this.mExpandedActionView;
        while (true)
        {
          ActionBar.LayoutParams localLayoutParams1;
          label326: int i4;
          label338: int i5;
          int i9;
          int i6;
          int i7;
          int i8;
          if (localView != null)
          {
            ViewGroup.LayoutParams localLayoutParams = localView.getLayoutParams();
            if (!(localLayoutParams instanceof ActionBar.LayoutParams))
              break label775;
            localLayoutParams1 = (ActionBar.LayoutParams)localLayoutParams;
            if (localLayoutParams1 == null)
              break label781;
            i4 = localLayoutParams1.gravity;
            i5 = localView.getMeasuredWidth();
            if (localLayoutParams1 == null)
              break label930;
            int i18 = n + localLayoutParams1.leftMargin;
            int i19 = i2 - localLayoutParams1.rightMargin;
            int i20 = localLayoutParams1.topMargin;
            int i21 = localLayoutParams1.bottomMargin;
            i9 = i20;
            i6 = i19;
            i7 = i18;
            i8 = i21;
          }
          while (true)
          {
            int i10 = i4 & 0x7;
            int i17;
            int i11;
            if (i10 == 1)
            {
              i17 = (getRight() - getLeft() - i5) / 2;
              if (i17 < i7)
              {
                i10 = 3;
                i11 = i10;
              }
            }
            while (true)
            {
              int i12;
              label483: int i14;
              switch (i11)
              {
              case 2:
              case 4:
              default:
                i12 = 0;
                int i13 = i4 & 0x70;
                if (i4 == -1)
                  i13 = 16;
                i14 = 0;
                switch (i13)
                {
                default:
                case 16:
                case 48:
                case 80:
                }
                break;
              case 1:
              case 3:
              case 5:
              }
              while (true)
              {
                int i15 = localView.getMeasuredWidth();
                localView.layout(i12, i14, i12 + i15, i14 + localView.getMeasuredHeight());
                (i7 + i15);
                if (this.mProgressView == null)
                  break;
                this.mProgressView.bringToFront();
                int i3 = this.mProgressView.getMeasuredHeight() / 2;
                this.mProgressView.layout(this.mProgressBarPadding, -i3, this.mProgressBarPadding + this.mProgressView.getMeasuredWidth(), i3);
                break;
                localHomeView = this.mHomeLayout;
                break label47;
                i22 = 0;
                break label126;
                n = m;
                break label184;
                if (this.mListNavLayout == null)
                  break label180;
                if (i22 != 0)
                  m += this.mItemPadding;
                n = m + (positionChild(this.mListNavLayout, m, j, k) + this.mItemPadding);
                break label184;
                if (this.mTabScrollView == null)
                  break label180;
                if (i22 != 0)
                  m += this.mItemPadding;
                n = m + (positionChild(this.mTabScrollView, m, j, k) + this.mItemPadding);
                break label184;
                if (((0x10 & this.mDisplayOptions) == 0) || (this.mCustomNavView == null))
                  break label947;
                localView = this.mCustomNavView;
                break label299;
                localLayoutParams1 = null;
                break label326;
                i4 = 19;
                break label338;
                if (i17 + i5 <= i6)
                  break label439;
                i10 = 5;
                break label439;
                if (i4 != -1)
                  break label923;
                i11 = 3;
                break label443;
                i12 = (getRight() - getLeft() - i5) / 2;
                break label483;
                i12 = i7;
                break label483;
                i12 = i6 - i5;
                break label483;
                int i16 = getPaddingTop();
                i14 = (getBottom() - getTop() - getPaddingBottom() - i16 - localView.getMeasuredHeight()) / 2;
                continue;
                i14 = i9 + getPaddingTop();
                continue;
                i14 = getHeight() - getPaddingBottom() - localView.getMeasuredHeight() - i8;
              }
              i11 = i10;
            }
            i6 = i2;
            i7 = n;
            i8 = 0;
            i9 = 0;
          }
          localView = null;
        }
      }
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = getChildCount();
    if (this.mIsCollapsable)
    {
      int i35 = 0;
      for (int i36 = 0; i36 < i; i36++)
      {
        View localView2 = getChildAt(i36);
        if ((localView2.getVisibility() != 8) && ((localView2 != this.mMenuView) || (this.mMenuView.getChildCount() != 0)))
          i35++;
      }
      if (i35 == 0)
      {
        setMeasuredDimension(0, 0);
        this.mIsCollapsed = true;
        return;
      }
    }
    this.mIsCollapsed = false;
    if (View.MeasureSpec.getMode(paramInt1) != 1073741824)
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used " + "with android:layout_width=\"match_parent\" (or fill_parent)");
    if (View.MeasureSpec.getMode(paramInt2) != -2147483648)
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used " + "with android:layout_height=\"wrap_content\"");
    int j = View.MeasureSpec.getSize(paramInt1);
    int k;
    label211: int m;
    int i2;
    int i3;
    int i4;
    int i5;
    ActionBarView.HomeView localHomeView;
    label280: ViewGroup.LayoutParams localLayoutParams2;
    int i33;
    label315: int i7;
    int i6;
    if (this.mContentHeight > 0)
    {
      k = this.mContentHeight;
      m = getPaddingTop() + getPaddingBottom();
      int n = getPaddingLeft();
      int i1 = getPaddingRight();
      i2 = k - m;
      i3 = View.MeasureSpec.makeMeasureSpec(i2, -2147483648);
      i4 = j - n - i1;
      i5 = i4 / 2;
      if (this.mExpandedActionView == null)
        break label887;
      localHomeView = this.mExpandedHomeLayout;
      if (localHomeView.getVisibility() == 8)
        break label1333;
      localLayoutParams2 = localHomeView.getLayoutParams();
      if (localLayoutParams2.width >= 0)
        break label896;
      i33 = View.MeasureSpec.makeMeasureSpec(i4, -2147483648);
      localHomeView.measure(i33, View.MeasureSpec.makeMeasureSpec(i2, 1073741824));
      int i34 = localHomeView.getMeasuredWidth() + localHomeView.getLeftOffset();
      i7 = Math.max(0, i4 - i34);
      i6 = Math.max(0, i7 - i34);
    }
    while (true)
    {
      if ((this.mMenuView != null) && (this.mMenuView.getParent() == this))
      {
        i7 = measureChildView(this.mMenuView, i7, i3, 0);
        i5 = Math.max(0, i5 - this.mMenuView.getMeasuredWidth());
      }
      if ((this.mIndeterminateProgressView != null) && (this.mIndeterminateProgressView.getVisibility() != 8))
      {
        i7 = measureChildView(this.mIndeterminateProgressView, i7, i3, 0);
        i5 = Math.max(0, i5 - this.mIndeterminateProgressView.getMeasuredWidth());
      }
      int i8;
      label496: int i9;
      label528: int i10;
      View localView1;
      if ((this.mTitleLayout != null) && (this.mTitleLayout.getVisibility() != 8) && ((0x8 & this.mDisplayOptions) != 0))
      {
        i8 = 1;
        if (this.mExpandedActionView == null);
        switch (this.mNavigationMode)
        {
        default:
          i9 = i6;
          i10 = i7;
          if (this.mExpandedActionView != null)
            localView1 = this.mExpandedActionView;
          break;
        case 1:
        case 2:
        }
      }
      while (true)
      {
        label549: ViewGroup.LayoutParams localLayoutParams1;
        ActionBar.LayoutParams localLayoutParams;
        label580: int i15;
        int i16;
        label629: int i17;
        int i18;
        label675: int i19;
        label695: int i20;
        int i21;
        if (localView1 != null)
        {
          localLayoutParams1 = generateLayoutParams(localView1.getLayoutParams());
          if (!(localLayoutParams1 instanceof ActionBar.LayoutParams))
            break label1168;
          localLayoutParams = (ActionBar.LayoutParams)localLayoutParams1;
          int i14 = 0;
          i15 = 0;
          if (localLayoutParams != null)
          {
            i15 = localLayoutParams.leftMargin + localLayoutParams.rightMargin;
            i14 = localLayoutParams.topMargin + localLayoutParams.bottomMargin;
          }
          if (this.mContentHeight > 0)
            break label1174;
          i16 = -2147483648;
          if (localLayoutParams1.height >= 0)
            i2 = Math.min(localLayoutParams1.height, i2);
          i17 = Math.max(0, i2 - i14);
          if (localLayoutParams1.width == -2)
            break label1200;
          i18 = 1073741824;
          if (localLayoutParams1.width < 0)
            break label1208;
          i19 = Math.min(localLayoutParams1.width, i10);
          i20 = Math.max(0, i19 - i15);
          if (localLayoutParams == null)
            break label1215;
          i21 = localLayoutParams.gravity;
          label718: if (((i21 & 0x7) != 1) || (localLayoutParams1.width != -1))
            break label1320;
        }
        label896: label1168: label1174: label1313: label1320: for (int i22 = 2 * Math.min(i9, i5); ; i22 = i20)
        {
          localView1.measure(View.MeasureSpec.makeMeasureSpec(i22, i18), View.MeasureSpec.makeMeasureSpec(i17, i16));
          i10 -= i15 + localView1.getMeasuredWidth();
          if ((this.mExpandedActionView == null) && (i8 != 0))
          {
            measureChildView(this.mTitleLayout, i10, View.MeasureSpec.makeMeasureSpec(this.mContentHeight, 1073741824), 0);
            Math.max(0, i9 - this.mTitleLayout.getMeasuredWidth());
          }
          int i11;
          int i12;
          label841: int i13;
          if (this.mContentHeight <= 0)
          {
            i11 = 0;
            i12 = 0;
            if (i12 < i)
            {
              i13 = m + getChildAt(i12).getMeasuredHeight();
              if (i13 <= i11)
                break label1313;
            }
          }
          while (true)
          {
            i12++;
            i11 = i13;
            break label841;
            k = View.MeasureSpec.getSize(paramInt2);
            break label211;
            label887: localHomeView = this.mHomeLayout;
            break label280;
            i33 = View.MeasureSpec.makeMeasureSpec(localLayoutParams2.width, 1073741824);
            break label315;
            i8 = 0;
            break label496;
            if (this.mListNavLayout == null)
              break label528;
            if (i8 != 0);
            for (int i28 = 2 * this.mItemPadding; ; i28 = this.mItemPadding)
            {
              int i29 = Math.max(0, i7 - i28);
              int i30 = Math.max(0, i6 - i28);
              this.mListNavLayout.measure(View.MeasureSpec.makeMeasureSpec(i29, -2147483648), View.MeasureSpec.makeMeasureSpec(i2, 1073741824));
              int i31 = this.mListNavLayout.getMeasuredWidth();
              int i32 = Math.max(0, i29 - i31);
              i9 = Math.max(0, i30 - i31);
              i10 = i32;
              break;
            }
            if (this.mTabScrollView == null)
              break label528;
            if (i8 != 0);
            for (int i23 = 2 * this.mItemPadding; ; i23 = this.mItemPadding)
            {
              int i24 = Math.max(0, i7 - i23);
              int i25 = Math.max(0, i6 - i23);
              this.mTabScrollView.measure(View.MeasureSpec.makeMeasureSpec(i24, -2147483648), View.MeasureSpec.makeMeasureSpec(i2, 1073741824));
              int i26 = this.mTabScrollView.getMeasuredWidth();
              int i27 = Math.max(0, i24 - i26);
              i9 = Math.max(0, i25 - i26);
              i10 = i27;
              break;
            }
            if (((0x10 & this.mDisplayOptions) == 0) || (this.mCustomNavView == null))
              break label1327;
            localView1 = this.mCustomNavView;
            break label549;
            localLayoutParams = null;
            break label580;
            if (localLayoutParams1.height != -2)
            {
              i16 = 1073741824;
              break label629;
            }
            i16 = -2147483648;
            break label629;
            label1200: i18 = -2147483648;
            break label675;
            label1208: i19 = i10;
            break label695;
            label1215: i21 = 19;
            break label718;
            setMeasuredDimension(j, i11);
            while (true)
            {
              if (this.mContextView != null)
                this.mContextView.setContentHeight(getMeasuredHeight());
              if ((this.mProgressView == null) || (this.mProgressView.getVisibility() == 8))
                break;
              this.mProgressView.measure(View.MeasureSpec.makeMeasureSpec(j - 2 * this.mProgressBarPadding, 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), -2147483648));
              break;
              setMeasuredDimension(j, k);
            }
            i13 = i11;
          }
        }
        label1327: localView1 = null;
      }
      label1333: i6 = i5;
      i7 = i4;
    }
  }

  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    ActionBarView.SavedState localSavedState = (ActionBarView.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    if ((localSavedState.expandedMenuItemId != 0) && (this.mExpandedMenuPresenter != null) && (this.mOptionsMenu != null))
    {
      MenuItem localMenuItem = this.mOptionsMenu.findItem(localSavedState.expandedMenuItemId);
      if (localMenuItem != null)
        localMenuItem.expandActionView();
    }
    if (localSavedState.isOverflowOpen)
      postShowOverflowMenu();
  }

  public Parcelable onSaveInstanceState()
  {
    ActionBarView.SavedState localSavedState = new ActionBarView.SavedState(super.onSaveInstanceState());
    if ((this.mExpandedMenuPresenter != null) && (this.mExpandedMenuPresenter.mCurrentExpandedItem != null))
      localSavedState.expandedMenuItemId = this.mExpandedMenuPresenter.mCurrentExpandedItem.getItemId();
    localSavedState.isOverflowOpen = isOverflowMenuShowing();
    return localSavedState;
  }

  public void setCallback(ActionBar.OnNavigationListener paramOnNavigationListener)
  {
    this.mCallback = paramOnNavigationListener;
  }

  public void setCollapsable(boolean paramBoolean)
  {
    this.mIsCollapsable = paramBoolean;
  }

  public void setContextView(ActionBarContextView paramActionBarContextView)
  {
    this.mContextView = paramActionBarContextView;
  }

  public void setCustomNavigationView(View paramView)
  {
    if ((0x10 & this.mDisplayOptions) != 0);
    for (int i = 1; ; i = 0)
    {
      if ((this.mCustomNavView != null) && (i != 0))
        removeView(this.mCustomNavView);
      this.mCustomNavView = paramView;
      if ((this.mCustomNavView != null) && (i != 0))
        addView(this.mCustomNavView);
      return;
    }
  }

  public void setDisplayOptions(int paramInt)
  {
    int i = 8;
    int j = -1;
    boolean bool1 = true;
    boolean bool2;
    label38: int k;
    label53: boolean bool5;
    label78: boolean bool4;
    label121: Drawable localDrawable;
    label138: label163: boolean bool3;
    if (this.mDisplayOptions == j)
    {
      this.mDisplayOptions = paramInt;
      if ((j & 0x1F) == 0)
        break label371;
      if ((paramInt & 0x2) == 0)
        break label299;
      bool2 = bool1;
      if ((!bool2) || (this.mExpandedActionView != null))
        break label305;
      k = 0;
      this.mHomeLayout.setVisibility(k);
      if ((j & 0x4) != 0)
      {
        if ((paramInt & 0x4) == 0)
          break label311;
        bool5 = bool1;
        this.mHomeLayout.setUp(bool5);
        if (bool5)
          setHomeButtonEnabled(bool1);
      }
      if ((j & 0x1) != 0)
      {
        if ((this.mLogo == null) || ((paramInt & 0x1) == 0))
          break label317;
        bool4 = bool1;
        ActionBarView.HomeView localHomeView = this.mHomeLayout;
        if (!bool4)
          break label323;
        localDrawable = this.mLogo;
        localHomeView.setIcon(localDrawable);
      }
      if ((j & 0x8) != 0)
      {
        if ((paramInt & 0x8) == 0)
          break label332;
        initTitle();
      }
      if ((this.mTitleLayout != null) && ((j & 0x6) != 0))
      {
        if ((0x4 & this.mDisplayOptions) == 0)
          break label343;
        bool3 = bool1;
        label190: View localView = this.mTitleUpView;
        if (!bool2)
        {
          if (!bool3)
            break label349;
          i = 0;
        }
        label208: localView.setVisibility(i);
        LinearLayout localLinearLayout = this.mTitleLayout;
        if ((bool2) || (!bool3))
          break label354;
        label230: localLinearLayout.setEnabled(bool1);
      }
      if (((j & 0x10) != 0) && (this.mCustomNavView != null))
      {
        if ((paramInt & 0x10) == 0)
          break label360;
        addView(this.mCustomNavView);
      }
      label266: requestLayout();
      label270: if (this.mHomeLayout.isEnabled())
        break label378;
      this.mHomeLayout.setContentDescription(null);
    }
    while (true)
    {
      return;
      j = paramInt ^ this.mDisplayOptions;
      break;
      label299: bool2 = false;
      break label38;
      label305: k = i;
      break label53;
      label311: bool5 = false;
      break label78;
      label317: bool4 = false;
      break label121;
      label323: localDrawable = this.mIcon;
      break label138;
      label332: removeView(this.mTitleLayout);
      break label163;
      label343: bool3 = false;
      break label190;
      label349: i = 4;
      break label208;
      label354: bool1 = false;
      break label230;
      label360: removeView(this.mCustomNavView);
      break label266;
      label371: invalidate();
      break label270;
      label378: if ((paramInt & 0x4) != 0)
        this.mHomeLayout.setContentDescription(this.mContext.getResources().getText(R.string.abs__action_bar_up_description));
      else
        this.mHomeLayout.setContentDescription(this.mContext.getResources().getText(R.string.abs__action_bar_home_description));
    }
  }

  public void setDropdownAdapter(SpinnerAdapter paramSpinnerAdapter)
  {
    this.mSpinnerAdapter = paramSpinnerAdapter;
    if (this.mSpinner != null)
      this.mSpinner.setAdapter(paramSpinnerAdapter);
  }

  public void setDropdownSelectedPosition(int paramInt)
  {
    this.mSpinner.setSelection(paramInt);
  }

  public void setEmbeddedTabView(ScrollingTabContainerView paramScrollingTabContainerView)
  {
    if (this.mTabScrollView != null)
      removeView(this.mTabScrollView);
    this.mTabScrollView = paramScrollingTabContainerView;
    if (paramScrollingTabContainerView != null);
    for (boolean bool = true; ; bool = false)
    {
      this.mIncludeTabs = bool;
      if ((this.mIncludeTabs) && (this.mNavigationMode == 2))
      {
        addView(this.mTabScrollView);
        ViewGroup.LayoutParams localLayoutParams = this.mTabScrollView.getLayoutParams();
        localLayoutParams.width = -2;
        localLayoutParams.height = -1;
        paramScrollingTabContainerView.setAllowCollapse(true);
      }
      return;
    }
  }

  public void setHomeButtonEnabled(boolean paramBoolean)
  {
    this.mHomeLayout.setEnabled(paramBoolean);
    this.mHomeLayout.setFocusable(paramBoolean);
    if (!paramBoolean)
      this.mHomeLayout.setContentDescription(null);
    while (true)
    {
      return;
      if ((0x4 & this.mDisplayOptions) != 0)
        this.mHomeLayout.setContentDescription(this.mContext.getResources().getText(R.string.abs__action_bar_up_description));
      else
        this.mHomeLayout.setContentDescription(this.mContext.getResources().getText(R.string.abs__action_bar_home_description));
    }
  }

  public void setIcon(int paramInt)
  {
    setIcon(this.mContext.getResources().getDrawable(paramInt));
  }

  public void setIcon(Drawable paramDrawable)
  {
    this.mIcon = paramDrawable;
    if ((paramDrawable != null) && (((0x1 & this.mDisplayOptions) == 0) || (this.mLogo == null)))
      this.mHomeLayout.setIcon(paramDrawable);
  }

  public void setLogo(int paramInt)
  {
    setLogo(this.mContext.getResources().getDrawable(paramInt));
  }

  public void setLogo(Drawable paramDrawable)
  {
    this.mLogo = paramDrawable;
    if ((paramDrawable != null) && ((0x1 & this.mDisplayOptions) != 0))
      this.mHomeLayout.setIcon(paramDrawable);
  }

  public void setMenu(Menu paramMenu, MenuPresenter.Callback paramCallback)
  {
    if (paramMenu == this.mOptionsMenu)
      return;
    if (this.mOptionsMenu != null)
    {
      this.mOptionsMenu.removeMenuPresenter(this.mActionMenuPresenter);
      this.mOptionsMenu.removeMenuPresenter(this.mExpandedMenuPresenter);
    }
    MenuBuilder localMenuBuilder = (MenuBuilder)paramMenu;
    this.mOptionsMenu = localMenuBuilder;
    if (this.mMenuView != null)
    {
      ViewGroup localViewGroup3 = (ViewGroup)this.mMenuView.getParent();
      if (localViewGroup3 != null)
        localViewGroup3.removeView(this.mMenuView);
    }
    if (this.mActionMenuPresenter == null)
    {
      this.mActionMenuPresenter = new ActionMenuPresenter(this.mContext);
      this.mActionMenuPresenter.setCallback(paramCallback);
      this.mActionMenuPresenter.setId(R.id.abs__action_menu_presenter);
      this.mExpandedMenuPresenter = new ActionBarView.ExpandedActionViewMenuPresenter(this, null);
    }
    ViewGroup.LayoutParams localLayoutParams = new ViewGroup.LayoutParams(-2, -1);
    ActionMenuView localActionMenuView;
    if (!this.mSplitActionBar)
    {
      this.mActionMenuPresenter.setExpandedActionViewsExclusive(ResourcesCompat.getResources_getBoolean(getContext(), R.bool.abs__action_bar_expanded_action_views_exclusive));
      configPresenters(localMenuBuilder);
      localActionMenuView = (ActionMenuView)this.mActionMenuPresenter.getMenuView(this);
      ViewGroup localViewGroup2 = (ViewGroup)localActionMenuView.getParent();
      if ((localViewGroup2 != null) && (localViewGroup2 != this))
        localViewGroup2.removeView(localActionMenuView);
      addView(localActionMenuView, localLayoutParams);
    }
    while (true)
    {
      this.mMenuView = localActionMenuView;
      break;
      this.mActionMenuPresenter.setExpandedActionViewsExclusive(false);
      this.mActionMenuPresenter.setWidthLimit(getContext().getResources().getDisplayMetrics().widthPixels, true);
      this.mActionMenuPresenter.setItemLimit(2147483647);
      localLayoutParams.width = -1;
      configPresenters(localMenuBuilder);
      localActionMenuView = (ActionMenuView)this.mActionMenuPresenter.getMenuView(this);
      if (this.mSplitView != null)
      {
        ViewGroup localViewGroup1 = (ViewGroup)localActionMenuView.getParent();
        if ((localViewGroup1 != null) && (localViewGroup1 != this.mSplitView))
          localViewGroup1.removeView(localActionMenuView);
        localActionMenuView.setVisibility(getAnimatedVisibility());
        this.mSplitView.addView(localActionMenuView, localLayoutParams);
      }
      else
      {
        localActionMenuView.setLayoutParams(localLayoutParams);
      }
    }
  }

  public void setNavigationMode(int paramInt)
  {
    int i = this.mNavigationMode;
    if (paramInt != i)
      switch (i)
      {
      default:
        switch (paramInt)
        {
        default:
        case 1:
        case 2:
        }
        break;
      case 1:
      case 2:
      }
    while (true)
    {
      this.mNavigationMode = paramInt;
      requestLayout();
      return;
      if (this.mListNavLayout == null)
        break;
      removeView(this.mListNavLayout);
      break;
      if ((this.mTabScrollView == null) || (!this.mIncludeTabs))
        break;
      removeView(this.mTabScrollView);
      break;
      if (this.mSpinner == null)
      {
        this.mSpinner = new IcsSpinner(this.mContext, null, R.attr.actionDropDownStyle);
        this.mListNavLayout = ((IcsLinearLayout)LayoutInflater.from(this.mContext).inflate(R.layout.abs__action_bar_tab_bar_view, null));
        LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -1);
        localLayoutParams.gravity = 17;
        this.mListNavLayout.addView(this.mSpinner, localLayoutParams);
      }
      if (this.mSpinner.getAdapter() != this.mSpinnerAdapter)
        this.mSpinner.setAdapter(this.mSpinnerAdapter);
      this.mSpinner.setOnItemSelectedListener(this.mNavItemSelectedListener);
      addView(this.mListNavLayout);
      continue;
      if ((this.mTabScrollView != null) && (this.mIncludeTabs))
        addView(this.mTabScrollView);
    }
  }

  public void setSplitActionBar(boolean paramBoolean)
  {
    ActionBarContainer localActionBarContainer;
    if (this.mSplitActionBar != paramBoolean)
    {
      if (this.mMenuView != null)
      {
        ViewGroup localViewGroup = (ViewGroup)this.mMenuView.getParent();
        if (localViewGroup != null)
          localViewGroup.removeView(this.mMenuView);
        if (!paramBoolean)
          break label92;
        if (this.mSplitView != null)
          this.mSplitView.addView(this.mMenuView);
      }
      if (this.mSplitView != null)
      {
        localActionBarContainer = this.mSplitView;
        if (!paramBoolean)
          break label103;
      }
    }
    label92: label103: for (int i = 0; ; i = 8)
    {
      localActionBarContainer.setVisibility(i);
      super.setSplitActionBar(paramBoolean);
      return;
      addView(this.mMenuView);
      break;
    }
  }

  public void setSubtitle(CharSequence paramCharSequence)
  {
    this.mSubtitle = paramCharSequence;
    int i;
    int j;
    label76: LinearLayout localLinearLayout;
    int k;
    if (this.mSubtitleView != null)
    {
      this.mSubtitleView.setText(paramCharSequence);
      TextView localTextView = this.mSubtitleView;
      if (paramCharSequence == null)
        break label98;
      i = 0;
      localTextView.setVisibility(i);
      if ((this.mExpandedActionView != null) || ((0x8 & this.mDisplayOptions) == 0) || ((TextUtils.isEmpty(this.mTitle)) && (TextUtils.isEmpty(this.mSubtitle))))
        break label104;
      j = 1;
      localLinearLayout = this.mTitleLayout;
      k = 0;
      if (j == 0)
        break label110;
    }
    while (true)
    {
      localLinearLayout.setVisibility(k);
      return;
      label98: i = 8;
      break;
      label104: j = 0;
      break label76;
      label110: k = 8;
    }
  }

  public void setTitle(CharSequence paramCharSequence)
  {
    this.mUserTitle = true;
    setTitleImpl(paramCharSequence);
  }

  public void setWindowCallback(Window.Callback paramCallback)
  {
    this.mWindowCallback = paramCallback;
  }

  public void setWindowTitle(CharSequence paramCharSequence)
  {
    if (!this.mUserTitle)
      setTitleImpl(paramCharSequence);
  }

  public boolean shouldDelayChildPressedState()
  {
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.widget.ActionBarView
 * JD-Core Version:    0.6.2
 */