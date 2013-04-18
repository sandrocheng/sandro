package org.achartengine.a;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.GradientDrawable.Orientation;
import org.achartengine.b.d;
import org.achartengine.renderer.XYMultipleSeriesRenderer;

public final class b extends h
{
  public static final String a = "Bar";
  private static final long e = -4706750128528485099L;
  private static final int f = 12;
  protected c b = c.a;

  b()
  {
  }

  public b(org.achartengine.b.c paramc, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer, c paramc1)
  {
    super(paramc, paramXYMultipleSeriesRenderer);
    this.b = paramc1;
  }

  private float a(float[] paramArrayOfFloat, int paramInt1, int paramInt2)
  {
    if (paramInt1 > 2);
    for (int i = paramInt1 - 2; ; i = paramInt1)
    {
      float f1 = (paramArrayOfFloat[(paramInt1 - 2)] - paramArrayOfFloat[0]) / i;
      if (f1 == 0.0F)
        f1 = 10.0F;
      if (this.b != c.b)
        f1 /= paramInt2;
      return (float)(f1 / (1.0D * (1.0D + this.d.getBarSpacing())));
    }
  }

  private static int a(int paramInt1, int paramInt2, float paramFloat)
  {
    return Color.argb(Math.round(paramFloat * Color.alpha(paramInt1) + (1.0F - paramFloat) * Color.alpha(paramInt2)), Math.round(paramFloat * Color.red(paramInt1) + (1.0F - paramFloat) * Color.red(paramInt2)), Math.round(paramFloat * Color.green(paramInt1) + (1.0F - paramFloat) * Color.green(paramInt2)), Math.round(paramFloat * Color.blue(paramInt1) + (1.0F - paramFloat) * Color.blue(paramInt2)));
  }

  private void a(Canvas paramCanvas, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, int paramInt1, int paramInt2, Paint paramPaint)
  {
    int i = this.c.a(paramInt2).a();
    if (this.b == c.b)
      a(paramCanvas, paramFloat1 - paramFloat5, paramFloat4, paramFloat3 + paramFloat5, paramFloat2, i, paramInt2, paramPaint);
    while (true)
    {
      return;
      float f1 = paramFloat1 - paramFloat5 * paramInt1 + paramFloat5 * (paramInt2 * 2);
      a(paramCanvas, f1, paramFloat4, f1 + 2.0F * paramFloat5, paramFloat2, i, paramInt2, paramPaint);
    }
  }

