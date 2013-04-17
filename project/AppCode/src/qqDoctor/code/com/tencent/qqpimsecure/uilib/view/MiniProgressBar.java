package com.tencent.qqpimsecure.uilib.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import ec;

public class MiniProgressBar extends LinearLayout
{
  private int mCurrentProgress;
  private Path mPath = new Path();

  public MiniProgressBar(Context paramContext)
  {
    super(paramContext);
    initView(paramContext);
  }

  public MiniProgressBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initView(paramContext);
  }

  private void cutCanvas(Canvas paramCanvas)
  {
    paramCanvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
    int i = getHeight();
    int j = i / 2;
    int k = this.mCurrentProgress * getWidth() / 100;
    this.mPath.reset();
    this.mPath.moveTo(0.0F, 0.0F);
    this.mPath.lineTo(k - j, 0.0F);
    RectF localRectF = new RectF(k - i, 0.0F, k, i);
    this.mPath.arcTo(localRectF, -90.0F, 180.0F);
    this.mPath.lineTo(0.0F, i);
    this.mPath.close();
    paramCanvas.clipPath(this.mPath);
    paramCanvas.save();
  }

  private void initView(Context paramContext)
  {
    ImageView localImageView = new ImageView(paramContext);
    localImageView.setImageResource(2130837652);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    localImageView.setScaleType(ImageView.ScaleType.FIT_XY);
    addView(localImageView, localLayoutParams);
    ec.a();
    ec.a(this);
  }

  protected void dispatchDraw(Canvas paramCanvas)
  {
    cutCanvas(paramCanvas);
    super.dispatchDraw(paramCanvas);
  }

  public void setProgress(int paramInt)
  {
    this.mCurrentProgress = paramInt;
    invalidate();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.MiniProgressBar
 * JD-Core Version:    0.6.2
 */