package com.tencent.qqpimsecure.uilib.view;

import a;
import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import java.util.Date;

public class PinnedHeaderListView extends ListView
{
  private static final int DONE = 3;
  private static final int LOADING = 4;
  private static final int MAX_ALPHA = 255;
  private static final int PULL_To_REFRESH = 1;
  private static final int RATIO = 3;
  private static final int REFRESHING = 2;
  private static final int RELEASE_To_REFRESH = 0;
  private static final String TAG = "PinnedHeaderListView";
  private RotateAnimation animation;
  private ImageView arrowImageView;
  private int firstItemIndex;
  private int headContentHeight;
  private int headContentWidth;
  private LinearLayout headView;
  private LayoutInflater inflater;
  private boolean isBack;
  private boolean isRecored;
  public boolean isRefreshable;
  private TextView lastUpdatedTextView;
  private IPinnedHeaderAdapter mAdapter;
  private Context mContext;
  private int mHeaderViewHeight;
  private boolean mHeaderViewVisible;
  private int mHeaderViewWidth;
  private View mPinnedHeaderView;
  private ProgressBar progressBar;
  private OnRefreshListener refreshListener;
  private RotateAnimation reverseAnimation;
  private int startY;
  private int state;
  private TextView tipsTextview;

  public PinnedHeaderListView(Context paramContext)
  {
    super(paramContext);
    this.mContext = paramContext;
  }

