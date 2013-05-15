package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.actionbarsherlock.R.attr;
import com.actionbarsherlock.app.ActionBar.Tab;

public class ScrollingTabContainerView$TabView extends LinearLayout
{
  private View mCustomView;
  private ImageView mIconView;
  private ScrollingTabContainerView mParent;
  private ActionBar.Tab mTab;
  private CapitalizingTextView mTextView;

  public ScrollingTabContainerView$TabView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public void bindTab(ActionBar.Tab paramTab)
  {
    this.mTab = paramTab;
    update();
  }

  public ActionBar.Tab getTab()
  {
    return this.mTab;
  }

  public void init(ScrollingTabContainerView paramScrollingTabContainerView, ActionBar.Tab paramTab, boolean paramBoolean)
  {
    this.mParent = paramScrollingTabContainerView;
    this.mTab = paramTab;
    if (paramBoolean)
      setGravity(19);
    update();
  }

  public void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if ((this.mParent.mMaxTabWidth > 0) && (getMeasuredWidth() > this.mParent.mMaxTabWidth))
      super.onMeasure(View.MeasureSpec.makeMeasureSpec(this.mParent.mMaxTabWidth, 1073741824), paramInt2);
  }

  public void update()
  {
    ActionBar.Tab localTab = this.mTab;
    View localView = localTab.getCustomView();
    if (localView != null)
    {
      ViewParent localViewParent = localView.getParent();
      if (localViewParent != this)
      {
        if (localViewParent != null)
          ((ViewGroup)localViewParent).removeView(localView);
        addView(localView);
      }
      this.mCustomView = localView;
      if (this.mTextView != null)
        this.mTextView.setVisibility(8);
      if (this.mIconView != null)
      {
        this.mIconView.setVisibility(8);
        this.mIconView.setImageDrawable(null);
      }
    }
    label202: label343: label368: 
    while (true)
    {
      return;
      if (this.mCustomView != null)
      {
        removeView(this.mCustomView);
        this.mCustomView = null;
      }
      Drawable localDrawable = localTab.getIcon();
      CharSequence localCharSequence = localTab.getText();
      if (localDrawable != null)
      {
        if (this.mIconView == null)
        {
          ImageView localImageView = new ImageView(getContext());
          LinearLayout.LayoutParams localLayoutParams2 = new LinearLayout.LayoutParams(-2, -2);
          localLayoutParams2.gravity = 16;
          localImageView.setLayoutParams(localLayoutParams2);
          addView(localImageView, 0);
          this.mIconView = localImageView;
        }
        this.mIconView.setImageDrawable(localDrawable);
        this.mIconView.setVisibility(0);
        if (localCharSequence == null)
          break label343;
        if (this.mTextView == null)
        {
          CapitalizingTextView localCapitalizingTextView = new CapitalizingTextView(getContext(), null, R.attr.actionBarTabTextStyle);
          localCapitalizingTextView.setEllipsize(TextUtils.TruncateAt.END);
          LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(-2, -2);
          localLayoutParams1.gravity = 16;
          localCapitalizingTextView.setLayoutParams(localLayoutParams1);
          addView(localCapitalizingTextView);
          this.mTextView = localCapitalizingTextView;
        }
        this.mTextView.setTextCompat(localCharSequence);
        this.mTextView.setVisibility(0);
      }
      while (true)
      {
        if (this.mIconView == null)
          break label368;
        this.mIconView.setContentDescription(localTab.getContentDescription());
        break;
        if (this.mIconView == null)
          break label202;
        this.mIconView.setVisibility(8);
        this.mIconView.setImageDrawable(null);
        break label202;
        if (this.mTextView != null)
        {
          this.mTextView.setVisibility(8);
          this.mTextView.setText(null);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.widget.ScrollingTabContainerView.TabView
 * JD-Core Version:    0.6.2
 */