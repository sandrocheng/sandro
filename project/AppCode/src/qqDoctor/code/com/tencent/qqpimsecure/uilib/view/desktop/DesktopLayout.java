package com.tencent.qqpimsecure.uilib.view.desktop;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.TranslateAnimation;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.uilib.ui.adapter.DesktopAdapter;
import com.tencent.qqpimsecure.uilib.ui.adapter.DesktopAdapter.FunctionModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kk;

public class DesktopLayout extends LinearLayout
{
  public static final int FOCUS_BOTTOM_GRID_VIEW = 0;
  public static final int FOCUS_TOP_GRID_VIEW = 1;
  private LinearLayout mAnimLayout;
  private Animation.AnimationListener mAnimListener = new DesktopLayout.2(this);
  private boolean mAnimating = false;
  private Animation.AnimationListener mAnimlistenerBySelf = new DesktopLayout.3(this);
  private DesktopView mBottomGridView;
  private Context mContext;
  private DesktopView mCurrentGridView;
  private int mFromIndex = -1;
  private Handler mHandler = new DesktopLayout.1(this);
  private DesktopMovingView mLastAnimView;
  private int mLineHeight = -1;
  private int mOffsetY = 0;
  private DesktopView mOtherGridView;
  private int mToIndex = -1;
  private kk mToolBoxDao;
  private DesktopView mTopGridView;
  private WindowManager mWindowManager;
  private int mX = -1;
  private int mY = -1;

  public DesktopLayout(Context paramContext)
  {
    super(paramContext);
    initParams(paramContext);
  }