  private void a(Canvas paramCanvas, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt1, int paramInt2, Paint paramPaint)
  {
    org.achartengine.renderer.c localc = this.d.getSeriesRendererAt(paramInt2);
    float f1;
    float f2;
    float f3;
    float f4;
    int i;
    int j;
    int k;
    int m;
    if (localc.j())
    {
      double[] arrayOfDouble1 = new double[2];
      arrayOfDouble1[0] = 0.0D;
      arrayOfDouble1[1] = localc.m();
      f1 = (float)a(arrayOfDouble1, paramInt1)[1];
      double[] arrayOfDouble2 = new double[2];
      arrayOfDouble2[0] = 0.0D;
      arrayOfDouble2[1] = localc.k();
      f2 = (float)a(arrayOfDouble2, paramInt1)[1];
      f3 = Math.max(f1, paramFloat2);
      f4 = Math.min(f2, paramFloat4);
      i = localc.n();
      j = localc.l();
      if (paramFloat2 < f1)
      {
        paramPaint.setColor(i);
        paramCanvas.drawRect(Math.round(paramFloat1), Math.round(paramFloat2), Math.round(paramFloat3), Math.round(f3), paramPaint);
        k = i;
        if (paramFloat4 <= f2)
          break label287;
        paramPaint.setColor(j);
        paramCanvas.drawRect(Math.round(paramFloat1), Math.round(f4), Math.round(paramFloat3), Math.round(paramFloat4), paramPaint);
        m = j;
        label208: GradientDrawable localGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, new int[] { m, k });
        localGradientDrawable.setBounds(Math.round(paramFloat1), Math.round(f3), Math.round(paramFloat3), Math.round(f4));
        localGradientDrawable.draw(paramCanvas);
      }
    }
    while (true)
    {
      return;
      k = a(i, j, (f2 - f3) / (f2 - f1));
      break;
      label287: m = a(j, i, (f4 - f1) / (f2 - f1));
      break label208;
      paramCanvas.drawRect(Math.round(paramFloat1), Math.round(paramFloat2), Math.round(paramFloat3), Math.round(paramFloat4), paramPaint);
    }
  }

  private static float f()
  {
    return 1.0F;
  }

  public final int a()
  {
    return 12;
  }

  public final void a(Canvas paramCanvas, Paint paramPaint, float[] paramArrayOfFloat, org.achartengine.renderer.c paramc, float paramFloat, int paramInt)
  {
    int i = this.c.a();
    int j = paramArrayOfFloat.length;
    paramPaint.setColor(paramc.a());
    paramPaint.setStyle(Paint.Style.FILL);
    float f1 = a(paramArrayOfFloat, j, i);
    int k = 0;
    if (k < j)
    {
      float f2 = paramArrayOfFloat[k];
      float f3 = paramArrayOfFloat[(k + 1)];
      int m = this.c.a(paramInt).a();
      if (this.b == c.b)
        a(paramCanvas, f2 - f1, f3, f2 + f1, paramFloat, m, paramInt, paramPaint);
      while (true)
      {
        k += 2;
        break;
        float f4 = f2 - f1 * i + f1 * (paramInt * 2);
        a(paramCanvas, f4, f3, f4 + 2.0F * f1, paramFloat, m, paramInt, paramPaint);
      }
    }
    paramPaint.setColor(paramc.a());
  }

  protected final void a(Canvas paramCanvas, d paramd, org.achartengine.renderer.c paramc, Paint paramPaint, float[] paramArrayOfFloat, int paramInt)
  {
    int i = this.c.a();
    float f1 = a(paramArrayOfFloat, paramArrayOfFloat.length, i);
    int j = 0;
    int k;
    float f2;
    if (j < paramArrayOfFloat.length)
    {
      k = j / 2;
      if (paramd.b(k) != 1.7976931348623157E+308D)
      {
        f2 = paramArrayOfFloat[j];
        if (this.b != c.a)
          break label130;
      }
    }
    label130: for (float f3 = f2 + (f1 * (paramInt * 2) - f1 * (i - 1.5F)); ; f3 = f2)
    {
      a(paramCanvas, a(paramd.b(k)), f3, paramArrayOfFloat[(j + 1)] - paramc.h(), paramPaint, 0.0F);
      j += 2;
      break;
      return;
    }
  }

  public final void a(Canvas paramCanvas, org.achartengine.renderer.c paramc, float paramFloat1, float paramFloat2, Paint paramPaint)
  {
    paramCanvas.drawRect(paramFloat1, paramFloat2 - 6.0F, paramFloat1 + 12.0F, paramFloat2 + 6.0F, paramPaint);
  }

  protected final RectF[] a(float[] paramArrayOfFloat, float paramFloat, int paramInt)
  {
    int i = this.c.a();
    int j = paramArrayOfFloat.length;
    RectF[] arrayOfRectF = new RectF[j / 2];
    float f1 = a(paramArrayOfFloat, j, i);
    int k = 0;
    if (k < j)
    {
      float f2 = paramArrayOfFloat[k];
      float f3 = paramArrayOfFloat[(k + 1)];
      if (this.b == c.b)
        arrayOfRectF[(k / 2)] = new RectF(f2 - f1, f3, f2 + f1, paramFloat);
      while (true)
      {
        k += 2;
        break;
        float f4 = f2 - f1 * i + f1 * (paramInt * 2);
        arrayOfRectF[(k / 2)] = new RectF(f4, f3, f4 + 2.0F * f1, paramFloat);
      }
    }
    return arrayOfRectF;
  }

  protected final boolean b()
  {
    return true;
  }

  public final double c()
  {
    return 0.0D;
  }

  public final String d()
  {
    return "Bar";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     org.achartengine.a.b
 * JD-Core Version:    0.6.2
 */