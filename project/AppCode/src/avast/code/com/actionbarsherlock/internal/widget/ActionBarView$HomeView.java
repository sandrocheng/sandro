package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.accessibility.AccessibilityEvent;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import com.actionbarsherlock.R.id;
import java.util.List;

public class ActionBarView$HomeView extends FrameLayout
{
  private ImageView mIconView;
  private View mUpView;
  private int mUpWidth;

  public ActionBarView$HomeView(Context paramContext)
  {
    this(paramContext, null);
  }

  public ActionBarView$HomeView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public boolean dispatchHoverEvent(MotionEvent paramMotionEvent)
  {
    return onHoverEvent(paramMotionEvent);
  }

  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    onPopulateAccessibilityEvent(paramAccessibilityEvent);
    return true;
  }

  public int getLeftOffset()
  {
    if (this.mUpView.getVisibility() == 8);
    for (int i = this.mUpWidth; ; i = 0)
      return i;
  }

  protected void onFinishInflate()
  {
    this.mUpView = findViewById(R.id.abs__up);
    this.mIconView = ((ImageView)findViewById(R.id.abs__home));
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = (paramInt4 - paramInt2) / 2;
    int j = this.mUpView.getVisibility();
    int k = 0;
    if (j != 8)
    {
      FrameLayout.LayoutParams localLayoutParams2 = (FrameLayout.LayoutParams)this.mUpView.getLayoutParams();
      int i4 = this.mUpView.getMeasuredHeight();
      int i5 = this.mUpView.getMeasuredWidth();
      int i6 = i - i4 / 2;
      this.mUpView.layout(0, i6, i5, i4 + i6);
      int i7 = i5 + localLayoutParams2.leftMargin + localLayoutParams2.rightMargin;
      paramInt1 += i7;
      k = i7;
    }
    FrameLayout.LayoutParams localLayoutParams1 = (FrameLayout.LayoutParams)this.mIconView.getLayoutParams();
    int m = this.mIconView.getMeasuredHeight();
    int n = this.mIconView.getMeasuredWidth();
    int i1 = (paramInt3 - paramInt1) / 2;
    int i2 = k + Math.max(localLayoutParams1.leftMargin, i1 - n / 2);
    int i3 = Math.max(localLayoutParams1.topMargin, i - m / 2);
    this.mIconView.layout(i2, i3, n + i2, m + i3);
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    measureChildWithMargins(this.mUpView, paramInt1, 0, paramInt2, 0);
    FrameLayout.LayoutParams localLayoutParams1 = (FrameLayout.LayoutParams)this.mUpView.getLayoutParams();
    this.mUpWidth = (localLayoutParams1.leftMargin + this.mUpView.getMeasuredWidth() + localLayoutParams1.rightMargin);
    int i;
    int k;
    int m;
    int i2;
    if (this.mUpView.getVisibility() == 8)
    {
      i = 0;
      int j = localLayoutParams1.topMargin + this.mUpView.getMeasuredHeight() + localLayoutParams1.bottomMargin;
      measureChildWithMargins(this.mIconView, paramInt1, i, paramInt2, 0);
      FrameLayout.LayoutParams localLayoutParams2 = (FrameLayout.LayoutParams)this.mIconView.getLayoutParams();
      k = i + (localLayoutParams2.leftMargin + this.mIconView.getMeasuredWidth() + localLayoutParams2.rightMargin);
      m = Math.max(j, localLayoutParams2.topMargin + this.mIconView.getMeasuredHeight() + localLayoutParams2.bottomMargin);
      int n = View.MeasureSpec.getMode(paramInt1);
      int i1 = View.MeasureSpec.getMode(paramInt2);
      i2 = View.MeasureSpec.getSize(paramInt1);
      i3 = View.MeasureSpec.getSize(paramInt2);
      switch (n)
      {
      default:
        i2 = k;
      case 1073741824:
        label208: switch (i1)
        {
        default:
        case 1073741824:
        case -2147483648:
        }
        break;
      case -2147483648:
      }
    }
    for (int i3 = m; ; i3 = Math.min(m, i3))
    {
      setMeasuredDimension(i2, i3);
      return;
      i = this.mUpWidth;
      break;
      i2 = Math.min(k, i2);
      break label208;
    }
  }

  public void onPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    if (Build.VERSION.SDK_INT >= 14)
      super.onPopulateAccessibilityEvent(paramAccessibilityEvent);
    CharSequence localCharSequence = getContentDescription();
    if (!TextUtils.isEmpty(localCharSequence))
      paramAccessibilityEvent.getText().add(localCharSequence);
  }

  public void setIcon(Drawable paramDrawable)
  {
    this.mIconView.setImageDrawable(paramDrawable);
  }

  public void setUp(boolean paramBoolean)
  {
    View localView = this.mUpView;
    if (paramBoolean);
    for (int i = 0; ; i = 8)
    {
      localView.setVisibility(i);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.widget.ActionBarView.HomeView
 * JD-Core Version:    0.6.2
 */