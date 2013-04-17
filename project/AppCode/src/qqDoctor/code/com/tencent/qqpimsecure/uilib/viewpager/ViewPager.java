package com.tencent.qqpimsecure.uilib.viewpager;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.Scroller;
import java.util.ArrayList;

public class ViewPager extends ViewGroup
{
  private static final boolean DEBUG = true;
  private static final int INVALID_POINTER = -1;
  public static final int SCROLL_STATE_DRAGGING = 1;
  public static final int SCROLL_STATE_IDLE = 0;
  public static final int SCROLL_STATE_SETTLING = 2;
  private static final String TAG = "ViewPager";
  private static final boolean USE_CACHE;
  private int mActivePointerId = -1;
  private PagerAdapter mAdapter;
  private int mChildHeightMeasureSpec;
  private int mChildWidthMeasureSpec;
  private int mCurItem;
  private boolean mInLayout;
  private float mInitialMotionX;
  private boolean mIsBeingDragged;
  private boolean mIsUnableToDrag;
  private final ArrayList<ItemInfo> mItems = new ArrayList();
  private float mLastMotionX;
  private float mLastMotionY;
  private int mMaximumVelocity;
  private int mMinimumVelocity;
  private PagerAdapter.DataSetObserver mObserver;
  private OnPageChangeListener mOnPageChangeListener;
  private boolean mPopulatePending;
  private Parcelable mRestoredAdapterState = null;
  private ClassLoader mRestoredClassLoader = null;
  private int mRestoredCurItem = -1;
  private int mScrollState = 0;
  private Scroller mScroller;
  private boolean mScrolling;
  private boolean mScrollingCacheEnabled;
  private int mTouchSlop;
  private VelocityTracker mVelocityTracker;

  public ViewPager(Context paramContext)
  {
    super(paramContext);
    initViewPager();
  }

