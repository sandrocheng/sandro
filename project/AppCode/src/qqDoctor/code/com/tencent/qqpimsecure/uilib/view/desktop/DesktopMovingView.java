package com.tencent.qqpimsecure.uilib.view.desktop;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;

public class DesktopMovingView extends LinearLayout
{
  private DesktopLayout mDesktopLayout;
  private boolean mDownTouch = true;
  private int mNotificationHeight = 0;
  private int mScreenHeight;

  public DesktopMovingView(Context paramContext)
  {
    super(paramContext);
    getHeight(paramContext);
  }

  public DesktopMovingView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    getHeight(paramContext);
  }

  private void getHeight(Context paramContext)
  {
    this.mScreenHeight = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getHeight();
  }

  private int getNotificationBarHeight()
  {
    int i;
    if (this.mNotificationHeight != 0)
      i = this.mNotificationHeight;
    while (true)
    {
      return i;
      if ((getContext() instanceof Activity))
      {
        Rect localRect = new Rect();
        ((Activity)getContext()).getWindow().getDecorView().getWindowVisibleDisplayFrame(localRect);
        i = localRect.top;
      }
      else
      {
        i = this.mNotificationHeight;
      }
    }
  }

  private void onActionMove(MotionEvent paramMotionEvent)
  {
    int i = (int)(paramMotionEvent.getRawX() - 0.5D * getWidth());
    int j = (int)(paramMotionEvent.getRawY() - 0.5D * getHeight() - getNotificationBarHeight());
    this.mDesktopLayout.getWindowManager().updateViewLayout(this, this.mDesktopLayout.getWindowParams(i, j));
  }

  public void onActionUp(MotionEvent paramMotionEvent)
  {
    if ((paramMotionEvent.getX() <= -1.0F) && (paramMotionEvent.getY() <= -1.0F))
      return;
    int i = this.mScreenHeight - this.mDesktopLayout.getHeight();
    if (paramMotionEvent.getRawY() < i)
      this.mDesktopLayout.sendUpTouchEvent(false, -1, -1);
    while (true)
    {
      this.mDownTouch = true;
      break;
      this.mDesktopLayout.sendUpTouchEvent(true, (int)paramMotionEvent.getRawX(), (int)(paramMotionEvent.getRawY() - i));
    }
  }

  public void onDesktopActionUp()
  {
    this.mDesktopLayout.sendUpTouchEvent(false, -1, -1);
    this.mDownTouch = true;
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    default:
    case 0:
    case 2:
    case 1:
    case 3:
    }
    while (true)
    {
      return super.onTouchEvent(paramMotionEvent);
      this.mDownTouch = false;
      continue;
      if (this.mDownTouch)
      {
        onActionMove(paramMotionEvent);
        continue;
        onActionUp(paramMotionEvent);
        continue;
        onActionUp(paramMotionEvent);
      }
    }
  }

  public void setDesktopLayout(DesktopLayout paramDesktopLayout)
  {
    this.mDesktopLayout = paramDesktopLayout;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.desktop.DesktopMovingView
 * JD-Core Version:    0.6.2
 */