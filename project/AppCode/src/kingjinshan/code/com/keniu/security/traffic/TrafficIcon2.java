package com.keniu.security.traffic;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;

public class TrafficIcon2 extends View
  implements dc
{
  public static boolean a = false;
  private static final int b = 96;
  private static final int c = 3;
  private static final int d = 50;
  private static final int e = 1000;
  private static final int s = 75;
  private static final int u = 26;
  private static final int y = 203;
  private Bitmap f = BitmapFactory.decodeResource(getResources(), 2130837998);
  private Bitmap g = BitmapFactory.decodeResource(getResources(), 2130838005);
  private Bitmap h;
  private Bitmap i;
  private Bitmap j = BitmapFactory.decodeResource(getResources(), 2130838001);
  private Bitmap k;
  private Bitmap l = BitmapFactory.decodeResource(getResources(), 2130838003);
  private Bitmap m;
  private int n = 0;
  private int o = 0;
  private String p = "100%";
  private Paint q = new Paint();
  private db r = new db();
  private int t;
  private int v;
  private float w;
  private int x;

  public TrafficIcon2(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public final void a()
  {
    this.r.a(1000, 50L, this);
  }

  public final void a(long paramLong1, long paramLong2)
  {
    Matrix localMatrix = new Matrix();
    localMatrix.postScale(getWidth() / this.f.getWidth(), getHeight() / this.f.getHeight());
    try
    {
      this.i = Bitmap.createBitmap(this.f, 0, 0, this.f.getWidth(), this.f.getHeight(), localMatrix, true);
      this.k = Bitmap.createBitmap(this.j, 0, 0, this.j.getWidth(), this.j.getHeight(), localMatrix, true);
      this.m = Bitmap.createBitmap(this.l, 0, 0, this.l.getWidth(), this.l.getHeight(), localMatrix, true);
      this.h = Bitmap.createBitmap(this.g, 0, 0, this.g.getWidth(), this.g.getHeight(), localMatrix, true);
      this.w = (this.i.getHeight() / 203.0F);
      this.t = ((int)(75.0F * this.w));
      this.v = ((int)(26.0F * this.w));
      this.x = ((int)(96.0F * this.w));
      this.q.setAntiAlias(true);
      this.q.setColor(-1);
      this.q.setTextSize(20.0F * getResources().getDisplayMetrics().density);
      if (paramLong1 == 0L)
      {
        f1 = 1.0F;
        f2 = (float)(360.0F * (1.0F - f1) + 180.0D * Math.sin(0.0D) / 3.141592653589793D);
        if (f2 != 360.0F)
          break label384;
        this.o = ((int)(173.0F * this.w));
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf((int)(f1 * 100.0F));
        this.p = String.format("%d%%", arrayOfObject);
      }
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      while (true)
      {
        float f1;
        float f2;
        localIllegalArgumentException.printStackTrace();
        continue;
        if ((paramLong2 == 0L) || (paramLong1 >= paramLong2))
        {
          f1 = 0.0F;
        }
        else
        {
          f1 = Math.max(Math.min((float)(paramLong2 - paramLong1) / (float)paramLong2, 0.99F), 0.01F);
          continue;
          label384: if ((f2 <= 40.0F) && (f2 > 0.0F))
            this.o = ((int)(this.v + 5.0F * this.w));
          else if ((f2 < 360.0F) && (f2 >= 312.0F))
            this.o = ((int)(169.0F * this.w));
          else if (f2 <= 180.0F)
            this.o = ((int)(this.t - Math.abs(Math.cos(3.141592653589793D * (f2 / 2.0F) / 180.0D)) * this.t + this.v));
          else
            this.o = ((int)(this.t + Math.abs(Math.cos(3.141592653589793D * ((360.0F - f2) / 2.0F) / 180.0D)) * this.t + this.v));
        }
      }
    }
  }

  public final boolean a(int paramInt)
  {
    invalidate();
    boolean bool;
    if (Math.abs(this.o - this.n) <= 3)
    {
      this.n = this.o;
      bool = false;
      return bool;
    }
    if (this.o > this.n);
    for (this.n = (3 + this.n); ; this.n -= 3)
    {
      bool = true;
      break;
    }
  }

  public final void b()
  {
    this.r.a();
  }

  public final void c()
  {
    if ((this.f != null) && (!this.f.isRecycled()))
      this.f.recycle();
    if ((this.i != null) && (!this.i.isRecycled()))
      this.i.recycle();
    if ((this.j != null) && (!this.j.isRecycled()))
      this.j.recycle();
    if ((this.k != null) && (!this.k.isRecycled()))
      this.k.recycle();
    if ((this.l != null) && (!this.l.isRecycled()))
      this.l.recycle();
    if ((this.m != null) && (!this.m.isRecycled()))
      this.m.recycle();
    if ((this.g != null) && (!this.g.isRecycled()))
      this.g.recycle();
    if ((this.h != null) && (!this.h.isRecycled()))
      this.h.recycle();
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    paramCanvas.save();
    if (this.i == null)
      return;
    paramCanvas.clipRect(0, this.n, this.i.getWidth(), this.i.getHeight());
    paramCanvas.drawBitmap(this.i, 0.0F, 0.0F, null);
    int i1;
    Matrix localMatrix;
    if ((this.n > 56.0F * this.w) && (this.n <= 151.0F * this.w))
    {
      i1 = (int)Math.sqrt(this.t * this.t - (this.t - this.n + this.v) * (this.t - this.n + this.v));
      localMatrix = new Matrix();
      float f1 = i1 / (70.0F * this.w);
      localMatrix.postScale(f1, f1);
    }
    while (true)
    {
      try
      {
        Bitmap localBitmap = Bitmap.createBitmap(this.k, 0, 0, this.k.getWidth(), this.k.getHeight(), localMatrix, true);
        int i2 = localBitmap.getHeight();
        int i3 = this.x - i1;
        int i4 = this.n - i2 / 2;
        paramCanvas.restore();
        paramCanvas.drawBitmap(localBitmap, i3, i4, null);
        paramCanvas.save();
        Rect localRect = new Rect();
        paramCanvas.restore();
        this.q.getTextBounds(this.p, 0, this.p.length(), localRect);
        paramCanvas.drawText(this.p, (getWidth() - localRect.width()) / 2, (getHeight() + localRect.height()) / 2, this.q);
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        localIllegalArgumentException.printStackTrace();
      }
      break;
      if ((this.n <= (int)(169.0F * this.w)) && (this.n >= 154.0F * this.w) && (a))
      {
        paramCanvas.clipRect(0, this.n, this.h.getWidth(), this.h.getHeight());
        paramCanvas.drawBitmap(this.h, 0.0F, 0.0F, null);
      }
      else if ((this.n > (int)(169.0F * this.w)) && (this.p.equals("0%")))
      {
        paramCanvas.restore();
        paramCanvas.drawBitmap(this.m, 0.0F, 0.0F, null);
        paramCanvas.save();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.TrafficIcon2
 * JD-Core Version:    0.6.2
 */