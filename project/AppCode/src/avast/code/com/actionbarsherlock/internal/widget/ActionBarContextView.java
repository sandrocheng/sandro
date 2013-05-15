package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.DecelerateInterpolator;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.actionbarsherlock.R.attr;
import com.actionbarsherlock.R.id;
import com.actionbarsherlock.R.layout;
import com.actionbarsherlock.R.styleable;
import com.actionbarsherlock.internal.nineoldandroids.animation.Animator;
import com.actionbarsherlock.internal.nineoldandroids.animation.Animator.AnimatorListener;
import com.actionbarsherlock.internal.nineoldandroids.animation.AnimatorSet;
import com.actionbarsherlock.internal.nineoldandroids.animation.AnimatorSet.Builder;
import com.actionbarsherlock.internal.nineoldandroids.animation.ObjectAnimator;
import com.actionbarsherlock.internal.nineoldandroids.view.animation.AnimatorProxy;
import com.actionbarsherlock.internal.nineoldandroids.widget.NineLinearLayout;
import com.actionbarsherlock.internal.view.menu.ActionMenuPresenter;
import com.actionbarsherlock.internal.view.menu.ActionMenuView;
import com.actionbarsherlock.internal.view.menu.MenuBuilder;
import com.actionbarsherlock.view.ActionMode;

