package com.tencent.qqpimsecure.uilib.view.dialog;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnKeyListener;
import android.view.WindowManager;

public class BaseWindow
  implements View.OnKeyListener
{
  private static final String TAG = "BaseWindow";
  private OnCancelLisnetner cancelLisnetner;
  private View mBackGroundView;
  protected View mContentView;
  private Context mContext;
  private boolean mIsShowing = false;
  private WindowManager mWindowManager;
  private boolean mWithBackground;

  public BaseWindow(Context paramContext)
  {
    this.mContext = paramContext;
    this.mWindowManager = ((WindowManager)paramContext.getSystemService("window"));
  }

  protected View createView()
  {
    return null;
  }

  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = true;
    new StringBuilder("onKey: ").append(paramInt).toString();
    if (paramInt == 3);
    while (true)
    {
      return bool;
      if (paramInt == 4)
        unShow();
      else
        bool = false;
    }
  }

  protected void onUnShowed()
  {
  }

  public void setBackGroup(int paramInt)
  {
    this.mBackGroundView = LayoutInflater.from(this.mContext).inflate(2130903140, null);
    this.mBackGroundView.setBackgroundColor(this.mContext.getResources().getColor(paramInt));
    this.mWindowManager.addView(this.mBackGroundView, SuspessionParams.wmDialogWindowBackgroundParams);
    this.mWithBackground = true;
  }

  public void setBackGroup(Drawable paramDrawable)
  {
    this.mBackGroundView = LayoutInflater.from(this.mContext).inflate(2130903140, null);
    this.mBackGroundView.setBackgroundDrawable(paramDrawable);
    this.mWindowManager.addView(this.mBackGroundView, SuspessionParams.wmDialogWindowBackgroundParams);
    this.mWithBackground = true;
  }

  public void setOnCancelLisnetner(OnCancelLisnetner paramOnCancelLisnetner)
  {
    this.cancelLisnetner = paramOnCancelLisnetner;
  }

  public final void setView(View paramView)
  {
    if ((paramView == null) || (this.mContentView == paramView));
    while (true)
    {
      return;
      this.mContentView = paramView;
      this.mContentView.setFocusable(true);
      this.mContentView.setFocusableInTouchMode(true);
      this.mContentView.setOnKeyListener(this);
    }
  }

  public void show()
  {
    View localView;
    if (!this.mIsShowing)
    {
      if (this.mContentView != null)
        break label29;
      localView = createView();
      if (localView != null)
        break label24;
    }
    while (true)
    {
      return;
      label24: setView(localView);
      label29: this.mWindowManager.addView(this.mContentView, SuspessionParams.mWindowParams);
      this.mIsShowing = true;
    }
  }

  public void unShow()
  {
    if ((this.mIsShowing) && (this.mContentView != null))
    {
      this.mContentView.clearFocus();
      this.mContentView.setFocusable(false);
      this.mContentView.setFocusableInTouchMode(false);
      this.mContentView.setOnKeyListener(null);
      this.mWindowManager.removeView(this.mContentView);
      this.mContentView = null;
      if (this.mWithBackground)
      {
        this.mWindowManager.removeView(this.mBackGroundView);
        this.mBackGroundView = null;
      }
    }
    this.mIsShowing = false;
    if (this.cancelLisnetner != null)
      this.cancelLisnetner.onCancel();
    onUnShowed();
  }

  public static abstract interface OnCancelLisnetner
  {
    public abstract void onCancel();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.dialog.BaseWindow
 * JD-Core Version:    0.6.2
 */