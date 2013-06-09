package android.support.v4.view;

import android.content.Context;
import android.content.res.Resources;
import android.database.DataSetObservable;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public final class ViewPager extends ViewGroup
{
  private static final int[] a = { 16842931 };
  private static final Comparator b = new s();
  private static final Interpolator c = new t();
  private float A;
  private float B;
  private int C;
  private VelocityTracker D;
  private int E;
  private int F;
  private int G;
  private boolean H;
  private android.support.v4.d.a I;
  private android.support.v4.d.a J;
  private boolean K;
  private boolean L;
  private int M;
  private y N;
  private y O;
  private x P;
  private int Q;
  private final ArrayList d;
  private i e;
  private int f;
  private int g;
  private Parcelable h;
  private ClassLoader i;
  private Scroller j;
  private z k;
  private int l;
  private Drawable m;
  private int n;
  private int o;
  private int p;
  private int q;
  private boolean r;
  private boolean s;
  private boolean t;
  private boolean u;
  private int v;
  private boolean w;
  private boolean x;
  private int y;
  private float z;

  private void a(int paramInt)
  {
    new v().b = paramInt;
    throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
  }

  private void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = paramInt1 + paramInt3;
    if (paramInt2 > 0)
    {
      int i3 = getScrollX();
      int i4 = paramInt2 + paramInt4;
      int i5 = i3 / i4;
      int i6 = (int)((i3 % i4 / i4 + i5) * i1);
      scrollTo(i6, getScrollY());
      if (!this.j.isFinished())
      {
        int i7 = this.j.getDuration() - this.j.timePassed();
        this.j.startScroll(i6, 0, i1 * this.f, 0, i7);
      }
    }
    while (true)
    {
      return;
      int i2 = i1 * this.f;
      if (i2 != getScrollX())
      {
        f();
        scrollTo(i2, getScrollY());
      }
    }
  }

  private void a(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    a(paramInt, paramBoolean1, paramBoolean2, 0);
  }

  private void a(int paramInt1, boolean paramBoolean1, boolean paramBoolean2, int paramInt2)
  {
    if ((this.e == null) || (this.e.a() <= 0))
      setScrollingCacheEnabled(false);
    while (true)
    {
      return;
      if ((!paramBoolean2) && (this.f == paramInt1) && (this.d.size() != 0))
      {
        setScrollingCacheEnabled(false);
      }
      else
      {
        if (paramInt1 < 0)
          paramInt1 = 0;
        while (true)
        {
          int i1 = this.v;
          if ((paramInt1 <= i1 + this.f) && (paramInt1 >= this.f - i1))
            break;
          for (int i2 = 0; i2 < this.d.size(); i2++)
            ((v)this.d.get(i2)).c = true;
          if (paramInt1 >= this.e.a())
            paramInt1 = -1 + this.e.a();
        }
        int i3;
        label159: int i4;
        if (this.f != paramInt1)
        {
          i3 = 1;
          this.f = paramInt1;
          c();
          i4 = paramInt1 * (getWidth() + this.l);
          if (!paramBoolean1)
            break label449;
          if (getChildCount() != 0)
            break label240;
          setScrollingCacheEnabled(false);
        }
        label197: label240: int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        float f2;
        int i11;
        while (true)
          if (((i3 == 0) || (this.N == null)) || ((i3 != 0) && (this.O != null)))
          {
            break;
            i3 = 0;
            break label159;
            i5 = getScrollX();
            i6 = getScrollY();
            i7 = i4 - i5;
            i8 = 0 - i6;
            if ((i7 == 0) && (i8 == 0))
            {
              f();
              setScrollState(0);
            }
            else
            {
              setScrollingCacheEnabled(true);
              this.u = true;
              setScrollState(2);
              i9 = getWidth();
              int i10 = i9 / 2;
              float f1 = Math.min(1.0F, 1.0F * Math.abs(i7) / i9);
              f2 = i10 + i10 * (float)Math.sin((float)(0.47123891676382D * (f1 - 0.5F)));
              i11 = Math.abs(paramInt2);
              if (i11 <= 0)
                break label423;
            }
          }
        label423: for (int i12 = 4 * Math.round(1000.0F * Math.abs(f2 / i11)); ; i12 = (int)(100.0F * (1.0F + Math.abs(i7) / (i9 + this.l))))
        {
          int i13 = Math.min(i12, 600);
          this.j.startScroll(i5, i6, i7, i8, i13);
          invalidate();
          break label197;
          break;
        }
        label449: if (((i3 == 0) || (this.N == null)) || ((i3 != 0) && (this.O != null)));
        f();
        scrollTo(i4, 0);
      }
    }
  }

  private void a(MotionEvent paramMotionEvent)
  {
    int i1 = e.a(paramMotionEvent);
    if (e.b(paramMotionEvent, i1) == this.C)
      if (i1 != 0)
        break label56;
    label56: for (int i2 = 1; ; i2 = 0)
    {
      this.A = e.c(paramMotionEvent, i2);
      this.C = e.b(paramMotionEvent, i2);
      if (this.D != null)
        this.D.clear();
      return;
    }
  }

  private boolean a(View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
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
      if ((!paramBoolean) || (!n.a(paramView, -paramInt1)))
        bool = false;
    }
  }

  private boolean b(int paramInt)
  {
    View localView1 = findFocus();
    if (localView1 == this)
      localView1 = null;
    View localView2 = FocusFinder.getInstance().findNextFocus(this, localView1, paramInt);
    boolean bool1;
    if ((localView2 != null) && (localView2 != localView1))
      if (paramInt == 17)
        if ((localView1 != null) && (localView2.getLeft() >= localView1.getLeft()))
          bool1 = h();
    while (true)
    {
      boolean bool2 = bool1;
      do
      {
        do
        {
          if (bool2)
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(paramInt));
          return bool2;
          bool1 = localView2.requestFocus();
          break;
          bool2 = false;
        }
        while (paramInt != 66);
        if ((localView1 != null) && (localView2.getLeft() <= localView1.getLeft()))
          break label154;
        bool1 = localView2.requestFocus();
        break;
        if ((paramInt == 17) || (paramInt == 1))
        {
          bool1 = h();
          break;
        }
        if (paramInt == 66)
          break label154;
        bool2 = false;
      }
      while (paramInt != 2);
      label154: if ((this.e != null) && (this.f < -1 + this.e.a()))
      {
        setCurrentItem$2563266(1 + this.f);
        bool1 = true;
      }
      else
      {
        bool1 = false;
      }
    }
  }

  private void c()
  {
    int i1 = -1;
    if (this.e == null)
      break label9;
    label9: 
    while ((this.t) || (getWindowToken() == null))
      return;
    int i2 = this.v;
    int i3 = Math.max(0, this.f - i2);
    int i4 = Math.min(-1 + this.e.a(), i2 + this.f);
    int i5 = 0;
    int i6 = i1;
    label72: v localv4;
    int i16;
    if (i5 < this.d.size())
    {
      localv4 = (v)this.d.get(i5);
      if (((localv4.b < i3) || (localv4.b > i4)) && (!localv4.c))
      {
        this.d.remove(i5);
        i16 = i5 - 1;
        i.b();
      }
    }
    for (int i12 = i16; ; i12 = i5)
    {
      int i13 = localv4.b;
      int i14 = i12 + 1;
      i6 = i13;
      i5 = i14;
      break label72;
      if ((i6 < i4) && (localv4.b > i3))
      {
        int i15 = i6 + 1;
        if (i15 < i3)
          i15 = i3;
        while (true)
          if ((i15 <= i4) && (i15 < localv4.b))
          {
            a(i15);
            i15++;
            i5++;
            continue;
            if (this.d.size() > 0)
              i1 = ((v)this.d.get(-1 + this.d.size())).b;
            if (i1 < i4)
            {
              int i11 = i1 + 1;
              if (i11 > i3);
              while (i11 <= i4)
              {
                a(i11);
                i11++;
                continue;
                i11 = i3;
              }
            }
            int i7 = 0;
            label336: if (i7 < this.d.size())
              if (((v)this.d.get(i7)).b != this.f);
            for (v localv1 = (v)this.d.get(i7); ; localv1 = null)
            {
              if ((localv1 != null) && (!hasFocus()))
                break label582;
              View localView1 = findFocus();
              v localv2 = null;
              label431: ViewParent localViewParent;
              if (localView1 != null)
              {
                localViewParent = localView1.getParent();
                if (localViewParent == this)
                  break label569;
                localv2 = null;
                if (localViewParent != null)
                {
                  boolean bool = localViewParent instanceof View;
                  localv2 = null;
                  if (bool)
                    break label559;
                }
              }
              while (true)
              {
                int i8 = 0;
                if (localv2 != null)
                {
                  int i9 = localv2.b;
                  int i10 = this.f;
                  i8 = 0;
                  if (i9 == i10)
                    break;
                }
                while (true)
                {
                  if (i8 >= getChildCount())
                    break label551;
                  View localView2 = getChildAt(i8);
                  v localv3 = d();
                  if ((localv3 != null) && (localv3.b == this.f) && (localView2.requestFocus(2)))
                    break;
                  i8++;
                }
                label551: break label9;
                i7++;
                break label336;
                label559: localView1 = (View)localViewParent;
                break label431;
                label569: localv2 = d();
              }
            }
            label582: break;
          }
      }
    }
  }

  private v d()
  {
    int i1 = 0;
    v localv;
    if (i1 < this.d.size())
    {
      localv = (v)this.d.get(i1);
      i locali = this.e;
      if (!locali.c());
    }
    while (true)
    {
      return localv;
      i1++;
      break;
      localv = null;
    }
  }

  private void e()
  {
    getWidth();
    this.L = false;
    int i2;
    int i3;
    int i4;
    int i6;
    View localView;
    int i11;
    int i8;
    int i9;
    if (this.M > 0)
    {
      int i1 = getScrollX();
      i2 = getPaddingLeft();
      i3 = getPaddingRight();
      i4 = getWidth();
      int i5 = getChildCount();
      i6 = 0;
      if (i6 < i5)
      {
        localView = getChildAt(i6);
        w localw = (w)localView.getLayoutParams();
        if (!localw.a)
          break label334;
        switch (0x7 & localw.b)
        {
        case 2:
        case 4:
        default:
          i11 = i2;
          int i17 = i3;
          i8 = i2;
          i9 = i17;
          label148: int i13 = i11 + i1 - localView.getLeft();
          if (i13 != 0)
            localView.offsetLeftAndRight(i13);
          break;
        case 3:
        case 1:
        case 5:
        }
      }
    }
    while (true)
    {
      i6++;
      int i10 = i9;
      i2 = i8;
      i3 = i10;
      break;
      int i15 = i2 + localView.getWidth();
      int i16 = i2;
      i9 = i3;
      i8 = i15;
      i11 = i16;
      break label148;
      i11 = Math.max((i4 - localView.getMeasuredWidth()) / 2, i2);
      int i14 = i3;
      i8 = i2;
      i9 = i14;
      break label148;
      i11 = i4 - i3 - localView.getMeasuredWidth();
      int i12 = i3 + localView.getMeasuredWidth();
      i8 = i2;
      i9 = i12;
      break label148;
      if ((this.N == null) || (this.O != null));
      this.L = true;
      if (!this.L)
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
      return;
      label334: int i7 = i3;
      i8 = i2;
      i9 = i7;
    }
  }

  private void f()
  {
    boolean bool1 = this.u;
    if (bool1)
    {
      setScrollingCacheEnabled(false);
      this.j.abortAnimation();
      int i2 = getScrollX();
      int i3 = getScrollY();
      int i4 = this.j.getCurrX();
      int i5 = this.j.getCurrY();
      if ((i2 != i4) || (i3 != i5))
        scrollTo(i4, i5);
      setScrollState(0);
    }
    this.t = false;
    this.u = false;
    int i1 = 0;
    boolean bool2 = bool1;
    while (i1 < this.d.size())
    {
      v localv = (v)this.d.get(i1);
      if (localv.c)
      {
        bool2 = true;
        localv.c = false;
      }
      i1++;
    }
    if (bool2)
      c();
  }

  private void g()
  {
    this.w = false;
    this.x = false;
    if (this.D != null)
    {
      this.D.recycle();
      this.D = null;
    }
  }

  private boolean h()
  {
    if (this.f > 0)
      setCurrentItem$2563266(-1 + this.f);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private void setCurrentItem$2563266(int paramInt)
  {
    this.t = false;
    a(paramInt, true, false);
  }

  private void setScrollState(int paramInt)
  {
    if (this.Q == paramInt);
    while (true)
    {
      return;
      this.Q = paramInt;
      if (this.N == null);
    }
  }

  private void setScrollingCacheEnabled(boolean paramBoolean)
  {
    if (this.s != paramBoolean)
      this.s = paramBoolean;
  }

  final void a()
  {
    int i1 = 0;
    int i2;
    if ((this.d.size() < 3) && (this.d.size() < this.e.a()))
      i2 = 1;
    while (i1 < this.d.size())
    {
      v localv = (v)this.d.get(i1);
      i1++;
      continue;
      i2 = 0;
      i1 = 0;
    }
    Collections.sort(this.d, b);
    if (i2 != 0)
    {
      c();
      requestLayout();
    }
  }

  public final void addFocusables(ArrayList paramArrayList, int paramInt1, int paramInt2)
  {
    int i1 = paramArrayList.size();
    int i2 = getDescendantFocusability();
    if (i2 != 393216)
      for (int i3 = 0; i3 < getChildCount(); i3++)
      {
        View localView = getChildAt(i3);
        if (localView.getVisibility() == 0)
        {
          v localv = d();
          if ((localv != null) && (localv.b == this.f))
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

  public final void addTouchables(ArrayList paramArrayList)
  {
    for (int i1 = 0; i1 < getChildCount(); i1++)
    {
      View localView = getChildAt(i1);
      if (localView.getVisibility() == 0)
      {
        v localv = d();
        if ((localv != null) && (localv.b == this.f))
          localView.addTouchables(paramArrayList);
      }
    }
  }

  public final void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (!checkLayoutParams(paramLayoutParams));
    for (ViewGroup.LayoutParams localLayoutParams = generateLayoutParams(paramLayoutParams); ; localLayoutParams = paramLayoutParams)
    {
      w localw = (w)localLayoutParams;
      localw.a |= paramView instanceof u;
      if (this.r)
      {
        if ((localw != null) && (localw.a))
          throw new IllegalStateException("Cannot add pager decor view during layout");
        addViewInLayout(paramView, paramInt, localLayoutParams);
        paramView.measure(this.p, this.q);
      }
      while (true)
      {
        return;
        super.addView(paramView, paramInt, localLayoutParams);
      }
    }
  }

  protected final boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if (((paramLayoutParams instanceof w)) && (super.checkLayoutParams(paramLayoutParams)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final void computeScroll()
  {
    if ((!this.j.isFinished()) && (this.j.computeScrollOffset()))
    {
      int i1 = getScrollX();
      int i2 = getScrollY();
      int i3 = this.j.getCurrX();
      int i4 = this.j.getCurrY();
      if ((i1 != i3) || (i2 != i4))
      {
        scrollTo(i3, i4);
        e();
      }
      invalidate();
    }
    while (true)
    {
      return;
      f();
    }
  }

  public final boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    boolean bool2;
    if (!super.dispatchKeyEvent(paramKeyEvent))
    {
      if (paramKeyEvent.getAction() == 0);
      switch (paramKeyEvent.getKeyCode())
      {
      default:
        bool2 = false;
      case 21:
      case 22:
      case 61:
      }
    }
    while (true)
    {
      boolean bool1 = false;
      if (bool2)
        bool1 = true;
      return bool1;
      bool2 = b(17);
      continue;
      bool2 = b(66);
      continue;
      if (Build.VERSION.SDK_INT < 11)
        break;
      if (a.b(paramKeyEvent))
      {
        bool2 = b(2);
      }
      else
      {
        if (!a.a(paramKeyEvent))
          break;
        bool2 = b(1);
      }
    }
  }

  public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
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
          v localv = d();
          if ((localv != null) && (localv.b == this.f) && (localView.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent)))
            bool = true;
        }
      }
      else
      {
        return bool;
      }
    }
  }

  public final void draw(Canvas paramCanvas)
  {
    int i1 = 1;
    super.draw(paramCanvas);
    int i2 = n.a(this);
    boolean bool2;
    if ((i2 == 0) || ((i2 == i1) && (this.e != null) && (this.e.a() > i1)))
    {
      boolean bool1 = this.I.a();
      bool2 = false;
      if (!bool1)
      {
        int i6 = paramCanvas.save();
        int i7 = getHeight() - getPaddingTop() - getPaddingBottom();
        paramCanvas.rotate(270.0F);
        paramCanvas.translate(-i7 + getPaddingTop(), 0.0F);
        this.I.a(i7, getWidth());
        bool2 = false | this.I.a(paramCanvas);
        paramCanvas.restoreToCount(i6);
      }
      if (!this.J.a())
      {
        int i3 = paramCanvas.save();
        int i4 = getWidth();
        int i5 = getHeight() - getPaddingTop() - getPaddingBottom();
        if (this.e != null)
          i1 = this.e.a();
        paramCanvas.rotate(90.0F);
        paramCanvas.translate(-getPaddingTop(), -i1 * (i4 + this.l) + this.l);
        this.J.a(i5, i4);
        bool2 |= this.J.a(paramCanvas);
        paramCanvas.restoreToCount(i3);
      }
    }
    while (true)
    {
      if (bool2)
        invalidate();
      return;
      this.I.b();
      this.J.b();
      bool2 = false;
    }
  }

  protected final void drawableStateChanged()
  {
    super.drawableStateChanged();
    Drawable localDrawable = this.m;
    if ((localDrawable != null) && (localDrawable.isStateful()))
      localDrawable.setState(getDrawableState());
  }

  protected final ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new w();
  }

  public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new w(getContext(), paramAttributeSet);
  }

  protected final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return generateDefaultLayoutParams();
  }

  public final i getAdapter()
  {
    return this.e;
  }

  public final int getCurrentItem()
  {
    return this.f;
  }

  public final int getOffscreenPageLimit()
  {
    return this.v;
  }

  public final int getPageMargin()
  {
    return this.l;
  }

  protected final void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.K = true;
  }

  protected final void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((this.l > 0) && (this.m != null))
    {
      int i1 = getScrollX();
      int i2 = getWidth();
      int i3 = i1 % (i2 + this.l);
      if (i3 != 0)
      {
        int i4 = i2 + (i1 - i3);
        this.m.setBounds(i4, this.n, i4 + this.l, this.o);
        this.m.draw(paramCanvas);
      }
    }
  }

  public final boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = 0xFF & paramMotionEvent.getAction();
    boolean bool1;
    if ((i1 == 3) || (i1 == 1))
    {
      this.w = false;
      this.x = false;
      this.C = -1;
      VelocityTracker localVelocityTracker = this.D;
      bool1 = false;
      if (localVelocityTracker != null)
      {
        this.D.recycle();
        this.D = null;
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
        if (!this.w)
          break;
        bool1 = true;
      }
      bool2 = this.x;
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
      if (!this.w)
      {
        if (this.D == null)
          this.D = VelocityTracker.obtain();
        this.D.addMovement(paramMotionEvent);
      }
      bool1 = this.w;
      break;
      int i2 = this.C;
      if (i2 != -1)
      {
        int i3 = e.a(paramMotionEvent, i2);
        float f2 = e.c(paramMotionEvent, i3);
        float f3 = f2 - this.A;
        float f4 = Math.abs(f3);
        float f5 = e.d(paramMotionEvent, i3);
        float f6 = Math.abs(f5 - this.B);
        if (a(this, false, (int)f3, (int)f2, (int)f5))
        {
          this.A = f2;
          this.z = f2;
          this.B = f5;
          bool1 = false;
          break;
        }
        if ((f4 > this.y) && (f4 > f6))
        {
          this.w = true;
          setScrollState(1);
          this.A = f2;
          setScrollingCacheEnabled(true);
        }
        else if (f6 > this.y)
        {
          this.x = true;
          continue;
          float f1 = paramMotionEvent.getX();
          this.z = f1;
          this.A = f1;
          this.B = paramMotionEvent.getY();
          this.C = e.b(paramMotionEvent, 0);
          if (this.Q == 2)
          {
            this.w = true;
            this.x = false;
            setScrollState(1);
          }
          else
          {
            f();
            this.w = false;
            this.x = false;
            continue;
            a(paramMotionEvent);
          }
        }
      }
    }
  }

  protected final void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.r = true;
    c();
    this.r = false;
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
    if (i10 < i1)
    {
      View localView = getChildAt(i10);
      int i19;
      label172: int i20;
      int i22;
      int i23;
      label224: int i11;
      int i12;
      int i13;
      if (localView.getVisibility() != 8)
      {
        w localw = (w)localView.getLayoutParams();
        if (localw.a)
        {
          int i16 = 0x7 & localw.b;
          int i17 = 0x70 & localw.b;
          switch (i16)
          {
          case 2:
          case 4:
          default:
            i19 = i4;
            switch (i17)
            {
            default:
              i20 = i5;
              int i29 = i7;
              i22 = i5;
              i23 = i29;
              int i24 = i19 + i8;
              int i25 = i9 + 1;
              localView.layout(i24, i20, i24 + localView.getMeasuredWidth(), i20 + localView.getMeasuredHeight());
              i11 = i25;
              i12 = i22;
              i7 = i23;
              i13 = i6;
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
      }
      for (int i14 = i4; ; i14 = i4)
      {
        i10++;
        i4 = i14;
        i6 = i13;
        i5 = i12;
        i9 = i11;
        break;
        int i30 = i4 + localView.getMeasuredWidth();
        i19 = i4;
        i4 = i30;
        break label172;
        i19 = Math.max((i2 - localView.getMeasuredWidth()) / 2, i4);
        break label172;
        int i18 = i2 - i6 - localView.getMeasuredWidth();
        i6 += localView.getMeasuredWidth();
        i19 = i18;
        break label172;
        int i27 = i5 + localView.getMeasuredHeight();
        int i28 = i5;
        i23 = i7;
        i22 = i27;
        i20 = i28;
        break label224;
        i20 = Math.max((i3 - localView.getMeasuredHeight()) / 2, i5);
        int i26 = i7;
        i22 = i5;
        i23 = i26;
        break label224;
        i20 = i3 - i7 - localView.getMeasuredHeight();
        int i21 = i7 + localView.getMeasuredHeight();
        i22 = i5;
        i23 = i21;
        break label224;
        v localv = d();
        if (localv != null)
        {
          int i15 = i4 + (i2 + this.l) * localv.b;
          localView.layout(i15, i5, i15 + localView.getMeasuredWidth(), i5 + localView.getMeasuredHeight());
        }
        i11 = i9;
        i12 = i5;
        i13 = i6;
      }
    }
    this.n = i5;
    this.o = (i3 - i7);
    this.M = i9;
    this.K = false;
  }

  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(getDefaultSize(0, paramInt1), getDefaultSize(0, paramInt2));
    int i1 = getMeasuredWidth() - getPaddingLeft() - getPaddingRight();
    int i2 = getMeasuredHeight() - getPaddingTop() - getPaddingBottom();
    int i3 = getChildCount();
    int i4 = 0;
    View localView2;
    int i12;
    int i13;
    label199: int i14;
    label214: label224: int i7;
    int i8;
    if (i4 < i3)
    {
      localView2 = getChildAt(i4);
      if (localView2.getVisibility() == 8)
        break label433;
      w localw2 = (w)localView2.getLayoutParams();
      if ((localw2 == null) || (!localw2.a))
        break label433;
      int i9 = 0x7 & localw2.b;
      int i10 = 0x70 & localw2.b;
      Log.d("ViewPager", "gravity: " + localw2.b + " hgrav: " + i9 + " vgrav: " + i10);
      int i11 = -2147483648;
      i12 = -2147483648;
      if ((i10 == 48) || (i10 == 80))
      {
        i13 = 1;
        if ((i9 != 3) && (i9 != 5))
          break label279;
        i14 = 1;
        if (i13 == 0)
          break label285;
        i11 = 1073741824;
        localView2.measure(View.MeasureSpec.makeMeasureSpec(i1, i11), View.MeasureSpec.makeMeasureSpec(i2, i12));
        if (i13 == 0)
          break label298;
        i7 = i2 - localView2.getMeasuredHeight();
        i8 = i1;
      }
    }
    while (true)
    {
      i4++;
      i1 = i8;
      i2 = i7;
      break;
      i13 = 0;
      break label199;
      label279: i14 = 0;
      break label214;
      label285: if (i14 == 0)
        break label224;
      i12 = 1073741824;
      break label224;
      label298: if (i14 != 0)
      {
        i8 = i1 - localView2.getMeasuredWidth();
        i7 = i2;
        continue;
        this.p = View.MeasureSpec.makeMeasureSpec(i1, 1073741824);
        this.q = View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
        this.r = true;
        c();
        this.r = false;
        int i5 = getChildCount();
        for (int i6 = 0; i6 < i5; i6++)
        {
          View localView1 = getChildAt(i6);
          if (localView1.getVisibility() != 8)
          {
            w localw1 = (w)localView1.getLayoutParams();
            if ((localw1 == null) || (!localw1.a))
              localView1.measure(this.p, this.q);
          }
        }
      }
      else
      {
        label433: i7 = i2;
        i8 = i1;
      }
    }
  }

  protected final boolean onRequestFocusInDescendants(int paramInt, Rect paramRect)
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
        break label104;
      View localView = getChildAt(i4);
      if (localView.getVisibility() != 0)
        break label94;
      v localv = d();
      if ((localv == null) || (localv.b != this.f) || (!localView.requestFocus(paramInt, paramRect)))
        break label94;
    }
    while (true)
    {
      return i1;
      i4 = i3 - 1;
      i3 = i2;
      break;
      label94: i4 += i2;
      break;
      label104: i1 = 0;
    }
  }

  public final void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof ViewPager.SavedState))
      super.onRestoreInstanceState(paramParcelable);
    while (true)
    {
      return;
      ViewPager.SavedState localSavedState = (ViewPager.SavedState)paramParcelable;
      super.onRestoreInstanceState(localSavedState.getSuperState());
      if (this.e != null)
      {
        a(localSavedState.a, false, true);
      }
      else
      {
        this.g = localSavedState.a;
        this.h = localSavedState.b;
        this.i = localSavedState.c;
      }
    }
  }

  public final Parcelable onSaveInstanceState()
  {
    ViewPager.SavedState localSavedState = new ViewPager.SavedState(super.onSaveInstanceState());
    localSavedState.a = this.f;
    if (this.e != null)
      localSavedState.b = null;
    return localSavedState;
  }

  protected final void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt1 != paramInt3)
      a(paramInt1, paramInt3, this.l, this.l);
  }

  public final boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool1;
    if (this.H)
      bool1 = true;
    int i1;
    do
    {
      i locali;
      do
      {
        int i12;
        do
        {
          return bool1;
          if (paramMotionEvent.getAction() != 0)
            break;
          i12 = paramMotionEvent.getEdgeFlags();
          bool1 = false;
        }
        while (i12 != 0);
        locali = this.e;
        bool1 = false;
      }
      while (locali == null);
      i1 = this.e.a();
      bool1 = false;
    }
    while (i1 == 0);
    if (this.D == null)
      this.D = VelocityTracker.obtain();
    this.D.addMovement(paramMotionEvent);
    int i2 = 0xFF & paramMotionEvent.getAction();
    boolean bool2 = false;
    float f4;
    int i8;
    int i9;
    int i10;
    float f6;
    boolean bool6;
    float f7;
    switch (i2)
    {
    case 4:
    default:
    case 0:
    case 2:
      boolean bool5;
      do
      {
        while (true)
        {
          if (bool2)
            invalidate();
          bool1 = true;
          break;
          f();
          float f13 = paramMotionEvent.getX();
          this.z = f13;
          this.A = f13;
          this.C = e.b(paramMotionEvent, 0);
          bool2 = false;
        }
        if (!this.w)
        {
          int i11 = e.a(paramMotionEvent, this.C);
          float f10 = e.c(paramMotionEvent, i11);
          float f11 = Math.abs(f10 - this.A);
          float f12 = Math.abs(e.d(paramMotionEvent, i11) - this.B);
          if ((f11 > this.y) && (f11 > f12))
          {
            this.w = true;
            this.A = f10;
            setScrollState(1);
            setScrollingCacheEnabled(true);
          }
        }
        bool5 = this.w;
        bool2 = false;
      }
      while (!bool5);
      float f2 = e.c(paramMotionEvent, e.a(paramMotionEvent, this.C));
      float f3 = this.A - f2;
      this.A = f2;
      f4 = f3 + getScrollX();
      i8 = getWidth();
      i9 = i8 + this.l;
      i10 = -1 + this.e.a();
      float f5 = Math.max(0, i9 * (-1 + this.f));
      f6 = i9 * Math.min(1 + this.f, i10);
      if (f4 < f5)
      {
        boolean bool9 = f5 < 0.0F;
        boolean bool10 = false;
        if (!bool9)
        {
          float f9 = -f4;
          bool10 = this.I.a(f9 / i8);
        }
        bool6 = bool10;
        f7 = f5;
      }
      break;
    case 1:
    case 3:
    case 5:
    case 6:
    }
    while (true)
    {
      this.A += f7 - (int)f7;
      scrollTo((int)f7, getScrollY());
      e();
      bool2 = bool6;
      break;
      if (f4 > f6)
      {
        boolean bool7 = f6 < i10 * i9;
        boolean bool8 = false;
        if (!bool7)
        {
          float f8 = f4 - f6;
          bool8 = this.J.a(f8 / i8);
        }
        bool6 = bool8;
        f7 = f6;
        continue;
        boolean bool4 = this.w;
        bool2 = false;
        if (!bool4)
          break;
        VelocityTracker localVelocityTracker = this.D;
        localVelocityTracker.computeCurrentVelocity(1000, this.F);
        int i4 = (int)j.a(localVelocityTracker, this.C);
        this.t = true;
        int i5 = getWidth() + this.l;
        int i6 = getScrollX();
        int i7 = i6 / i5;
        float f1 = i6 % i5 / i5;
        if ((Math.abs((int)(e.c(paramMotionEvent, e.a(paramMotionEvent, this.C)) - this.z)) > this.G) && (Math.abs(i4) > this.E))
          if (i4 <= 0);
        while (true)
        {
          a(i7, true, true, i4);
          this.C = -1;
          g();
          bool2 = this.I.c() | this.J.c();
          break;
          i7++;
          continue;
          i7 = (int)(0.5F + (f1 + i7));
        }
        boolean bool3 = this.w;
        bool2 = false;
        if (!bool3)
          break;
        a(this.f, true, true);
        this.C = -1;
        g();
        bool2 = this.I.c() | this.J.c();
        break;
        int i3 = e.a(paramMotionEvent);
        this.A = e.c(paramMotionEvent, i3);
        this.C = e.b(paramMotionEvent, i3);
        bool2 = false;
        break;
        a(paramMotionEvent);
        this.A = e.c(paramMotionEvent, e.a(paramMotionEvent, this.C));
        bool2 = false;
        break;
      }
      f7 = f4;
      bool6 = false;
    }
  }

  public final void setAdapter(i parami)
  {
    if (this.e != null)
    {
      i locali3 = this.e;
      z localz2 = this.k;
      locali3.a.unregisterObserver(localz2);
      for (int i1 = 0; i1 < this.d.size(); i1++)
      {
        v localv = (v)this.d.get(i1);
        i.b();
      }
      this.d.clear();
      for (int i2 = 0; i2 < getChildCount(); i2++)
        if (!((w)getChildAt(i2).getLayoutParams()).a)
        {
          removeViewAt(i2);
          i2--;
        }
      this.f = 0;
      scrollTo(0, 0);
    }
    i locali1 = this.e;
    this.e = parami;
    if (this.e != null)
    {
      if (this.k == null)
        this.k = new z(this, (byte)0);
      i locali2 = this.e;
      z localz1 = this.k;
      locali2.a.registerObserver(localz1);
      this.t = false;
      if (this.g < 0)
        break label286;
      a(this.g, false, true);
      this.g = -1;
      this.h = null;
      this.i = null;
    }
    while (true)
    {
      if ((this.P != null) && (locali1 != parami));
      return;
      label286: c();
    }
  }

  public final void setCurrentItem(int paramInt)
  {
    this.t = false;
    if (!this.K);
    for (boolean bool = true; ; bool = false)
    {
      a(paramInt, bool, false);
      return;
    }
  }

  public final void setOffscreenPageLimit(int paramInt)
  {
    if (paramInt <= 0)
    {
      Log.w("ViewPager", "Requested offscreen page limit " + paramInt + " too small; defaulting to 1");
      paramInt = 1;
    }
    if (paramInt != this.v)
    {
      this.v = paramInt;
      c();
    }
  }

  final void setOnAdapterChangeListener(x paramx)
  {
    this.P = paramx;
  }

  public final void setOnPageChangeListener(y paramy)
  {
    this.N = paramy;
  }

  public final void setPageMargin(int paramInt)
  {
    int i1 = this.l;
    this.l = paramInt;
    int i2 = getWidth();
    a(i2, i2, paramInt, i1);
    requestLayout();
  }

  public final void setPageMarginDrawable(int paramInt)
  {
    setPageMarginDrawable(getContext().getResources().getDrawable(paramInt));
  }

  public final void setPageMarginDrawable(Drawable paramDrawable)
  {
    this.m = paramDrawable;
    if (paramDrawable != null)
      refreshDrawableState();
    if (paramDrawable == null);
    for (boolean bool = true; ; bool = false)
    {
      setWillNotDraw(bool);
      invalidate();
      return;
    }
  }

  protected final boolean verifyDrawable(Drawable paramDrawable)
  {
    if ((super.verifyDrawable(paramDrawable)) || (paramDrawable == this.m));
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.ViewPager
 * JD-Core Version:    0.6.2
 */