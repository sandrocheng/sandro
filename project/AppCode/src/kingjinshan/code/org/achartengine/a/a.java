package org.achartengine.a;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import java.io.Serializable;
import java.util.List;
import org.achartengine.renderer.XYMultipleSeriesRenderer;
import org.achartengine.renderer.c;
import org.achartengine.renderer.d;

public abstract class a
  implements Serializable
{
  private static final long a = -869966226702110837L;

  protected static int a(org.achartengine.renderer.b paramb, int paramInt, float paramFloat)
  {
    int i = paramb.getLegendHeight();
    if ((paramb.isShowLegend()) && (i == 0))
      i = paramInt;
    if ((!paramb.isShowLegend()) && (paramb.isShowLabels()))
      i = (int)(paramFloat + 4.0F * paramb.getLabelsTextSize() / 3.0F);
    return i;
  }

  private static String a(String paramString, float paramFloat, Paint paramPaint)
  {
    int i = paramString.length();
    int j = 0;
    for (String str1 = paramString; (paramPaint.measureText(str1) > paramFloat) && (j < i); str1 = paramString.substring(0, i - j) + "...")
      j++;
    if (j == i);
    for (String str2 = "..."; ; str2 = str1)
      return str2;
  }

  private static void a(Canvas paramCanvas, String paramString, org.achartengine.renderer.b paramb, List paramList, int paramInt1, int paramInt2, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt3, int paramInt4, Paint paramPaint)
  {
    int i;
    int j;
    int k;
    float f1;
    float f2;
    float f3;
    float f4;
    String str1;
    if (paramb.isShowLabels())
    {
      paramPaint.setColor(paramb.getLabelsColor());
      double d1 = Math.toRadians(90.0F - (paramFloat3 + paramFloat4 / 2.0F));
      double d2 = Math.sin(d1);
      double d3 = Math.cos(d1);
      i = Math.round(paramInt1 + (float)(d2 * paramFloat1));
      j = Math.round(paramInt2 + (float)(d3 * paramFloat1));
      k = Math.round(paramInt1 + (float)(d2 * paramFloat2));
      int m = Math.round(paramInt2 + (float)(d3 * paramFloat2));
      f1 = paramb.getLabelsTextSize();
      f2 = Math.max(f1 / 2.0F, 10.0F);
      paramPaint.setTextAlign(Paint.Align.LEFT);
      if (i > k)
      {
        f2 = -f2;
        paramPaint.setTextAlign(Paint.Align.RIGHT);
      }
      f3 = f2 + k;
      f4 = m;
      float f5 = paramInt4 - f3;
      if (i > k)
        f5 = f3 - paramInt3;
      int n = paramString.length();
      int i1 = 0;
      for (str1 = paramString; (paramPaint.measureText(str1) > f5) && (i1 < n); str1 = paramString.substring(0, n - i1) + "...")
        i1++;
      if (i1 != n)
        break label531;
    }
    label520: label531: for (String str2 = "..."; ; str2 = str1)
    {
      float f6 = paramPaint.measureText(str2);
      int i2 = 0;
      float f7 = f4;
      int i5;
      int i6;
      float f10;
      label309: float f13;
      if (i2 == 0)
      {
        int i4 = paramList.size();
        i5 = 0;
        i6 = 0;
        f10 = f7;
        if ((i6 < i4) && (i5 == 0))
        {
          RectF localRectF2 = (RectF)paramList.get(i6);
          float f11 = f3 + f6;
          float f12 = f10 + f1;
          if (!localRectF2.intersects(f3, f10, f11, f12))
            break label520;
          f13 = Math.max(f10, localRectF2.bottom);
        }
      }
      for (int i8 = 1; ; i8 = i5)
      {
        i6++;
        i5 = i8;
        f10 = f13;
        break label309;
        if (i5 == 0);
        for (int i7 = 1; ; i7 = 0)
        {
          i2 = i7;
          f7 = f10;
          break;
        }
        int i3 = (int)(f7 - f1 / 2.0F);
        paramCanvas.drawLine(i, j, k, i3, paramPaint);
        paramCanvas.drawLine(k, i3, f2 + k, i3, paramPaint);
        paramCanvas.drawText(str2, f3, f7, paramPaint);
        float f8 = f3 + f6;
        float f9 = f1 + f7;
        RectF localRectF1 = new RectF(f3, f7, f8, f9);
        paramList.add(localRectF1);
        return;
        f13 = f10;
      }
    }
  }

  protected static void a(Canvas paramCanvas, float[] paramArrayOfFloat, Paint paramPaint)
  {
    Path localPath = new Path();
    localPath.moveTo(paramArrayOfFloat[0], paramArrayOfFloat[1]);
    for (int i = 2; i < paramArrayOfFloat.length; i += 2)
      localPath.lineTo(paramArrayOfFloat[i], paramArrayOfFloat[(i + 1)]);
    localPath.lineTo(paramArrayOfFloat[0], paramArrayOfFloat[1]);
    paramCanvas.drawPath(localPath, paramPaint);
  }

  protected static void a(org.achartengine.renderer.b paramb, Canvas paramCanvas, int paramInt1, int paramInt2, int paramInt3, int paramInt4, Paint paramPaint, boolean paramBoolean, int paramInt5)
  {
    if ((paramb.isApplyBackgroundColor()) || (paramBoolean))
    {
      if (!paramBoolean)
        break label53;
      paramPaint.setColor(paramInt5);
    }
    while (true)
    {
      paramPaint.setStyle(Paint.Style.FILL);
      paramCanvas.drawRect(paramInt1, paramInt2, paramInt1 + paramInt3, paramInt2 + paramInt4, paramPaint);
      return;
      label53: paramPaint.setColor(paramb.getBackgroundColor());
    }
  }

  private static boolean a(float paramFloat, org.achartengine.renderer.b paramb, int paramInt1, int paramInt2)
  {
    if (paramFloat > paramInt1)
    {
      bool = true;
      if (a(paramb))
        if (paramFloat <= paramInt2)
          break label36;
    }
    label36: for (boolean bool = true; ; bool = false)
    {
      return bool;
      bool = false;
      break;
    }
  }

  private static boolean a(org.achartengine.renderer.b paramb)
  {
    if (((paramb instanceof XYMultipleSeriesRenderer)) && (((XYMultipleSeriesRenderer)paramb).getOrientation() == d.b));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public abstract int a();

  protected final int a(Canvas paramCanvas, org.achartengine.renderer.b paramb, String[] paramArrayOfString, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, Paint paramPaint, boolean paramBoolean)
  {
    float f1 = 32.0F;
    float f3;
    int j;
    float f5;
    float f6;
    float f7;
    String str1;
    float[] arrayOfFloat;
    float f9;
    float f10;
    float f21;
    float f11;
    float f12;
    float f13;
    if (paramb.isShowLegend())
    {
      float f2 = paramInt1;
      f3 = 32.0F + (paramInt3 + paramInt5 - paramInt6);
      paramPaint.setTextAlign(Paint.Align.LEFT);
      paramPaint.setTextSize(paramb.getLegendTextSize());
      int i = Math.min(paramArrayOfString.length, paramb.getSeriesRendererCount());
      j = 0;
      float f4 = f1;
      f5 = f2;
      f6 = f4;
      if (j < i)
      {
        f7 = a();
        str1 = paramArrayOfString[j];
        if (paramArrayOfString.length == paramb.getSeriesRendererCount())
          paramPaint.setColor(paramb.getSeriesRendererAt(j).a());
        float f8;
        while (true)
        {
          arrayOfFloat = new float[str1.length()];
          paramPaint.getTextWidths(str1, arrayOfFloat);
          int k = arrayOfFloat.length;
          f8 = 0.0F;
          for (int m = 0; m < k; m++)
            f8 += arrayOfFloat[m];
          paramPaint.setColor(-3355444);
        }
        f9 = f8 + (10.0F + f7);
        f10 = f5 + f9;
        if ((j <= 0) || (!a(f10, paramb, paramInt2, paramInt4)))
          break label444;
        float f18 = paramInt1;
        float f19 = f3 + paramb.getLegendTextSize();
        float f20 = f6 + paramb.getLegendTextSize();
        f21 = f18 + f9;
        f11 = f20;
        f12 = f19;
        f13 = f18;
      }
    }
    for (float f14 = f21; ; f14 = f10)
    {
      int n;
      if (a(f14, paramb, paramInt2, paramInt4))
      {
        float f17 = paramInt2 - f13 - f7 - 10.0F;
        if (a(paramb))
          f17 = paramInt4 - f13 - f7 - 10.0F;
        n = paramPaint.breakText(str1, true, f17, arrayOfFloat);
      }
      for (String str2 = str1.substring(0, n) + "..."; ; str2 = str1)
      {
        if (!paramBoolean)
        {
          a(paramCanvas, paramb.getSeriesRendererAt(j), f13, f12, paramPaint);
          float f15 = 5.0F + (f13 + f7);
          float f16 = 5.0F + f12;
          paramCanvas.drawText(str2, f15, f16, paramPaint);
        }
        f5 = f13 + f9;
        j++;
        f3 = f12;
        f6 = f11;
        break;
        f1 = f6;
        return Math.round(f1 + paramb.getLegendTextSize());
      }
      label444: f11 = f6;
      f12 = f3;
      f13 = f5;
    }
  }

  public org.achartengine.b.b a(PointF paramPointF)
  {
    return null;
  }

  public abstract void a(Canvas paramCanvas, int paramInt1, int paramInt2, int paramInt3, int paramInt4, Paint paramPaint);

  public abstract void a(Canvas paramCanvas, c paramc, float paramFloat1, float paramFloat2, Paint paramPaint);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     org.achartengine.a.a
 * JD-Core Version:    0.6.2
 */