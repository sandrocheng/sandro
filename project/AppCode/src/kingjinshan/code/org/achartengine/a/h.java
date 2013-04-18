package org.achartengine.a;

import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.PathEffect;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.achartengine.renderer.XYMultipleSeriesRenderer;

public abstract class h extends a
{
  private static final long a = -2041524919067517995L;
  private float b;
  protected org.achartengine.b.c c;
  protected XYMultipleSeriesRenderer d;
  private float e;
  private PointF f;
  private Rect g;
  private Map h = new HashMap();
  private Map i = new HashMap();

  protected h()
  {
  }

  public h(org.achartengine.b.c paramc, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer)
  {
    this.c = paramc;
    this.d = paramXYMultipleSeriesRenderer;
  }

  private static int a(Paint.Align paramAlign)
  {
    int j = 4;
    if (paramAlign == Paint.Align.LEFT)
      j = -4;
    return j;
  }

  protected static String a(double paramDouble)
  {
    if (paramDouble == Math.round(paramDouble));
    for (String str = Math.round(paramDouble) + ""; ; str = paramDouble + "")
      return str;
  }

  private static List a(List paramList)
  {
    ArrayList localArrayList = new ArrayList(paramList);
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      Double localDouble = (Double)localIterator.next();
      if (localDouble.isNaN())
        localArrayList.remove(localDouble);
    }
    return localArrayList;
  }

  private void a(Canvas paramCanvas, float paramFloat, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramCanvas.scale(1.0F / this.b, this.b);
      paramCanvas.translate(this.e, -this.e);
      paramCanvas.rotate(-paramFloat, this.f.x, this.f.y);
    }
    while (true)
    {
      return;
      paramCanvas.rotate(paramFloat, this.f.x, this.f.y);
      paramCanvas.translate(-this.e, this.e);
      paramCanvas.scale(this.b, 1.0F / this.b);
    }
  }

  private static void a(Paint.Cap paramCap, Paint.Join paramJoin, float paramFloat, Paint.Style paramStyle, PathEffect paramPathEffect, Paint paramPaint)
  {
    paramPaint.setStrokeCap(paramCap);
    paramPaint.setStrokeJoin(paramJoin);
    paramPaint.setStrokeMiter(paramFloat);
    paramPaint.setPathEffect(paramPathEffect);
    paramPaint.setStyle(paramStyle);
  }

  private void a(Rect paramRect)
  {
    this.g = paramRect;
  }

  private void a(List paramList, Double[] paramArrayOfDouble, Canvas paramCanvas, Paint paramPaint, int paramInt1, int paramInt2, int paramInt3, double paramDouble1, double paramDouble2, double paramDouble3)
  {
    int j = paramList.size();
    boolean bool1 = this.d.isShowLabels();
    boolean bool2 = this.d.isShowGrid();
    for (int k = 0; k < j; k++)
    {
      double d1 = ((Double)paramList.get(k)).doubleValue();
      float f2 = (float)(paramInt1 + paramDouble1 * (d1 - paramDouble2));
      if (bool1)
      {
        paramPaint.setColor(this.d.getLabelsColor());
        paramCanvas.drawLine(f2, paramInt3, f2, paramInt3 + this.d.getLabelsTextSize() / 3.0F, paramPaint);
        a(paramCanvas, a(d1), f2, paramInt3 + 4.0F * this.d.getLabelsTextSize() / 3.0F, paramPaint, this.d.getXLabelsAngle());
      }
      if (bool2)
      {
        paramPaint.setColor(this.d.getGridColor());
        paramCanvas.drawLine(f2, paramInt3, f2, paramInt2, paramPaint);
      }
    }
    boolean bool3 = this.d.isShowCustomTextGrid();
    if (bool1)
    {
      paramPaint.setColor(this.d.getLabelsColor());
      int m = paramArrayOfDouble.length;
      for (int n = 0; n < m; n++)
      {
        Double localDouble = paramArrayOfDouble[n];
        if ((paramDouble2 <= localDouble.doubleValue()) && (localDouble.doubleValue() <= paramDouble3))
        {
          float f1 = (float)(paramInt1 + paramDouble1 * (localDouble.doubleValue() - paramDouble2));
          paramPaint.setColor(this.d.getLabelsColor());
          a(paramCanvas, this.d.getXTextLabel(localDouble), f1, paramInt3 + 4.0F * this.d.getLabelsTextSize() / 3.0F, paramPaint, this.d.getXLabelsAngle());
          if (bool3)
            paramPaint.setColor(this.d.getGridColor());
        }
      }
    }
  }

  private void a(org.achartengine.b.d paramd, Canvas paramCanvas, Paint paramPaint, List paramList, org.achartengine.renderer.c paramc, float paramFloat, int paramInt, org.achartengine.renderer.d paramd1)
  {
    org.achartengine.renderer.a locala = paramc.i();
    Paint.Cap localCap = paramPaint.getStrokeCap();
    Paint.Join localJoin = paramPaint.getStrokeJoin();
    float f1 = paramPaint.getStrokeMiter();
    PathEffect localPathEffect = paramPaint.getPathEffect();
    Paint.Style localStyle = paramPaint.getStyle();
    if (locala != null)
      if (locala.d() == null)
        break label216;
    label216: for (DashPathEffect localDashPathEffect = new DashPathEffect(locala.d(), locala.e()); ; localDashPathEffect = null)
    {
      a(locala.a(), locala.b(), locala.c(), Paint.Style.FILL_AND_STROKE, localDashPathEffect, paramPaint);
      float[] arrayOfFloat = org.achartengine.d.a.a(paramList);
      a(paramCanvas, paramPaint, arrayOfFloat, paramc, paramFloat, paramInt);
      paramPaint.setTextSize(paramc.f());
      if (paramd1 == org.achartengine.renderer.d.a)
        paramPaint.setTextAlign(Paint.Align.CENTER);
      while (true)
      {
        if (paramc.e())
        {
          paramPaint.setTextAlign(paramc.g());
          paramPaint.setColor(paramc.c());
          a(paramCanvas, paramd, paramc, paramPaint, arrayOfFloat, paramInt);
          paramPaint.setColor(paramc.a());
        }
        if (locala != null)
          a(localCap, localJoin, f1, localStyle, localPathEffect, paramPaint);
        return;
        paramPaint.setTextAlign(Paint.Align.LEFT);
      }
    }
  }

  private void a(Double[] paramArrayOfDouble, Canvas paramCanvas, Paint paramPaint, boolean paramBoolean, int paramInt1, int paramInt2, double paramDouble1, double paramDouble2, double paramDouble3)
  {
    boolean bool = this.d.isShowCustomTextGrid();
    if (paramBoolean)
    {
      paramPaint.setColor(this.d.getLabelsColor());
      int j = paramArrayOfDouble.length;
      for (int k = 0; k < j; k++)
      {
        Double localDouble = paramArrayOfDouble[k];
        if ((paramDouble2 <= localDouble.doubleValue()) && (localDouble.doubleValue() <= paramDouble3))
        {
          float f1 = (float)(paramInt1 + paramDouble1 * (localDouble.doubleValue() - paramDouble2));
          paramPaint.setColor(this.d.getLabelsColor());
          a(paramCanvas, this.d.getXTextLabel(localDouble), f1, paramInt2 + 4.0F * this.d.getLabelsTextSize() / 3.0F, paramPaint, this.d.getXLabelsAngle());
          if (bool)
            paramPaint.setColor(this.d.getGridColor());
        }
      }
    }
  }

  private double[] a(float paramFloat1, float paramFloat2)
  {
    return a(paramFloat1, paramFloat2, 0);
  }

  private double[] a(double[] paramArrayOfDouble)
  {
    return a(paramArrayOfDouble, 0);
  }

  private void b(double[] paramArrayOfDouble, int paramInt)
  {
    this.h.put(Integer.valueOf(paramInt), paramArrayOfDouble);
  }

  private Rect f()
  {
    return this.g;
  }

  private org.achartengine.b.c g()
  {
    return this.c;
  }

  private static boolean h()
  {
    return false;
  }

  private static f i()
  {
    return null;
  }

  public final org.achartengine.b.b a(PointF paramPointF)
  {
    int j;
    int k;
    if (this.i != null)
    {
      j = this.i.size() - 1;
      if (j >= 0)
      {
        k = 0;
        if (this.i.get(Integer.valueOf(j)) != null)
        {
          Iterator localIterator = ((List)this.i.get(Integer.valueOf(j))).iterator();
          label65: if (localIterator.hasNext())
          {
            RectF localRectF = (RectF)localIterator.next();
            if ((localRectF == null) || (!localRectF.contains(paramPointF.x, paramPointF.y)));
          }
        }
      }
    }
    for (org.achartengine.b.b localb = new org.achartengine.b.b(j, k, this.c.a(j).b(k)); ; localb = super.a(paramPointF))
    {
      return localb;
      k++;
      break label65;
      j--;
      break;
    }
  }

  public final void a(Canvas paramCanvas, int paramInt1, int paramInt2, int paramInt3, int paramInt4, Paint paramPaint)
  {
    paramPaint.setAntiAlias(this.d.isAntialiasing());
    XYMultipleSeriesRenderer localXYMultipleSeriesRenderer1 = this.d;
    int j = paramInt4 / 5;
    float f1 = this.d.getAxisTitleTextSize();
    int k = localXYMultipleSeriesRenderer1.getLegendHeight();
    if ((localXYMultipleSeriesRenderer1.isShowLegend()) && (k == 0));
    while (true)
    {
      if ((!localXYMultipleSeriesRenderer1.isShowLegend()) && (localXYMultipleSeriesRenderer1.isShowLabels()));
      for (int m = (int)(f1 + 4.0F * localXYMultipleSeriesRenderer1.getLabelsTextSize() / 3.0F); ; m = j)
      {
        int[] arrayOfInt = this.d.getMargins();
        int n = paramInt1 + arrayOfInt[1];
        int i1 = paramInt2 + arrayOfInt[0];
        int i2 = paramInt1 + paramInt3 - arrayOfInt[3];
        int i3 = this.c.a();
        String[] arrayOfString = new String[i3];
        for (int i4 = 0; i4 < i3; i4++)
          arrayOfString[i4] = this.c.a(i4).b();
        if ((this.d.isFitLegend()) && (this.d.isShowLegend()));
        for (int i5 = a(paramCanvas, this.d, arrayOfString, n, i2, paramInt2, paramInt3, paramInt4, m, paramPaint, true); ; i5 = m)
        {
          int i6 = paramInt2 + paramInt4 - arrayOfInt[2] - i5;
          if (this.g == null)
            this.g = new Rect();
          this.g.set(n, i1, i2, i6);
          a(this.d, paramCanvas, paramInt1, paramInt2, paramInt3, paramInt4, paramPaint, false, 0);
          if ((paramPaint.getTypeface() == null) || (!paramPaint.getTypeface().toString().equals(this.d.getTextTypefaceName())) || (paramPaint.getTypeface().getStyle() != this.d.getTextTypefaceStyle()))
            paramPaint.setTypeface(Typeface.create(this.d.getTextTypefaceName(), this.d.getTextTypefaceStyle()));
          org.achartengine.renderer.d locald = this.d.getOrientation();
          int i43;
          int i7;
          if (locald == org.achartengine.renderer.d.b)
          {
            i43 = i2 - i5;
            i7 = i6 + (i5 - 20);
          }
          for (int i8 = i43; ; i8 = i2)
          {
            int i9 = locald.a();
            if (i9 == 90);
            int i11;
            for (int i10 = 1; ; i10 = 0)
            {
              this.b = (paramInt4 / paramInt3);
              this.e = (Math.abs(paramInt3 - paramInt4) / 2);
              if (this.b < 1.0F)
                this.e = (-1.0F * this.e);
              this.f = new PointF((paramInt1 + paramInt3) / 2, (paramInt2 + paramInt4) / 2);
              if (i10 != 0)
                a(paramCanvas, i9, false);
              i11 = -2147483647;
              for (int i12 = 0; i12 < i3; i12++)
                i11 = Math.max(i11, this.c.a(i12).a());
            }
            int i13 = i11 + 1;
            if (i13 < 0)
              return;
            double[] arrayOfDouble1 = new double[i13];
            double[] arrayOfDouble2 = new double[i13];
            double[] arrayOfDouble3 = new double[i13];
            double[] arrayOfDouble4 = new double[i13];
            boolean[] arrayOfBoolean1 = new boolean[i13];
            boolean[] arrayOfBoolean2 = new boolean[i13];
            boolean[] arrayOfBoolean3 = new boolean[i13];
            boolean[] arrayOfBoolean4 = new boolean[i13];
            for (int i14 = 0; i14 < i13; i14++)
            {
              arrayOfDouble1[i14] = this.d.getXAxisMin(i14);
              arrayOfDouble2[i14] = this.d.getXAxisMax(i14);
              arrayOfDouble3[i14] = this.d.getYAxisMin(i14);
              arrayOfDouble4[i14] = this.d.getYAxisMax(i14);
              arrayOfBoolean1[i14] = this.d.isMinXSet(i14);
              arrayOfBoolean2[i14] = this.d.isMaxXSet(i14);
              arrayOfBoolean3[i14] = this.d.isMinYSet(i14);
              arrayOfBoolean4[i14] = this.d.isMaxYSet(i14);
              if (this.h.get(Integer.valueOf(i14)) == null)
                this.h.put(Integer.valueOf(i14), new double[4]);
            }
            double[] arrayOfDouble5 = new double[i13];
            double[] arrayOfDouble6 = new double[i13];
            for (int i15 = 0; i15 < i3; i15++)
            {
              org.achartengine.b.d locald2 = this.c.a(i15);
              int i42 = locald2.a();
              if (locald2.c() != 0)
              {
                if (arrayOfBoolean1[i42] == 0)
                {
                  double d9 = locald2.d();
                  arrayOfDouble1[i42] = Math.min(arrayOfDouble1[i42], d9);
                  ((double[])this.h.get(Integer.valueOf(i42)))[0] = arrayOfDouble1[i42];
                }
                if (arrayOfBoolean2[i42] == 0)
                {
                  double d8 = locald2.f();
                  arrayOfDouble2[i42] = Math.max(arrayOfDouble2[i42], d8);
                  ((double[])this.h.get(Integer.valueOf(i42)))[1] = arrayOfDouble2[i42];
                }
                if (arrayOfBoolean3[i42] == 0)
                {
                  double d7 = locald2.e();
                  arrayOfDouble3[i42] = Math.min(arrayOfDouble3[i42], (float)d7);
                  ((double[])this.h.get(Integer.valueOf(i42)))[2] = arrayOfDouble3[i42];
                }
                if (arrayOfBoolean4[i42] == 0)
                {
                  double d6 = locald2.g();
                  arrayOfDouble4[i42] = Math.max(arrayOfDouble4[i42], (float)d6);
                  ((double[])this.h.get(Integer.valueOf(i42)))[3] = arrayOfDouble4[i42];
                }
              }
            }
            for (int i16 = 0; i16 < i13; i16++)
            {
              if (arrayOfDouble2[i16] - arrayOfDouble1[i16] != 0.0D)
                arrayOfDouble5[i16] = ((i8 - n) / (arrayOfDouble2[i16] - arrayOfDouble1[i16]));
              if (arrayOfDouble4[i16] - arrayOfDouble3[i16] != 0.0D)
                arrayOfDouble6[i16] = ((float)((i7 - i1) / (arrayOfDouble4[i16] - arrayOfDouble3[i16])));
            }
            int i17 = 0;
            this.i = new HashMap();
            for (int i18 = 0; i18 < i3; i18++)
            {
              org.achartengine.b.d locald1 = this.c.a(i18);
              int i38 = locald1.a();
              if (locald1.c() != 0)
              {
                i17 = 1;
                org.achartengine.renderer.c localc = this.d.getSeriesRendererAt(i18);
                int i39 = 2 * locald1.c();
                ArrayList localArrayList = new ArrayList();
                float f5 = Math.min(i7, (float)(i7 + arrayOfDouble6[i38] * arrayOfDouble3[i38]));
                LinkedList localLinkedList = new LinkedList();
                this.i.put(Integer.valueOf(i18), localLinkedList);
                int i40 = 0;
                if (i40 < i39)
                {
                  int i41 = i40 / 2;
                  double d5 = locald1.b(i41);
                  if (d5 != 1.7976931348623157E+308D)
                  {
                    localArrayList.add(Float.valueOf((float)(n + arrayOfDouble5[i38] * (locald1.a(i41) - arrayOfDouble1[i38]))));
                    localArrayList.add(Float.valueOf((float)(i7 - arrayOfDouble6[i38] * (d5 - arrayOfDouble3[i38]))));
                  }
                  while (true)
                  {
                    i40 += 2;
                    break;
                    if (b())
                    {
                      localArrayList.add(Float.valueOf((float)(n + arrayOfDouble5[i38] * (locald1.a(i41) - arrayOfDouble1[i38]))));
                      localArrayList.add(Float.valueOf((float)(i7 - arrayOfDouble6[i38] * -arrayOfDouble3[i38])));
                    }
                    else
                    {
                      if (localArrayList.size() > 0)
                      {
                        a(locald1, paramCanvas, paramPaint, localArrayList, localc, f5, i18, locald);
                        localLinkedList.addAll(Arrays.asList(a(org.achartengine.d.a.a(localArrayList), f5, i18)));
                        localArrayList.clear();
                      }
                      localLinkedList.add(null);
                    }
                  }
                }
                if (localArrayList.size() > 0)
                {
                  a(locald1, paramCanvas, paramPaint, localArrayList, localc, f5, i18, locald);
                  localLinkedList.addAll(Arrays.asList(a(org.achartengine.d.a.a(localArrayList), f5, i18)));
                }
              }
            }
            a(this.d, paramCanvas, paramInt1, i7, paramInt3, paramInt4 - i7, paramPaint, true, this.d.getMarginsColor());
            a(this.d, paramCanvas, paramInt1, paramInt2, paramInt3, arrayOfInt[0], paramPaint, true, this.d.getMarginsColor());
            if (locald == org.achartengine.renderer.d.a)
            {
              a(this.d, paramCanvas, paramInt1, paramInt2, n - paramInt1, paramInt4 - paramInt2, paramPaint, true, this.d.getMarginsColor());
              XYMultipleSeriesRenderer localXYMultipleSeriesRenderer3 = this.d;
              int i35 = arrayOfInt[3];
              int i36 = paramInt4 - paramInt2;
              int i37 = this.d.getMarginsColor();
              a(localXYMultipleSeriesRenderer3, paramCanvas, i8, paramInt2, i35, i36, paramPaint, true, i37);
              if ((!this.d.isShowLabels()) || (i17 == 0))
                break label1918;
            }
            boolean bool1;
            boolean bool2;
            List localList1;
            HashMap localHashMap;
            label1918: for (int i22 = 1; ; i22 = 0)
            {
              bool1 = this.d.isShowGrid();
              bool2 = this.d.isShowCustomTextGrid();
              if ((i22 == 0) && (!bool1))
                break label3096;
              localList1 = a(org.achartengine.d.a.a(arrayOfDouble1[0], arrayOfDouble2[0], this.d.getXLabels()));
              localHashMap = new HashMap();
              for (int i23 = 0; i23 < i13; i23++)
                localHashMap.put(Integer.valueOf(i23), a(org.achartengine.d.a.a(arrayOfDouble3[i23], arrayOfDouble4[i23], this.d.getYLabels())));
              if (locald != org.achartengine.renderer.d.b)
                break;
              XYMultipleSeriesRenderer localXYMultipleSeriesRenderer2 = this.d;
              int i19 = paramInt3 - i8;
              int i20 = paramInt4 - paramInt2;
              int i21 = this.d.getMarginsColor();
              a(localXYMultipleSeriesRenderer2, paramCanvas, i8, paramInt2, i19, i20, paramPaint, true, i21);
              a(this.d, paramCanvas, paramInt1, paramInt2, n - paramInt1, paramInt4 - paramInt2, paramPaint, true, this.d.getMarginsColor());
              break;
            }
            if (i22 != 0)
            {
              paramPaint.setColor(this.d.getLabelsColor());
              paramPaint.setTextSize(this.d.getLabelsTextSize());
              paramPaint.setTextAlign(this.d.getXLabelsAlign());
              if (this.d.getXLabelsAlign() != Paint.Align.LEFT);
            }
            for (int i24 = (int)(n + this.d.getLabelsTextSize() / 4.0F); ; i24 = n)
            {
              Double[] arrayOfDouble7 = this.d.getXTextLabelLocations();
              double d1 = arrayOfDouble5[0];
              double d2 = arrayOfDouble1[0];
              double d3 = arrayOfDouble2[0];
              a(localList1, arrayOfDouble7, paramCanvas, paramPaint, i24, i1, i7, d1, d2, d3);
              for (int i25 = 0; i25 < i13; i25++)
              {
                paramPaint.setTextAlign(this.d.getYLabelsAlign(i25));
                List localList2 = (List)localHashMap.get(Integer.valueOf(i25));
                int i32 = localList2.size();
                int i33 = 0;
                if (i33 < i32)
                {
                  double d4 = ((Double)localList2.get(i33)).doubleValue();
                  Paint.Align localAlign2 = this.d.getYAxisAlign(i25);
                  int i34;
                  label2153: float f4;
                  if (this.d.getYTextLabel(Double.valueOf(d4), i25) != null)
                  {
                    i34 = 1;
                    f4 = (float)(i7 - arrayOfDouble6[i25] * (d4 - arrayOfDouble3[i25]));
                    if (locald != org.achartengine.renderer.d.a)
                      break label2356;
                    if ((i22 != 0) && (i34 == 0))
                    {
                      paramPaint.setColor(this.d.getLabelsColor());
                      if (localAlign2 != Paint.Align.LEFT)
                        break label2305;
                      paramCanvas.drawLine(n + a(localAlign2), f4, n, f4, paramPaint);
                      a(paramCanvas, a(d4), n, f4 - 2.0F, paramPaint, this.d.getYLabelsAngle());
                    }
                    label2260: if (bool1)
                    {
                      paramPaint.setColor(this.d.getGridColor());
                      paramCanvas.drawLine(n, f4, i8, f4, paramPaint);
                    }
                  }
                  while (true)
                  {
                    i33++;
                    break;
                    i34 = 0;
                    break label2153;
                    label2305: paramCanvas.drawLine(i8, f4, i8 + a(localAlign2), f4, paramPaint);
                    a(paramCanvas, a(d4), i8, f4 - 2.0F, paramPaint, this.d.getYLabelsAngle());
                    break label2260;
                    label2356: if (locald == org.achartengine.renderer.d.b)
                    {
                      if ((i22 != 0) && (i34 == 0))
                      {
                        paramPaint.setColor(this.d.getLabelsColor());
                        paramCanvas.drawLine(i8 - a(localAlign2), f4, i8, f4, paramPaint);
                        a(paramCanvas, a(d4), i8 + 10, f4 - 2.0F, paramPaint, this.d.getYLabelsAngle());
                      }
                      if (bool1)
                      {
                        paramPaint.setColor(this.d.getGridColor());
                        paramCanvas.drawLine(i8, f4, n, f4, paramPaint);
                      }
                    }
                  }
                }
              }
              if (i22 != 0)
              {
                paramPaint.setColor(this.d.getLabelsColor());
                for (int i29 = 0; i29 < i13; i29++)
                {
                  Paint.Align localAlign1 = this.d.getYAxisAlign(i29);
                  Double[] arrayOfDouble8 = this.d.getYTextLabelLocations(i29);
                  int i30 = arrayOfDouble8.length;
                  int i31 = 0;
                  if (i31 < i30)
                  {
                    Double localDouble = arrayOfDouble8[i31];
                    float f3;
                    String str;
                    if ((arrayOfDouble3[i29] <= localDouble.doubleValue()) && (localDouble.doubleValue() <= arrayOfDouble4[i29]))
                    {
                      f3 = (float)(i7 - arrayOfDouble6[i29] * (localDouble.doubleValue() - arrayOfDouble3[i29]));
                      str = this.d.getYTextLabel(localDouble, i29);
                      paramPaint.setColor(this.d.getLabelsColor());
                      if (locald != org.achartengine.renderer.d.a)
                        break label2775;
                      if (localAlign1 != Paint.Align.LEFT)
                        break label2727;
                      paramCanvas.drawLine(n + a(localAlign1), f3, n, f3, paramPaint);
                      a(paramCanvas, str, n, f3 - 2.0F, paramPaint, this.d.getYLabelsAngle());
                      label2688: if (bool2)
                      {
                        paramPaint.setColor(this.d.getGridColor());
                        paramCanvas.drawLine(n, f3, i8, f3, paramPaint);
                      }
                    }
                    while (true)
                    {
                      i31++;
                      break;
                      label2727: paramCanvas.drawLine(i8, f3, i8 + a(localAlign1), f3, paramPaint);
                      a(paramCanvas, str, i8, f3 - 2.0F, paramPaint, this.d.getYLabelsAngle());
                      break label2688;
                      label2775: paramCanvas.drawLine(i8 - a(localAlign1), f3, i8, f3, paramPaint);
                      a(paramCanvas, str, i8 + 10, f3 - 2.0F, paramPaint, this.d.getYLabelsAngle());
                      if (bool2)
                      {
                        paramPaint.setColor(this.d.getGridColor());
                        paramCanvas.drawLine(i8, f3, n, f3, paramPaint);
                      }
                    }
                  }
                }
              }
              float f2;
              label3096: label3130: int i27;
              if (i22 != 0)
              {
                paramPaint.setColor(this.d.getLabelsColor());
                f2 = this.d.getAxisTitleTextSize();
                paramPaint.setTextSize(f2);
                paramPaint.setTextAlign(Paint.Align.CENTER);
                if (locald == org.achartengine.renderer.d.a)
                {
                  a(paramCanvas, this.d.getXTitle(), paramInt1 + paramInt3 / 2, f2 + (i7 + 4.0F * this.d.getLabelsTextSize() / 3.0F), paramPaint, 0.0F);
                  int i28 = 0;
                  if (i28 < i13)
                  {
                    if (this.d.getYAxisAlign(i28) == Paint.Align.LEFT)
                      a(paramCanvas, this.d.getYTitle(i28), f2 + paramInt1, paramInt2 + paramInt4 / 2, paramPaint, -90.0F);
                    while (true)
                    {
                      i28++;
                      break;
                      a(paramCanvas, this.d.getYTitle(i28), paramInt1 + paramInt3, paramInt2 + paramInt4 / 2, paramPaint, -90.0F);
                    }
                  }
                  paramPaint.setTextSize(this.d.getChartTitleTextSize());
                  a(paramCanvas, this.d.getChartTitle(), paramInt1 + paramInt3 / 2, paramInt2 + this.d.getChartTitleTextSize(), paramPaint, 0.0F);
                }
              }
              else
              {
                if (locald != org.achartengine.renderer.d.a)
                  break label3323;
                a(paramCanvas, this.d, arrayOfString, n, i8, paramInt2, paramInt3, paramInt4, i5, paramPaint, false);
                if (!this.d.isShowAxes())
                  break label3415;
                paramPaint.setColor(this.d.getAxesColor());
                paramCanvas.drawLine(n, i7, i8, i7, paramPaint);
                i26 = 0;
                i27 = 0;
                label3176: if ((i27 >= i13) || (i26 != 0))
                  break label3384;
                if (this.d.getYAxisAlign(i27) != Paint.Align.RIGHT)
                  break label3378;
              }
              label3378: for (int i26 = 1; ; i26 = 0)
              {
                i27++;
                break label3176;
                if (locald != org.achartengine.renderer.d.b)
                  break;
                a(paramCanvas, this.d.getXTitle(), paramInt1 + paramInt3 / 2, paramInt2 + paramInt4 - f2, paramPaint, -90.0F);
                a(paramCanvas, this.d.getYTitle(), i8 + 20, paramInt2 + paramInt4 / 2, paramPaint, 0.0F);
                paramPaint.setTextSize(this.d.getChartTitleTextSize());
                a(paramCanvas, this.d.getChartTitle(), f2 + paramInt1, i1 + paramInt4 / 2, paramPaint, 0.0F);
                break;
                label3323: if (locald != org.achartengine.renderer.d.b)
                  break label3130;
                a(paramCanvas, i9, true);
                a(paramCanvas, this.d, arrayOfString, n, i8, paramInt2, paramInt3, paramInt4, i5, paramPaint, false);
                a(paramCanvas, i9, false);
                break label3130;
              }
              label3384: if (locald == org.achartengine.renderer.d.a)
                if (i26 != 0)
                  paramCanvas.drawLine(i8, i1, i8, i7, paramPaint);
              while (true)
              {
                label3415: if (i10 == 0)
                  break label3459;
                a(paramCanvas, i9, true);
                break;
                if (locald == org.achartengine.renderer.d.b)
                  paramCanvas.drawLine(i8, i1, i8, i7, paramPaint);
              }
              label3459: break;
            }
            i7 = i6;
          }
        }
      }
      j = k;
    }
  }

  public abstract void a(Canvas paramCanvas, Paint paramPaint, float[] paramArrayOfFloat, org.achartengine.renderer.c paramc, float paramFloat, int paramInt);

  protected final void a(Canvas paramCanvas, String paramString, float paramFloat1, float paramFloat2, Paint paramPaint, float paramFloat3)
  {
    float f1 = paramFloat3 + -this.d.getOrientation().a();
    if (f1 != 0.0F)
      paramCanvas.rotate(f1, paramFloat1, paramFloat2);
    paramCanvas.drawText(paramString, paramFloat1, paramFloat2, paramPaint);
    if (f1 != 0.0F)
      paramCanvas.rotate(-f1, paramFloat1, paramFloat2);
  }

  protected void a(Canvas paramCanvas, org.achartengine.b.d paramd, org.achartengine.renderer.c paramc, Paint paramPaint, float[] paramArrayOfFloat, int paramInt)
  {
    for (int j = 0; j < paramArrayOfFloat.length; j += 2)
      a(paramCanvas, a(paramd.b(j / 2)), paramArrayOfFloat[j], paramArrayOfFloat[(j + 1)] - paramc.h(), paramPaint, 0.0F);
  }

  protected void a(org.achartengine.b.c paramc, XYMultipleSeriesRenderer paramXYMultipleSeriesRenderer)
  {
    this.c = paramc;
    this.d = paramXYMultipleSeriesRenderer;
  }

  public final double[] a(float paramFloat1, float paramFloat2, int paramInt)
  {
    if (this.g == null);
    double[] arrayOfDouble;
    for (Object localObject = null; ; localObject = arrayOfDouble)
    {
      return localObject;
      double d1 = this.d.getXAxisMin(paramInt);
      double d2 = this.d.getXAxisMax(paramInt);
      double d3 = this.d.getYAxisMin(paramInt);
      double d4 = this.d.getYAxisMax(paramInt);
      arrayOfDouble = new double[2];
      arrayOfDouble[0] = (d1 + (paramFloat1 - this.g.left) * (d2 - d1) / this.g.width());
      arrayOfDouble[1] = (d3 + (this.g.top + this.g.height() - paramFloat2) * (d4 - d3) / this.g.height());
    }
  }

  public final double[] a(int paramInt)
  {
    return (double[])this.h.get(Integer.valueOf(paramInt));
  }

  public final double[] a(double[] paramArrayOfDouble, int paramInt)
  {
    double d1 = this.d.getXAxisMin(paramInt);
    double d2 = this.d.getXAxisMax(paramInt);
    double d3 = this.d.getYAxisMin(paramInt);
    double d4 = this.d.getYAxisMax(paramInt);
    double d9;
    double d10;
    double d11;
    double d12;
    if ((!this.d.isMinXSet(paramInt)) || (!this.d.isMaxXSet(paramInt)) || (!this.d.isMinXSet(paramInt)) || (!this.d.isMaxYSet(paramInt)))
    {
      double[] arrayOfDouble1 = a(paramInt);
      double d5 = arrayOfDouble1[0];
      double d6 = arrayOfDouble1[1];
      double d7 = arrayOfDouble1[2];
      double d8 = arrayOfDouble1[3];
      d9 = d5;
      d10 = d8;
      d11 = d6;
      d12 = d7;
    }
    while (true)
    {
      double[] arrayOfDouble2 = new double[2];
      arrayOfDouble2[0] = ((paramArrayOfDouble[0] - d9) * this.g.width() / (d11 - d9) + this.g.left);
      arrayOfDouble2[1] = ((d10 - paramArrayOfDouble[1]) * this.g.height() / (d10 - d12) + this.g.top);
      return arrayOfDouble2;
      d9 = d1;
      d10 = d4;
      d12 = d3;
      d11 = d2;
    }
  }

  protected abstract RectF[] a(float[] paramArrayOfFloat, float paramFloat, int paramInt);

  protected boolean b()
  {
    return false;
  }

  public double c()
  {
    return 1.7976931348623157E+308D;
  }

  public abstract String d();

  public final XYMultipleSeriesRenderer e()
  {
    return this.d;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     org.achartengine.a.h
 * JD-Core Version:    0.6.2
 */