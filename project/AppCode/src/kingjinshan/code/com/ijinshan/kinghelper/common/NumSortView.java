package com.ijinshan.kinghelper.common;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;

public class NumSortView extends View
{
  c a;
  String[] b = { "#", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z" };
  int c = -1;
  Paint d = new Paint();
  boolean e = false;

  private NumSortView(Context paramContext)
  {
    super(paramContext);
  }

  public NumSortView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public NumSortView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public final void a(c paramc)
  {
    this.a = paramc;
  }

  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    float f = paramMotionEvent.getY();
    int j = this.c;
    c localc = this.a;
    int k = (int)(f / getHeight() * this.b.length);
    switch (i)
    {
    default:
    case 0:
    case 2:
    case 1:
    }
    while (true)
    {
      return true;
      this.e = true;
      if ((j != k) && (localc != null) && (k > 0) && (k < this.b.length))
      {
        localc.a(this.b[k]);
        this.c = k;
        invalidate();
        continue;
        if ((j != k) && (localc != null) && (k > 0) && (k < this.b.length))
        {
          localc.a(this.b[k]);
          this.c = k;
          invalidate();
          continue;
          this.e = false;
          this.c = -1;
          invalidate();
        }
      }
    }
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (this.e)
      paramCanvas.drawColor(Color.parseColor("#40000000"));
    int i = getHeight() - 2;
    int j = getWidth();
    int k = i / this.b.length;
    for (int m = 0; m < this.b.length; m++)
    {
      this.d.setColor(-1);
      this.d.setTypeface(Typeface.DEFAULT_BOLD);
      this.d.setAntiAlias(true);
      if (m == this.c)
      {
        this.d.setColor(Color.parseColor("#3399ff"));
        this.d.setFakeBoldText(true);
      }
      this.d.setTextSize(j / 3);
      float f1 = j / 2 - this.d.measureText(this.b[m]) / 2.0F;
      float f2 = k + k * m;
      paramCanvas.drawText(this.b[m], f1, f2, this.d);
      this.d.reset();
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return super.onTouchEvent(paramMotionEvent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.common.NumSortView
 * JD-Core Version:    0.6.2
 */