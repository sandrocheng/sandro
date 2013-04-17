package com.tencent.qqpimsecure.uilib.view.software;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.util.DisplayMetrics;
import android.view.View;

public class RingView extends View
{
  private Paint mPaint;
  private int mRingBgColor = 0;
  private int mRingFrontColor = 16777215;
  private int mRingHeight;
  private float mRingPercent;
  private int mRingSize;
  private int mRingWidth;

  public RingView(Context paramContext, int paramInt1, int paramInt2, int paramInt3)
  {
    super(paramContext);
    this.mRingWidth = ((int)(0.5F + paramInt1 * paramContext.getResources().getDisplayMetrics().density));
    this.mRingHeight = ((int)(0.5F + paramInt2 * paramContext.getResources().getDisplayMetrics().density));
    this.mRingSize = ((int)(0.5F + paramInt3 * paramContext.getResources().getDisplayMetrics().density));
    init();
  }

  private void init()
  {
    this.mPaint = new Paint();
    this.mPaint.setAntiAlias(true);
    this.mPaint.setStyle(Paint.Style.STROKE);
    this.mPaint.setStrokeWidth(this.mRingSize);
  }

  protected void onDraw(Canvas paramCanvas)
  {
    int i = (1 + this.mRingSize) / 2;
    RectF localRectF = new RectF(i, i, this.mRingWidth - i, this.mRingHeight - i);
    this.mPaint.setColor(this.mRingBgColor);
    paramCanvas.drawArc(localRectF, 0.0F, 360.0F, false, this.mPaint);
    this.mPaint.setColor(this.mRingFrontColor);
    paramCanvas.drawArc(localRectF, -90.0F, 360.0F * this.mRingPercent / 100.0F, false, this.mPaint);
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(this.mRingWidth, this.mRingHeight);
  }

  public void setRingColor(int paramInt1, int paramInt2)
  {
    this.mRingBgColor = paramInt1;
    this.mRingFrontColor = paramInt2;
  }

  public void setRingPercent(float paramFloat)
  {
    if (paramFloat < 0.0F)
      paramFloat = 0.0F;
    while (true)
    {
      this.mRingPercent = paramFloat;
      invalidate();
      return;
      if (paramFloat > 100.0F)
        paramFloat = 100.0F;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.software.RingView
 * JD-Core Version:    0.6.2
 */