public class ActionBarContextView extends AbsActionBarView
  implements Animator.AnimatorListener
{
  private static final int ANIMATE_IDLE = 0;
  private static final int ANIMATE_IN = 1;
  private static final int ANIMATE_OUT = 2;
  private boolean mAnimateInOnLayout;
  private int mAnimationMode;
  private NineLinearLayout mClose;
  private Animator mCurrentAnimation;
  private View mCustomView;
  private Drawable mSplitBackground;
  private CharSequence mSubtitle;
  private int mSubtitleStyleRes;
  private TextView mSubtitleView;
  private CharSequence mTitle;
  private LinearLayout mTitleLayout;
  private int mTitleStyleRes;
  private TextView mTitleView;

  public ActionBarContextView(Context paramContext)
  {
    this(paramContext, null);
  }

  public ActionBarContextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.actionModeStyle);
  }

  public ActionBarContextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.SherlockActionMode, paramInt, 0);
    setBackgroundDrawable(localTypedArray.getDrawable(2));
    this.mTitleStyleRes = localTypedArray.getResourceId(0, 0);
    this.mSubtitleStyleRes = localTypedArray.getResourceId(1, 0);
    this.mContentHeight = localTypedArray.getLayoutDimension(4, 0);
    this.mSplitBackground = localTypedArray.getDrawable(3);
    localTypedArray.recycle();
  }

  private void finishAnimation()
  {
    Animator localAnimator = this.mCurrentAnimation;
    if (localAnimator != null)
    {
      this.mCurrentAnimation = null;
      localAnimator.end();
    }
  }

  private void initTitle()
  {
    int i = 8;
    int j = 1;
    if (this.mTitleLayout == null)
    {
      LayoutInflater.from(getContext()).inflate(R.layout.abs__action_bar_title_item, this);
      this.mTitleLayout = ((LinearLayout)getChildAt(-1 + getChildCount()));
      this.mTitleView = ((TextView)this.mTitleLayout.findViewById(R.id.abs__action_bar_title));
      this.mSubtitleView = ((TextView)this.mTitleLayout.findViewById(R.id.abs__action_bar_subtitle));
      if (this.mTitleStyleRes != 0)
        this.mTitleView.setTextAppearance(this.mContext, this.mTitleStyleRes);
      if (this.mSubtitleStyleRes != 0)
        this.mSubtitleView.setTextAppearance(this.mContext, this.mSubtitleStyleRes);
    }
    this.mTitleView.setText(this.mTitle);
    this.mSubtitleView.setText(this.mSubtitle);
    int k;
    label166: TextView localTextView;
    if (!TextUtils.isEmpty(this.mTitle))
    {
      k = j;
      if (TextUtils.isEmpty(this.mSubtitle))
        break label232;
      localTextView = this.mSubtitleView;
      if (j == 0)
        break label237;
    }
    label232: label237: for (int m = 0; ; m = i)
    {
      localTextView.setVisibility(m);
      LinearLayout localLinearLayout = this.mTitleLayout;
      if ((k != 0) || (j != 0))
        i = 0;
      localLinearLayout.setVisibility(i);
      if (this.mTitleLayout.getParent() == null)
        addView(this.mTitleLayout);
      return;
      k = 0;
      break;
      j = 0;
      break label166;
    }
  }

  private Animator makeInAnimation()
  {
    this.mClose.setTranslationX(-this.mClose.getWidth() - ((ViewGroup.MarginLayoutParams)this.mClose.getLayoutParams()).leftMargin);
    ObjectAnimator localObjectAnimator1 = ObjectAnimator.ofFloat(this.mClose, "translationX", new float[] { 0.0F });
    localObjectAnimator1.setDuration(200L);
    localObjectAnimator1.addListener(this);
    localObjectAnimator1.setInterpolator(new DecelerateInterpolator());
    AnimatorSet localAnimatorSet = new AnimatorSet();
    AnimatorSet.Builder localBuilder = localAnimatorSet.play(localObjectAnimator1);
    if (this.mMenuView != null)
    {
      int i = this.mMenuView.getChildCount();
      if (i > 0)
      {
        int j = i - 1;
        for (int k = 0; j >= 0; k++)
        {
          AnimatorProxy localAnimatorProxy = AnimatorProxy.wrap(this.mMenuView.getChildAt(j));
          localAnimatorProxy.setScaleY(0.0F);
          ObjectAnimator localObjectAnimator2 = ObjectAnimator.ofFloat(localAnimatorProxy, "scaleY", new float[] { 0.0F, 1.0F });
          localObjectAnimator2.setDuration(100L);
          localObjectAnimator2.setStartDelay(k * 70);
          localBuilder.with(localObjectAnimator2);
          j--;
        }
      }
    }
    return localAnimatorSet;
  }

  private Animator makeOutAnimation()
  {
    NineLinearLayout localNineLinearLayout = this.mClose;
    float[] arrayOfFloat = new float[1];
    arrayOfFloat[0] = (-this.mClose.getWidth() - ((ViewGroup.MarginLayoutParams)this.mClose.getLayoutParams()).leftMargin);
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofFloat(localNineLinearLayout, "translationX", arrayOfFloat);
    localObjectAnimator.setDuration(200L);
    localObjectAnimator.addListener(this);
    localObjectAnimator.setInterpolator(new DecelerateInterpolator());
    AnimatorSet localAnimatorSet = new AnimatorSet();
    localAnimatorSet.play(localObjectAnimator);
    if ((this.mMenuView != null) && (this.mMenuView.getChildCount() > 0));
    return localAnimatorSet;
  }

  public void closeMode()
  {
    if (this.mAnimationMode == 2);
    while (true)
    {
      return;
      if (this.mClose == null)
      {
        killMode();
      }
      else
      {
        finishAnimation();
        this.mAnimationMode = 2;
        this.mCurrentAnimation = makeOutAnimation();
        this.mCurrentAnimation.start();
      }
    }
  }

  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new ViewGroup.MarginLayoutParams(-1, -2);
  }

  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new ViewGroup.MarginLayoutParams(getContext(), paramAttributeSet);
  }

  public CharSequence getSubtitle()
  {
    return this.mSubtitle;
  }

  public CharSequence getTitle()
  {
    return this.mTitle;
  }

  public boolean hideOverflowMenu()
  {
    if (this.mActionMenuPresenter != null);
    for (boolean bool = this.mActionMenuPresenter.hideOverflowMenu(); ; bool = false)
      return bool;
  }

  public void initForMode(ActionMode paramActionMode)
  {
    MenuBuilder localMenuBuilder;
    ViewGroup.LayoutParams localLayoutParams;
    if (this.mClose == null)
    {
      this.mClose = ((NineLinearLayout)LayoutInflater.from(this.mContext).inflate(R.layout.abs__action_mode_close_item, this, false));
      addView(this.mClose);
      this.mClose.findViewById(R.id.abs__action_mode_close_button).setOnClickListener(new ActionBarContextView.1(this, paramActionMode));
      localMenuBuilder = (MenuBuilder)paramActionMode.getMenu();
      if (this.mActionMenuPresenter != null)
        this.mActionMenuPresenter.dismissPopupMenus();
      this.mActionMenuPresenter = new ActionMenuPresenter(this.mContext);
      this.mActionMenuPresenter.setReserveOverflow(true);
      localLayoutParams = new ViewGroup.LayoutParams(-2, -1);
      if (this.mSplitActionBar)
        break label190;
      localMenuBuilder.addMenuPresenter(this.mActionMenuPresenter);
      this.mMenuView = ((ActionMenuView)this.mActionMenuPresenter.getMenuView(this));
      this.mMenuView.setBackgroundDrawable(null);
      addView(this.mMenuView, localLayoutParams);
    }
    while (true)
    {
      this.mAnimateInOnLayout = true;
      return;
      if (this.mClose.getParent() != null)
        break;
      addView(this.mClose);
      break;
      label190: this.mActionMenuPresenter.setWidthLimit(getContext().getResources().getDisplayMetrics().widthPixels, true);
      this.mActionMenuPresenter.setItemLimit(2147483647);
      localLayoutParams.width = -1;
      localLayoutParams.height = this.mContentHeight;
      localMenuBuilder.addMenuPresenter(this.mActionMenuPresenter);
      this.mMenuView = ((ActionMenuView)this.mActionMenuPresenter.getMenuView(this));
      this.mMenuView.setBackgroundDrawable(this.mSplitBackground);
      this.mSplitView.addView(this.mMenuView, localLayoutParams);
    }
  }

  public boolean isOverflowMenuShowing()
  {
    if (this.mActionMenuPresenter != null);
    for (boolean bool = this.mActionMenuPresenter.isOverflowMenuShowing(); ; bool = false)
      return bool;
  }

  public void killMode()
  {
    finishAnimation();
    removeAllViews();
    if (this.mSplitView != null)
      this.mSplitView.removeView(this.mMenuView);
    this.mCustomView = null;
    this.mMenuView = null;
    this.mAnimateInOnLayout = false;
  }

  public void onAnimationCancel(Animator paramAnimator)
  {
  }

  public void onAnimationEnd(Animator paramAnimator)
  {
    if (this.mAnimationMode == 2)
      killMode();
    this.mAnimationMode = 0;
  }

  public void onAnimationRepeat(Animator paramAnimator)
  {
  }

  public void onAnimationStart(Animator paramAnimator)
  {
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

  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    if (paramAccessibilityEvent.getEventType() == 32)
    {
      paramAccessibilityEvent.setClassName(getClass().getName());
      paramAccessibilityEvent.setPackageName(getContext().getPackageName());
      paramAccessibilityEvent.setContentDescription(this.mTitle);
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = getPaddingLeft();
    int j = getPaddingTop();
    int k = paramInt4 - paramInt2 - getPaddingTop() - getPaddingBottom();
    int m;
    if ((this.mClose != null) && (this.mClose.getVisibility() != 8))
    {
      ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)this.mClose.getLayoutParams();
      int i1 = i + localMarginLayoutParams.leftMargin;
      m = i1 + positionChild(this.mClose, i1, j, k) + localMarginLayoutParams.rightMargin;
      if (this.mAnimateInOnLayout)
      {
        this.mAnimationMode = 1;
        this.mCurrentAnimation = makeInAnimation();
        this.mCurrentAnimation.start();
        this.mAnimateInOnLayout = false;
      }
    }
    while (true)
    {
      if ((this.mTitleLayout != null) && (this.mCustomView == null))
        m += positionChild(this.mTitleLayout, m, j, k);
      if (this.mCustomView != null)
        (m + positionChild(this.mCustomView, m, j, k));
      int n = paramInt3 - paramInt1 - getPaddingRight();
      if (this.mMenuView != null)
        (n - positionChildInverse(this.mMenuView, n, j, k));
      return;
      m = i;
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = 1073741824;
    if (View.MeasureSpec.getMode(paramInt1) != i)
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used " + "with android:layout_width=\"match_parent\" (or fill_parent)");
    if (View.MeasureSpec.getMode(paramInt2) == 0)
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used " + "with android:layout_height=\"wrap_content\"");
    int j = View.MeasureSpec.getSize(paramInt1);
    int k;
    int i1;
    int i7;
    label301: label331: int i8;
    label351: int i4;
    int i5;
    label390: int i6;
    if (this.mContentHeight > 0)
    {
      k = this.mContentHeight;
      int m = getPaddingTop() + getPaddingBottom();
      int n = j - getPaddingLeft() - getPaddingRight();
      i1 = k - m;
      int i2 = View.MeasureSpec.makeMeasureSpec(i1, -2147483648);
      if (this.mClose != null)
      {
        int i9 = measureChildView(this.mClose, n, i2, 0);
        ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)this.mClose.getLayoutParams();
        n = i9 - (localMarginLayoutParams.leftMargin + localMarginLayoutParams.rightMargin);
      }
      if ((this.mMenuView != null) && (this.mMenuView.getParent() == this))
        n = measureChildView(this.mMenuView, n, i2, 0);
      if ((this.mTitleLayout != null) && (this.mCustomView == null))
        n = measureChildView(this.mTitleLayout, n, i2, 0);
      if (this.mCustomView != null)
      {
        ViewGroup.LayoutParams localLayoutParams = this.mCustomView.getLayoutParams();
        if (localLayoutParams.width == -2)
          break label437;
        i7 = i;
        if (localLayoutParams.width >= 0)
          n = Math.min(localLayoutParams.width, n);
        if (localLayoutParams.height == -2)
          break label445;
        if (localLayoutParams.height < 0)
          break label452;
        i8 = Math.min(localLayoutParams.height, i1);
        this.mCustomView.measure(View.MeasureSpec.makeMeasureSpec(n, i7), View.MeasureSpec.makeMeasureSpec(i8, i));
      }
      if (this.mContentHeight > 0)
        break label468;
      int i3 = getChildCount();
      i4 = 0;
      i5 = 0;
      if (i4 >= i3)
        break label459;
      i6 = m + getChildAt(i4).getMeasuredHeight();
      if (i6 <= i5)
        break label479;
    }
    while (true)
    {
      i4++;
      i5 = i6;
      break label390;
      k = View.MeasureSpec.getSize(paramInt2);
      break;
      label437: i7 = -2147483648;
      break label301;
      label445: i = -2147483648;
      break label331;
      label452: i8 = i1;
      break label351;
      label459: setMeasuredDimension(j, i5);
      while (true)
      {
        return;
        label468: setMeasuredDimension(j, k);
      }
      label479: i6 = i5;
    }
  }

  public void setContentHeight(int paramInt)
  {
    this.mContentHeight = paramInt;
  }

  public void setCustomView(View paramView)
  {
    if (this.mCustomView != null)
      removeView(this.mCustomView);
    this.mCustomView = paramView;
    if (this.mTitleLayout != null)
    {
      removeView(this.mTitleLayout);
      this.mTitleLayout = null;
    }
    if (paramView != null)
      addView(paramView);
    requestLayout();
  }

  public void setSplitActionBar(boolean paramBoolean)
  {
    ViewGroup.LayoutParams localLayoutParams;
    if (this.mSplitActionBar != paramBoolean)
      if (this.mActionMenuPresenter != null)
      {
        localLayoutParams = new ViewGroup.LayoutParams(-2, -1);
        if (paramBoolean)
          break label94;
        this.mMenuView = ((ActionMenuView)this.mActionMenuPresenter.getMenuView(this));
        this.mMenuView.setBackgroundDrawable(null);
        ViewGroup localViewGroup2 = (ViewGroup)this.mMenuView.getParent();
        if (localViewGroup2 != null)
          localViewGroup2.removeView(this.mMenuView);
        addView(this.mMenuView, localLayoutParams);
      }
    while (true)
    {
      super.setSplitActionBar(paramBoolean);
      return;
      label94: this.mActionMenuPresenter.setWidthLimit(getContext().getResources().getDisplayMetrics().widthPixels, true);
      this.mActionMenuPresenter.setItemLimit(2147483647);
      localLayoutParams.width = -1;
      localLayoutParams.height = this.mContentHeight;
      this.mMenuView = ((ActionMenuView)this.mActionMenuPresenter.getMenuView(this));
      this.mMenuView.setBackgroundDrawable(this.mSplitBackground);
      ViewGroup localViewGroup1 = (ViewGroup)this.mMenuView.getParent();
      if (localViewGroup1 != null)
        localViewGroup1.removeView(this.mMenuView);
      this.mSplitView.addView(this.mMenuView, localLayoutParams);
    }
  }

  public void setSubtitle(CharSequence paramCharSequence)
  {
    this.mSubtitle = paramCharSequence;
    initTitle();
  }

  public void setTitle(CharSequence paramCharSequence)
  {
    this.mTitle = paramCharSequence;
    initTitle();
  }

  public boolean shouldDelayChildPressedState()
  {
    return false;
  }

  public boolean showOverflowMenu()
  {
    if (this.mActionMenuPresenter != null);
    for (boolean bool = this.mActionMenuPresenter.showOverflowMenu(); ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.widget.ActionBarContextView
 * JD-Core Version:    0.6.2
 */