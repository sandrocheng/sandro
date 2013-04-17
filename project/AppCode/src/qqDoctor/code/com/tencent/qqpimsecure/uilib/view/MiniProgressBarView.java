package com.tencent.qqpimsecure.uilib.view;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;

public class MiniProgressBarView extends LinearLayout
{
  private static final int MSG_PROGRESS_ANIM = 1;
  private int mCurrentProgress;
  private Handler mHandler = new MiniProgressBarView.1(this);
  private onAnimationFinishListener mOnAnimationFinishListener;
  private MiniProgressBar mProgressBar;
  private int mTargetProgress;

  public MiniProgressBarView(Context paramContext)
  {
    super(paramContext);
    initView(paramContext);
  }

  public MiniProgressBarView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initView(paramContext);
  }

  private void initView(Context paramContext)
  {
    addView(LayoutInflater.from(paramContext).inflate(2130903227, null), new LinearLayout.LayoutParams(-1, -2));
    this.mProgressBar = ((MiniProgressBar)findViewById(2131231278));
  }

  public void setProgress(int paramInt)
  {
    try
    {
      MiniProgressBar localMiniProgressBar = this.mProgressBar;
      if (localMiniProgressBar == null);
      while (true)
      {
        return;
        if (paramInt < 0)
          paramInt = 0;
        this.mProgressBar.setProgress(paramInt);
        this.mCurrentProgress = paramInt;
      }
    }
    finally
    {
    }
  }

  public void setProgressWithAnim(int paramInt)
  {
    try
    {
      this.mTargetProgress = paramInt;
      this.mHandler.sendEmptyMessage(1);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setProgressWithAnim(int paramInt, onAnimationFinishListener paramonAnimationFinishListener)
  {
    try
    {
      this.mTargetProgress = paramInt;
      this.mOnAnimationFinishListener = paramonAnimationFinishListener;
      this.mHandler.sendEmptyMessage(1);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static abstract class onAnimationFinishListener
  {
    public abstract void onAnimationFinish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.MiniProgressBarView
 * JD-Core Version:    0.6.2
 */