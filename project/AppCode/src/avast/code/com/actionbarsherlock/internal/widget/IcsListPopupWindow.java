package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView.LayoutParams;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.PopupWindow.OnDismissListener;
import com.actionbarsherlock.R.attr;

public class IcsListPopupWindow
{
  private static final int EXPAND_LIST_TIMEOUT = 250;
  public static final int POSITION_PROMPT_ABOVE = 0;
  public static final int POSITION_PROMPT_BELOW = 1;
  private ListAdapter mAdapter;
  private Context mContext;
  private View mDropDownAnchorView;
  private int mDropDownHeight = -2;
  private int mDropDownHorizontalOffset;
  private IcsListPopupWindow.DropDownListView mDropDownList;
  private Drawable mDropDownListHighlight;
  private int mDropDownVerticalOffset;
  private boolean mDropDownVerticalOffsetSet;
  private int mDropDownWidth = -2;
  private Handler mHandler = new Handler();
  private final IcsListPopupWindow.ListSelectorHider mHideSelector = new IcsListPopupWindow.ListSelectorHider(this, null);
  private AdapterView.OnItemClickListener mItemClickListener;
  private AdapterView.OnItemSelectedListener mItemSelectedListener;
  private int mListItemExpandMaximum = 2147483647;
  private boolean mModal;
  private DataSetObserver mObserver;
  private PopupWindow mPopup;
  private int mPromptPosition = 0;
  private View mPromptView;
  private final IcsListPopupWindow.ResizePopupRunnable mResizePopupRunnable = new IcsListPopupWindow.ResizePopupRunnable(this, null);
  private final IcsListPopupWindow.PopupScrollListener mScrollListener = new IcsListPopupWindow.PopupScrollListener(this, null);
  private Rect mTempRect = new Rect();
  private final IcsListPopupWindow.PopupTouchInterceptor mTouchInterceptor = new IcsListPopupWindow.PopupTouchInterceptor(this, null);

  public IcsListPopupWindow(Context paramContext)
  {
    this(paramContext, null, R.attr.listPopupWindowStyle);
  }

  public IcsListPopupWindow(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this.mContext = paramContext;
    this.mPopup = new PopupWindow(paramContext, paramAttributeSet, paramInt);
    this.mPopup.setInputMethodMode(1);
  }

  public IcsListPopupWindow(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    this.mContext = paramContext;
    if (Build.VERSION.SDK_INT < 11);
    for (this.mPopup = new PopupWindow(new ContextThemeWrapper(paramContext, paramInt2), paramAttributeSet, paramInt1); ; this.mPopup = new PopupWindow(paramContext, paramAttributeSet, paramInt1, paramInt2))
    {
      this.mPopup.setInputMethodMode(1);
      return;
    }
  }

