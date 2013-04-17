package com.tencent.qqpimsecure.uilib.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.tencent.tmsecure.common.TMSApplication;

public class ProgressBarView extends LinearLayout
{
  private static final int MSG_PROGRESS_ANIM = 1;
  private static final int MSG_SET_PROGRESS = 2;
  private boolean isGreedPar = true;
  private int mAnimToProgress;
  private int mCurrentProgress;
  private Handler mHandler = new ProgressBarView.1(this);
  private onAnimationFinishListener mOnAnimationFinishListener;
  private ProgressBar mProgressBar = null;
  private TextView mProgressText = null;
  private TextView mSummaryText = null;
  private int mTargetProgress;

  public ProgressBarView(Context paramContext)
  {
    super(paramContext);
    initProgressBar(paramContext);
  }

  public ProgressBarView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initProgressBar(paramContext);
  }

  private void initProgressBar(Context paramContext)
  {
    View localView = LayoutInflater.from(paramContext).inflate(2130903226, null);
    addView(localView, new LinearLayout.LayoutParams(-1, -2));
    this.mProgressBar = ((ProgressBar)localView.findViewById(2131231275));
    this.mProgressText = ((TextView)localView.findViewById(2131231276));
    this.mSummaryText = ((TextView)localView.findViewById(2131231277));
  }

  public int getProgress()
  {
    return this.mCurrentProgress;
  }

  public void setBlueProgressDrawable()
  {
    if (this.isGreedPar)
    {
      this.mProgressBar.setProgressDrawable(TMSApplication.getApplicaionContext().getResources().getDrawable(2130838170));
      this.isGreedPar = false;
    }
  }

  public void setGreedProgressDrawable()
  {
    if (!this.isGreedPar)
    {
      this.mProgressBar.setProgressDrawable(TMSApplication.getApplicaionContext().getResources().getDrawable(2130838174));
      this.isGreedPar = true;
    }
  }

  public void setProgress(int paramInt)
  {
    while (true)
    {
      try
      {
        ProgressBar localProgressBar = this.mProgressBar;
        if (localProgressBar == null)
          return;
        if (paramInt >= 0)
        {
          this.mProgressBar.setProgress(paramInt);
          this.mProgressBar.setSecondaryProgress(paramInt);
          this.mProgressText.setText(paramInt + "%");
          this.mCurrentProgress = paramInt;
          continue;
        }
      }
      finally
      {
      }
      this.mProgressText.setText("");
      this.mProgressBar.setProgress(100);
      this.mProgressBar.setSecondaryProgress(100);
    }
  }

  public void setProgressDrawable(int paramInt)
  {
    this.mProgressBar.setProgressDrawable(TMSApplication.getApplicaionContext().getResources().getDrawable(paramInt));
    this.isGreedPar = true;
  }

  public void setProgressTextVisible(int paramInt)
  {
    this.mProgressText.setVisibility(paramInt);
  }

  public void setProgressWithAnim(int paramInt)
  {
    try
    {
      this.mTargetProgress = paramInt;
      if (this.mCurrentProgress > paramInt)
        setProgress(paramInt);
      while (true)
      {
        return;
        if (this.mCurrentProgress != paramInt)
          this.mHandler.sendEmptyMessageDelayed(2, 2L);
      }
    }
    finally
    {
    }
  }

  public void setProgressWithAnim(int paramInt, onAnimationFinishListener paramonAnimationFinishListener)
  {
    try
    {
      this.mOnAnimationFinishListener = paramonAnimationFinishListener;
      setProgressWithAnim(paramInt);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setSummaryText(String paramString)
  {
    if (paramString != null)
    {
      this.mSummaryText.setText(paramString);
      this.mSummaryText.setVisibility(0);
    }
    while (true)
    {
      return;
      this.mSummaryText.setVisibility(8);
    }
  }

  public void startAnimation()
  {
    AnimationDrawable localAnimationDrawable = (AnimationDrawable)((LayerDrawable)this.mProgressBar.getProgressDrawable()).findDrawableByLayerId(16908301);
    localAnimationDrawable.setOneShot(false);
    localAnimationDrawable.start();
  }

  public void startAnimation(int paramInt, onAnimationFinishListener paramonAnimationFinishListener)
  {
    this.mAnimToProgress = paramInt;
    this.mOnAnimationFinishListener = paramonAnimationFinishListener;
    this.mHandler.sendEmptyMessage(1);
  }

  public void stopAnimation()
  {
    ((AnimationDrawable)((LayerDrawable)this.mProgressBar.getProgressDrawable()).findDrawableByLayerId(16908301)).stop();
  }

  public static abstract class onAnimationFinishListener
  {
    public abstract void onAnimationFinish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.ProgressBarView
 * JD-Core Version:    0.6.2
 */