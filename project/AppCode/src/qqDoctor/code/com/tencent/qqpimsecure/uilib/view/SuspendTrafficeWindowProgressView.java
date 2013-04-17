package com.tencent.qqpimsecure.uilib.view;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;

public class SuspendTrafficeWindowProgressView extends LinearLayout
{
  private Context mContext;
  private int mProgress;
  private ImageView mProgressView;

  public SuspendTrafficeWindowProgressView(Context paramContext)
  {
    super(paramContext);
    this.mContext = paramContext;
    this.mProgress = 0;
    initView();
  }

  public SuspendTrafficeWindowProgressView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
    this.mProgress = 0;
    initView();
  }

  private void cutCanvas(Canvas paramCanvas)
  {
    paramCanvas.clipRect(0, 0, this.mProgress * getWidth() / 100, getHeight());
  }

  private void initView()
  {
    this.mProgressView = new ImageView(this.mContext);
    this.mProgressView.setImageResource(2130837620);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    this.mProgressView.setScaleType(ImageView.ScaleType.FIT_XY);
    addView(this.mProgressView, localLayoutParams);
  }

  protected void dispatchDraw(Canvas paramCanvas)
  {
    paramCanvas.clipRect(0, 0, this.mProgress * getWidth() / 100, getHeight());
    super.dispatchDraw(paramCanvas);
  }

  public void setGreenLevel()
  {
    this.mProgressView.setImageResource(2130837620);
  }

  public void setProgress(int paramInt)
  {
    try
    {
      this.mProgress = paramInt;
      invalidate();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setRedLevel()
  {
    this.mProgressView.setImageResource(2130837621);
  }

  public void setYellowLevel()
  {
    this.mProgressView.setImageResource(2130837622);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.SuspendTrafficeWindowProgressView
 * JD-Core Version:    0.6.2
 */