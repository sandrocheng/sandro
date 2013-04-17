package com.tencent.qqpimsecure.uilib.view.software;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.util.AttributeSet;
import android.view.View;

public class PureColorAreaView extends View
{
  private int mColor;
  private Paint mPaint;

  public PureColorAreaView(Context paramContext, int paramInt)
  {
    super(paramContext);
    setColor(paramInt);
    init();
  }

  public PureColorAreaView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  public PureColorAreaView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }

  private void init()
  {
    this.mPaint = new Paint();
    this.mPaint.setAntiAlias(true);
    this.mPaint.setStyle(Paint.Style.FILL);
    this.mPaint.setStrokeWidth(1.0F);
  }

  protected void onDraw(Canvas paramCanvas)
  {
    paramCanvas.drawColor(this.mColor);
  }

  public void setColor(int paramInt)
  {
    this.mColor = paramInt;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.software.PureColorAreaView
 * JD-Core Version:    0.6.2
 */