  public PinnedHeaderListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
  }

  public PinnedHeaderListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.mContext = paramContext;
  }

  private void changeHeaderViewByState()
  {
    switch (this.state)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      this.arrowImageView.setVisibility(0);
      this.progressBar.setVisibility(8);
      this.tipsTextview.setVisibility(0);
      this.lastUpdatedTextView.setVisibility(0);
      this.arrowImageView.clearAnimation();
      this.arrowImageView.startAnimation(this.animation);
      this.tipsTextview.setText(this.mContext.getString(2131427368));
      continue;
      this.progressBar.setVisibility(8);
      this.tipsTextview.setVisibility(0);
      this.lastUpdatedTextView.setVisibility(0);
      this.arrowImageView.clearAnimation();
      this.arrowImageView.setVisibility(0);
      if (this.isBack)
      {
        this.isBack = false;
        this.arrowImageView.clearAnimation();
        this.arrowImageView.startAnimation(this.reverseAnimation);
        this.tipsTextview.setText(this.mContext.getString(2131427355));
      }
      else
      {
        this.tipsTextview.setText(this.mContext.getString(2131427355));
        continue;
        this.headView.setPadding(0, 0, 0, 0);
        this.progressBar.setVisibility(8);
        this.arrowImageView.clearAnimation();
        this.arrowImageView.setVisibility(8);
        this.tipsTextview.setText(this.mContext.getString(2131427369));
        this.lastUpdatedTextView.setVisibility(0);
        continue;
        this.headView.setPadding(0, -1 * this.headContentHeight, 0, 0);
        this.progressBar.setVisibility(8);
        this.arrowImageView.clearAnimation();
        this.arrowImageView.setImageResource(2130837822);
        this.tipsTextview.setText(this.mContext.getString(2131427355));
        this.lastUpdatedTextView.setVisibility(0);
      }
    }
  }

  private void initRefreshView(Context paramContext)
  {
    this.inflater = LayoutInflater.from(paramContext);
    this.headView = ((LinearLayout)this.inflater.inflate(2130903279, null));
    this.arrowImageView = ((ImageView)this.headView.findViewById(2131231509));
    this.arrowImageView.setMinimumWidth(70);
    this.arrowImageView.setMinimumHeight(30);
    this.progressBar = ((ProgressBar)this.headView.findViewById(2131231510));
    this.tipsTextview = ((TextView)this.headView.findViewById(2131231507));
    this.lastUpdatedTextView = ((TextView)this.headView.findViewById(2131231508));
    measureView(this.headView);
    this.headContentHeight = this.headView.getMeasuredHeight();
    this.headContentWidth = this.headView.getMeasuredWidth();
    this.headView.setPadding(0, -1 * this.headContentHeight, 0, 0);
    this.headView.invalidate();
    new StringBuilder("width:").append(this.headContentWidth).append(" height:").append(this.headContentHeight).toString();
    this.animation = new RotateAnimation(0.0F, -180.0F, 1, 0.5F, 1, 0.5F);
    this.animation.setInterpolator(new LinearInterpolator());
    this.animation.setDuration(250L);
    this.animation.setFillAfter(true);
    this.reverseAnimation = new RotateAnimation(-180.0F, 0.0F, 1, 0.5F, 1, 0.5F);
    this.reverseAnimation.setInterpolator(new LinearInterpolator());
    this.reverseAnimation.setDuration(200L);
    this.reverseAnimation.setFillAfter(true);
    this.state = 3;
    this.isRefreshable = false;
  }

  private void measureView(View paramView)
  {
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    if (localLayoutParams == null)
      localLayoutParams = new ViewGroup.LayoutParams(-1, -2);
    int i = ViewGroup.getChildMeasureSpec(0, 0, localLayoutParams.width);
    int j = localLayoutParams.height;
    if (j > 0);
    for (int k = View.MeasureSpec.makeMeasureSpec(j, 1073741824); ; k = View.MeasureSpec.makeMeasureSpec(0, 0))
    {
      paramView.measure(i, k);
      return;
    }
  }

  private void onRefresh()
  {
    if (this.refreshListener != null)
      this.refreshListener.onRefresh();
  }

  public void configureHeaderView(int paramInt)
  {
    int i = 255;
    if (this.mPinnedHeaderView == null);
    View localView;
    do
    {
      while (true)
      {
        return;
        switch (this.mAdapter.getPinnedHeaderState(paramInt))
        {
        default:
          break;
        case 0:
          this.mHeaderViewVisible = false;
          break;
        case 1:
          this.mAdapter.configurePinnedHeader(this.mPinnedHeaderView, paramInt, i);
          if (this.mPinnedHeaderView.getTop() != 0)
            this.mPinnedHeaderView.layout(0, 0, this.mHeaderViewWidth, this.mHeaderViewHeight);
          this.mHeaderViewVisible = true;
        case 2:
        }
      }
      localView = getChildAt(0);
    }
    while (localView == null);
    int j = localView.getBottom();
    int k = this.mPinnedHeaderView.getHeight();
    int m;
    if (j < k)
    {
      m = j - k;
      i = 255 * (k + m) / k;
    }
    while (true)
    {
      this.mAdapter.configurePinnedHeader(this.mPinnedHeaderView, paramInt, i);
      if (this.mPinnedHeaderView.getTop() != m)
        this.mPinnedHeaderView.layout(0, m, this.mHeaderViewWidth, m + this.mHeaderViewHeight);
      this.mHeaderViewVisible = true;
      break;
      m = 0;
    }
  }

  protected void dispatchDraw(Canvas paramCanvas)
  {
    try
    {
      super.dispatchDraw(paramCanvas);
      if (this.mHeaderViewVisible)
        drawChild(paramCanvas, this.mPinnedHeaderView, getDrawingTime());
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.mPinnedHeaderView != null)
    {
      this.mPinnedHeaderView.layout(0, 0, this.mHeaderViewWidth, this.mHeaderViewHeight);
      configureHeaderView(getFirstVisiblePosition());
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (this.mPinnedHeaderView != null)
    {
      measureChild(this.mPinnedHeaderView, paramInt1, paramInt2);
      this.mHeaderViewWidth = this.mPinnedHeaderView.getMeasuredWidth();
      this.mHeaderViewHeight = this.mPinnedHeaderView.getMeasuredHeight();
    }
  }

  public void onRefreshComplete()
  {
    this.state = 3;
    this.lastUpdatedTextView.setText(this.mContext.getString(2131427370) + a.a(new Date()));
    changeHeaderViewByState();
  }

  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    this.firstItemIndex = paramInt1;
  }

  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.isRefreshable)
      switch (paramMotionEvent.getAction())
      {
      default:
      case 0:
      case 1:
      case 2:
      }
    int i;
    do
    {
      while (true)
      {
        return super.onTouchEvent(paramMotionEvent);
        if ((this.firstItemIndex == 0) && (!this.isRecored))
        {
          this.isRecored = true;
          this.startY = ((int)paramMotionEvent.getY());
          continue;
          if ((this.state != 2) && (this.state != 4))
          {
            if (this.state == 1)
            {
              this.state = 3;
              changeHeaderViewByState();
            }
            if (this.state == 0)
            {
              this.state = 2;
              changeHeaderViewByState();
              if (this.refreshListener != null)
                this.refreshListener.onRefresh();
            }
          }
          this.isRecored = false;
          this.isBack = false;
        }
      }
      i = (int)paramMotionEvent.getY();
      if ((!this.isRecored) && (this.firstItemIndex == 0))
      {
        this.isRecored = true;
        this.startY = i;
      }
    }
    while ((this.state == 2) || (!this.isRecored) || (this.state == 4));
    if (this.state == 0)
    {
      setSelection(0);
      if (((i - this.startY) / 3 < this.headContentHeight) && (i - this.startY > 0))
      {
        this.state = 1;
        changeHeaderViewByState();
      }
    }
    else
    {
      label254: if (this.state == 1)
      {
        setSelection(0);
        if ((i - this.startY) / 3 < this.headContentHeight)
          break label409;
        this.state = 0;
        this.isBack = true;
        changeHeaderViewByState();
      }
    }
    while (true)
    {
      if ((this.state == 3) && (i - this.startY > 0))
      {
        this.state = 1;
        changeHeaderViewByState();
      }
      if (this.state == 1)
        this.headView.setPadding(0, -1 * this.headContentHeight + (i - this.startY) / 3, 0, 0);
      if (this.state != 0)
        break;
      this.headView.setPadding(0, (i - this.startY) / 3 - this.headContentHeight, 0, 0);
      break;
      if (i - this.startY > 0)
        break label254;
      this.state = 3;
      changeHeaderViewByState();
      break label254;
      label409: if (i - this.startY <= 0)
      {
        this.state = 3;
        changeHeaderViewByState();
      }
    }
  }

  public void setAdapter(ListAdapter paramListAdapter)
  {
    super.setAdapter(paramListAdapter);
    if ((paramListAdapter instanceof IPinnedHeaderAdapter))
      this.mAdapter = ((IPinnedHeaderAdapter)paramListAdapter);
  }

  public void setOnRefreshListener(OnRefreshListener paramOnRefreshListener)
  {
    initRefreshView(this.mContext);
    addHeaderView(this.headView, null, false);
    setHeaderDividersEnabled(false);
    this.isRefreshable = true;
    this.refreshListener = paramOnRefreshListener;
  }

  public void setPinnedHeaderView(View paramView)
  {
    this.mPinnedHeaderView = paramView;
    if (this.mPinnedHeaderView != null)
      setFadingEdgeLength(0);
    requestLayout();
  }

  public static abstract interface IPinnedHeaderAdapter
  {
    public static final int PINNED_HEADER_GONE = 0;
    public static final int PINNED_HEADER_PUSHED_UP = 2;
    public static final int PINNED_HEADER_VISIBLE = 1;

    public abstract void configurePinnedHeader(View paramView, int paramInt1, int paramInt2);

    public abstract int getPinnedHeaderState(int paramInt);
  }

  public static abstract interface OnRefreshListener
  {
    public abstract void onRefresh();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView
 * JD-Core Version:    0.6.2
 */