  private int buildDropDown()
  {
    int i = 1;
    IcsListPopupWindow.DropDownListView localDropDownListView;
    View localView2;
    Object localObject;
    LinearLayout.LayoutParams localLayoutParams2;
    label212: LinearLayout.LayoutParams localLayoutParams3;
    if (this.mDropDownList == null)
    {
      Context localContext = this.mContext;
      if (!this.mModal)
      {
        int i4 = i;
        this.mDropDownList = new IcsListPopupWindow.DropDownListView(localContext, i4);
        if (this.mDropDownListHighlight != null)
          this.mDropDownList.setSelector(this.mDropDownListHighlight);
        this.mDropDownList.setAdapter(this.mAdapter);
        this.mDropDownList.setOnItemClickListener(this.mItemClickListener);
        this.mDropDownList.setFocusable(i);
        this.mDropDownList.setFocusableInTouchMode(i);
        this.mDropDownList.setOnItemSelectedListener(new IcsListPopupWindow.1(this));
        this.mDropDownList.setOnScrollListener(this.mScrollListener);
        if (this.mItemSelectedListener != null)
          this.mDropDownList.setOnItemSelectedListener(this.mItemSelectedListener);
        localDropDownListView = this.mDropDownList;
        localView2 = this.mPromptView;
        if (localView2 == null)
          break label525;
        localObject = new LinearLayout(localContext);
        ((LinearLayout)localObject).setOrientation(i);
        localLayoutParams2 = new LinearLayout.LayoutParams(-1, 0, 1.0F);
        switch (this.mPromptPosition)
        {
        default:
          localView2.measure(View.MeasureSpec.makeMeasureSpec(this.mDropDownWidth, -2147483648), 0);
          localLayoutParams3 = (LinearLayout.LayoutParams)localView2.getLayoutParams();
        case 1:
        case 0:
        }
      }
    }
    for (int i6 = localView2.getMeasuredHeight() + localLayoutParams3.topMargin + localLayoutParams3.bottomMargin; ; i6 = 0)
    {
      this.mPopup.setContentView((View)localObject);
      int k = i6;
      while (true)
      {
        label269: Drawable localDrawable = this.mPopup.getBackground();
        int i3;
        if (localDrawable != null)
        {
          localDrawable.getPadding(this.mTempRect);
          i3 = this.mTempRect.top + this.mTempRect.bottom;
          if (!this.mDropDownVerticalOffsetSet)
            this.mDropDownVerticalOffset = (-this.mTempRect.top);
        }
        for (int m = i3; ; m = 0)
        {
          label344: int n;
          if (this.mPopup.getInputMethodMode() == 2)
          {
            n = getMaxAvailableHeight(this.mDropDownAnchorView, this.mDropDownVerticalOffset, i);
            if (this.mDropDownHeight != -1)
              break label476;
          }
          label476: int i1;
          for (int i2 = n + m; ; i2 = i1 + k)
          {
            return i2;
            int i5 = 0;
            break;
            ((LinearLayout)localObject).addView(localDropDownListView, localLayoutParams2);
            ((LinearLayout)localObject).addView(localView2);
            break label212;
            ((LinearLayout)localObject).addView(localView2);
            ((LinearLayout)localObject).addView(localDropDownListView, localLayoutParams2);
            break label212;
            ((ViewGroup)this.mPopup.getContentView());
            View localView1 = this.mPromptView;
            if (localView1 == null)
              break label519;
            LinearLayout.LayoutParams localLayoutParams1 = (LinearLayout.LayoutParams)localView1.getLayoutParams();
            k = localView1.getMeasuredHeight() + localLayoutParams1.topMargin + localLayoutParams1.bottomMargin;
            break label269;
            int j = 0;
            break label344;
            i1 = measureHeightOfChildren(0, 0, -1, n - k, -1);
            if (i1 > 0)
              k += m;
          }
        }
        label519: k = 0;
      }
      label525: localObject = localDropDownListView;
    }
  }

  private int getMaxAvailableHeight(View paramView, int paramInt, boolean paramBoolean)
  {
    Rect localRect = new Rect();
    paramView.getWindowVisibleDisplayFrame(localRect);
    int[] arrayOfInt = new int[2];
    paramView.getLocationOnScreen(arrayOfInt);
    int i = localRect.bottom;
    if (paramBoolean)
      i = paramView.getContext().getResources().getDisplayMetrics().heightPixels;
    int j = Math.max(i - (arrayOfInt[1] + paramView.getHeight()) - paramInt, paramInt + (arrayOfInt[1] - localRect.top));
    if (this.mPopup.getBackground() != null)
    {
      this.mPopup.getBackground().getPadding(this.mTempRect);
      j -= this.mTempRect.top + this.mTempRect.bottom;
    }
    return j;
  }

