package com.tencent.qqpimsecure.uilib.view.software;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.RectF;
import android.view.View;
import android.view.View.MeasureSpec;

public class PieView extends View
{
  private float[] mAngles;
  private int mBorderColor;
  private int[] mColors;
  private boolean mEnableBorder;
  private int mHeight;
  private int mOutsideRingColor;
  private int mOutsideRingSize;
  private Paint mPaint = new Paint();
  PaintFlagsDrawFilter mPaintFlagsDrawFilter = new PaintFlagsDrawFilter(0, 3);
  private int[] mShadeColors;
  private int mThickness;
  private int mWidth;

  public PieView(Context paramContext)
  {
    super(paramContext);
  }

  private void changeValueToAngle(float[] paramArrayOfFloat)
  {
    int i = 0;
    this.mAngles = new float[paramArrayOfFloat.length];
    int j = paramArrayOfFloat.length;
    float f1 = 0.0F;
    for (int k = 0; k < j; k++)
      f1 += paramArrayOfFloat[k];
    float f2 = 360.0F;
    while (i < -1 + paramArrayOfFloat.length)
    {
      this.mAngles[i] = (360.0F * paramArrayOfFloat[i] / f1);
      f2 -= this.mAngles[i];
      i++;
    }
    this.mAngles[i] = f2;
  }

  protected void onDraw(Canvas paramCanvas)
  {
    if (this.mAngles == null);
    while (true)
    {
      return;
      paramCanvas.setDrawFilter(this.mPaintFlagsDrawFilter);
      this.mPaint.setStrokeWidth(1.0F);
      this.mPaint.setStyle(Paint.Style.FILL);
      RectF localRectF1 = new RectF(1.0F, 1.0F, -1 + getWidth(), -1 + getHeight());
      this.mPaint.setColor(this.mOutsideRingColor);
      paramCanvas.drawArc(localRectF1, 0.0F, 360.0F, true, this.mPaint);
      int i = 1 + this.mOutsideRingSize;
      int j = -1 + (1 + this.mOutsideRingSize + this.mThickness);
      int k = -1 + (getWidth() - this.mOutsideRingSize);
      int m = -1 + (getHeight() - this.mOutsideRingSize);
      RectF localRectF2 = new RectF(i, j, k, m);
      for (int n = 0; n < this.mThickness; n++)
      {
        float f = 270.0F;
        int i1 = 0;
        if (i1 < this.mAngles.length)
        {
          if (n + 1 == this.mThickness)
            this.mPaint.setColor(this.mColors[i1]);
          while (true)
          {
            paramCanvas.drawArc(localRectF2, f, this.mAngles[i1], true, this.mPaint);
            f += this.mAngles[i1];
            i1++;
            break;
            this.mPaint.setColor(this.mShadeColors[i1]);
          }
        }
        localRectF2.top -= 1.0F;
        localRectF2.bottom -= 1.0F;
      }
      if (this.mEnableBorder)
      {
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setColor(this.mBorderColor);
        paramCanvas.drawArc(localRectF1, 0.0F, 360.0F, false, this.mPaint);
      }
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = this.mWidth;
    int j = this.mHeight;
    int k = View.MeasureSpec.getMode(paramInt1);
    int m = View.MeasureSpec.getMode(paramInt2);
    if (1073741824 == k)
    {
      i = View.MeasureSpec.getSize(paramInt1);
      if (1073741824 != m)
        break label78;
      j = View.MeasureSpec.getSize(paramInt2);
    }
    while (true)
    {
      setMeasuredDimension(i, j);
      return;
      if (-2147483648 != k)
        break;
      i = Math.min(this.mWidth, View.MeasureSpec.getSize(paramInt1));
      break;
      label78: if (-2147483648 == m)
        j = Math.min(this.mHeight, View.MeasureSpec.getSize(paramInt2));
    }
  }

  public void setBorderColor(int paramInt)
  {
    this.mEnableBorder = true;
    this.mBorderColor = paramInt;
  }

  public void setOutsideRing(int paramInt1, int paramInt2)
  {
    this.mOutsideRingColor = paramInt1;
    this.mOutsideRingSize = paramInt2;
  }

  public void setPiePerfectSize(int paramInt1, int paramInt2)
  {
    this.mWidth = paramInt1;
    this.mHeight = paramInt2;
  }

  public void setPieValues(float[] paramArrayOfFloat, int[] paramArrayOfInt)
  {
    setPieValues(paramArrayOfFloat, paramArrayOfInt, null, 1);
  }

  public void setPieValues(float[] paramArrayOfFloat, int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt)
  {
    this.mColors = paramArrayOfInt1;
    this.mShadeColors = paramArrayOfInt2;
    this.mThickness = paramInt;
    changeValueToAngle(paramArrayOfFloat);
    invalidate();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.software.PieView
 * JD-Core Version:    0.6.2
 */