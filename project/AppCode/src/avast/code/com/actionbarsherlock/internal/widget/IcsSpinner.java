package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.SpinnerAdapter;
import com.actionbarsherlock.R.attr;
import com.actionbarsherlock.R.styleable;

public class IcsSpinner extends IcsAbsSpinner
  implements DialogInterface.OnClickListener
{
  private static final int MAX_ITEMS_MEASURED = 15;
  public static final int MODE_DROPDOWN = 1;
  private boolean mDisableChildrenWhenDisabled;
  int mDropDownWidth;
  private int mGravity;
  private IcsSpinner.SpinnerPopup mPopup;
  private IcsSpinner.DropDownAdapter mTempAdapter;
  private Rect mTempRect = new Rect();

  public IcsSpinner(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.actionDropDownStyle);
  }

  public IcsSpinner(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.SherlockSpinner, paramInt, 0);
    IcsSpinner.DropdownPopup localDropdownPopup = new IcsSpinner.DropdownPopup(this, paramContext, paramAttributeSet, paramInt);
    this.mDropDownWidth = localTypedArray.getLayoutDimension(4, -2);
    localDropdownPopup.setBackgroundDrawable(localTypedArray.getDrawable(2));
    int i = localTypedArray.getDimensionPixelOffset(6, 0);
    if (i != 0)
      localDropdownPopup.setVerticalOffset(i);
    int j = localTypedArray.getDimensionPixelOffset(5, 0);
    if (j != 0)
      localDropdownPopup.setHorizontalOffset(j);
    this.mPopup = localDropdownPopup;
    this.mGravity = localTypedArray.getInt(0, 17);
    this.mPopup.setPromptText(localTypedArray.getString(3));
    this.mDisableChildrenWhenDisabled = true;
    localTypedArray.recycle();
    if (this.mTempAdapter != null)
    {
      this.mPopup.setAdapter(this.mTempAdapter);
      this.mTempAdapter = null;
    }
  }

  private View makeAndAddView(int paramInt)
  {
    View localView;
    if (!this.mDataChanged)
    {
      localView = this.mRecycler.get(paramInt);
      if (localView != null)
        setUpChild(localView);
    }
    while (true)
    {
      return localView;
      localView = this.mAdapter.getView(paramInt, null, this);
      setUpChild(localView);
    }
  }

  private void setUpChild(View paramView)
  {
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    if (localLayoutParams == null)
      localLayoutParams = generateDefaultLayoutParams();
    addViewInLayout(paramView, 0, localLayoutParams);
    paramView.setSelected(hasFocus());
    if (this.mDisableChildrenWhenDisabled)
      paramView.setEnabled(isEnabled());
    int i = ViewGroup.getChildMeasureSpec(this.mHeightMeasureSpec, this.mSpinnerPadding.top + this.mSpinnerPadding.bottom, localLayoutParams.height);
    paramView.measure(ViewGroup.getChildMeasureSpec(this.mWidthMeasureSpec, this.mSpinnerPadding.left + this.mSpinnerPadding.right, localLayoutParams.width), i);
    int j = this.mSpinnerPadding.top + (getMeasuredHeight() - this.mSpinnerPadding.bottom - this.mSpinnerPadding.top - paramView.getMeasuredHeight()) / 2;
    int k = j + paramView.getMeasuredHeight();
    paramView.layout(0, j, 0 + paramView.getMeasuredWidth(), k);
  }

  public int getBaseline()
  {
    int i = -1;
    View localView;
    if (getChildCount() > 0)
      localView = getChildAt(0);
    while (true)
    {
      if (localView != null)
      {
        int k = localView.getBaseline();
        if (k >= 0)
          i = k + localView.getTop();
      }
      return i;
      SpinnerAdapter localSpinnerAdapter = this.mAdapter;
      localView = null;
      if (localSpinnerAdapter != null)
      {
        int j = this.mAdapter.getCount();
        localView = null;
        if (j > 0)
        {
          localView = makeAndAddView(0);
          this.mRecycler.put(0, localView);
          removeAllViewsInLayout();
        }
      }
    }
  }

  public CharSequence getPrompt()
  {
    return this.mPopup.getHintText();
  }

  void layout(int paramInt, boolean paramBoolean)
  {
    int i = this.mSpinnerPadding.left;
    int j = getRight() - getLeft() - this.mSpinnerPadding.left - this.mSpinnerPadding.right;
    if (this.mDataChanged)
      handleDataChanged();
    if (this.mItemCount == 0)
    {
      resetList();
      return;
    }
    if (this.mNextSelectedPosition >= 0)
      setSelectedPositionInt(this.mNextSelectedPosition);
    recycleAllViews();
    removeAllViewsInLayout();
    this.mFirstPosition = this.mSelectedPosition;
    View localView = makeAndAddView(this.mSelectedPosition);
    int k = localView.getMeasuredWidth();
    switch (0x7 & this.mGravity)
    {
    default:
    case 1:
    case 5:
    }
    while (true)
    {
      localView.offsetLeftAndRight(i);
      this.mRecycler.clear();
      invalidate();
      checkSelectionChanged();
      this.mDataChanged = false;
      this.mNeedSync = false;
      setNextSelectedPositionInt(this.mSelectedPosition);
      break;
      i = i + j / 2 - k / 2;
      continue;
      i = i + j - k;
    }
  }

  int measureContentWidth(SpinnerAdapter paramSpinnerAdapter, Drawable paramDrawable)
  {
    int i = 0;
    if (paramSpinnerAdapter == null)
      return i;
    int j = View.MeasureSpec.makeMeasureSpec(0, 0);
    int k = View.MeasureSpec.makeMeasureSpec(0, 0);
    int m = Math.max(0, getSelectedItemPosition());
    int n = Math.min(paramSpinnerAdapter.getCount(), m + 15);
    int i1 = Math.max(0, m - (15 - (n - m)));
    View localView1 = null;
    int i2 = 0;
    int i3 = 0;
    label74: int i4;
    if (i1 < n)
    {
      i4 = paramSpinnerAdapter.getItemViewType(i1);
      if (i4 == i3)
        break label210;
    }
    for (View localView2 = null; ; localView2 = localView1)
    {
      localView1 = paramSpinnerAdapter.getView(i1, localView2, this);
      if (localView1.getLayoutParams() == null)
        localView1.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
      localView1.measure(j, k);
      i2 = Math.max(i2, localView1.getMeasuredWidth());
      i1++;
      i3 = i4;
      break label74;
      if (paramDrawable != null)
      {
        paramDrawable.getPadding(this.mTempRect);
        i = i2 + (this.mTempRect.left + this.mTempRect.right);
        break;
      }
      i = i2;
      break;
      label210: i4 = i3;
    }
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    setSelection(paramInt);
    paramDialogInterface.dismiss();
  }

  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if ((this.mPopup != null) && (this.mPopup.isShowing()))
      this.mPopup.dismiss();
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    this.mInLayout = true;
    layout(0, false);
    this.mInLayout = false;
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if ((this.mPopup != null) && (View.MeasureSpec.getMode(paramInt1) == -2147483648))
      setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), measureContentWidth(getAdapter(), getBackground())), View.MeasureSpec.getSize(paramInt1)), getMeasuredHeight());
  }

  public boolean performClick()
  {
    boolean bool = super.performClick();
    if (!bool)
    {
      bool = true;
      if (!this.mPopup.isShowing())
        this.mPopup.show();
    }
    return bool;
  }

  public void setAdapter(SpinnerAdapter paramSpinnerAdapter)
  {
    super.setAdapter(paramSpinnerAdapter);
    if (this.mPopup != null)
      this.mPopup.setAdapter(new IcsSpinner.DropDownAdapter(paramSpinnerAdapter));
    while (true)
    {
      return;
      this.mTempAdapter = new IcsSpinner.DropDownAdapter(paramSpinnerAdapter);
    }
  }

  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    if (this.mDisableChildrenWhenDisabled)
    {
      int i = getChildCount();
      for (int j = 0; j < i; j++)
        getChildAt(j).setEnabled(paramBoolean);
    }
  }

  public void setGravity(int paramInt)
  {
    if (this.mGravity != paramInt)
    {
      if ((paramInt & 0x7) == 0)
        paramInt |= 3;
      this.mGravity = paramInt;
      requestLayout();
    }
  }

  public void setOnItemClickListener(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    throw new RuntimeException("setOnItemClickListener cannot be used with a spinner.");
  }

  public void setPrompt(CharSequence paramCharSequence)
  {
    this.mPopup.setPromptText(paramCharSequence);
  }

  public void setPromptId(int paramInt)
  {
    setPrompt(getContext().getText(paramInt));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsSpinner
 * JD-Core Version:    0.6.2
 */