package org.achartengine.a;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import org.achartengine.renderer.b;
import org.achartengine.renderer.c;

public abstract class e extends a
{
  protected static final int a = 10;
  protected static final int d = 2147483647;
  private static final long g = 7100286151341470166L;
  protected org.achartengine.b.a b;
  protected b c;
  protected int e = 2147483647;
  protected int f = 2147483647;

  private e(org.achartengine.b.a parama, b paramb)
  {
    this.b = parama;
    this.c = paramb;
  }

  private void a(Canvas paramCanvas, int paramInt1, int paramInt2, int paramInt3, Paint paramPaint)
  {
    if (this.c.isShowLabels())
    {
      paramPaint.setColor(this.c.getLabelsColor());
      paramPaint.setTextAlign(Paint.Align.CENTER);
      paramPaint.setTextSize(this.c.getChartTitleTextSize());
      paramCanvas.drawText(this.c.getChartTitle(), paramInt1 + paramInt3 / 2, paramInt2 + this.c.getChartTitleTextSize(), paramPaint);
    }
  }

  public final int a()
  {
    return 10;
  }

  public final void a(int paramInt)
  {
    this.e = paramInt;
  }

  public final void a(Canvas paramCanvas, c paramc, float paramFloat1, float paramFloat2, Paint paramPaint)
  {
    paramCanvas.drawRect(paramFloat1, paramFloat2 - 5.0F, paramFloat1 + 10.0F, paramFloat2 + 5.0F, paramPaint);
  }

  public final b b()
  {
    return this.c;
  }

  public final void b(int paramInt)
  {
    this.f = paramInt;
  }

  public final int c()
  {
    return this.e;
  }

  public final int d()
  {
    return this.f;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     org.achartengine.a.e
 * JD-Core Version:    0.6.2
 */