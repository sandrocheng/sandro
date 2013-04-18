package org.achartengine.a;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import org.achartengine.renderer.XYMultipleSeriesRenderer;
import org.achartengine.renderer.e;

public final class f extends h
{
  public static final String a = "Scatter";
  private static final long b = -5774401867865935156L;
  private static final float e = 3.0F;
  private static final int f = 10;
  private float g = 3.0F;

  f()
  {
  }

  private f(org.achartengine.b.c paramc, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer)
  {
    super(paramc, paramXYMultipleSeriesRenderer);
    this.g = paramXYMultipleSeriesRenderer.getPointSize();
  }

  private void a(Canvas paramCanvas, Paint paramPaint, float paramFloat1, float paramFloat2)
  {
    paramCanvas.drawLine(paramFloat1 - this.g, paramFloat2 - this.g, paramFloat1 + this.g, paramFloat2 + this.g, paramPaint);
    paramCanvas.drawLine(paramFloat1 + this.g, paramFloat2 - this.g, paramFloat1 - this.g, paramFloat2 + this.g, paramPaint);
  }

  private void a(Canvas paramCanvas, Paint paramPaint, float[] paramArrayOfFloat, float paramFloat1, float paramFloat2)
  {
    paramArrayOfFloat[0] = paramFloat1;
    paramArrayOfFloat[1] = (paramFloat2 - this.g - this.g / 2.0F);
    paramArrayOfFloat[2] = (paramFloat1 - this.g);
    paramArrayOfFloat[3] = (paramFloat2 + this.g);
    paramArrayOfFloat[4] = (paramFloat1 + this.g);
    paramArrayOfFloat[5] = paramArrayOfFloat[3];
    a(paramCanvas, paramArrayOfFloat, paramPaint);
  }

  private void b(Canvas paramCanvas, Paint paramPaint, float paramFloat1, float paramFloat2)
  {
    paramCanvas.drawCircle(paramFloat1, paramFloat2, this.g, paramPaint);
  }

  private void b(Canvas paramCanvas, Paint paramPaint, float[] paramArrayOfFloat, float paramFloat1, float paramFloat2)
  {
    paramArrayOfFloat[0] = paramFloat1;
    paramArrayOfFloat[1] = (paramFloat2 - this.g);
    paramArrayOfFloat[2] = (paramFloat1 - this.g);
    paramArrayOfFloat[3] = paramFloat2;
    paramArrayOfFloat[4] = paramFloat1;
    paramArrayOfFloat[5] = (paramFloat2 + this.g);
    paramArrayOfFloat[6] = (paramFloat1 + this.g);
    paramArrayOfFloat[7] = paramFloat2;
    a(paramCanvas, paramArrayOfFloat, paramPaint);
  }

  private void c(Canvas paramCanvas, Paint paramPaint, float paramFloat1, float paramFloat2)
  {
    paramCanvas.drawRect(paramFloat1 - this.g, paramFloat2 - this.g, paramFloat1 + this.g, paramFloat2 + this.g, paramPaint);
  }

  public final int a()
  {
    return 10;
  }

  public final void a(Canvas paramCanvas, Paint paramPaint, float[] paramArrayOfFloat, org.achartengine.renderer.c paramc, float paramFloat, int paramInt)
  {
    e locale = (e)paramc;
    paramPaint.setColor(locale.a());
    int i;
    if (locale.o())
    {
      paramPaint.setStyle(Paint.Style.FILL);
      i = paramArrayOfFloat.length;
      switch (g.a[locale.p().ordinal()])
      {
      default:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      }
    }
    while (true)
    {
      return;
      paramPaint.setStyle(Paint.Style.STROKE);
      break;
      for (int i1 = 0; i1 < i; i1 += 2)
        a(paramCanvas, paramPaint, paramArrayOfFloat[i1], paramArrayOfFloat[(i1 + 1)]);
      continue;
      for (int n = 0; n < i; n += 2)
        b(paramCanvas, paramPaint, paramArrayOfFloat[n], paramArrayOfFloat[(n + 1)]);
      continue;
      float[] arrayOfFloat2 = new float[6];
      for (int m = 0; m < i; m += 2)
        a(paramCanvas, paramPaint, arrayOfFloat2, paramArrayOfFloat[m], paramArrayOfFloat[(m + 1)]);
      continue;
      for (int k = 0; k < i; k += 2)
        c(paramCanvas, paramPaint, paramArrayOfFloat[k], paramArrayOfFloat[(k + 1)]);
      continue;
      float[] arrayOfFloat1 = new float[8];
      for (int j = 0; j < i; j += 2)
        b(paramCanvas, paramPaint, arrayOfFloat1, paramArrayOfFloat[j], paramArrayOfFloat[(j + 1)]);
      continue;
      paramCanvas.drawPoints(paramArrayOfFloat, paramPaint);
    }
  }

  public final void a(Canvas paramCanvas, org.achartengine.renderer.c paramc, float paramFloat1, float paramFloat2, Paint paramPaint)
  {
    if (((e)paramc).o())
    {
      paramPaint.setStyle(Paint.Style.FILL);
      switch (g.a[((e)paramc).p().ordinal()])
      {
      default:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      }
    }
    while (true)
    {
      return;
      paramPaint.setStyle(Paint.Style.STROKE);
      break;
      a(paramCanvas, paramPaint, paramFloat1 + 10.0F, paramFloat2);
      continue;
      b(paramCanvas, paramPaint, paramFloat1 + 10.0F, paramFloat2);
      continue;
      a(paramCanvas, paramPaint, new float[6], paramFloat1 + 10.0F, paramFloat2);
      continue;
      c(paramCanvas, paramPaint, paramFloat1 + 10.0F, paramFloat2);
      continue;
      b(paramCanvas, paramPaint, new float[8], paramFloat1 + 10.0F, paramFloat2);
      continue;
      paramCanvas.drawPoint(paramFloat1 + 10.0F, paramFloat2, paramPaint);
    }
  }

  protected final void a(org.achartengine.b.c paramc, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer)
  {
    super.a(paramc, paramXYMultipleSeriesRenderer);
    this.g = paramXYMultipleSeriesRenderer.getPointSize();
  }

  protected final RectF[] a(float[] paramArrayOfFloat, float paramFloat, int paramInt)
  {
    int i = paramArrayOfFloat.length;
    RectF[] arrayOfRectF = new RectF[i / 2];
    for (int j = 0; j < i; j += 2)
    {
      int k = this.d.getSelectableBuffer();
      arrayOfRectF[(j / 2)] = new RectF(paramArrayOfFloat[j] - k, paramArrayOfFloat[(j + 1)] - k, paramArrayOfFloat[j] + k, paramArrayOfFloat[(j + 1)] + k);
    }
    return arrayOfRectF;
  }

  public final String d()
  {
    return "Scatter";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     org.achartengine.a.f
 * JD-Core Version:    0.6.2
 */