  private boolean isInputMethodNotNeeded()
  {
    if (this.mPopup.getInputMethodMode() == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private int measureHeightOfChildren(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    ListAdapter localListAdapter = this.mAdapter;
    if (localListAdapter == null)
      paramInt4 = this.mDropDownList.getListPaddingTop() + this.mDropDownList.getListPaddingBottom();
    while (true)
    {
      return paramInt4;
      int i = this.mDropDownList.getListPaddingTop() + this.mDropDownList.getListPaddingBottom();
      int j;
      label77: int k;
      if ((this.mDropDownList.getDividerHeight() > 0) && (this.mDropDownList.getDivider() != null))
      {
        j = this.mDropDownList.getDividerHeight();
        k = 0;
        if (paramInt3 == -1)
          paramInt3 = -1 + localListAdapter.getCount();
      }
      while (true)
      {
        if (paramInt2 > paramInt3)
          break label232;
        View localView = this.mAdapter.getView(paramInt2, null, this.mDropDownList);
        if (this.mDropDownList.getCacheColorHint() != 0)
          localView.setDrawingCacheBackgroundColor(this.mDropDownList.getCacheColorHint());
        measureScrapChild(localView, paramInt2, paramInt1);
        if (paramInt2 > 0)
          i += j;
        i += localView.getMeasuredHeight();
        if (i >= paramInt4)
        {
          if ((paramInt5 < 0) || (paramInt2 <= paramInt5) || (k <= 0) || (i == paramInt4))
            break;
          paramInt4 = k;
          break;
          j = 0;
          break label77;
        }
        if ((paramInt5 >= 0) && (paramInt2 >= paramInt5))
          k = i;
        paramInt2++;
      }
      label232: paramInt4 = i;
    }
  }

  private void measureScrapChild(View paramView, int paramInt1, int paramInt2)
  {
    AbsListView.LayoutParams localLayoutParams = (AbsListView.LayoutParams)paramView.getLayoutParams();
    if (localLayoutParams == null)
    {
      localLayoutParams = new AbsListView.LayoutParams(-1, -2, 0);
      paramView.setLayoutParams(localLayoutParams);
    }
    int i = ViewGroup.getChildMeasureSpec(paramInt2, this.mDropDownList.getPaddingLeft() + this.mDropDownList.getPaddingRight(), localLayoutParams.width);
    int j = localLayoutParams.height;
    if (j > 0);
    for (int k = View.MeasureSpec.makeMeasureSpec(j, 1073741824); ; k = View.MeasureSpec.makeMeasureSpec(0, 0))
    {
      paramView.measure(i, k);
      return;
    }
  }

  public void clearListSelection()
  {
    IcsListPopupWindow.DropDownListView localDropDownListView = this.mDropDownList;
    if (localDropDownListView != null)
    {
      IcsListPopupWindow.DropDownListView.access$502(localDropDownListView, true);
      localDropDownListView.requestLayout();
    }
  }

  public void dismiss()
  {
    this.mPopup.dismiss();
    if (this.mPromptView != null)
    {
      ViewParent localViewParent = this.mPromptView.getParent();
      if ((localViewParent instanceof ViewGroup))
        ((ViewGroup)localViewParent).removeView(this.mPromptView);
    }
    this.mPopup.setContentView(null);
    this.mDropDownList = null;
    this.mHandler.removeCallbacks(this.mResizePopupRunnable);
  }

  public ListView getListView()
  {
    return this.mDropDownList;
  }

  public boolean isShowing()
  {
    return this.mPopup.isShowing();
  }

  public void setAdapter(ListAdapter paramListAdapter)
  {
    if (this.mObserver == null)
      this.mObserver = new IcsListPopupWindow.PopupDataSetObserver(this, null);
    while (true)
    {
      this.mAdapter = paramListAdapter;
      if (this.mAdapter != null)
        paramListAdapter.registerDataSetObserver(this.mObserver);
      if (this.mDropDownList != null)
        this.mDropDownList.setAdapter(this.mAdapter);
      return;
      if (this.mAdapter != null)
        this.mAdapter.unregisterDataSetObserver(this.mObserver);
    }
  }

  public void setAnchorView(View paramView)
  {
    this.mDropDownAnchorView = paramView;
  }

  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    this.mPopup.setBackgroundDrawable(paramDrawable);
  }

  public void setContentWidth(int paramInt)
  {
    Drawable localDrawable = this.mPopup.getBackground();
    if (localDrawable != null)
      localDrawable.getPadding(this.mTempRect);
    for (this.mDropDownWidth = (paramInt + (this.mTempRect.left + this.mTempRect.right)); ; this.mDropDownWidth = paramInt)
      return;
  }

  public void setHorizontalOffset(int paramInt)
  {
    this.mDropDownHorizontalOffset = paramInt;
  }

  public void setInputMethodMode(int paramInt)
  {
    this.mPopup.setInputMethodMode(paramInt);
  }

  public void setModal(boolean paramBoolean)
  {
    this.mModal = true;
    this.mPopup.setFocusable(paramBoolean);
  }

  public void setOnDismissListener(PopupWindow.OnDismissListener paramOnDismissListener)
  {
    this.mPopup.setOnDismissListener(paramOnDismissListener);
  }

  public void setOnItemClickListener(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    this.mItemClickListener = paramOnItemClickListener;
  }

  public void setPromptPosition(int paramInt)
  {
    this.mPromptPosition = paramInt;
  }

  public void setVerticalOffset(int paramInt)
  {
    this.mDropDownVerticalOffset = paramInt;
    this.mDropDownVerticalOffsetSet = true;
  }

  public void show()
  {
    int i = -1;
    int j = buildDropDown();
    boolean bool = isInputMethodNotNeeded();
    if (this.mPopup.isShowing())
    {
      int n;
      if (this.mDropDownWidth == i)
      {
        n = i;
        if (this.mDropDownHeight != i)
          break label176;
        if (!bool)
          break label131;
        label45: if (!bool)
          break label141;
        PopupWindow localPopupWindow2 = this.mPopup;
        if (this.mDropDownWidth != i)
          break label136;
        label63: localPopupWindow2.setWindowLayoutMode(i, 0);
      }
      while (true)
      {
        this.mPopup.setOutsideTouchable(true);
        this.mPopup.update(this.mDropDownAnchorView, this.mDropDownHorizontalOffset, this.mDropDownVerticalOffset, n, j);
        return;
        if (this.mDropDownWidth == -2)
        {
          n = this.mDropDownAnchorView.getWidth();
          break;
        }
        n = this.mDropDownWidth;
        break;
        label131: j = i;
        break label45;
        label136: i = 0;
        break label63;
        label141: PopupWindow localPopupWindow1 = this.mPopup;
        int i1 = this.mDropDownWidth;
        int i2 = 0;
        if (i1 == i)
          i2 = i;
        localPopupWindow1.setWindowLayoutMode(i2, i);
        continue;
        label176: if (this.mDropDownHeight != -2)
          j = this.mDropDownHeight;
      }
    }
    int k;
    label204: int m;
    if (this.mDropDownWidth == i)
    {
      k = i;
      if (this.mDropDownHeight != i)
        break label361;
      m = i;
    }
    while (true)
    {
      this.mPopup.setWindowLayoutMode(k, m);
      this.mPopup.setOutsideTouchable(true);
      this.mPopup.setTouchInterceptor(this.mTouchInterceptor);
      this.mPopup.showAsDropDown(this.mDropDownAnchorView, this.mDropDownHorizontalOffset, this.mDropDownVerticalOffset);
      this.mDropDownList.setSelection(i);
      if ((!this.mModal) || (this.mDropDownList.isInTouchMode()))
        clearListSelection();
      if (this.mModal)
        break;
      this.mHandler.post(this.mHideSelector);
      break;
      if (this.mDropDownWidth == -2)
      {
        this.mPopup.setWidth(this.mDropDownAnchorView.getWidth());
        k = 0;
        break label204;
      }
      this.mPopup.setWidth(this.mDropDownWidth);
      k = 0;
      break label204;
      label361: if (this.mDropDownHeight == -2)
      {
        this.mPopup.setHeight(j);
        m = 0;
      }
      else
      {
        this.mPopup.setHeight(this.mDropDownHeight);
        m = 0;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsListPopupWindow
 * JD-Core Version:    0.6.2
 */