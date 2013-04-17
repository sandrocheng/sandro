package com.tencent.qqpimsecure.uilib.view.dialog;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.ProgressBarView;

public class ProgressDialog extends Dialog
{
  public static final int Bar_Type = 1;
  public static final int Circle_Type;
  private LinearLayout mBarContentLayout = null;
  private TextView mBarMessage = null;
  private LinearLayout mCircleContentLayout = null;
  private TextView mCircleMessage = null;
  private boolean mIsShowProgress = true;
  private ProgressBarView mProgressBar = null;
  private ImageView mProgressCircle = null;
  private int mType = -1;

  public ProgressDialog(Context paramContext, int paramInt)
  {
    super(paramContext);
    initProgressDialog();
    setType(paramInt);
    this.mType = paramInt;
  }

  private void initProgressDialog()
  {
    this.mCircleContentLayout = new LinearLayout(this.mContext);
    this.mCircleContentLayout.setOrientation(0);
    LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(-1, -2);
    localLayoutParams1.gravity = 17;
    this.mCircleContentLayout.setLayoutParams(localLayoutParams1);
    this.mProgressCircle = new ImageView(this.mContext);
    this.mProgressCircle.setImageResource(2130838303);
    Animation localAnimation = AnimationUtils.loadAnimation(this.mContext, 2130968595);
    localAnimation.setInterpolator(new LinearInterpolator());
    localAnimation.setStartOffset(0L);
    this.mProgressCircle.startAnimation(localAnimation);
    LinearLayout.LayoutParams localLayoutParams2 = new LinearLayout.LayoutParams(-1, -2);
    localLayoutParams2.gravity = 17;
    this.mCircleContentLayout.addView(this.mProgressCircle, localLayoutParams2);
    this.mCircleMessage = new TextView(this.mContext);
    this.mCircleMessage.setTextColor(this.mContext.getResources().getColor(2131296285));
    this.mCircleMessage.setTextSize(15.0F);
    LinearLayout.LayoutParams localLayoutParams3 = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams3.leftMargin = 5;
    this.mCircleContentLayout.addView(this.mCircleMessage, localLayoutParams3);
    this.mBarContentLayout = new LinearLayout(this.mContext);
    this.mBarContentLayout.setOrientation(1);
    this.mBarContentLayout.setMinimumWidth((int)(0.5F + 200.0F * this.mContext.getResources().getDisplayMetrics().density));
    LinearLayout.LayoutParams localLayoutParams4 = new LinearLayout.LayoutParams(-1, -2);
    localLayoutParams4.gravity = 3;
    this.mBarContentLayout.setLayoutParams(localLayoutParams4);
    this.mBarMessage = new TextView(this.mContext);
    this.mBarMessage.setTextColor(this.mContext.getResources().getColor(2131296285));
    this.mBarMessage.setTextSize(15.0F);
    LinearLayout.LayoutParams localLayoutParams5 = new LinearLayout.LayoutParams(-2, -2);
    this.mBarContentLayout.addView(this.mBarMessage, localLayoutParams5);
    this.mProgressBar = new ProgressBarView(this.mContext);
    LinearLayout.LayoutParams localLayoutParams6 = new LinearLayout.LayoutParams(-1, -2);
    localLayoutParams6.topMargin = 5;
    this.mBarContentLayout.addView(this.mProgressBar, localLayoutParams6);
  }

  public void addProgressDialog()
  {
  }

  public void removeProgressDialog()
  {
  }

  public void setMessage(CharSequence paramCharSequence)
  {
    this.mCircleMessage.setText(paramCharSequence);
    this.mBarMessage.setText(paramCharSequence);
  }

  public void setProgress(int paramInt)
  {
    if (this.mType == 1)
      this.mProgressBar.setProgress(paramInt);
  }

  public void setProgressBarVisible(boolean paramBoolean)
  {
    if (this.mIsShowProgress != paramBoolean)
    {
      this.mIsShowProgress = paramBoolean;
      if (this.mIsShowProgress)
        break label39;
      this.mProgressCircle.setVisibility(8);
      this.mProgressBar.setVisibility(8);
    }
    while (true)
    {
      return;
      label39: this.mProgressCircle.setVisibility(0);
      this.mProgressBar.setVisibility(0);
    }
  }

  public void setType(int paramInt)
  {
    if (this.mType == paramInt);
    while (true)
    {
      return;
      this.mType = paramInt;
      this.bodyLayout.removeAllViews();
      if (this.mType == 0)
        this.bodyLayout.addView(this.mCircleContentLayout);
      else
        this.bodyLayout.addView(this.mBarContentLayout);
    }
  }

  public void startProgressAnimation()
  {
    this.mProgressBar.startAnimation();
  }

  public void stopProgressAnimation()
  {
    this.mProgressBar.stopAnimation();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.dialog.ProgressDialog
 * JD-Core Version:    0.6.2
 */