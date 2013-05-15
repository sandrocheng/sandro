package com.avast.android.mobilesecurity.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Rect;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class LockPatternView extends View
{
  private final Path A;
  private final Rect B;
  private int C;
  private int D;
  private int E;
  private final Matrix F;
  private final Matrix G;
  private boolean a = false;
  private Paint b = new Paint();
  private Paint c = new Paint();
  private e d;
  private ArrayList e = new ArrayList(9);
  private boolean[][] f;
  private float g;
  private float h;
  private long i;
  private d j;
  private boolean k;
  private boolean l;
  private boolean m;
  private boolean n;
  private float o;
  private final int p;
  private float q;
  private float r;
  private float s;
  private Bitmap t;
  private Bitmap u;
  private Bitmap v;
  private Bitmap w;
  private Bitmap x;
  private Bitmap y;
  private Bitmap z;

  public LockPatternView(Context paramContext)
  {
    this(paramContext, null);
  }

  public LockPatternView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    int[] arrayOfInt = { 3, 3 };
    this.f = ((boolean[][])Array.newInstance(Boolean.TYPE, arrayOfInt));
    this.g = -1.0F;
    this.h = -1.0F;
    this.j = d.a;
    this.k = true;
    this.l = false;
    this.m = true;
    this.n = false;
    this.o = 0.1F;
    this.p = 128;
    this.q = 0.6F;
    this.A = new Path();
    this.B = new Rect();
    this.F = new Matrix();
    this.G = new Matrix();
    this.E = 0;
    setClickable(true);
    this.b.setAntiAlias(true);
    this.c.setAntiAlias(true);
    this.c.setDither(true);
    this.c.setColor(-1);
    this.c.setAlpha(128);
    this.c.setStyle(Paint.Style.STROKE);
    this.c.setStrokeJoin(Paint.Join.ROUND);
    this.c.setStrokeCap(Paint.Cap.ROUND);
    this.t = a(2130837665);
    this.u = a(2130837666);
    this.v = a(2130837838);
    this.w = a(2130837839);
    this.x = a(2130837840);
    this.y = a(2130837836);
    this.z = a(2130837837);
    Bitmap[] arrayOfBitmap = new Bitmap[5];
    arrayOfBitmap[0] = this.t;
    arrayOfBitmap[1] = this.u;
    arrayOfBitmap[2] = this.v;
    arrayOfBitmap[3] = this.w;
    arrayOfBitmap[4] = this.x;
    int i1 = arrayOfBitmap.length;
    for (int i2 = 0; i2 < i1; i2++)
    {
      Bitmap localBitmap = arrayOfBitmap[i2];
      this.C = Math.max(this.C, localBitmap.getWidth());
      this.D = Math.max(this.D, localBitmap.getHeight());
    }
  }

  private int a(float paramFloat)
  {
    float f1 = this.s;
    float f2 = f1 * this.q;
    float f3 = getPaddingTop() + (f1 - f2) / 2.0F;
    int i1 = 0;
    if (i1 < 3)
    {
      float f4 = f3 + f1 * i1;
      if ((paramFloat < f4) || (paramFloat > f4 + f2));
    }
    while (true)
    {
      return i1;
      i1++;
      break;
      i1 = -1;
    }
  }

  private int a(int paramInt1, int paramInt2)
  {
    int i1 = View.MeasureSpec.getSize(paramInt1);
    switch (View.MeasureSpec.getMode(paramInt1))
    {
    default:
    case 0:
    case -2147483648:
    }
    for (paramInt2 = i1; ; paramInt2 = Math.min(i1, paramInt2))
      return paramInt2;
  }

  private Bitmap a(int paramInt)
  {
    return BitmapFactory.decodeResource(getContext().getResources(), paramInt);
  }

  private c a(float paramFloat1, float paramFloat2)
  {
    int i1 = -1;
    c localc1 = b(paramFloat1, paramFloat2);
    c localc2 = null;
    c localc3;
    int i4;
    int i5;
    int i9;
    int i7;
    if (localc1 != null)
    {
      ArrayList localArrayList = this.e;
      boolean bool = localArrayList.isEmpty();
      localc3 = null;
      if (!bool)
      {
        c localc4 = (c)localArrayList.get(-1 + localArrayList.size());
        int i2 = localc1.a - localc4.a;
        int i3 = localc1.b - localc4.b;
        i4 = localc4.a;
        i5 = localc4.b;
        if ((Math.abs(i2) == 2) && (Math.abs(i3) != 1))
        {
          int i8 = localc4.a;
          if (i2 <= 0)
            break label240;
          i9 = 1;
          i4 = i9 + i8;
        }
        if ((Math.abs(i3) != 2) || (Math.abs(i2) == 1))
          break label246;
        i7 = localc4.b;
        if (i3 > 0)
          i1 = 1;
      }
    }
    label240: label246: for (int i6 = i7 + i1; ; i6 = i5)
    {
      localc3 = c.a(i4, i6);
      if ((localc3 != null) && (this.f[localc3.a][localc3.b] == 0))
        a(localc3);
      a(localc1);
      if (this.m)
        performHapticFeedback(1, 3);
      localc2 = localc1;
      return localc2;
      i9 = i1;
      break;
    }
  }

  private void a()
  {
    if (this.d != null)
      this.d.a(this.e);
    b(2131493797);
  }

  private void a(Canvas paramCanvas, float paramFloat1, float paramFloat2, c paramc1, c paramc2)
  {
    int i1;
    int i2;
    int i3;
    int i4;
    int i5;
    int i6;
    int i7;
    if (this.j != d.c)
    {
      i1 = 1;
      i2 = paramc2.a;
      i3 = paramc1.a;
      i4 = paramc2.b;
      i5 = paramc1.b;
      i6 = ((int)this.r - this.C) / 2;
      i7 = ((int)this.s - this.D) / 2;
      if (i1 == 0)
        break label287;
    }
    label287: for (Bitmap localBitmap = this.y; ; localBitmap = this.z)
    {
      int i8 = this.C;
      int i9 = this.D;
      float f1 = 90.0F + (float)Math.toDegrees((float)Math.atan2(i2 - i3, i4 - i5));
      float f2 = Math.min(this.r / this.C, 1.0F);
      float f3 = Math.min(this.s / this.D, 1.0F);
      this.F.setTranslate(paramFloat1 + i6, paramFloat2 + i7);
      this.F.preTranslate(this.C / 2, this.D / 2);
      this.F.preScale(f2, f3);
      this.F.preTranslate(-this.C / 2, -this.D / 2);
      this.F.preRotate(f1, i8 / 2.0F, i9 / 2.0F);
      this.F.preTranslate((i8 - localBitmap.getWidth()) / 2.0F, 0.0F);
      paramCanvas.drawBitmap(localBitmap, this.F, this.b);
      return;
      i1 = 0;
      break;
    }
  }

  private void a(Canvas paramCanvas, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    Bitmap localBitmap1;
    Bitmap localBitmap2;
    if ((!paramBoolean) || ((this.l) && (this.j != d.c)))
    {
      localBitmap1 = this.v;
      localBitmap2 = this.t;
    }
    while (true)
    {
      int i1 = this.C;
      int i2 = this.D;
      float f1 = this.r;
      float f2 = this.s;
      int i3 = (int)((f1 - i1) / 2.0F);
      int i4 = (int)((f2 - i2) / 2.0F);
      float f3 = Math.min(this.r / this.C, 1.0F);
      float f4 = Math.min(this.s / this.D, 1.0F);
      this.G.setTranslate(i3 + paramInt1, i4 + paramInt2);
      this.G.preTranslate(this.C / 2, this.D / 2);
      this.G.preScale(f3, f4);
      this.G.preTranslate(-this.C / 2, -this.D / 2);
      paramCanvas.drawBitmap(localBitmap1, this.G, this.b);
      paramCanvas.drawBitmap(localBitmap2, this.G, this.b);
      return;
      if (this.n)
      {
        localBitmap1 = this.w;
        localBitmap2 = this.u;
      }
      else if (this.j == d.c)
      {
        localBitmap1 = this.x;
        localBitmap2 = this.t;
      }
      else
      {
        if ((this.j != d.a) && (this.j != d.b))
          break;
        localBitmap1 = this.w;
        localBitmap2 = this.t;
      }
    }
    throw new IllegalStateException("unknown display mode " + this.j);
  }

  private void a(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getHistorySize();
    int i2 = 0;
    if (i2 < i1 + 1)
    {
      float f1;
      label26: float f2;
      label38: float f3;
      float f6;
      float f7;
      float f8;
      float f9;
      label234: float f10;
      label246: float f11;
      label287: float f12;
      float f13;
      float f15;
      float f14;
      float f17;
      float f16;
      if (i2 < i1)
      {
        f1 = paramMotionEvent.getHistoricalX(i2);
        if (i2 >= i1)
          break label517;
        f2 = paramMotionEvent.getHistoricalY(i2);
        int i3 = this.e.size();
        c localc1 = a(f1, f2);
        int i4 = this.e.size();
        if ((localc1 != null) && (i4 == 1))
        {
          this.n = true;
          b();
        }
        if (Math.abs(f1 - this.g) + Math.abs(f2 - this.h) > 0.01F * this.r)
        {
          f3 = this.g;
          float f4 = this.h;
          this.g = f1;
          this.h = f2;
          if ((!this.n) || (i4 <= 0))
            break label593;
          ArrayList localArrayList = this.e;
          float f5 = 0.5F * (this.r * this.o);
          c localc2 = (c)localArrayList.get(i4 - 1);
          f6 = c(localc2.b);
          f7 = d(localc2.a);
          Rect localRect = this.B;
          if (f6 >= f1)
            break label526;
          f8 = f1;
          f9 = f6;
          if (f7 >= f2)
            break label537;
          f10 = f7;
          localRect.set((int)(f9 - f5), (int)(f10 - f5), (int)(f8 + f5), (int)(f2 + f5));
          if (f6 >= f3)
            break label548;
          f11 = f3;
          if (f7 < f4)
          {
            float f22 = f4;
            f4 = f7;
            f7 = f22;
          }
          localRect.union((int)(f6 - f5), (int)(f4 - f5), (int)(f11 + f5), (int)(f7 + f5));
          if (localc1 != null)
          {
            f12 = c(localc1.b);
            f13 = d(localc1.a);
            if (i4 < 2)
              break label574;
            c localc3 = (c)localArrayList.get(i4 - 1 - (i4 - i3));
            f15 = c(localc3.b);
            f14 = d(localc3.a);
            if (f12 < f15)
            {
              float f21 = f15;
              f15 = f12;
              f12 = f21;
            }
            if (f13 >= f14)
              break label559;
            float f20 = f12;
            f17 = f13;
            f16 = f20;
            label451: float f18 = this.r / 2.0F;
            float f19 = this.s / 2.0F;
            localRect.set((int)(f15 - f18), (int)(f17 - f19), (int)(f16 + f18), (int)(f14 + f19));
          }
          invalidate(localRect);
        }
      }
      while (true)
      {
        i2++;
        break;
        f1 = paramMotionEvent.getX();
        break label26;
        label517: f2 = paramMotionEvent.getY();
        break label38;
        label526: f8 = f6;
        f9 = f1;
        break label234;
        label537: f10 = f2;
        f2 = f7;
        break label246;
        label548: f11 = f6;
        f6 = f3;
        break label287;
        label559: f16 = f12;
        f17 = f14;
        f14 = f13;
        break label451;
        label574: f14 = f13;
        f15 = f12;
        f16 = f12;
        f17 = f13;
        break label451;
        label593: invalidate();
      }
    }
  }

  private void a(c paramc)
  {
    this.f[paramc.a()][paramc.b()] = 1;
    this.e.add(paramc);
    a();
  }

  private int b(float paramFloat)
  {
    float f1 = this.r;
    float f2 = f1 * this.q;
    float f3 = getPaddingLeft() + (f1 - f2) / 2.0F;
    int i1 = 0;
    if (i1 < 3)
    {
      float f4 = f3 + f1 * i1;
      if ((paramFloat < f4) || (paramFloat > f4 + f2));
    }
    while (true)
    {
      return i1;
      i1++;
      break;
      i1 = -1;
    }
  }

  private c b(float paramFloat1, float paramFloat2)
  {
    int i1 = a(paramFloat2);
    c localc = null;
    if (i1 < 0);
    while (true)
    {
      return localc;
      int i2 = b(paramFloat1);
      localc = null;
      if (i2 >= 0)
      {
        int i3 = this.f[i1][i2];
        localc = null;
        if (i3 == 0)
          localc = c.a(i1, i2);
      }
    }
  }

  private void b()
  {
    if (this.d != null)
      this.d.a();
    b(2131493795);
  }

  private void b(int paramInt)
  {
    setContentDescription(getContext().getString(paramInt));
    sendAccessibilityEvent(4);
    setContentDescription(null);
  }

  private void b(MotionEvent paramMotionEvent)
  {
    if (!this.e.isEmpty())
    {
      this.n = false;
      c();
      invalidate();
    }
  }

  private float c(int paramInt)
  {
    return getPaddingLeft() + paramInt * this.r + this.r / 2.0F;
  }

  private void c()
  {
    if (this.d != null)
      this.d.b(this.e);
    b(2131493798);
  }

  private void c(MotionEvent paramMotionEvent)
  {
    e();
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    c localc = a(f1, f2);
    if (localc != null)
    {
      this.n = true;
      this.j = d.a;
      b();
    }
    while (true)
    {
      if (localc != null)
      {
        float f3 = c(localc.b);
        float f4 = d(localc.a);
        float f5 = this.r / 2.0F;
        float f6 = this.s / 2.0F;
        invalidate((int)(f3 - f5), (int)(f4 - f6), (int)(f3 + f5), (int)(f4 + f6));
      }
      this.g = f1;
      this.h = f2;
      return;
      this.n = false;
      d();
    }
  }

  private float d(int paramInt)
  {
    return getPaddingTop() + paramInt * this.s + this.s / 2.0F;
  }

  private void d()
  {
    if (this.d != null)
      this.d.b();
    b(2131493796);
  }

  private void e()
  {
    this.e.clear();
    f();
    this.j = d.a;
    invalidate();
  }

  private void f()
  {
    for (int i1 = 0; i1 < 3; i1++)
      for (int i2 = 0; i2 < 3; i2++)
        this.f[i1][i2] = 0;
  }

  public void a(d paramd)
  {
    this.j = paramd;
    if (paramd == d.b)
    {
      if (this.e.size() == 0)
        throw new IllegalStateException("you must have a pattern to animate if you want to set the display mode to animate");
      this.i = SystemClock.elapsedRealtime();
      c localc = (c)this.e.get(0);
      this.g = c(localc.b());
      this.h = d(localc.a());
      f();
    }
    invalidate();
  }

  public void a(d paramd, List paramList)
  {
    this.e.clear();
    this.e.addAll(paramList);
    f();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      this.f[localc.a()][localc.b()] = 1;
    }
    a(paramd);
  }

  protected int getSuggestedMinimumHeight()
  {
    return 3 * this.C;
  }

  protected int getSuggestedMinimumWidth()
  {
    return 3 * this.C;
  }

  protected void onDraw(Canvas paramCanvas)
  {
    ArrayList localArrayList = this.e;
    int i1 = localArrayList.size();
    boolean[][] arrayOfBoolean = this.f;
    int i14;
    float f1;
    float f2;
    Path localPath;
    int i2;
    int i3;
    if (this.j == d.b)
    {
      int i10 = 300 * (i1 + 1);
      int i11 = (int)(SystemClock.elapsedRealtime() - this.i) % i10;
      int i12 = i11 / 300;
      f();
      for (int i13 = 0; i13 < i12; i13++)
      {
        c localc6 = (c)localArrayList.get(i13);
        arrayOfBoolean[localc6.a()][localc6.b()] = 1;
      }
      if ((i12 > 0) && (i12 < i1))
      {
        i14 = 1;
        if (i14 != 0)
        {
          float f7 = i11 % 300 / 300.0F;
          c localc4 = (c)localArrayList.get(i12 - 1);
          float f8 = c(localc4.b);
          float f9 = d(localc4.a);
          c localc5 = (c)localArrayList.get(i12);
          float f10 = f7 * (c(localc5.b) - f8);
          float f11 = f7 * (d(localc5.a) - f9);
          this.g = (f8 + f10);
          this.h = (f11 + f9);
        }
        invalidate();
      }
    }
    else
    {
      f1 = this.r;
      f2 = this.s;
      float f3 = 0.5F * (f1 * this.o);
      this.c.setStrokeWidth(f3);
      localPath = this.A;
      localPath.rewind();
      i2 = getPaddingTop();
      i3 = getPaddingLeft();
    }
    for (int i4 = 0; ; i4++)
    {
      if (i4 >= 3)
        break label369;
      float f6 = i2 + f2 * i4;
      int i9 = 0;
      while (true)
        if (i9 < 3)
        {
          a(paramCanvas, (int)(i3 + f1 * i9), (int)f6, arrayOfBoolean[i4][i9]);
          i9++;
          continue;
          i14 = 0;
          break;
        }
    }
    label369: int i5;
    boolean bool;
    if ((!this.l) || (this.j == d.c))
    {
      i5 = 1;
      if ((0x2 & this.b.getFlags()) == 0)
        break label575;
      bool = true;
      label404: this.b.setFilterBitmap(true);
      if (i5 == 0);
    }
    int i7;
    c localc1;
    for (int i8 = 0; ; i8++)
    {
      c localc2;
      c localc3;
      if (i8 < i1 - 1)
      {
        localc2 = (c)localArrayList.get(i8);
        localc3 = (c)localArrayList.get(i8 + 1);
        if (arrayOfBoolean[localc3.a][localc3.b] != 0);
      }
      else
      {
        if (i5 != 0)
        {
          i6 = 0;
          i7 = 0;
          if (i7 < i1)
          {
            localc1 = (c)localArrayList.get(i7);
            if (arrayOfBoolean[localc1.a][localc1.b] != 0)
              break label622;
          }
          if (((this.n) || (this.j == d.b)) && (i6 != 0))
            localPath.lineTo(this.g, this.h);
          paramCanvas.drawPath(localPath, this.c);
        }
        this.b.setFilterBitmap(bool);
        return;
        i5 = 0;
        break;
        label575: bool = false;
        break label404;
      }
      a(paramCanvas, i3 + f1 * localc2.b, i2 + f2 * localc2.a, localc2, localc3);
    }
    label622: int i6 = 1;
    float f4 = c(localc1.b);
    float f5 = d(localc1.a);
    if (i7 == 0)
      localPath.moveTo(f4, f5);
    while (true)
    {
      i7++;
      break;
      localPath.lineTo(f4, f5);
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i1 = getSuggestedMinimumWidth();
    int i2 = getSuggestedMinimumHeight();
    int i3 = a(paramInt1, i1);
    int i4 = a(paramInt2, i2);
    switch (this.E)
    {
    default:
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      setMeasuredDimension(i3, i4);
      return;
      i4 = Math.min(i3, i4);
      i3 = i4;
      continue;
      i4 = Math.min(i3, i4);
      continue;
      i3 = Math.min(i3, i4);
    }
  }

  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    LockPatternView.SavedState localSavedState = (LockPatternView.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    a(d.a, a.a(localSavedState.a()));
    this.j = d.values()[localSavedState.b()];
    this.k = localSavedState.c();
    this.l = localSavedState.d();
    this.m = localSavedState.e();
  }

  protected Parcelable onSaveInstanceState()
  {
    return new LockPatternView.SavedState(super.onSaveInstanceState(), a.a(this.e), this.j.ordinal(), this.k, this.l, this.m, null);
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = paramInt2 - getPaddingTop() - getPaddingBottom();
    this.s = (i1 / 3.0F);
    int i2 = paramInt1 - getPaddingLeft() - getPaddingRight();
    if ((this.E == 0) && (i2 > i1))
    {
      this.r = (i1 / 3.0F);
      float f1 = i2 - i1;
      setPadding(Math.round(getPaddingLeft() + f1 / 2.0F), getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }
    while (true)
    {
      return;
      this.r = (i2 / 3.0F);
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool = true;
    if ((!this.k) || (!isEnabled()))
      bool = false;
    while (true)
    {
      return bool;
      switch (paramMotionEvent.getAction())
      {
      default:
        bool = false;
        break;
      case 0:
        c(paramMotionEvent);
        break;
      case 1:
        b(paramMotionEvent);
        break;
      case 2:
        a(paramMotionEvent);
        break;
      case 3:
        e();
        this.n = false;
        d();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.LockPatternView
 * JD-Core Version:    0.6.2
 */