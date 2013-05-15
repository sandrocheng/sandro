package android.support.v4.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.TextView;

public class PagerTabStrip extends PagerTitleStrip
{
  private int f = this.e;
  private int g;
  private int h;
  private int i;
  private int j;
  private int k;
  private final Paint l = new Paint();
  private final Rect m = new Rect();
  private int n = 255;
  private boolean o = false;
  private boolean p = false;
  private int q;
  private boolean r;
  private float s;
  private float t;
  private int u;

  public PagerTabStrip(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.l.setColor(this.f);
    float f1 = paramContext.getResources().getDisplayMetrics().density;
    this.g = ((int)(0.5F + 3.0F * f1));
    this.h = ((int)(0.5F + 6.0F * f1));
    this.i = ((int)(64.0F * f1));
    this.k = ((int)(0.5F + 16.0F * f1));
    this.q = ((int)(0.5F + 1.0F * f1));
    this.j = ((int)(0.5F + f1 * 32.0F));
    this.u = ViewConfiguration.get(paramContext).getScaledTouchSlop();
    setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
    a(b());
    setWillNotDraw(false);
    this.b.setFocusable(true);
    this.b.setOnClickListener(new y(this));
    this.d.setFocusable(true);
    this.d.setOnClickListener(new z(this));
    if (getBackground() == null)
      this.o = true;
  }

  int a()
  {
    return Math.max(super.a(), this.j);
  }

  public void a(int paramInt)
  {
    if (paramInt < this.i)
      paramInt = this.i;
    super.a(paramInt);
  }

  void a(int paramInt, float paramFloat, boolean paramBoolean)
  {
    Rect localRect = this.m;
    int i1 = getHeight();
    int i2 = this.c.getLeft() - this.k;
    int i3 = this.c.getRight() + this.k;
    int i4 = i1 - this.g;
    localRect.set(i2, i4, i3, i1);
    super.a(paramInt, paramFloat, paramBoolean);
    this.n = ((int)(255.0F * (2.0F * Math.abs(paramFloat - 0.5F))));
    localRect.union(this.c.getLeft() - this.k, i4, this.c.getRight() + this.k, i1);
    invalidate(localRect);
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int i1 = getHeight();
    int i2 = this.c.getLeft() - this.k;
    int i3 = this.c.getRight() + this.k;
    int i4 = i1 - this.g;
    this.l.setColor(this.n << 24 | 0xFFFFFF & this.f);
    paramCanvas.drawRect(i2, i4, i3, i1, this.l);
    if (this.o)
    {
      this.l.setColor(0xFF000000 | 0xFFFFFF & this.f);
      paramCanvas.drawRect(getPaddingLeft(), i1 - this.q, getWidth() - getPaddingRight(), i1, this.l);
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getAction();
    boolean bool1;
    if (i1 != 0)
    {
      boolean bool2 = this.r;
      bool1 = false;
      if (bool2)
        return bool1;
    }
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    switch (i1)
    {
    default:
    case 0:
    case 2:
    case 1:
    }
    while (true)
    {
      bool1 = true;
      break;
      this.s = f1;
      this.t = f2;
      this.r = false;
      continue;
      if ((Math.abs(f1 - this.s) > this.u) || (Math.abs(f2 - this.t) > this.u))
      {
        this.r = true;
        continue;
        if (f1 < this.c.getLeft() - this.k)
          this.a.a(-1 + this.a.c());
        else if (f1 > this.c.getRight() + this.k)
          this.a.a(1 + this.a.c());
      }
    }
  }

  public void setBackgroundColor(int paramInt)
  {
    super.setBackgroundColor(paramInt);
    if (!this.p)
      if ((0xFF000000 & paramInt) != 0)
        break label27;
    label27: for (boolean bool = true; ; bool = false)
    {
      this.o = bool;
      return;
    }
  }

  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    super.setBackgroundDrawable(paramDrawable);
    if (!this.p)
      if (paramDrawable != null)
        break label24;
    label24: for (boolean bool = true; ; bool = false)
    {
      this.o = bool;
      return;
    }
  }

  public void setBackgroundResource(int paramInt)
  {
    super.setBackgroundResource(paramInt);
    if (!this.p)
      if (paramInt != 0)
        break label24;
    label24: for (boolean bool = true; ; bool = false)
    {
      this.o = bool;
      return;
    }
  }

  public void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramInt4 < this.h)
      paramInt4 = this.h;
    super.setPadding(paramInt1, paramInt2, paramInt3, paramInt4);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.PagerTabStrip
 * JD-Core Version:    0.6.2
 */