  public ViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initViewPager();
  }

  private void completeScroll()
  {
    boolean bool1 = this.mScrolling;
    if (bool1)
    {
      if (this.mScrollingCacheEnabled)
        this.mScrollingCacheEnabled = false;
      this.mScroller.abortAnimation();
      int j = getScrollX();
      int k = getScrollY();
      int m = this.mScroller.getCurrX();
      int n = this.mScroller.getCurrY();
      if ((j != m) || (k != n))
        scrollTo(m, n);
      if (this.mScrollState != 0)
      {
        this.mScrollState = 0;
        if (this.mOnPageChangeListener != null)
          this.mOnPageChangeListener.onPageScrollStateChanged(0);
      }
    }
    this.mPopulatePending = false;
    this.mScrolling = false;
    int i = 0;
    boolean bool2 = bool1;
    while (i < this.mItems.size())
    {
      ItemInfo localItemInfo = (ItemInfo)this.mItems.get(i);
      if (localItemInfo.scrolling)
      {
        bool2 = true;
        localItemInfo.scrolling = false;
      }
      i++;
    }
    if (bool2)
      populate();
  }

  private void endDrag()
  {
    this.mIsBeingDragged = false;
    this.mIsUnableToDrag = false;
    if (this.mVelocityTracker != null)
    {
      this.mVelocityTracker.recycle();
      this.mVelocityTracker = null;
    }
  }

  private void onSecondaryPointerUp(MotionEvent paramMotionEvent)
  {
    int i = MotionEventCompat.getActionIndex(paramMotionEvent);
    if (MotionEventCompat.getPointerId(paramMotionEvent, i) == this.mActivePointerId)
      if (i != 0)
        break label56;
    label56: for (int j = 1; ; j = 0)
    {
      this.mLastMotionX = MotionEventCompat.getX(paramMotionEvent, j);
      this.mActivePointerId = MotionEventCompat.getPointerId(paramMotionEvent, j);
      if (this.mVelocityTracker != null)
        this.mVelocityTracker.clear();
      return;
    }
  }

  private void setScrollState(int paramInt)
  {
    if (this.mScrollState == paramInt);
    while (true)
    {
      return;
      this.mScrollState = paramInt;
      if (this.mOnPageChangeListener != null)
        this.mOnPageChangeListener.onPageScrollStateChanged(paramInt);
    }
  }

  private void setScrollingCacheEnabled(boolean paramBoolean)
  {
    if (this.mScrollingCacheEnabled != paramBoolean)
      this.mScrollingCacheEnabled = paramBoolean;
  }

  void addNewItem(int paramInt1, int paramInt2)
  {
    ItemInfo localItemInfo = new ItemInfo();
    localItemInfo.position = paramInt1;
    localItemInfo.object = this.mAdapter.instantiateItem(this, paramInt1);
    if (paramInt2 < 0)
      this.mItems.add(localItemInfo);
    while (true)
    {
      return;
      this.mItems.add(paramInt2, localItemInfo);
    }
  }

  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (this.mInLayout)
    {
      addViewInLayout(paramView, paramInt, paramLayoutParams);
      paramView.measure(this.mChildWidthMeasureSpec, this.mChildHeightMeasureSpec);
    }
    while (true)
    {
      return;
      super.addView(paramView, paramInt, paramLayoutParams);
    }
  }

  public void computeScroll()
  {
    new StringBuilder("computeScroll: finished=").append(this.mScroller.isFinished()).toString();
    if ((!this.mScroller.isFinished()) && (this.mScroller.computeScrollOffset()))
    {
      int i = getScrollX();
      int j = getScrollY();
      int k = this.mScroller.getCurrX();
      int m = this.mScroller.getCurrY();
      if ((i != k) || (j != m))
        scrollTo(k, m);
      if (this.mOnPageChangeListener != null)
      {
        int n = getWidth();
        int i1 = k / n;
        int i2 = k % n;
        float f = i2 / n;
        this.mOnPageChangeListener.onPageScrolled(i1, f, i2);
      }
      invalidate();
    }
    while (true)
    {
      return;
      completeScroll();
    }
  }

  void dataSetChanged()
  {
    boolean bool1 = true;
    boolean bool2;
    int i;
    int j;
    boolean bool3;
    label32: ItemInfo localItemInfo;
    int k;
    int i2;
    int m;
    int n;
    boolean bool4;
    if ((this.mItems.isEmpty()) && (this.mAdapter.getCount() > 0))
    {
      bool2 = bool1;
      i = 0;
      j = -1;
      bool3 = bool2;
      if (i >= this.mItems.size())
        break label231;
      localItemInfo = (ItemInfo)this.mItems.get(i);
      k = this.mAdapter.getItemPosition(localItemInfo.object);
      if (k == -1)
        break label263;
      if (k != -2)
        break label185;
      this.mItems.remove(i);
      i2 = i - 1;
      this.mAdapter.destroyItem(this, localItemInfo.position, localItemInfo.object);
      if (this.mCurItem != localItemInfo.position)
        break label277;
      int i3 = Math.max(0, Math.min(this.mCurItem, -1 + this.mAdapter.getCount()));
      m = i2;
      n = i3;
      bool4 = bool1;
    }
    label263: label277: 
    while (true)
    {
      int i1 = m + 1;
      bool3 = bool4;
      j = n;
      i = i1;
      break label32;
      bool2 = false;
      break;
      label185: if (localItemInfo.position != k)
      {
        if (localItemInfo.position == this.mCurItem)
          j = k;
        localItemInfo.position = k;
        m = i;
        n = j;
        bool4 = bool1;
        continue;
        label231: if (j >= 0)
          setCurrentItemInternal(j, false, bool1);
        while (true)
        {
          if (bool1)
          {
            populate();
            requestLayout();
          }
          return;
          bool1 = bool3;
        }
      }
      else
      {
        m = i;
        n = j;
        bool4 = bool3;
        continue;
        m = i2;
        n = j;
        bool4 = bool1;
      }
    }
  }

  public PagerAdapter getAdapter()
  {
    return this.mAdapter;
  }

  ItemInfo infoForChild(View paramView)
  {
    int i = 0;
    ItemInfo localItemInfo;
    if (i < this.mItems.size())
    {
      localItemInfo = (ItemInfo)this.mItems.get(i);
      if (!this.mAdapter.isViewFromObject(paramView, localItemInfo.object));
    }
    while (true)
    {
      return localItemInfo;
      i++;
      break;
      localItemInfo = null;
    }
  }

  void initViewPager()
  {
    setWillNotDraw(false);
    this.mScroller = new Scroller(getContext());
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(getContext());
    this.mTouchSlop = ViewConfigurationCompat.getScaledPagingTouchSlop(localViewConfiguration);
    this.mMinimumVelocity = localViewConfiguration.getScaledMinimumFlingVelocity();
    this.mMaximumVelocity = localViewConfiguration.getScaledMaximumFlingVelocity();
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (this.mAdapter != null)
      populate();
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = 1;
    int j = 0xFF & paramMotionEvent.getAction();
    if ((j == 3) || (j == i))
    {
      this.mIsBeingDragged = false;
      this.mIsUnableToDrag = false;
      this.mActivePointerId = -1;
      i = 0;
    }
    while (true)
    {
      return i;
      if (j == 0)
        break;
      if (!this.mIsBeingDragged)
      {
        if (!this.mIsUnableToDrag)
          break;
        i = 0;
      }
    }
    switch (j)
    {
    default:
    case 2:
    case 0:
    case 6:
    }
    while (true)
    {
      i = this.mIsBeingDragged;
      break;
      int k = this.mActivePointerId;
      if (k != -1)
      {
        int m = MotionEventCompat.findPointerIndex(paramMotionEvent, k);
        float f2 = MotionEventCompat.getX(paramMotionEvent, m);
        float f3 = Math.abs(f2 - this.mLastMotionX);
        float f4 = MotionEventCompat.getY(paramMotionEvent, m);
        float f5 = Math.abs(f4 - this.mLastMotionY);
        new StringBuilder("onInterceptTouchEvent Moved x to ").append(f2).append(",").append(f4).append(" diff=").append(f3).append(",").append(f5).toString();
        if ((f3 > this.mTouchSlop) && (f3 > f5))
        {
          int n = getWidth();
          float f6 = Math.max(0, n * (-1 + this.mCurItem));
          float f7 = n * Math.min(1 + this.mCurItem, -1 + this.mAdapter.getCount());
          float f8 = this.mLastMotionX - f2;
          this.mLastMotionX = f2;
          float f9 = f8 + getScrollX();
          if (f9 <= f6)
          {
            setScrollState(0);
          }
          else if (f9 >= f7)
          {
            setScrollState(0);
          }
          else
          {
            this.mIsBeingDragged = i;
            this.mLastMotionX = f2;
            setScrollState(i);
            setScrollingCacheEnabled(i);
          }
        }
        else if (f5 > this.mTouchSlop)
        {
          this.mIsUnableToDrag = i;
          continue;
          float f1 = paramMotionEvent.getX();
          this.mInitialMotionX = f1;
          this.mLastMotionX = f1;
          this.mLastMotionY = paramMotionEvent.getY();
          this.mActivePointerId = MotionEventCompat.getPointerId(paramMotionEvent, 0);
          if (this.mScrollState == 2)
          {
            this.mIsBeingDragged = i;
            this.mIsUnableToDrag = false;
            setScrollState(i);
          }
          while (true)
          {
            new StringBuilder("Down at ").append(this.mLastMotionX).append(",").append(this.mLastMotionY).append(" mIsBeingDragged=").append(this.mIsBeingDragged).append(" mIsUnableToDrag=").append(this.mIsUnableToDrag).toString();
            break;
            completeScroll();
            this.mIsBeingDragged = false;
            this.mIsUnableToDrag = false;
          }
          onSecondaryPointerUp(paramMotionEvent);
        }
      }
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = 0;
    this.mInLayout = true;
    populate();
    this.mInLayout = false;
    int j = getChildCount();
    int k = paramInt3 - paramInt1;
    while (i < j)
    {
      View localView = getChildAt(i);
      if (localView.getVisibility() != 8)
      {
        ItemInfo localItemInfo = infoForChild(localView);
        if (localItemInfo != null)
        {
          int m = k * localItemInfo.position + getPaddingLeft();
          int n = getPaddingTop();
          new StringBuilder("Positioning #").append(i).append(" ").append(localView).append(" f=").append(localItemInfo.object).append(":").append(m).append(",").append(n).append(" ").append(localView.getMeasuredWidth()).append("x").append(localView.getMeasuredHeight()).toString();
          localView.layout(m, n, m + localView.getMeasuredWidth(), n + localView.getMeasuredHeight());
        }
      }
      i++;
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = 0;
    setMeasuredDimension(getDefaultSize(0, paramInt1), getDefaultSize(0, paramInt2));
    this.mChildWidthMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), 1073741824);
    this.mChildHeightMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), 1073741824);
    this.mInLayout = true;
    populate();
    this.mInLayout = false;
    int j = getChildCount();
    while (i < j)
    {
      View localView = getChildAt(i);
      if (localView.getVisibility() != 8)
      {
        new StringBuilder("Measuring #").append(i).append(" ").append(localView).append(": ").append(this.mChildWidthMeasureSpec).toString();
        localView.measure(this.mChildWidthMeasureSpec, this.mChildHeightMeasureSpec);
      }
      i++;
    }
  }

  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof SavedState))
      super.onRestoreInstanceState(paramParcelable);
    while (true)
    {
      return;
      SavedState localSavedState = (SavedState)paramParcelable;
      super.onRestoreInstanceState(localSavedState.getSuperState());
      if (this.mAdapter != null)
      {
        this.mAdapter.restoreState(localSavedState.adapterState, localSavedState.loader);
        setCurrentItemInternal(localSavedState.position, false, true);
      }
      else
      {
        this.mRestoredCurItem = localSavedState.position;
        this.mRestoredAdapterState = localSavedState.adapterState;
        this.mRestoredClassLoader = localSavedState.loader;
      }
    }
  }

  public Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    localSavedState.position = this.mCurItem;
    localSavedState.adapterState = this.mAdapter.saveState();
    return localSavedState;
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    int i = paramInt1 * this.mCurItem;
    if (i != getScrollX())
    {
      completeScroll();
      scrollTo(i, getScrollY());
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((paramMotionEvent.getAction() == 0) && (paramMotionEvent.getEdgeFlags() != 0));
    for (boolean bool = false; ; bool = false)
    {
      return bool;
      if ((this.mAdapter != null) && (this.mAdapter.getCount() != 0))
        break;
    }
    if (this.mVelocityTracker == null)
      this.mVelocityTracker = VelocityTracker.obtain();
    this.mVelocityTracker.addMovement(paramMotionEvent);
    switch (0xFF & paramMotionEvent.getAction())
    {
    case 4:
    default:
    case 0:
    case 2:
    case 1:
    case 3:
    case 5:
    case 6:
    }
    label546: 
    while (true)
    {
      bool = true;
      break;
      completeScroll();
      float f12 = paramMotionEvent.getX();
      this.mInitialMotionX = f12;
      this.mLastMotionX = f12;
      this.mActivePointerId = MotionEventCompat.getPointerId(paramMotionEvent, 0);
      continue;
      int k = getWidth();
      float f1 = Math.max(0, k * (-1 + this.mCurItem));
      float f2 = k * Math.min(1 + this.mCurItem, -1 + this.mAdapter.getCount());
      float f11;
      if (!this.mIsBeingDragged)
      {
        int i1 = MotionEventCompat.findPointerIndex(paramMotionEvent, this.mActivePointerId);
        float f7 = MotionEventCompat.getX(paramMotionEvent, i1);
        float f8 = Math.abs(f7 - this.mLastMotionX);
        float f9 = MotionEventCompat.getY(paramMotionEvent, i1);
        float f10 = Math.abs(f9 - this.mLastMotionY);
        new StringBuilder("Moved x to ").append(f7).append(",").append(f9).append(" diff=").append(f8).append(",").append(f10).toString();
        if ((f8 > this.mTouchSlop) && (f8 > f10))
        {
          f11 = this.mLastMotionX - f7 + getScrollX();
          if (f11 > f1)
            break label546;
          setScrollState(0);
        }
      }
      label353: if (this.mIsBeingDragged)
      {
        float f3 = MotionEventCompat.getX(paramMotionEvent, MotionEventCompat.findPointerIndex(paramMotionEvent, this.mActivePointerId));
        float f4 = this.mLastMotionX - f3;
        this.mLastMotionX = f3;
        float f5 = f4 + getScrollX();
        if (f5 <= f1)
        {
          setScrollState(0);
          this.mIsBeingDragged = false;
        }
        while (true)
        {
          this.mLastMotionX += f1 - (int)f1;
          scrollTo((int)f1, getScrollY());
          if (this.mOnPageChangeListener != null)
          {
            int m = (int)f1 / k;
            int n = (int)f1 % k;
            float f6 = n / k;
            this.mOnPageChangeListener.onPageScrollDeltaX(f4);
            this.mOnPageChangeListener.onPageScrolled(m, f6, n);
          }
          new StringBuilder("Moved mIsBeingDragged deltaX  ").append(f4).append(" scrollX  ").append(f1).append("width  ").append(k).toString();
          break;
          if (f11 >= f2)
          {
            setScrollState(0);
            break label353;
          }
          this.mIsBeingDragged = true;
          setScrollState(1);
          setScrollingCacheEnabled(true);
          break label353;
          if (f5 >= f2)
          {
            setScrollState(0);
            this.mIsBeingDragged = false;
            f1 = f2;
          }
          else
          {
            setScrollState(1);
            f1 = f5;
          }
        }
        if (this.mIsBeingDragged)
        {
          VelocityTracker localVelocityTracker = this.mVelocityTracker;
          localVelocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
          int j = (int)VelocityTrackerCompat.getYVelocity(localVelocityTracker, this.mActivePointerId);
          this.mPopulatePending = true;
          if ((Math.abs(j) > this.mMinimumVelocity) || (Math.abs(this.mInitialMotionX - this.mLastMotionX) >= getWidth() / 3))
            if (this.mLastMotionX > this.mInitialMotionX)
              setCurrentItemInternal(-1 + this.mCurItem, true, true);
          while (true)
          {
            this.mActivePointerId = -1;
            endDrag();
            break;
            setCurrentItemInternal(1 + this.mCurItem, true, true);
            continue;
            setCurrentItemInternal(this.mCurItem, true, true);
          }
          if (this.mIsBeingDragged)
          {
            setCurrentItemInternal(this.mCurItem, true, true);
            this.mActivePointerId = -1;
            endDrag();
            continue;
            int i = MotionEventCompat.getActionIndex(paramMotionEvent);
            this.mLastMotionX = MotionEventCompat.getX(paramMotionEvent, i);
            this.mActivePointerId = MotionEventCompat.getPointerId(paramMotionEvent, i);
            continue;
            onSecondaryPointerUp(paramMotionEvent);
            this.mLastMotionX = MotionEventCompat.getX(paramMotionEvent, MotionEventCompat.findPointerIndex(paramMotionEvent, this.mActivePointerId));
          }
        }
      }
    }
  }

  void populate()
  {
    if (this.mAdapter == null)
      return;
    int i;
    label44: int j;
    int k;
    label69: int m;
    int n;
    label103: ItemInfo localItemInfo;
    int i8;
    if ((!this.mPopulatePending) && (getWindowToken() != null))
    {
      this.mAdapter.startUpdate(this);
      if (this.mCurItem > 0)
      {
        i = -1 + this.mCurItem;
        j = this.mAdapter.getCount();
        if (this.mCurItem >= j - 1)
          break label258;
        k = 1 + this.mCurItem;
        new StringBuilder("populating: startPos=").append(i).append(" endPos=").append(k).toString();
        m = 0;
        n = -1;
        if (m >= this.mItems.size())
          break label358;
        localItemInfo = (ItemInfo)this.mItems.get(m);
        if (((localItemInfo.position >= i) && (localItemInfo.position <= k)) || (localItemInfo.scrolling))
          break label265;
        new StringBuilder("removing: ").append(localItemInfo.position).append(" @ ").append(m).toString();
        this.mItems.remove(m);
        i8 = m - 1;
        this.mAdapter.destroyItem(this, localItemInfo.position, localItemInfo.object);
      }
    }
    for (int i4 = i8; ; i4 = m)
    {
      int i5 = localItemInfo.position;
      int i6 = i4 + 1;
      n = i5;
      m = i6;
      break label103;
      i = this.mCurItem;
      break label44;
      label258: k = j - 1;
      break label69;
      label265: if ((n < k) && (localItemInfo.position > i))
      {
        int i7 = n + 1;
        if (i7 < i)
          i7 = i;
        while (true)
          if ((i7 <= k) && (i7 < localItemInfo.position))
          {
            new StringBuilder("inserting: ").append(i7).append(" @ ").append(m).toString();
            addNewItem(i7, m);
            i7++;
            m++;
            continue;
            label358: if (this.mItems.size() > 0);
            int i2;
            for (int i1 = ((ItemInfo)this.mItems.get(-1 + this.mItems.size())).position; ; i1 = -1)
            {
              i2 = 0;
              if (i1 >= k)
                break;
              int i3 = i1 + 1;
              if (i3 > i);
              for (i = i3; ; i++)
              {
                i2 = 0;
                if (i > k)
                  break;
                new StringBuilder("appending: ").append(i).toString();
                addNewItem(i, -1);
              }
            }
            while (i2 < this.mItems.size())
            {
              new StringBuilder("#").append(i2).append(": page ").append(((ItemInfo)this.mItems.get(i2)).position).toString();
              i2++;
            }
            this.mAdapter.finishUpdate(this);
            break;
            break;
          }
      }
    }
  }

  public void setAdapter(PagerAdapter paramPagerAdapter)
  {
    if (this.mAdapter != null)
      this.mAdapter.setDataSetObserver(null);
    this.mAdapter = paramPagerAdapter;
    if (this.mAdapter != null)
    {
      if (this.mObserver == null)
        this.mObserver = new DataSetObserver(null);
      this.mAdapter.setDataSetObserver(this.mObserver);
      this.mPopulatePending = false;
      if (this.mRestoredCurItem < 0)
        break label111;
      this.mAdapter.restoreState(this.mRestoredAdapterState, this.mRestoredClassLoader);
      setCurrentItemInternal(this.mRestoredCurItem, false, true);
      this.mRestoredCurItem = -1;
      this.mRestoredAdapterState = null;
      this.mRestoredClassLoader = null;
    }
    while (true)
    {
      return;
      label111: populate();
    }
  }

  public void setCurrentItem(int paramInt)
  {
    this.mPopulatePending = false;
    setCurrentItemInternal(paramInt, true, false);
  }

  void setCurrentItemInternal(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((this.mAdapter == null) || (this.mAdapter.getCount() <= 0))
      if (this.mScrollingCacheEnabled)
        this.mScrollingCacheEnabled = false;
    while (true)
    {
      return;
      if ((!paramBoolean2) && (this.mCurItem == paramInt) && (this.mItems.size() != 0))
      {
        if (this.mScrollingCacheEnabled)
          this.mScrollingCacheEnabled = false;
      }
      else
      {
        if (paramInt < 0)
          paramInt = 0;
        while ((paramInt > 1 + this.mCurItem) || (paramInt < -1 + this.mCurItem))
        {
          for (int i = 0; i < this.mItems.size(); i++)
            ((ItemInfo)this.mItems.get(i)).scrolling = true;
          if (paramInt >= this.mAdapter.getCount())
            paramInt = -1 + this.mAdapter.getCount();
        }
        if (this.mCurItem != paramInt);
        for (int j = 1; ; j = 0)
        {
          this.mCurItem = paramInt;
          populate();
          if (!paramBoolean1)
            break label220;
          smoothScrollTo(paramInt * getWidth(), 0);
          if ((j == 0) || (this.mOnPageChangeListener == null))
            break;
          this.mOnPageChangeListener.onPageSelected(paramInt);
          break;
        }
        label220: if ((j != 0) && (this.mOnPageChangeListener != null))
          this.mOnPageChangeListener.onPageSelected(paramInt);
        completeScroll();
        scrollTo(paramInt * getWidth(), 0);
      }
    }
  }

  public void setOnPageChangeListener(OnPageChangeListener paramOnPageChangeListener)
  {
    this.mOnPageChangeListener = paramOnPageChangeListener;
  }

  void smoothScrollTo(int paramInt1, int paramInt2)
  {
    if (getChildCount() == 0)
      if (this.mScrollingCacheEnabled)
        this.mScrollingCacheEnabled = false;
    while (true)
    {
      return;
      int i = getScrollX();
      int j = getScrollY();
      int k = paramInt1 - i;
      int m = paramInt2 - j;
      if ((k == 0) && (m == 0))
      {
        completeScroll();
      }
      else
      {
        if (this.mScrollingCacheEnabled != true)
          this.mScrollingCacheEnabled = true;
        this.mScrolling = true;
        if (this.mScrollState != 2)
        {
          this.mScrollState = 2;
          if (this.mOnPageChangeListener != null)
            this.mOnPageChangeListener.onPageScrollStateChanged(2);
        }
        this.mScroller.startScroll(i, j, k, m);
        invalidate();
      }
    }
  }

  class DataSetObserver
    implements PagerAdapter.DataSetObserver
  {
    private DataSetObserver()
    {
    }

    public void onDataSetChanged()
    {
      ViewPager.this.dataSetChanged();
    }
  }

  static class ItemInfo
  {
    Object object;
    int position;
    boolean scrolling;
  }

  public static abstract interface OnPageChangeListener
  {
    public abstract void onPageScrollDeltaX(float paramFloat);

    public abstract void onPageScrollStateChanged(int paramInt);

    public abstract void onPageScrolled(int paramInt1, float paramFloat, int paramInt2);

    public abstract void onPageSelected(int paramInt);
  }

  public static class SavedState extends View.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = ParcelableCompat.newCreator(new ViewPager.SavedState.1());
    Parcelable adapterState;
    ClassLoader loader;
    int position;

    SavedState(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super();
      if (paramClassLoader == null)
        paramClassLoader = getClass().getClassLoader();
      this.position = paramParcel.readInt();
      this.adapterState = paramParcel.readParcelable(paramClassLoader);
      this.loader = paramClassLoader;
    }

    public SavedState(Parcelable paramParcelable)
    {
      super();
    }

    public String toString()
    {
      return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.position + "}";
    }

    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(this.position);
      paramParcel.writeParcelable(this.adapterState, paramInt);
    }
  }

  public static class SimpleOnPageChangeListener
    implements ViewPager.OnPageChangeListener
  {
    public void onPageScrollDeltaX(float paramFloat)
    {
    }

    public void onPageScrollStateChanged(int paramInt)
    {
    }

    public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
    {
    }

    public void onPageSelected(int paramInt)
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.viewpager.ViewPager
 * JD-Core Version:    0.6.2
 */