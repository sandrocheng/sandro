package org.achartengine;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build.VERSION;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import org.achartengine.a.a;
import org.achartengine.a.h;
import org.achartengine.renderer.XYMultipleSeriesRenderer;

public final class b extends View
{
  private static final int j = Color.argb(175, 150, 150, 150);
  private a a;
  private org.achartengine.renderer.b b;
  private Rect c = new Rect();
  private Handler d;
  private RectF e = new RectF();
  private Bitmap f;
  private Bitmap g;
  private Bitmap h;
  private int i = 50;
  private Paint k = new Paint();
  private e l;
  private float m;
  private float n;

  public b(Context paramContext, a parama)
  {
    super(paramContext);
    this.a = parama;
    this.d = new Handler();
    if ((this.a instanceof h))
      this.b = ((h)this.a).e();
    while (true)
    {
      if (((this.b instanceof XYMultipleSeriesRenderer)) && (((XYMultipleSeriesRenderer)this.b).getMarginsColor() == 0))
        ((XYMultipleSeriesRenderer)this.b).setMarginsColor(this.k.getColor());
      try
      {
        int i2 = Integer.valueOf(Build.VERSION.SDK).intValue();
        i1 = i2;
        if (i1 < 7)
        {
          this.l = new g(this, this.a);
          return;
          this.b = ((org.achartengine.a.e)this.a).b();
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          int i1 = 7;
          continue;
          this.l = new f(this, this.a);
        }
      }
    }
  }

  private void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.d.post(new d(this, paramInt1, paramInt2, paramInt3, paramInt4));
  }

  private void a(org.achartengine.c.c paramc)
  {
    this.l.a(paramc);
  }

  private void b(org.achartengine.c.c paramc)
  {
    this.l.b(paramc);
  }

  private org.achartengine.b.b c()
  {
    return this.a.a(new PointF(this.m, this.n));
  }

  private Bitmap d()
  {
    setDrawingCacheEnabled(false);
    if (!isDrawingCacheEnabled())
      setDrawingCacheEnabled(true);
    if (this.b.isApplyBackgroundColor())
      setDrawingCacheBackgroundColor(this.b.getBackgroundColor());
    setDrawingCacheQuality(1048576);
    return getDrawingCache(true);
  }

  protected final RectF a()
  {
    return this.e;
  }

  public final void b()
  {
    this.d.post(new c(this));
  }

  protected final void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    Rect localRect1 = this.c;
    int i1 = getTop();
    localRect1.top = i1;
    Rect localRect2 = this.c;
    int i2 = getLeft();
    localRect2.left = i2;
    Rect localRect3 = this.c;
    int i3 = getWidth();
    localRect3.right = i3;
    Rect localRect4 = this.c;
    int i4 = getHeight();
    localRect4.bottom = i4;
    this.a.a(paramCanvas, i2, i1, i3, i4, this.k);
    if ((this.b != null) && (this.b.isZoomEnabled()) && (this.b.isZoomButtonsVisible()))
    {
      this.k.setColor(j);
      this.i = Math.max(this.i, Math.min(i3, i4) / 7);
      this.e.set(i2 + i3 - 3 * this.i, i1 + i4 - 0.775F * this.i, i2 + i3, i1 + i4);
      paramCanvas.drawRoundRect(this.e, this.i / 3, this.i / 3, this.k);
      float f1 = i1 + i4 - 0.625F * this.i;
      paramCanvas.drawBitmap(this.f, i2 + i3 - 2.75F * this.i, f1, null);
      paramCanvas.drawBitmap(this.g, i2 + i3 - 1.75F * this.i, f1, null);
      paramCanvas.drawBitmap(this.h, i2 + i3 - 0.75F * this.i, f1, null);
    }
  }

  public final boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0)
    {
      this.m = paramMotionEvent.getX();
      this.n = paramMotionEvent.getY();
    }
    if ((this.b != null) && ((this.b.isPanEnabled()) || (this.b.isZoomEnabled())) && (this.l.a(paramMotionEvent)));
    for (boolean bool = true; ; bool = super.onTouchEvent(paramMotionEvent))
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     org.achartengine.b
 * JD-Core Version:    0.6.2
 */