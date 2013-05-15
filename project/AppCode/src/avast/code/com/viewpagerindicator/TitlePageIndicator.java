package com.viewpagerindicator;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Rect;
import android.os.Parcelable;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ay;
import android.support.v4.view.bk;
import android.support.v4.view.s;
import android.support.v4.view.x;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import com.avast.android.mobilesecurity.v;
import java.util.ArrayList;

public class TitlePageIndicator extends View
  implements a
{
  private h A;
  private ViewPager a;
  private bk b;
  private x c;
  private int d = -1;
  private float e;
  private int f;
  private final Paint g = new Paint();
  private boolean h;
  private int i;
  private int j;
  private Path k = new Path();
  private final Rect l = new Rect();
  private final Paint m = new Paint();
  private g n;
  private final Paint o = new Paint();
  private float p;
  private float q;
  private float r;
  private float s;
  private float t;
  private float u;
  private float v;
  private int w;
  private float x = -1.0F;
  private int y = -1;
  private boolean z;

  public TitlePageIndicator(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 2130772102);
  }

  public TitlePageIndicator(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (isInEditMode());
    while (true)
    {
      return;
      Resources localResources = getResources();
      int i1 = localResources.getColor(2131296291);
      float f1 = localResources.getDimension(2131361866);
      int i2 = localResources.getInteger(2131427353);
      float f2 = localResources.getDimension(2131361867);
      float f3 = localResources.getDimension(2131361868);
      float f4 = localResources.getDimension(2131361869);
      int i3 = localResources.getColor(2131296292);
      boolean bool = localResources.getBoolean(2131230735);
      int i4 = localResources.getColor(2131296293);
      float f5 = localResources.getDimension(2131361870);
      float f6 = localResources.getDimension(2131361871);
      float f7 = localResources.getDimension(2131361865);
      float f8 = localResources.getDimension(2131361872);
      TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, v.t, paramInt, 0);
      this.v = localTypedArray.getDimension(5, f1);
      this.n = g.a(localTypedArray.getInteger(6, i2));
      this.p = localTypedArray.getDimension(7, f2);
      this.q = localTypedArray.getDimension(8, f3);
      this.r = localTypedArray.getDimension(9, f4);
      this.t = localTypedArray.getDimension(12, f8);
      this.s = localTypedArray.getDimension(11, f6);
      this.u = localTypedArray.getDimension(3, f7);
      this.j = localTypedArray.getColor(2, i3);
      this.i = localTypedArray.getColor(1, i4);
      this.h = localTypedArray.getBoolean(10, bool);
      float f9 = localTypedArray.getDimension(0, f5);
      int i5 = localTypedArray.getColor(4, i1);
      this.g.setTextSize(f9);
      this.g.setAntiAlias(true);
      this.m.setStyle(Paint.Style.FILL_AND_STROKE);
      this.m.setStrokeWidth(this.v);
      this.m.setColor(i5);
      this.o.setStyle(Paint.Style.FILL_AND_STROKE);
      this.o.setColor(i5);
      localTypedArray.recycle();
      this.w = ay.a(ViewConfiguration.get(paramContext));
    }
  }

  private Rect a(int paramInt, Paint paramPaint)
  {
    Rect localRect = new Rect();
    CharSequence localCharSequence = d(paramInt);
    localRect.right = ((int)paramPaint.measureText(localCharSequence, 0, localCharSequence.length()));
    localRect.bottom = ((int)(paramPaint.descent() - paramPaint.ascent()));
    return localRect;
  }

  private ArrayList a(Paint paramPaint)
  {
    ArrayList localArrayList = new ArrayList();
    int i1 = this.a.b().getCount();
    int i2 = getWidth();
    int i3 = i2 / 2;
    for (int i4 = 0; i4 < i1; i4++)
    {
      Rect localRect = a(i4, paramPaint);
      int i5 = localRect.right - localRect.left;
      int i6 = localRect.bottom - localRect.top;
      localRect.left = ((int)(i3 - i5 / 2.0F + (i4 - this.d - this.e) * i2));
      localRect.right = (i5 + localRect.left);
      localRect.top = 0;
      localRect.bottom = i6;
      localArrayList.add(localRect);
    }
    return localArrayList;
  }

  private void a(Rect paramRect, float paramFloat, int paramInt)
  {
    paramRect.right = ((int)(paramInt - this.u));
    paramRect.left = ((int)(paramRect.right - paramFloat));
  }

  private void b(Rect paramRect, float paramFloat, int paramInt)
  {
    paramRect.left = ((int)(paramInt + this.u));
    paramRect.right = ((int)(paramFloat + this.u));
  }

  private CharSequence d(int paramInt)
  {
    Object localObject = this.c.getPageTitle(paramInt);
    if (localObject == null)
      localObject = "";
    return localObject.toString();
  }

  public void a(int paramInt)
  {
    if (this.f == 0)
    {
      this.d = paramInt;
      invalidate();
    }
    if (this.b != null)
      this.b.a(paramInt);
  }

  public void a(int paramInt1, float paramFloat, int paramInt2)
  {
    this.d = paramInt1;
    this.e = paramFloat;
    invalidate();
    if (this.b != null)
      this.b.a(paramInt1, paramFloat, paramInt2);
  }

  public void a(ViewPager paramViewPager)
  {
    if (this.a == paramViewPager);
    while (true)
    {
      return;
      if (this.a != null)
        this.a.a(null);
      this.c = paramViewPager.b();
      if (this.c == null)
        throw new IllegalStateException("ViewPager does not have adapter instance.");
      this.a = paramViewPager;
      this.a.a(this);
      invalidate();
    }
  }

  public void a(bk parambk)
  {
    this.b = parambk;
  }

  public void b(int paramInt)
  {
    this.f = paramInt;
    if (this.b != null)
      this.b.b(paramInt);
  }

  public void c(int paramInt)
  {
    if (this.a == null)
      throw new IllegalStateException("ViewPager has not been bound.");
    this.a.a(paramInt);
    this.d = paramInt;
    invalidate();
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (this.a == null);
    while (true)
    {
      return;
      int i1 = this.a.b().getCount();
      if (i1 != 0)
      {
        if ((this.d == -1) && (this.a != null))
          this.d = this.a.c();
        ArrayList localArrayList = a(this.g);
        int i2 = localArrayList.size();
        if (this.d >= i2)
        {
          c(i2 - 1);
        }
        else
        {
          int i3 = i1 - 1;
          float f1 = getWidth() / 2.0F;
          int i4 = getLeft();
          float f2 = i4 + this.u;
          int i5 = getWidth();
          int i6 = getHeight();
          int i7 = i4 + i5;
          float f3 = i7 - this.u;
          int i8 = this.d;
          int i10;
          float f5;
          int i11;
          if (this.e <= 0.5D)
          {
            float f8 = this.e;
            i10 = i8;
            f5 = f8;
            if (f5 > 0.25F)
              break label452;
            i11 = 1;
            label192: if (f5 > 0.05F)
              break label458;
          }
          float f6;
          label452: label458: for (int i12 = 1; ; i12 = 0)
          {
            f6 = (0.25F - f5) / 0.25F;
            Rect localRect1 = (Rect)localArrayList.get(this.d);
            float f7 = localRect1.right - localRect1.left;
            if (localRect1.left < f2)
              b(localRect1, f7, i4);
            if (localRect1.right > f3)
              a(localRect1, f7, i7);
            if (this.d <= 0)
              break label464;
            for (int i18 = -1 + this.d; i18 >= 0; i18--)
            {
              Rect localRect6 = (Rect)localArrayList.get(i18);
              if (localRect6.left < f2)
              {
                int i19 = localRect6.right - localRect6.left;
                b(localRect6, i19, i4);
                Rect localRect7 = (Rect)localArrayList.get(i18 + 1);
                if (localRect6.right + this.s > localRect7.left)
                {
                  localRect6.left = ((int)(localRect7.left - i19 - this.s));
                  localRect6.right = (i19 + localRect6.left);
                }
              }
            }
            int i9 = i8 + 1;
            float f4 = 1.0F - this.e;
            i10 = i9;
            f5 = f4;
            break;
            i11 = 0;
            break label192;
          }
          label464: if (this.d < i3)
            for (int i16 = 1 + this.d; i16 < i1; i16++)
            {
              Rect localRect4 = (Rect)localArrayList.get(i16);
              if (localRect4.right > f3)
              {
                int i17 = localRect4.right - localRect4.left;
                a(localRect4, i17, i7);
                Rect localRect5 = (Rect)localArrayList.get(i16 - 1);
                if (localRect4.left - this.s < localRect5.right)
                {
                  localRect4.left = ((int)(localRect5.right + this.s));
                  localRect4.right = (i17 + localRect4.left);
                }
              }
            }
          int i13 = this.i >>> 24;
          int i14 = 0;
          if (i14 < i1)
          {
            Rect localRect3 = (Rect)localArrayList.get(i14);
            int i15;
            label683: CharSequence localCharSequence;
            Paint localPaint;
            if (((localRect3.left > i4) && (localRect3.left < i7)) || ((localRect3.right > i4) && (localRect3.right < i7)))
            {
              if (i14 != i10)
                break label878;
              i15 = 1;
              localCharSequence = d(i14);
              localPaint = this.g;
              if ((i15 == 0) || (i12 == 0) || (!this.h))
                break label884;
            }
            label878: label884: for (boolean bool = true; ; bool = false)
            {
              localPaint.setFakeBoldText(bool);
              this.g.setColor(this.i);
              if ((i15 != 0) && (i11 != 0))
                this.g.setAlpha(i13 - (int)(f6 * i13));
              paramCanvas.drawText(localCharSequence, 0, localCharSequence.length(), localRect3.left, localRect3.bottom + this.t, this.g);
              if ((i15 != 0) && (i11 != 0))
              {
                this.g.setColor(this.j);
                this.g.setAlpha((int)(f6 * (this.j >>> 24)));
                paramCanvas.drawText(localCharSequence, 0, localCharSequence.length(), localRect3.left, localRect3.bottom + this.t, this.g);
              }
              i14++;
              break;
              i15 = 0;
              break label683;
            }
          }
          this.k.reset();
          this.k.moveTo(0.0F, i6 - this.v / 2.0F);
          this.k.lineTo(i5, i6 - this.v / 2.0F);
          this.k.close();
          paramCanvas.drawPath(this.k, this.m);
          switch (f.a[this.n.ordinal()])
          {
          default:
            break;
          case 1:
            this.k.reset();
            this.k.moveTo(f1, i6 - this.v - this.p);
            this.k.lineTo(f1 + this.p, i6 - this.v);
            this.k.lineTo(f1 - this.p, i6 - this.v);
            this.k.close();
            paramCanvas.drawPath(this.k, this.o);
            break;
          case 2:
            if ((i11 != 0) && (i10 < i2))
            {
              Rect localRect2 = (Rect)localArrayList.get(i10);
              this.k.reset();
              this.k.moveTo(localRect2.left - this.q, i6 - this.v);
              this.k.lineTo(localRect2.right + this.q, i6 - this.v);
              this.k.lineTo(localRect2.right + this.q, i6 - this.v - this.p);
              this.k.lineTo(localRect2.left - this.q, i6 - this.v - this.p);
              this.k.close();
              this.o.setAlpha((int)(255.0F * f6));
              paramCanvas.drawPath(this.k, this.o);
              this.o.setAlpha(255);
            }
            break;
          }
        }
      }
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i1 = View.MeasureSpec.getSize(paramInt1);
    float f1;
    if (View.MeasureSpec.getMode(paramInt2) == 1073741824)
      f1 = View.MeasureSpec.getSize(paramInt2);
    while (true)
    {
      setMeasuredDimension(i1, (int)f1);
      return;
      this.l.setEmpty();
      this.l.bottom = ((int)(this.g.descent() - this.g.ascent()));
      f1 = this.l.bottom - this.l.top + this.v + this.r + this.t;
      if (this.n != g.a)
        f1 += this.p;
    }
  }

  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    TitlePageIndicator.SavedState localSavedState = (TitlePageIndicator.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    this.d = localSavedState.a;
    requestLayout();
  }

  public Parcelable onSaveInstanceState()
  {
    TitlePageIndicator.SavedState localSavedState = new TitlePageIndicator.SavedState(super.onSaveInstanceState());
    localSavedState.a = this.d;
    return localSavedState;
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = 1;
    if (super.onTouchEvent(paramMotionEvent));
    while (true)
    {
      return i1;
      if ((this.a == null) || (this.a.b().getCount() == 0))
        i1 = 0;
      else
        switch (0xFF & paramMotionEvent.getAction())
        {
        case 4:
        default:
          break;
        case 0:
          this.y = s.b(paramMotionEvent, 0);
          this.x = paramMotionEvent.getX();
          break;
        case 2:
          float f6 = s.c(paramMotionEvent, s.a(paramMotionEvent, this.y));
          float f7 = f6 - this.x;
          if ((!this.z) && (Math.abs(f7) > this.w))
            this.z = i1;
          if (this.z)
          {
            this.x = f6;
            if ((this.a.h()) || (this.a.f()))
              this.a.b(f7);
          }
          break;
        case 1:
        case 3:
          if (!this.z)
          {
            int i5 = this.a.b().getCount();
            int i6 = getWidth();
            float f1 = i6 / 2.0F;
            float f2 = i6 / 6.0F;
            float f3 = f1 - f2;
            float f4 = f2 + f1;
            float f5 = paramMotionEvent.getX();
            if (f5 < f3)
            {
              if (this.d > 0)
                this.a.a(-1 + this.d);
            }
            else if (f5 > f4)
            {
              if (this.d < i5 - 1)
                this.a.a(1 + this.d);
            }
            else if (this.A != null)
              this.A.a(this.d);
          }
          else
          {
            this.z = false;
            this.y = -1;
            if (this.a.h())
              this.a.g();
          }
          break;
        case 5:
          int i4 = s.a(paramMotionEvent);
          this.x = s.c(paramMotionEvent, i4);
          this.y = s.b(paramMotionEvent, i4);
          break;
        case 6:
          int i2 = s.a(paramMotionEvent);
          if (s.b(paramMotionEvent, i2) == this.y)
          {
            int i3 = 0;
            if (i2 == 0)
              i3 = i1;
            this.y = s.b(paramMotionEvent, i3);
          }
          this.x = s.c(paramMotionEvent, s.a(paramMotionEvent, this.y));
        }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.viewpagerindicator.TitlePageIndicator
 * JD-Core Version:    0.6.2
 */