  public DesktopLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initParams(paramContext);
  }

  private void addAnimView(GridView paramGridView, View paramView)
  {
    DesktopAdapter.FunctionModel localFunctionModel = (DesktopAdapter.FunctionModel)((DesktopAdapter)paramGridView.getAdapter()).getDataList().get(this.mToIndex);
    this.mLastAnimView = createAnimView(localFunctionModel.getImageResId(), localFunctionModel.getTextResId(), paramView);
    this.mLastAnimView.setVisibility(0);
    this.mAnimLayout.addView(this.mLastAnimView);
  }

  private void convertPosition(int paramInt1, int paramInt2)
  {
    if (this.mAnimating);
    View localView1;
    View localView2;
    do
    {
      return;
      if (this.mAnimLayout == null)
        break;
      this.mAnimLayout.removeAllViews();
      this.mFromIndex = paramInt1;
      this.mToIndex = paramInt2;
      localView1 = this.mCurrentGridView.getChildAt(this.mFromIndex);
      localView2 = this.mOtherGridView.getChildAt(this.mToIndex);
    }
    while ((localView1 == null) || (localView2 == null));
    int i;
    int j;
    int k;
    int m;
    if (this.mCurrentGridView.equals(this.mTopGridView))
      if (this.mFromIndex % 4 < this.mToIndex % 4)
      {
        i = localView2.getLeft();
        j = localView1.getLeft();
        k = localView2.getBottom();
        m = localView1.getTop();
      }
    while (true)
    {
      addAnimView(this.mOtherGridView, localView2);
      startAnimation(i, j, k, m, this.mAnimListener);
      break;
      break;
      i = localView2.getLeft();
      j = localView1.getLeft();
      k = localView2.getBottom();
      m = localView1.getTop();
      continue;
      i = localView2.getLeft();
      j = localView1.getLeft();
      k = localView2.getTop();
      m = localView1.getBottom();
    }
  }

  private void convertPositionBySelft(int paramInt1, int paramInt2)
  {
    if (this.mAnimating);
    View localView1;
    View localView2;
    do
    {
      while (true)
      {
        return;
        if (this.mAnimLayout == null)
          break label203;
        if (paramInt1 != paramInt2)
          break;
        if (this.mCurrentGridView.getLastSelectedView() != null)
        {
          this.mWindowManager.removeView(this.mCurrentGridView.getLastSelectedView());
          this.mCurrentGridView.setLastSelectedView(null);
        }
        ((DesktopAdapter)this.mCurrentGridView.getAdapter()).notifyDataSetChanged();
      }
      this.mAnimLayout.removeAllViews();
      this.mFromIndex = paramInt1;
      this.mToIndex = paramInt2;
      localView1 = this.mCurrentGridView.getChildAt(this.mFromIndex);
      localView2 = this.mCurrentGridView.getChildAt(this.mToIndex);
    }
    while ((localView1 == null) || (localView2 == null));
    int i;
    int j;
    int k;
    int m;
    if (this.mCurrentGridView.equals(this.mTopGridView))
      if (this.mFromIndex % 4 < this.mToIndex % 4)
      {
        i = localView2.getLeft();
        j = localView1.getLeft();
        k = localView2.getTop();
        m = localView1.getTop();
      }
    while (true)
    {
      addAnimView(this.mCurrentGridView, localView2);
      startAnimation(i, j, k, m, this.mAnimlistenerBySelf);
      break;
      label203: break;
      i = localView2.getLeft();
      j = localView1.getLeft();
      k = localView2.getTop();
      m = localView1.getTop();
      continue;
      if ((this.mFromIndex % 4 <= this.mToIndex % 4) && (this.mFromIndex < this.mToIndex))
      {
        i = localView2.getLeft();
        j = localView1.getLeft();
        k = localView2.getBottom();
        m = localView1.getTop() + this.mOffsetY;
      }
      else if ((this.mFromIndex % 4 <= this.mToIndex % 4) && (this.mFromIndex > this.mToIndex))
      {
        i = localView2.getLeft();
        j = localView1.getLeft();
        k = localView2.getTop() + this.mOffsetY;
        m = localView1.getBottom();
      }
      else if ((this.mFromIndex % 4 > this.mToIndex % 4) && (this.mFromIndex < this.mToIndex))
      {
        i = localView2.getLeft();
        j = localView1.getLeft();
        k = localView2.getTop() + this.mOffsetY;
        m = localView1.getBottom();
      }
      else if ((this.mFromIndex % 4 > this.mToIndex % 4) && (this.mFromIndex > this.mToIndex))
      {
        i = localView2.getLeft();
        j = localView1.getLeft();
        k = localView2.getBottom();
        m = localView1.getTop() + this.mOffsetY;
      }
      else
      {
        i = 0;
        j = 0;
        k = 0;
        m = 0;
      }
    }
  }

  private DesktopMovingView createAnimView(Drawable paramDrawable, String paramString, View paramView)
  {
    DesktopMovingView localDesktopMovingView = (DesktopMovingView)LayoutInflater.from(this.mContext).inflate(2130903102, null);
    localDesktopMovingView.setBackgroundColor(this.mContext.getResources().getColor(2131296257));
    ((ImageView)localDesktopMovingView.findViewById(2131230855)).setImageDrawable(paramDrawable);
    ((TextView)localDesktopMovingView.findViewById(2131230748)).setText(paramString);
    localDesktopMovingView.setMinimumWidth(paramView.getWidth());
    localDesktopMovingView.setMinimumHeight(paramView.getHeight());
    return localDesktopMovingView;
  }

  private void initParams(Context paramContext)
  {
    this.mContext = paramContext;
    this.mWindowManager = ((WindowManager)this.mContext.getSystemService("window"));
    this.mToolBoxDao = new kk(QQPimApplication.a());
  }

  private void onPositionChanged()
  {
    DesktopAdapter localDesktopAdapter1 = (DesktopAdapter)this.mCurrentGridView.getAdapter();
    DesktopAdapter localDesktopAdapter2 = (DesktopAdapter)this.mOtherGridView.getAdapter();
    DesktopAdapter.FunctionModel localFunctionModel1 = (DesktopAdapter.FunctionModel)localDesktopAdapter1.getDataList().get(this.mFromIndex);
    DesktopAdapter.FunctionModel localFunctionModel2 = (DesktopAdapter.FunctionModel)localDesktopAdapter2.getDataList().get(this.mToIndex);
    localDesktopAdapter1.getDataList().set(this.mFromIndex, localFunctionModel2);
    localDesktopAdapter2.getDataList().set(this.mToIndex, localFunctionModel1);
    saveTopIndex();
    saveBottomIndex();
  }

  private void onPositionChangedBySelf()
  {
    DesktopAdapter localDesktopAdapter = (DesktopAdapter)this.mCurrentGridView.getAdapter();
    DesktopAdapter.FunctionModel localFunctionModel1 = (DesktopAdapter.FunctionModel)localDesktopAdapter.getDataList().get(this.mFromIndex);
    DesktopAdapter.FunctionModel localFunctionModel2 = (DesktopAdapter.FunctionModel)localDesktopAdapter.getDataList().get(this.mToIndex);
    localDesktopAdapter.getDataList().set(this.mFromIndex, localFunctionModel2);
    localDesktopAdapter.getDataList().set(this.mToIndex, localFunctionModel1);
    saveTopIndex();
    saveBottomIndex();
  }

  private void saveBottomIndex()
  {
    List localList = ((DesktopAdapter)this.mBottomGridView.getAdapter()).getDataList();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
      localArrayList.add(Integer.valueOf(((DesktopAdapter.FunctionModel)localIterator.next()).getId()));
    this.mToolBoxDao.b(localArrayList);
  }

  private void saveTopIndex()
  {
    List localList = ((DesktopAdapter)this.mTopGridView.getAdapter()).getDataList();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
      localArrayList.add(Integer.valueOf(((DesktopAdapter.FunctionModel)localIterator.next()).getId()));
    this.mToolBoxDao.a(localArrayList);
  }

  private void setBottomGridViewXY(MotionEvent paramMotionEvent)
  {
    if (this.mCurrentGridView == this.mBottomGridView)
      this.mX = ((int)paramMotionEvent.getX());
    for (this.mY = ((int)paramMotionEvent.getY() - this.mOffsetY); ; this.mY = ((int)paramMotionEvent.getY()))
    {
      return;
      this.mX = ((int)paramMotionEvent.getX());
    }
  }

  private void setOffsetY()
  {
    if (this.mOffsetY == 0)
      this.mOffsetY = Math.abs(this.mOtherGridView.getTop() - this.mCurrentGridView.getTop());
    if (this.mLineHeight == 0)
      this.mLineHeight = (this.mTopGridView.getTop() - this.mBottomGridView.getBottom());
  }

  private boolean setTopGridViewXY(MotionEvent paramMotionEvent)
  {
    if (this.mCurrentGridView == this.mTopGridView)
      this.mX = ((int)paramMotionEvent.getX());
    for (this.mY = ((int)paramMotionEvent.getY() - this.mOffsetY); ; this.mY = ((int)paramMotionEvent.getY()))
    {
      return true;
      this.mX = ((int)paramMotionEvent.getX());
    }
  }

  private void startAnimation(int paramInt1, int paramInt2, int paramInt3, int paramInt4, Animation.AnimationListener paramAnimationListener)
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(paramInt1, paramInt2, paramInt3, paramInt4);
    localTranslateAnimation.setDuration(300L);
    localTranslateAnimation.setFillAfter(false);
    localTranslateAnimation.setInterpolator(new AccelerateDecelerateInterpolator());
    localTranslateAnimation.setAnimationListener(paramAnimationListener);
    this.mLastAnimView.startAnimation(localTranslateAnimation);
    this.mAnimating = true;
  }

  public int getOffsetY()
  {
    if (this.mOffsetY == 0)
      setOffsetY();
    return this.mOffsetY;
  }

  public WindowManager getWindowManager()
  {
    return this.mWindowManager;
  }

  public WindowManager.LayoutParams getWindowParams(int paramInt1, int paramInt2)
  {
    WindowManager.LayoutParams localLayoutParams = new WindowManager.LayoutParams();
    localLayoutParams.gravity = 51;
    localLayoutParams.type = 2003;
    localLayoutParams.format = 1;
    localLayoutParams.flags = (0x8 | localLayoutParams.flags);
    localLayoutParams.width = -2;
    localLayoutParams.height = -2;
    localLayoutParams.x = paramInt1;
    localLayoutParams.y = paramInt2;
    return localLayoutParams;
  }

  public boolean isAnimating()
  {
    return this.mAnimating;
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!this.mCurrentGridView.isTouchMode());
    for (boolean bool = false; ; bool = true)
    {
      return bool;
      new StringBuilder("mCurrentGridView.isTouchMode(): ").append(this.mCurrentGridView.isTouchMode()).toString();
      switch (paramMotionEvent.getAction())
      {
      case 2:
      default:
      case 1:
      case 3:
      }
    }
    if ((this.mCurrentGridView == this.mTopGridView) && (this.mTopGridView.getLastSelectedView() != null))
      this.mTopGridView.getLastSelectedView().onDesktopActionUp();
    while (true)
    {
      onTouchEvent(paramMotionEvent);
      break;
      if ((this.mCurrentGridView == this.mBottomGridView) && (this.mBottomGridView.getLastSelectedView() != null))
        this.mBottomGridView.getLastSelectedView().onDesktopActionUp();
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool1 = this.mCurrentGridView.isTouchMode();
    boolean bool2 = false;
    if (!bool1)
      return bool2;
    switch (paramMotionEvent.getAction())
    {
    case 0:
    default:
    case 2:
    case 1:
    case 3:
    }
    label258: 
    do
      while (true)
      {
        bool2 = true;
        break;
        if ((this.mCurrentGridView.isTouchMode()) && (!this.mAnimating))
        {
          setOffsetY();
          setBottomGridViewXY(paramMotionEvent);
          if (this.mCurrentGridView.pointToPosition(this.mX, this.mY) != this.mCurrentGridView.getLastSelectedIndex())
          {
            DesktopMovingView localDesktopMovingView = this.mCurrentGridView.getLastSelectedView();
            int j = (int)(paramMotionEvent.getRawX() - 0.5D * localDesktopMovingView.getWidth());
            int k = (int)(paramMotionEvent.getRawY() - 0.5D * localDesktopMovingView.getHeight() - 38.0D);
            this.mWindowManager.updateViewLayout(localDesktopMovingView, getWindowParams(j, k));
            continue;
            this.mX = ((int)paramMotionEvent.getX());
            if ((paramMotionEvent.getX() > -1.0F) || (paramMotionEvent.getY() > -1.0F))
              break label258;
            this.mCurrentGridView.setTouchOrder(false, false);
            if (this.mCurrentGridView.getLastSelectedView() != null)
            {
              this.mWindowManager.removeView(this.mCurrentGridView.getLastSelectedView());
              this.mCurrentGridView.setLastSelectedView(null);
            }
          }
        }
      }
    while ((!this.mCurrentGridView.isTouchMode()) || (this.mAnimating));
    setOffsetY();
    int i = this.mCurrentGridView.pointToPosition(this.mX, this.mY);
    boolean bool3;
    if ((i != -1) && (i != this.mCurrentGridView.getLastSelectedIndex()))
    {
      convertPositionBySelft(this.mCurrentGridView.getLastSelectedIndex(), this.mCurrentGridView.pointToPosition(this.mX, this.mY));
      bool3 = true;
    }
    while (true)
    {
      this.mCurrentGridView.setTouchOrder(false, bool3);
      if ((bool3) || (this.mCurrentGridView.getLastSelectedView() == null))
        break;
      this.mWindowManager.removeView(this.mCurrentGridView.getLastSelectedView());
      this.mCurrentGridView.setLastSelectedView(null);
      break;
      if ((this.mOtherGridView != null) && (setTopGridViewXY(paramMotionEvent)) && (this.mOtherGridView.pointToPosition(this.mX, this.mY) != -1))
      {
        convertPosition(this.mCurrentGridView.getLastSelectedIndex(), this.mOtherGridView.pointToPosition(this.mX, this.mY));
        bool3 = true;
      }
      else
      {
        bool3 = false;
      }
    }
  }

  public void sendUpTouchEvent(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    new DesktopLayout.4(this, paramBoolean, paramInt1, paramInt2).start();
  }

  public void setAnimLayout(LinearLayout paramLinearLayout)
  {
    this.mAnimLayout = paramLinearLayout;
  }

  public void setBottomGridView(DesktopView paramDesktopView)
  {
    this.mBottomGridView = paramDesktopView;
  }

  public void setCurrentGridView(int paramInt)
  {
    if (paramInt == 0)
      this.mCurrentGridView = this.mBottomGridView;
    for (this.mOtherGridView = this.mTopGridView; ; this.mOtherGridView = this.mBottomGridView)
    {
      return;
      this.mCurrentGridView = this.mTopGridView;
    }
  }

  public void setTopGridView(DesktopView paramDesktopView)
  {
    this.mTopGridView = paramDesktopView;
  }

  public class DesktopLayoutRunnable
    implements Runnable
  {
    MotionEvent event;

    public DesktopLayoutRunnable(MotionEvent arg2)
    {
      Object localObject;
      this.event = localObject;
    }

    public void run()
    {
      DesktopLayout.this.dispatchTouchEvent(this.event);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.desktop.DesktopLayout
 * JD-Core Version:    0.6.2
 */