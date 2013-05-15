package android.support.v4.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.v4.e.g;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.FloatMath;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class ViewPager extends ViewGroup
{
  private static final int[] a = { 16842931 };
  private static final bo af = new bo();
  private static final Comparator b = new bd();
  private static final Interpolator c = new be();
  private boolean A;
  private int B;
  private int C;
  private int D;
  private float E;
  private float F;
  private float G;
  private int H = -1;
  private VelocityTracker I;
  private int J;
  private int K;
  private int L;
  private int M;
  private int N;
  private int O;
  private boolean P;
  private long Q;
  private g R;
  private g S;
  private boolean T = true;
  private boolean U = false;
  private boolean V;
  private int W;
  private bk Z;
  private bk aa;
  private bj ab;
  private bl ac;
  private int ad;
  private ArrayList ae;
  private final Runnable ag = new bf(this);
  private int ah = 0;
  private final ArrayList d = new ArrayList();
  private final bh e = new bh();
  private final Rect f = new Rect();
  private x g;
  private int h;
  private int i = -1;
  private Parcelable j = null;
  private ClassLoader k = null;
  private Scroller l;
  private bm m;
  private int n;
  private Drawable o;
  private int p;
  private int q;
  private float r = -3.402824E+038F;
  private float s = 3.4028235E+38F;
  private int t;
  private int u;
  private boolean v;
  private boolean w;
  private boolean x;
  private int y = 1;
  private boolean z;

  public ViewPager(Context paramContext)
  {
    super(paramContext);
    a();
  }

  public ViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }

  private int a(int paramInt1, float paramFloat, int paramInt2, int paramInt3)
  {
    if ((Math.abs(paramInt3) > this.L) && (Math.abs(paramInt2) > this.J))
      if (paramInt2 <= 0);
    while (true)
    {
      if (this.d.size() > 0)
      {
        bh localbh1 = (bh)this.d.get(0);
        bh localbh2 = (bh)this.d.get(-1 + this.d.size());
        paramInt1 = Math.max(localbh1.b, Math.min(paramInt1, localbh2.b));
      }
      return paramInt1;
      paramInt1++;
      continue;
      if ((this.N >= 0) && (this.N < paramInt1) && (paramFloat < 0.5F))
        paramInt1++;
      else if ((this.O >= 0) && (this.O > paramInt1 + 1) && (paramFloat >= 0.5F))
        paramInt1--;
      else
        paramInt1 = (int)(0.5F + (paramFloat + paramInt1));
    }
  }

  private Rect a(Rect paramRect, View paramView)
  {
    if (paramRect == null);
    for (Rect localRect1 = new Rect(); ; localRect1 = paramRect)
    {
      if (paramView == null)
        localRect1.set(0, 0, 0, 0);
      for (Rect localRect2 = localRect1; ; localRect2 = localRect1)
      {
        return localRect2;
        localRect1.left = paramView.getLeft();
        localRect1.right = paramView.getRight();
        localRect1.top = paramView.getTop();
        localRect1.bottom = paramView.getBottom();
        ViewGroup localViewGroup;
        for (ViewParent localViewParent = paramView.getParent(); ((localViewParent instanceof ViewGroup)) && (localViewParent != this); localViewParent = localViewGroup.getParent())
        {
          localViewGroup = (ViewGroup)localViewParent;
          localRect1.left += localViewGroup.getLeft();
          localRect1.right += localViewGroup.getRight();
          localRect1.top += localViewGroup.getTop();
          localRect1.bottom += localViewGroup.getBottom();
        }
      }
    }
  }

  private void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt2 > 0) && (!this.d.isEmpty()))
    {
      int i2 = paramInt1 + paramInt3;
      int i3 = paramInt2 + paramInt4;
      int i4 = (int)(getScrollX() / i3 * i2);
      scrollTo(i4, getScrollY());
      if (!this.l.isFinished())
      {
        int i5 = this.l.getDuration() - this.l.timePassed();
        bh localbh2 = e(this.h);
        this.l.startScroll(i4, 0, (int)(localbh2.e * paramInt1), 0, i5);
      }
      return;
    }
    bh localbh1 = e(this.h);
    if (localbh1 != null);
    for (float f1 = Math.min(localbh1.e, this.s); ; f1 = 0.0F)
    {
      int i1 = (int)(f1 * paramInt1);
      if (i1 == getScrollX())
        break;
      a(false);
      scrollTo(i1, getScrollY());
      break;
    }
  }

  private void a(int paramInt1, boolean paramBoolean1, int paramInt2, boolean paramBoolean2)
  {
    bh localbh = e(paramInt1);
    if (localbh != null);
    for (int i1 = (int)(getWidth() * Math.max(this.r, Math.min(localbh.e, this.s))); ; i1 = 0)
    {
      if (paramBoolean1)
      {
        a(i1, 0, paramInt2);
        if ((paramBoolean2) && (this.Z != null))
          this.Z.a(paramInt1);
        if ((paramBoolean2) && (this.aa != null))
          this.aa.a(paramInt1);
      }
      while (true)
      {
        return;
        if ((paramBoolean2) && (this.Z != null))
          this.Z.a(paramInt1);
        if ((paramBoolean2) && (this.aa != null))
          this.aa.a(paramInt1);
        a(false);
        scrollTo(i1, 0);
      }
    }
  }

  private void a(bh parambh1, int paramInt, bh parambh2)
  {
    int i1 = this.g.getCount();
    int i2 = getWidth();
    float f1;
    int i12;
    float f9;
    int i15;
    int i16;
    if (i2 > 0)
    {
      f1 = this.n / i2;
      if (parambh2 == null)
        break label371;
      i12 = parambh2.b;
      if (i12 < parambh1.b)
      {
        f9 = f1 + (parambh2.e + parambh2.d);
        i15 = i12 + 1;
        i16 = 0;
      }
    }
    else
    {
      while (true)
      {
        if ((i15 > parambh1.b) || (i16 >= this.d.size()))
          break label371;
        bh localbh4 = (bh)this.d.get(i16);
        while (true)
          if ((i15 > localbh4.b) && (i16 < -1 + this.d.size()))
          {
            i16++;
            localbh4 = (bh)this.d.get(i16);
            continue;
            f1 = 0.0F;
            break;
          }
        while (i15 < localbh4.b)
        {
          f9 += f1 + this.g.getPageWidth(i15);
          i15++;
        }
        localbh4.e = f9;
        f9 += f1 + localbh4.d;
        i15++;
      }
    }
    if (i12 > parambh1.b)
    {
      int i13 = -1 + this.d.size();
      float f8 = parambh2.e;
      for (int i14 = i12 - 1; (i14 >= parambh1.b) && (i13 >= 0); i14--)
      {
        for (bh localbh3 = (bh)this.d.get(i13); (i14 < localbh3.b) && (i13 > 0); localbh3 = (bh)this.d.get(i13))
          i13--;
        while (i14 > localbh3.b)
        {
          f8 -= f1 + this.g.getPageWidth(i14);
          i14--;
        }
        f8 -= f1 + localbh3.d;
        localbh3.e = f8;
      }
    }
    label371: int i3 = this.d.size();
    float f2 = parambh1.e;
    int i4 = -1 + parambh1.b;
    float f3;
    float f4;
    if (parambh1.b == 0)
    {
      f3 = parambh1.e;
      this.r = f3;
      if (parambh1.b != i1 - 1)
        break label522;
      f4 = parambh1.e + parambh1.d - 1.0F;
      label437: this.s = f4;
    }
    label522: int i10;
    for (int i5 = paramInt - 1; ; i5 = i10)
    {
      if (i5 < 0)
        break label579;
      bh localbh2 = (bh)this.d.get(i5);
      float f7 = f2;
      while (true)
        if (i4 > localbh2.b)
        {
          x localx2 = this.g;
          int i11 = i4 - 1;
          f7 -= f1 + localx2.getPageWidth(i4);
          i4 = i11;
          continue;
          f3 = -3.402824E+038F;
          break;
          f4 = 3.4028235E+38F;
          break label437;
        }
      f2 = f7 - (f1 + localbh2.d);
      localbh2.e = f2;
      if (localbh2.b == 0)
        this.r = f2;
      i10 = i5 - 1;
      i4--;
    }
    label579: float f5 = f1 + (parambh1.e + parambh1.d);
    int i6 = 1 + parambh1.b;
    int i8;
    for (int i7 = paramInt + 1; i7 < i3; i7 = i8)
    {
      bh localbh1 = (bh)this.d.get(i7);
      float f6 = f5;
      while (i6 < localbh1.b)
      {
        x localx1 = this.g;
        int i9 = i6 + 1;
        f6 += f1 + localx1.getPageWidth(i6);
        i6 = i9;
      }
      if (localbh1.b == i1 - 1)
        this.s = (f6 + localbh1.d - 1.0F);
      localbh1.e = f6;
      f5 = f6 + (f1 + localbh1.d);
      i8 = i7 + 1;
      i6++;
    }
    this.U = false;
  }

  private void a(MotionEvent paramMotionEvent)
  {
    int i1 = s.a(paramMotionEvent);
    if (s.b(paramMotionEvent, i1) == this.H)
      if (i1 != 0)
        break label56;
    label56: for (int i2 = 1; ; i2 = 0)
    {
      this.F = s.c(paramMotionEvent, i2);
      this.H = s.b(paramMotionEvent, i2);
      if (this.I != null)
        this.I.clear();
      return;
    }
  }

  private void a(boolean paramBoolean)
  {
    if (this.ah == 2);
    int i3;
    for (int i1 = 1; ; i1 = 0)
    {
      if (i1 != 0)
      {
        c(false);
        this.l.abortAnimation();
        int i4 = getScrollX();
        int i5 = getScrollY();
        int i6 = this.l.getCurrX();
        int i7 = this.l.getCurrY();
        if ((i4 != i6) || (i5 != i7))
          scrollTo(i6, i7);
      }
      this.x = false;
      int i2 = 0;
      i3 = i1;
      while (i2 < this.d.size())
      {
        bh localbh = (bh)this.d.get(i2);
        if (localbh.c)
        {
          localbh.c = false;
          i3 = 1;
        }
        i2++;
      }
    }
    if (i3 != 0)
    {
      if (!paramBoolean)
        break label158;
      am.a(this, this.ag);
    }
    while (true)
    {
      return;
      label158: this.ag.run();
    }
  }

  private boolean a(float paramFloat1, float paramFloat2)
  {
    if (((paramFloat1 < this.C) && (paramFloat2 > 0.0F)) || ((paramFloat1 > getWidth() - this.C) && (paramFloat2 < 0.0F)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private void b(boolean paramBoolean)
  {
    int i1 = getChildCount();
    int i2 = 0;
    if (i2 < i1)
    {
      if (paramBoolean);
      for (int i3 = 2; ; i3 = 0)
      {
        am.a(getChildAt(i2), i3, null);
        i2++;
        break;
      }
    }
  }

  private void c(boolean paramBoolean)
  {
    if (this.w != paramBoolean)
      this.w = paramBoolean;
  }

  private boolean c(float paramFloat)
  {
    int i1 = 1;
    float f1 = this.F - paramFloat;
    this.F = paramFloat;
    float f2 = f1 + getScrollX();
    int i2 = getWidth();
    float f3 = i2 * this.r;
    float f4 = i2 * this.s;
    bh localbh1 = (bh)this.d.get(0);
    bh localbh2 = (bh)this.d.get(-1 + this.d.size());
    if (localbh1.b != 0)
      f3 = localbh1.e * i2;
    for (int i3 = 0; ; i3 = i1)
    {
      float f5;
      if (localbh2.b != -1 + this.g.getCount())
      {
        f5 = localbh2.e * i2;
        i1 = 0;
      }
      while (true)
      {
        boolean bool;
        if (f2 < f3)
        {
          bool = false;
          if (i3 != 0)
          {
            float f6 = f3 - f2;
            bool = this.R.a(Math.abs(f6) / i2);
          }
        }
        while (true)
        {
          this.F += f3 - (int)f3;
          scrollTo((int)f3, getScrollY());
          h((int)f3);
          return bool;
          if (f2 > f5)
          {
            bool = false;
            if (i1 != 0)
            {
              float f7 = f2 - f5;
              bool = this.S.a(Math.abs(f7) / i2);
            }
            f3 = f5;
          }
          else
          {
            f3 = f2;
            bool = false;
          }
        }
        f5 = f4;
      }
    }
  }

  private void g(int paramInt)
  {
    int i1 = 1;
    if (this.ah == paramInt)
      return;
    this.ah = paramInt;
    if (paramInt == i1)
    {
      this.O = -1;
      this.N = -1;
    }
    if (this.ac != null)
      if (paramInt == 0)
        break label67;
    while (true)
    {
      b(i1);
      if (this.Z == null)
        break;
      this.Z.b(paramInt);
      break;
      label67: i1 = 0;
    }
  }

  private boolean h(int paramInt)
  {
    boolean bool1;
    if (this.d.size() == 0)
    {
      this.V = false;
      a(0, 0.0F, 0);
      boolean bool2 = this.V;
      bool1 = false;
      if (!bool2)
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }
    else
    {
      bh localbh = m();
      int i1 = getWidth();
      int i2 = i1 + this.n;
      float f1 = this.n / i1;
      int i3 = localbh.b;
      float f2 = (paramInt / i1 - localbh.e) / (f1 + localbh.d);
      int i4 = (int)(f2 * i2);
      this.V = false;
      a(i3, f2, i4);
      if (!this.V)
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
      bool1 = true;
    }
    return bool1;
  }

  private void l()
  {
    for (int i1 = 0; i1 < getChildCount(); i1++)
      if (!((ViewPager.LayoutParams)getChildAt(i1).getLayoutParams()).a)
      {
        removeViewAt(i1);
        i1--;
      }
  }

  private bh m()
  {
    int i1 = getWidth();
    float f1;
    float f2;
    label31: float f3;
    float f4;
    int i2;
    int i3;
    int i4;
    Object localObject;
    label49: bh localbh1;
    bh localbh3;
    int i5;
    if (i1 > 0)
    {
      f1 = getScrollX() / i1;
      if (i1 <= 0)
        break label210;
      f2 = this.n / i1;
      f3 = 0.0F;
      f4 = 0.0F;
      i2 = -1;
      i3 = 0;
      i4 = 1;
      localObject = null;
      if (i3 < this.d.size())
      {
        localbh1 = (bh)this.d.get(i3);
        if ((i4 != 0) || (localbh1.b == i2 + 1))
          break label261;
        localbh3 = this.e;
        localbh3.e = (f2 + (f3 + f4));
        localbh3.b = (i2 + 1);
        localbh3.d = this.g.getPageWidth(localbh3.b);
        i5 = i3 - 1;
      }
    }
    for (bh localbh2 = localbh3; ; localbh2 = localbh1)
    {
      float f5 = localbh2.e;
      float f6 = f2 + (f5 + localbh2.d);
      if ((i4 != 0) || (f1 >= f5))
      {
        if ((f1 < f6) || (i5 == -1 + this.d.size()))
          localObject = localbh2;
      }
      else
      {
        return localObject;
        f1 = 0.0F;
        break;
        label210: f2 = 0.0F;
        break label31;
      }
      int i6 = localbh2.b;
      float f7 = localbh2.d;
      int i7 = i5 + 1;
      f4 = f5;
      i2 = i6;
      f3 = f7;
      localObject = localbh2;
      i3 = i7;
      i4 = 0;
      break label49;
      label261: i5 = i3;
    }
  }

  private void n()
  {
    this.z = false;
    this.A = false;
    if (this.I != null)
    {
      this.I.recycle();
      this.I = null;
    }
  }

  float a(float paramFloat)
  {
    return (float)Math.sin((float)(0.47123891676382D * (paramFloat - 0.5F)));
  }

  bh a(int paramInt1, int paramInt2)
  {
    bh localbh = new bh();
    localbh.b = paramInt1;
    localbh.a = this.g.instantiateItem(this, paramInt1);
    localbh.d = this.g.getPageWidth(paramInt1);
    if ((paramInt2 < 0) || (paramInt2 >= this.d.size()))
      this.d.add(localbh);
    while (true)
    {
      return localbh;
      this.d.add(paramInt2, localbh);
    }
  }

  bh a(View paramView)
  {
    int i1 = 0;
    bh localbh;
    if (i1 < this.d.size())
    {
      localbh = (bh)this.d.get(i1);
      if (!this.g.isViewFromObject(paramView, localbh.a));
    }
    while (true)
    {
      return localbh;
      i1++;
      break;
      localbh = null;
    }
  }

  void a()
  {
    setWillNotDraw(false);
    setDescendantFocusability(262144);
    setFocusable(true);
    Context localContext = getContext();
    this.l = new Scroller(localContext, c);
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(localContext);
    this.D = ay.a(localViewConfiguration);
    this.J = localViewConfiguration.getScaledMinimumFlingVelocity();
    this.K = localViewConfiguration.getScaledMaximumFlingVelocity();
    this.R = new g(localContext);
    this.S = new g(localContext);
    float f1 = localContext.getResources().getDisplayMetrics().density;
    this.L = ((int)(25.0F * f1));
    this.M = ((int)(2.0F * f1));
    this.B = ((int)(f1 * 16.0F));
    am.a(this, new bi(this));
    if (am.c(this) == 0)
      am.b(this, 1);
  }

  public void a(int paramInt)
  {
    this.x = false;
    if (!this.T);
    for (boolean bool = true; ; bool = false)
    {
      a(paramInt, bool, false);
      return;
    }
  }

  protected void a(int paramInt1, float paramFloat, int paramInt2)
  {
    if (this.W > 0)
    {
      int i4 = getScrollX();
      int i5 = getPaddingLeft();
      int i6 = getPaddingRight();
      int i7 = getWidth();
      int i8 = getChildCount();
      int i9 = 0;
      while (i9 < i8)
      {
        View localView2 = getChildAt(i9);
        ViewPager.LayoutParams localLayoutParams = (ViewPager.LayoutParams)localView2.getLayoutParams();
        int i12;
        int i13;
        if (!localLayoutParams.a)
        {
          int i20 = i6;
          i12 = i5;
          i13 = i20;
          i9++;
          int i15 = i13;
          i5 = i12;
          i6 = i15;
        }
        else
        {
          int i10;
          switch (0x7 & localLayoutParams.b)
          {
          case 2:
          case 4:
          default:
            i10 = i5;
            int i19 = i6;
            i12 = i5;
            i13 = i19;
          case 3:
          case 1:
          case 5:
          }
          while (true)
          {
            int i14 = i10 + i4 - localView2.getLeft();
            if (i14 == 0)
              break;
            localView2.offsetLeftAndRight(i14);
            break;
            int i17 = i5 + localView2.getWidth();
            int i18 = i5;
            i13 = i6;
            i12 = i17;
            i10 = i18;
            continue;
            i10 = Math.max((i7 - localView2.getMeasuredWidth()) / 2, i5);
            int i16 = i6;
            i12 = i5;
            i13 = i16;
            continue;
            i10 = i7 - i6 - localView2.getMeasuredWidth();
            int i11 = i6 + localView2.getMeasuredWidth();
            i12 = i5;
            i13 = i11;
          }
        }
      }
    }
    if ((this.N < 0) || (paramInt1 < this.N))
      this.N = paramInt1;
    if ((this.O < 0) || (FloatMath.ceil(paramFloat + paramInt1) > this.O))
      this.O = (paramInt1 + 1);
    if (this.Z != null)
      this.Z.a(paramInt1, paramFloat, paramInt2);
    if (this.aa != null)
      this.aa.a(paramInt1, paramFloat, paramInt2);
    if (this.ac != null)
    {
      int i1 = getScrollX();
      int i2 = getChildCount();
      int i3 = 0;
      if (i3 < i2)
      {
        View localView1 = getChildAt(i3);
        if (((ViewPager.LayoutParams)localView1.getLayoutParams()).a);
        while (true)
        {
          i3++;
          break;
          float f1 = (localView1.getLeft() - i1) / getWidth();
          this.ac.a(localView1, f1);
        }
      }
    }
    this.V = true;
  }

  void a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (getChildCount() == 0)
      c(false);
    int i1;
    int i2;
    int i3;
    int i4;
    while (true)
    {
      return;
      i1 = getScrollX();
      i2 = getScrollY();
      i3 = paramInt1 - i1;
      i4 = paramInt2 - i2;
      if ((i3 != 0) || (i4 != 0))
        break;
      a(false);
      e();
      g(0);
    }
    c(true);
    g(2);
    int i5 = getWidth();
    int i6 = i5 / 2;
    float f1 = Math.min(1.0F, 1.0F * Math.abs(i3) / i5);
    float f2 = i6 + i6 * a(f1);
    int i7 = Math.abs(paramInt3);
    if (i7 > 0);
    float f3;
    for (int i8 = 4 * Math.round(1000.0F * Math.abs(f2 / i7)); ; i8 = (int)(100.0F * (1.0F + Math.abs(i3) / (f3 + this.n))))
    {
      int i9 = Math.min(i8, 600);
      this.l.startScroll(i1, i2, i3, i4, i9);
      am.b(this);
      break;
      f3 = i5 * this.g.getPageWidth(this.h);
    }
  }

  public void a(int paramInt, boolean paramBoolean)
  {
    this.x = false;
    a(paramInt, paramBoolean, false);
  }

  void a(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    a(paramInt, paramBoolean1, paramBoolean2, 0);
  }

  void a(int paramInt1, boolean paramBoolean1, boolean paramBoolean2, int paramInt2)
  {
    if ((this.g == null) || (this.g.getCount() <= 0))
      c(false);
    while (true)
    {
      return;
      if ((!paramBoolean2) && (this.h == paramInt1) && (this.d.size() != 0))
      {
        c(false);
      }
      else
      {
        if (paramInt1 < 0)
          paramInt1 = 0;
        while (true)
        {
          int i1 = this.y;
          if ((paramInt1 <= i1 + this.h) && (paramInt1 >= this.h - i1))
            break;
          for (int i2 = 0; i2 < this.d.size(); i2++)
            ((bh)this.d.get(i2)).c = true;
          if (paramInt1 >= this.g.getCount())
            paramInt1 = -1 + this.g.getCount();
        }
        int i3 = this.h;
        boolean bool = false;
        if (i3 != paramInt1)
          bool = true;
        d(paramInt1);
        a(paramInt1, paramBoolean1, paramInt2, bool);
      }
    }
  }

  void a(bj parambj)
  {
    this.ab = parambj;
  }

  public void a(bk parambk)
  {
    this.Z = parambk;
  }

  public void a(x paramx)
  {
    if (this.g != null)
    {
      this.g.unregisterDataSetObserver(this.m);
      this.g.startUpdate(this);
      for (int i1 = 0; i1 < this.d.size(); i1++)
      {
        bh localbh = (bh)this.d.get(i1);
        this.g.destroyItem(this, localbh.b, localbh.a);
      }
      this.g.finishUpdate(this);
      this.d.clear();
      l();
      this.h = 0;
      scrollTo(0, 0);
    }
    x localx = this.g;
    this.g = paramx;
    if (this.g != null)
    {
      if (this.m == null)
        this.m = new bm(this, null);
      this.g.registerDataSetObserver(this.m);
      this.x = false;
      this.T = true;
      if (this.i < 0)
        break label235;
      this.g.restoreState(this.j, this.k);
      a(this.i, false, true);
      this.i = -1;
      this.j = null;
      this.k = null;
    }
    while (true)
    {
      if ((this.ab != null) && (localx != paramx))
        this.ab.a(localx, paramx);
      return;
      label235: e();
    }
  }

  public boolean a(KeyEvent paramKeyEvent)
  {
    int i1 = paramKeyEvent.getAction();
    boolean bool1 = false;
    if (i1 == 0)
    {
      int i2 = paramKeyEvent.getKeyCode();
      bool1 = false;
      switch (i2)
      {
      default:
      case 21:
      case 22:
      case 61:
      }
    }
    while (true)
    {
      return bool1;
      bool1 = f(17);
      continue;
      bool1 = f(66);
      continue;
      int i3 = Build.VERSION.SDK_INT;
      bool1 = false;
      if (i3 >= 11)
        if (n.a(paramKeyEvent))
        {
          bool1 = f(2);
        }
        else
        {
          boolean bool2 = n.a(paramKeyEvent, 1);
          bool1 = false;
          if (bool2)
            bool1 = f(1);
        }
    }
  }

  protected boolean a(View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    boolean bool = true;
    int i3;
    if ((paramView instanceof ViewGroup))
    {
      ViewGroup localViewGroup = (ViewGroup)paramView;
      int i1 = paramView.getScrollX();
      int i2 = paramView.getScrollY();
      i3 = -1 + localViewGroup.getChildCount();
      if (i3 >= 0)
      {
        View localView = localViewGroup.getChildAt(i3);
        if ((paramInt2 + i1 < localView.getLeft()) || (paramInt2 + i1 >= localView.getRight()) || (paramInt3 + i2 < localView.getTop()) || (paramInt3 + i2 >= localView.getBottom()) || (!a(localView, bool, paramInt1, paramInt2 + i1 - localView.getLeft(), paramInt3 + i2 - localView.getTop())));
      }
    }
    while (true)
    {
      return bool;
      i3--;
      break;
      if ((!paramBoolean) || (!am.a(paramView, -paramInt1)))
        bool = false;
    }
  }

  public void addFocusables(ArrayList paramArrayList, int paramInt1, int paramInt2)
  {
    int i1 = paramArrayList.size();
    int i2 = getDescendantFocusability();
    if (i2 != 393216)
      for (int i3 = 0; i3 < getChildCount(); i3++)
      {
        View localView = getChildAt(i3);
        if (localView.getVisibility() == 0)
        {
          bh localbh = a(localView);
          if ((localbh != null) && (localbh.b == this.h))
            localView.addFocusables(paramArrayList, paramInt1, paramInt2);
        }
      }
    if (((i2 == 262144) && (i1 != paramArrayList.size())) || (!isFocusable()));
    while (true)
    {
      return;
      if ((((paramInt2 & 0x1) != 1) || (!isInTouchMode()) || (isFocusableInTouchMode())) && (paramArrayList != null))
        paramArrayList.add(this);
    }
  }

  public void addTouchables(ArrayList paramArrayList)
  {
    for (int i1 = 0; i1 < getChildCount(); i1++)
    {
      View localView = getChildAt(i1);
      if (localView.getVisibility() == 0)
      {
        bh localbh = a(localView);
        if ((localbh != null) && (localbh.b == this.h))
          localView.addTouchables(paramArrayList);
      }
    }
  }

  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (!checkLayoutParams(paramLayoutParams));
    for (ViewGroup.LayoutParams localLayoutParams = generateLayoutParams(paramLayoutParams); ; localLayoutParams = paramLayoutParams)
    {
      ViewPager.LayoutParams localLayoutParams1 = (ViewPager.LayoutParams)localLayoutParams;
      localLayoutParams1.a |= paramView instanceof bg;
      if (this.v)
      {
        if ((localLayoutParams1 != null) && (localLayoutParams1.a))
          throw new IllegalStateException("Cannot add pager decor view during layout");
        localLayoutParams1.d = true;
        addViewInLayout(paramView, paramInt, localLayoutParams);
      }
      while (true)
      {
        return;
        super.addView(paramView, paramInt, localLayoutParams);
      }
    }
  }

  bh b(View paramView)
  {
    ViewParent localViewParent = paramView.getParent();
    if (localViewParent != this)
      if ((localViewParent != null) && ((localViewParent instanceof View)));
    for (bh localbh = null; ; localbh = a(paramView))
    {
      return localbh;
      paramView = (View)localViewParent;
      break;
    }
  }

  bk b(bk parambk)
  {
    bk localbk = this.aa;
    this.aa = parambk;
    return localbk;
  }

  public x b()
  {
    return this.g;
  }

  public void b(float paramFloat)
  {
    if (!this.P)
      throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
    this.F = (paramFloat + this.F);
    float f1 = getScrollX() - paramFloat;
    int i1 = getWidth();
    float f2 = i1 * this.r;
    float f3 = i1 * this.s;
    bh localbh1 = (bh)this.d.get(0);
    bh localbh2 = (bh)this.d.get(-1 + this.d.size());
    if (localbh1.b != 0);
    for (float f4 = localbh1.e * i1; ; f4 = f2)
    {
      if (localbh2.b != -1 + this.g.getCount());
      for (float f5 = localbh2.e * i1; ; f5 = f3)
      {
        if (f1 < f4);
        while (true)
        {
          this.F += f4 - (int)f4;
          scrollTo((int)f4, getScrollY());
          h((int)f4);
          long l1 = SystemClock.uptimeMillis();
          MotionEvent localMotionEvent = MotionEvent.obtain(this.Q, l1, 2, this.F, 0.0F, 0);
          this.I.addMovement(localMotionEvent);
          localMotionEvent.recycle();
          return;
          if (f1 > f5)
            f4 = f5;
          else
            f4 = f1;
        }
      }
    }
  }

  public void b(int paramInt)
  {
    if (paramInt < 1)
    {
      Log.w("ViewPager", "Requested offscreen page limit " + paramInt + " too small; defaulting to " + 1);
      paramInt = 1;
    }
    if (paramInt != this.y)
    {
      this.y = paramInt;
      e();
    }
  }

  public int c()
  {
    return this.h;
  }

  public void c(int paramInt)
  {
    int i1 = this.n;
    this.n = paramInt;
    int i2 = getWidth();
    a(i2, i2, paramInt, i1);
    requestLayout();
  }

  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if (((paramLayoutParams instanceof ViewPager.LayoutParams)) && (super.checkLayoutParams(paramLayoutParams)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public void computeScroll()
  {
    if ((!this.l.isFinished()) && (this.l.computeScrollOffset()))
    {
      int i1 = getScrollX();
      int i2 = getScrollY();
      int i3 = this.l.getCurrX();
      int i4 = this.l.getCurrY();
      if ((i1 != i3) || (i2 != i4))
      {
        scrollTo(i3, i4);
        if (!h(i3))
        {
          this.l.abortAnimation();
          scrollTo(0, i4);
        }
      }
      am.b(this);
    }
    while (true)
    {
      return;
      a(true);
    }
  }

  void d()
  {
    int i1;
    int i3;
    int i4;
    int i5;
    int i6;
    label53: bh localbh;
    int i9;
    int i10;
    int i11;
    int i12;
    int i13;
    if ((this.d.size() < 1 + 2 * this.y) && (this.d.size() < this.g.getCount()))
    {
      i1 = 1;
      int i2 = this.h;
      i3 = 0;
      i4 = i2;
      i5 = i1;
      i6 = 0;
      if (i6 >= this.d.size())
        break label299;
      localbh = (bh)this.d.get(i6);
      i9 = this.g.getItemPosition(localbh.a);
      if (i9 != -1)
        break label143;
      i10 = i6;
      i11 = i3;
      i12 = i4;
      i13 = i5;
    }
    while (true)
    {
      int i14 = i10 + 1;
      i5 = i13;
      i4 = i12;
      i3 = i11;
      i6 = i14;
      break label53;
      i1 = 0;
      break;
      label143: int i15;
      if (i9 == -2)
      {
        this.d.remove(i6);
        i15 = i6 - 1;
        if (i3 == 0)
        {
          this.g.startUpdate(this);
          i3 = 1;
        }
        this.g.destroyItem(this, localbh.b, localbh.a);
        if (this.h == localbh.b)
        {
          int i16 = Math.max(0, Math.min(this.h, -1 + this.g.getCount()));
          i10 = i15;
          i11 = i3;
          i12 = i16;
          i13 = 1;
        }
      }
      else if (localbh.b != i9)
      {
        if (localbh.b == this.h)
          i4 = i9;
        localbh.b = i9;
        i10 = i6;
        i11 = i3;
        i12 = i4;
        i13 = 1;
        continue;
        label299: if (i3 != 0)
          this.g.finishUpdate(this);
        Collections.sort(this.d, b);
        if (i5 != 0)
        {
          int i7 = getChildCount();
          for (int i8 = 0; i8 < i7; i8++)
          {
            ViewPager.LayoutParams localLayoutParams = (ViewPager.LayoutParams)getChildAt(i8).getLayoutParams();
            if (!localLayoutParams.a)
              localLayoutParams.c = 0.0F;
          }
          a(i4, false, true);
          requestLayout();
        }
      }
      else
      {
        i10 = i6;
        i11 = i3;
        i12 = i4;
        i13 = i5;
        continue;
        i10 = i15;
        i11 = i3;
        i12 = i4;
        i13 = 1;
      }
    }
  }

  void d(int paramInt)
  {
    bh localbh12;
    if (this.h != paramInt)
    {
      localbh12 = e(this.h);
      this.h = paramInt;
    }
    for (bh localbh1 = localbh12; ; localbh1 = null)
    {
      if (this.g == null)
        label33: return;
      int i2;
      int i3;
      int i4;
      int i5;
      bh localbh2;
      if ((!this.x) && (getWindowToken() != null))
      {
        this.g.startUpdate(this);
        int i1 = this.y;
        i2 = Math.max(0, this.h - i1);
        i3 = this.g.getCount();
        i4 = Math.min(i3 - 1, i1 + this.h);
        i5 = 0;
        if (i5 >= this.d.size())
          break label1161;
        localbh2 = (bh)this.d.get(i5);
        if (localbh2.b >= this.h)
          if (localbh2.b != this.h)
            break label1161;
      }
      while (true)
      {
        if ((localbh2 == null) && (i3 > 0));
        for (bh localbh3 = a(this.h, i5); ; localbh3 = localbh2)
        {
          bh localbh7;
          label202: float f2;
          int i13;
          int i14;
          int i15;
          float f3;
          int i16;
          if (localbh3 != null)
          {
            int i11 = i5 - 1;
            if (i11 < 0)
              break label554;
            localbh7 = (bh)this.d.get(i11);
            float f1 = 2.0F - localbh3.d;
            int i12 = -1 + this.h;
            f2 = 0.0F;
            i13 = i12;
            i14 = i5;
            i15 = i11;
            if (i13 >= 0)
            {
              if ((f2 < f1) || (i13 >= i2))
                break label640;
              if (localbh7 != null)
                break label560;
            }
            f3 = localbh3.d;
            i16 = i14 + 1;
            if (f3 < 2.0F)
              if (i16 >= this.d.size())
                break label745;
          }
          float f4;
          int i18;
          int i19;
          label325: Object localObject1;
          label384: int i7;
          label412: label435: label745: for (Object localObject2 = (bh)this.d.get(i16); ; localObject2 = null)
          {
            int i17 = 1 + this.h;
            f4 = f3;
            i18 = i16;
            i19 = i17;
            if (i19 < i3)
            {
              if ((f4 < 2.0F) || (i19 <= i4))
                break label856;
              if (localObject2 != null)
                break label751;
            }
            a(localbh3, i14, localbh1);
            x localx = this.g;
            int i6 = this.h;
            if (localbh3 == null)
              break label993;
            localObject1 = localbh3.a;
            localx.setPrimaryItem(this, i6, localObject1);
            this.g.finishUpdate(this);
            if (this.ad == 0)
              break label999;
            i7 = 1;
            if (i7 != 0)
            {
              if (this.ae != null)
                break label1005;
              this.ae = new ArrayList();
            }
            int i8 = getChildCount();
            for (int i9 = 0; i9 < i8; i9++)
            {
              View localView3 = getChildAt(i9);
              ViewPager.LayoutParams localLayoutParams = (ViewPager.LayoutParams)localView3.getLayoutParams();
              localLayoutParams.f = i9;
              if ((!localLayoutParams.a) && (localLayoutParams.c == 0.0F))
              {
                bh localbh6 = a(localView3);
                if (localbh6 != null)
                {
                  localLayoutParams.c = localbh6.d;
                  localLayoutParams.e = localbh6.b;
                }
              }
              if (i7 != 0)
                this.ae.add(localView3);
            }
            i5++;
            break;
            localbh7 = null;
            break label202;
            if ((i13 == localbh7.b) && (!localbh7.c))
            {
              this.d.remove(i15);
              this.g.destroyItem(this, i13, localbh7.a);
              i15--;
              i14--;
              if (i15 < 0)
                break label634;
              localbh7 = (bh)this.d.get(i15);
            }
            while (true)
            {
              i13--;
              break;
              label634: localbh7 = null;
              continue;
              if ((localbh7 != null) && (i13 == localbh7.b))
              {
                f2 += localbh7.d;
                i15--;
                if (i15 >= 0)
                  localbh7 = (bh)this.d.get(i15);
                else
                  localbh7 = null;
              }
              else
              {
                f2 += a(i13, i15 + 1).d;
                i14++;
                if (i15 >= 0)
                  localbh7 = (bh)this.d.get(i15);
                else
                  localbh7 = null;
              }
            }
          }
          label554: label560: label751: bh localbh11;
          label640: label820: Object localObject3;
          float f6;
          if ((i19 == ((bh)localObject2).b) && (!((bh)localObject2).c))
          {
            this.d.remove(i18);
            this.g.destroyItem(this, i19, ((bh)localObject2).a);
            if (i18 < this.d.size())
            {
              localbh11 = (bh)this.d.get(i18);
              float f10 = f4;
              localObject3 = localbh11;
              f6 = f10;
            }
          }
          while (true)
          {
            i19++;
            float f7 = f6;
            localObject2 = localObject3;
            f4 = f7;
            break label325;
            localbh11 = null;
            break label820;
            label856: if ((localObject2 != null) && (i19 == ((bh)localObject2).b))
            {
              float f8 = f4 + ((bh)localObject2).d;
              i18++;
              if (i18 < this.d.size());
              for (bh localbh10 = (bh)this.d.get(i18); ; localbh10 = null)
              {
                localObject3 = localbh10;
                f6 = f8;
                break;
              }
            }
            bh localbh8 = a(i19, i18);
            i18++;
            float f5 = f4 + localbh8.d;
            if (i18 < this.d.size());
            for (bh localbh9 = (bh)this.d.get(i18); ; localbh9 = null)
            {
              localObject3 = localbh9;
              f6 = f5;
              break;
            }
            label993: localObject1 = null;
            break label384;
            label999: i7 = 0;
            break label412;
            label1005: this.ae.clear();
            break label435;
            if (i7 != 0)
              Collections.sort(this.ae, af);
            if (!hasFocus())
              break;
            View localView1 = findFocus();
            if (localView1 != null);
            for (bh localbh4 = b(localView1); ; localbh4 = null)
            {
              if ((localbh4 != null) && (localbh4.b == this.h))
                break label1137;
              for (int i10 = 0; ; i10++)
              {
                if (i10 >= getChildCount())
                  break label1131;
                View localView2 = getChildAt(i10);
                bh localbh5 = a(localView2);
                if ((localbh5 != null) && (localbh5.b == this.h) && (localView2.requestFocus(2)))
                  break;
              }
              label1131: break label33;
            }
            label1137: break label33;
            break label33;
            float f9 = f4;
            localObject3 = localObject2;
            f6 = f9;
          }
        }
        label1161: localbh2 = null;
      }
    }
  }

  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if ((super.dispatchKeyEvent(paramKeyEvent)) || (a(paramKeyEvent)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    int i1 = getChildCount();
    for (int i2 = 0; ; i2++)
    {
      boolean bool = false;
      if (i2 < i1)
      {
        View localView = getChildAt(i2);
        if (localView.getVisibility() == 0)
        {
          bh localbh = a(localView);
          if ((localbh != null) && (localbh.b == this.h) && (localView.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent)))
            bool = true;
        }
      }
      else
      {
        return bool;
      }
    }
  }

  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    int i1 = am.a(this);
    boolean bool2;
    if ((i1 == 0) || ((i1 == 1) && (this.g != null) && (this.g.getCount() > 1)))
    {
      boolean bool1 = this.R.a();
      bool2 = false;
      if (!bool1)
      {
        int i5 = paramCanvas.save();
        int i6 = getHeight() - getPaddingTop() - getPaddingBottom();
        int i7 = getWidth();
        paramCanvas.rotate(270.0F);
        paramCanvas.translate(-i6 + getPaddingTop(), this.r * i7);
        this.R.a(i6, i7);
        bool2 = false | this.R.a(paramCanvas);
        paramCanvas.restoreToCount(i5);
      }
      if (!this.S.a())
      {
        int i2 = paramCanvas.save();
        int i3 = getWidth();
        int i4 = getHeight() - getPaddingTop() - getPaddingBottom();
        paramCanvas.rotate(90.0F);
        paramCanvas.translate(-getPaddingTop(), -(1.0F + this.s) * i3);
        this.S.a(i4, i3);
        bool2 |= this.S.a(paramCanvas);
        paramCanvas.restoreToCount(i2);
      }
    }
    while (true)
    {
      if (bool2)
        am.b(this);
      return;
      this.R.b();
      this.S.b();
      bool2 = false;
    }
  }

  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    Drawable localDrawable = this.o;
    if ((localDrawable != null) && (localDrawable.isStateful()))
      localDrawable.setState(getDrawableState());
  }

  bh e(int paramInt)
  {
    int i1 = 0;
    bh localbh;
    if (i1 < this.d.size())
    {
      localbh = (bh)this.d.get(i1);
      if (localbh.b != paramInt);
    }
    while (true)
    {
      return localbh;
      i1++;
      break;
      localbh = null;
    }
  }

  void e()
  {
    d(this.h);
  }

  public boolean f()
  {
    boolean bool1 = this.z;
    boolean bool2 = false;
    if (bool1)
      return bool2;
    this.P = true;
    g(1);
    this.F = 0.0F;
    this.E = 0.0F;
    if (this.I == null)
      this.I = VelocityTracker.obtain();
    while (true)
    {
      long l1 = SystemClock.uptimeMillis();
      MotionEvent localMotionEvent = MotionEvent.obtain(l1, l1, 0, 0.0F, 0.0F, 0);
      this.I.addMovement(localMotionEvent);
      localMotionEvent.recycle();
      this.Q = l1;
      bool2 = true;
      break;
      this.I.clear();
    }
  }

  public boolean f(int paramInt)
  {
    View localView1 = findFocus();
    if (localView1 == this)
      localView1 = null;
    View localView2 = FocusFinder.getInstance().findNextFocus(this, localView1, paramInt);
    boolean bool;
    if ((localView2 != null) && (localView2 != localView1))
      if (paramInt == 17)
      {
        int i3 = a(this.f, localView2).left;
        int i4 = a(this.f, localView1).left;
        if ((localView1 != null) && (i3 >= i4))
          bool = i();
      }
    while (true)
    {
      if (bool)
        playSoundEffect(SoundEffectConstants.getContantForFocusDirection(paramInt));
      return bool;
      bool = localView2.requestFocus();
      continue;
      if (paramInt == 66)
      {
        int i1 = a(this.f, localView2).left;
        int i2 = a(this.f, localView1).left;
        if ((localView1 != null) && (i1 <= i2))
        {
          bool = j();
        }
        else
        {
          bool = localView2.requestFocus();
          continue;
          if ((paramInt == 17) || (paramInt == 1))
            bool = i();
          else if ((paramInt == 66) || (paramInt == 2))
            bool = j();
        }
      }
      else
      {
        bool = false;
      }
    }
  }

  public void g()
  {
    if (!this.P)
      throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
    VelocityTracker localVelocityTracker = this.I;
    localVelocityTracker.computeCurrentVelocity(1000, this.K);
    int i1 = (int)ah.a(localVelocityTracker, this.H);
    this.x = true;
    int i2 = getWidth();
    int i3 = getScrollX();
    bh localbh = m();
    a(a(localbh.b, (i3 / i2 - localbh.e) / localbh.d, i1, (int)(this.F - this.E)), true, true, i1);
    n();
    this.P = false;
  }

  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new ViewPager.LayoutParams();
  }

  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new ViewPager.LayoutParams(getContext(), paramAttributeSet);
  }

  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return generateDefaultLayoutParams();
  }

  protected int getChildDrawingOrder(int paramInt1, int paramInt2)
  {
    if (this.ad == 2)
      paramInt2 = paramInt1 - 1 - paramInt2;
    return ((ViewPager.LayoutParams)((View)this.ae.get(paramInt2)).getLayoutParams()).f;
  }

  public boolean h()
  {
    return this.P;
  }

  boolean i()
  {
    boolean bool = true;
    if (this.h > 0)
      a(-1 + this.h, bool);
    while (true)
    {
      return bool;
      bool = false;
    }
  }

  boolean j()
  {
    boolean bool = true;
    if ((this.g != null) && (this.h < -1 + this.g.getCount()))
      a(1 + this.h, bool);
    while (true)
    {
      return bool;
      bool = false;
    }
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.T = true;
  }

  protected void onDetachedFromWindow()
  {
    removeCallbacks(this.ag);
    super.onDetachedFromWindow();
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int i1;
    int i2;
    float f1;
    bh localbh;
    float f2;
    int i3;
    int i4;
    int i5;
    int i6;
    if ((this.n > 0) && (this.o != null) && (this.d.size() > 0) && (this.g != null))
    {
      i1 = getScrollX();
      i2 = getWidth();
      f1 = this.n / i2;
      localbh = (bh)this.d.get(0);
      f2 = localbh.e;
      i3 = this.d.size();
      i4 = localbh.b;
      i5 = ((bh)this.d.get(i3 - 1)).b;
      i6 = 0;
    }
    for (int i7 = i4; ; i7++)
    {
      float f4;
      if (i7 < i5)
      {
        while ((i7 > localbh.b) && (i6 < i3))
        {
          ArrayList localArrayList = this.d;
          i6++;
          localbh = (bh)localArrayList.get(i6);
        }
        if (i7 != localbh.b)
          break label271;
        f4 = (localbh.e + localbh.d) * i2;
      }
      label271: float f3;
      for (f2 = f1 + (localbh.e + localbh.d); ; f2 += f3 + f1)
      {
        if (f4 + this.n > i1)
        {
          this.o.setBounds((int)f4, this.p, (int)(0.5F + (f4 + this.n)), this.q);
          this.o.draw(paramCanvas);
        }
        if (f4 <= i1 + i2)
          break;
        return;
        f3 = this.g.getPageWidth(i7);
        f4 = (f2 + f3) * i2;
      }
    }
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = 0xFF & paramMotionEvent.getAction();
    boolean bool1;
    if ((i1 == 3) || (i1 == 1))
    {
      this.z = false;
      this.A = false;
      this.H = -1;
      VelocityTracker localVelocityTracker = this.I;
      bool1 = false;
      if (localVelocityTracker != null)
      {
        this.I.recycle();
        this.I = null;
      }
    }
    boolean bool2;
    do
    {
      while (true)
      {
        return bool1;
        if (i1 == 0)
          break label92;
        if (!this.z)
          break;
        bool1 = true;
      }
      bool2 = this.A;
      bool1 = false;
    }
    while (bool2);
    label92: switch (i1)
    {
    default:
    case 2:
    case 0:
    case 6:
    }
    while (true)
    {
      if (this.I == null)
        this.I = VelocityTracker.obtain();
      this.I.addMovement(paramMotionEvent);
      bool1 = this.z;
      break;
      int i2 = this.H;
      if (i2 != -1)
      {
        int i3 = s.a(paramMotionEvent, i2);
        float f2 = s.c(paramMotionEvent, i3);
        float f3 = f2 - this.F;
        float f4 = Math.abs(f3);
        float f5 = s.d(paramMotionEvent, i3);
        float f6 = Math.abs(f5 - this.G);
        if ((f3 != 0.0F) && (!a(this.F, f3)) && (a(this, false, (int)f3, (int)f2, (int)f5)))
        {
          this.F = f2;
          this.E = f2;
          this.G = f5;
          this.A = true;
          bool1 = false;
          break;
        }
        float f7;
        if ((f4 > this.D) && (f4 > f6))
        {
          this.z = true;
          g(1);
          if (f3 > 0.0F)
          {
            f7 = this.E + this.D;
            label338: this.F = f7;
            c(true);
          }
        }
        while ((this.z) && (c(f2)))
        {
          am.b(this);
          break;
          f7 = this.E - this.D;
          break label338;
          if (f6 > this.D)
            this.A = true;
        }
        float f1 = paramMotionEvent.getX();
        this.E = f1;
        this.F = f1;
        this.G = paramMotionEvent.getY();
        this.H = s.b(paramMotionEvent, 0);
        this.A = false;
        this.l.computeScrollOffset();
        if ((this.ah == 2) && (Math.abs(this.l.getFinalX() - this.l.getCurrX()) > this.M))
        {
          this.l.abortAnimation();
          this.x = false;
          e();
          this.z = true;
          g(1);
        }
        else
        {
          a(false);
          this.z = false;
          continue;
          a(paramMotionEvent);
        }
      }
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.v = true;
    e();
    this.v = false;
    int i1 = getChildCount();
    int i2 = paramInt3 - paramInt1;
    int i3 = paramInt4 - paramInt2;
    int i4 = getPaddingLeft();
    int i5 = getPaddingTop();
    int i6 = getPaddingRight();
    int i7 = getPaddingBottom();
    int i8 = getScrollX();
    int i9 = 0;
    int i10 = 0;
    View localView2;
    int i20;
    label172: int i21;
    int i23;
    int i24;
    label224: int i13;
    int i14;
    int i15;
    if (i10 < i1)
    {
      localView2 = getChildAt(i10);
      if (localView2.getVisibility() == 8)
        break label653;
      ViewPager.LayoutParams localLayoutParams2 = (ViewPager.LayoutParams)localView2.getLayoutParams();
      if (!localLayoutParams2.a)
        break label653;
      int i17 = 0x7 & localLayoutParams2.b;
      int i18 = 0x70 & localLayoutParams2.b;
      switch (i17)
      {
      case 2:
      case 4:
      default:
        i20 = i4;
        switch (i18)
        {
        default:
          i21 = i5;
          int i29 = i7;
          i23 = i5;
          i24 = i29;
          int i25 = i20 + i8;
          localView2.layout(i25, i21, i25 + localView2.getMeasuredWidth(), i21 + localView2.getMeasuredHeight());
          i13 = i9 + 1;
          i14 = i23;
          i7 = i24;
          i15 = i6;
        case 48:
        case 16:
        case 80:
        }
        break;
      case 3:
      case 1:
      case 5:
      }
    }
    for (int i16 = i4; ; i16 = i4)
    {
      i10++;
      i4 = i16;
      i6 = i15;
      i5 = i14;
      i9 = i13;
      break;
      int i30 = i4 + localView2.getMeasuredWidth();
      i20 = i4;
      i4 = i30;
      break label172;
      i20 = Math.max((i2 - localView2.getMeasuredWidth()) / 2, i4);
      break label172;
      int i19 = i2 - i6 - localView2.getMeasuredWidth();
      i6 += localView2.getMeasuredWidth();
      i20 = i19;
      break label172;
      int i27 = i5 + localView2.getMeasuredHeight();
      int i28 = i5;
      i24 = i7;
      i23 = i27;
      i21 = i28;
      break label224;
      i21 = Math.max((i3 - localView2.getMeasuredHeight()) / 2, i5);
      int i26 = i7;
      i23 = i5;
      i24 = i26;
      break label224;
      i21 = i3 - i7 - localView2.getMeasuredHeight();
      int i22 = i7 + localView2.getMeasuredHeight();
      i23 = i5;
      i24 = i22;
      break label224;
      for (int i11 = 0; i11 < i1; i11++)
      {
        View localView1 = getChildAt(i11);
        if (localView1.getVisibility() != 8)
        {
          ViewPager.LayoutParams localLayoutParams1 = (ViewPager.LayoutParams)localView1.getLayoutParams();
          if (!localLayoutParams1.a)
          {
            bh localbh = a(localView1);
            if (localbh != null)
            {
              int i12 = i4 + (int)(i2 * localbh.e);
              if (localLayoutParams1.d)
              {
                localLayoutParams1.d = false;
                localView1.measure(View.MeasureSpec.makeMeasureSpec((int)((i2 - i4 - i6) * localLayoutParams1.c), 1073741824), View.MeasureSpec.makeMeasureSpec(i3 - i5 - i7, 1073741824));
              }
              localView1.layout(i12, i5, i12 + localView1.getMeasuredWidth(), i5 + localView1.getMeasuredHeight());
            }
          }
        }
      }
      this.p = i5;
      this.q = (i3 - i7);
      this.W = i9;
      this.T = false;
      return;
      label653: i13 = i9;
      i14 = i5;
      i15 = i6;
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(getDefaultSize(0, paramInt1), getDefaultSize(0, paramInt2));
    int i1 = getMeasuredWidth();
    this.C = Math.min(i1 / 10, this.B);
    int i2 = i1 - getPaddingLeft() - getPaddingRight();
    int i3 = getMeasuredHeight() - getPaddingTop() - getPaddingBottom();
    int i4 = getChildCount();
    int i5 = 0;
    View localView2;
    ViewPager.LayoutParams localLayoutParams2;
    int i10;
    int i11;
    int i12;
    label167: int i13;
    label182: label192: int i14;
    int i15;
    if (i5 < i4)
    {
      localView2 = getChildAt(i5);
      if (localView2.getVisibility() != 8)
      {
        localLayoutParams2 = (ViewPager.LayoutParams)localView2.getLayoutParams();
        if ((localLayoutParams2 != null) && (localLayoutParams2.a))
        {
          int i8 = 0x7 & localLayoutParams2.b;
          int i9 = 0x70 & localLayoutParams2.b;
          i10 = -2147483648;
          i11 = -2147483648;
          if ((i9 != 48) && (i9 != 80))
            break label294;
          i12 = 1;
          if ((i8 != 3) && (i8 != 5))
            break label300;
          i13 = 1;
          if (i12 == 0)
            break label306;
          i10 = 1073741824;
          if (localLayoutParams2.width == -2)
            break label478;
          i14 = 1073741824;
          if (localLayoutParams2.width == -1)
            break label471;
          i15 = localLayoutParams2.width;
        }
      }
    }
    while (true)
    {
      if (localLayoutParams2.height != -2)
      {
        i11 = 1073741824;
        if (localLayoutParams2.height == -1);
      }
      for (int i16 = localLayoutParams2.height; ; i16 = i3)
      {
        localView2.measure(View.MeasureSpec.makeMeasureSpec(i15, i14), View.MeasureSpec.makeMeasureSpec(i16, i11));
        if (i12 != 0)
          i3 -= localView2.getMeasuredHeight();
        while (true)
        {
          i5++;
          break;
          label294: i12 = 0;
          break label167;
          label300: i13 = 0;
          break label182;
          label306: if (i13 == 0)
            break label192;
          i11 = 1073741824;
          break label192;
          if (i13 != 0)
            i2 -= localView2.getMeasuredWidth();
        }
        this.t = View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
        this.u = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
        this.v = true;
        e();
        this.v = false;
        int i6 = getChildCount();
        for (int i7 = 0; i7 < i6; i7++)
        {
          View localView1 = getChildAt(i7);
          if (localView1.getVisibility() != 8)
          {
            ViewPager.LayoutParams localLayoutParams1 = (ViewPager.LayoutParams)localView1.getLayoutParams();
            if ((localLayoutParams1 == null) || (!localLayoutParams1.a))
              localView1.measure(View.MeasureSpec.makeMeasureSpec((int)(i2 * localLayoutParams1.c), 1073741824), this.u);
          }
        }
        return;
      }
      label471: i15 = i2;
      continue;
      label478: i14 = i10;
      i15 = i2;
    }
  }

  protected boolean onRequestFocusInDescendants(int paramInt, Rect paramRect)
  {
    int i1 = 1;
    int i2 = -1;
    int i3 = getChildCount();
    int i4;
    if ((paramInt & 0x2) != 0)
    {
      i2 = i1;
      i4 = 0;
      if (i4 == i3)
        break label106;
      View localView = getChildAt(i4);
      if (localView.getVisibility() != 0)
        break label96;
      bh localbh = a(localView);
      if ((localbh == null) || (localbh.b != this.h) || (!localView.requestFocus(paramInt, paramRect)))
        break label96;
    }
    while (true)
    {
      return i1;
      i4 = i3 - 1;
      i3 = i2;
      break;
      label96: i4 += i2;
      break;
      label106: i1 = 0;
    }
  }

  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof ViewPager.SavedState))
      super.onRestoreInstanceState(paramParcelable);
    while (true)
    {
      return;
      ViewPager.SavedState localSavedState = (ViewPager.SavedState)paramParcelable;
      super.onRestoreInstanceState(localSavedState.getSuperState());
      if (this.g != null)
      {
        this.g.restoreState(localSavedState.b, localSavedState.c);
        a(localSavedState.a, false, true);
      }
      else
      {
        this.i = localSavedState.a;
        this.j = localSavedState.b;
        this.k = localSavedState.c;
      }
    }
  }

  public Parcelable onSaveInstanceState()
  {
    ViewPager.SavedState localSavedState = new ViewPager.SavedState(super.onSaveInstanceState());
    localSavedState.a = this.h;
    if (this.g != null)
      localSavedState.b = this.g.saveState();
    return localSavedState;
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt1 != paramInt3)
      a(paramInt1, paramInt3, this.n, this.n);
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool1;
    if (this.P)
      bool1 = true;
    while (true)
    {
      return bool1;
      if ((paramMotionEvent.getAction() == 0) && (paramMotionEvent.getEdgeFlags() != 0))
      {
        bool1 = false;
      }
      else
      {
        if ((this.g != null) && (this.g.getCount() != 0))
          break;
        bool1 = false;
      }
    }
    if (this.I == null)
      this.I = VelocityTracker.obtain();
    this.I.addMovement(paramMotionEvent);
    int i1 = 0xFF & paramMotionEvent.getAction();
    boolean bool2 = false;
    switch (i1)
    {
    case 4:
    default:
    case 0:
    case 2:
    case 1:
    case 3:
    case 5:
    case 6:
    }
    while (true)
    {
      if (bool2)
        am.b(this);
      bool1 = true;
      break;
      this.l.abortAnimation();
      this.x = false;
      e();
      this.z = true;
      g(1);
      float f5 = paramMotionEvent.getX();
      this.E = f5;
      this.F = f5;
      this.H = s.b(paramMotionEvent, 0);
      bool2 = false;
      continue;
      if (!this.z)
      {
        int i6 = s.a(paramMotionEvent, this.H);
        float f1 = s.c(paramMotionEvent, i6);
        float f2 = Math.abs(f1 - this.F);
        float f3 = Math.abs(s.d(paramMotionEvent, i6) - this.G);
        if ((f2 > this.D) && (f2 > f3))
        {
          this.z = true;
          if (f1 - this.E <= 0.0F)
            break label355;
        }
      }
      label355: for (float f4 = this.E + this.D; ; f4 = this.E - this.D)
      {
        this.F = f4;
        g(1);
        c(true);
        boolean bool5 = this.z;
        bool2 = false;
        if (!bool5)
          break;
        bool2 = false | c(s.c(paramMotionEvent, s.a(paramMotionEvent, this.H)));
        break;
      }
      boolean bool4 = this.z;
      bool2 = false;
      if (bool4)
      {
        VelocityTracker localVelocityTracker = this.I;
        localVelocityTracker.computeCurrentVelocity(1000, this.K);
        int i3 = (int)ah.a(localVelocityTracker, this.H);
        this.x = true;
        int i4 = getWidth();
        int i5 = getScrollX();
        bh localbh = m();
        a(a(localbh.b, (i5 / i4 - localbh.e) / localbh.d, i3, (int)(s.c(paramMotionEvent, s.a(paramMotionEvent, this.H)) - this.E)), true, true, i3);
        this.H = -1;
        n();
        bool2 = this.R.c() | this.S.c();
        continue;
        boolean bool3 = this.z;
        bool2 = false;
        if (bool3)
        {
          a(this.h, true, 0, false);
          this.H = -1;
          n();
          bool2 = this.R.c() | this.S.c();
          continue;
          int i2 = s.a(paramMotionEvent);
          this.F = s.c(paramMotionEvent, i2);
          this.H = s.b(paramMotionEvent, i2);
          bool2 = false;
          continue;
          a(paramMotionEvent);
          this.F = s.c(paramMotionEvent, s.a(paramMotionEvent, this.H));
          bool2 = false;
        }
      }
    }
  }

  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    if ((super.verifyDrawable(paramDrawable)) || (paramDrawable == this.o));
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.ViewPager
 * JD-Core Version:    0.6.2
 */