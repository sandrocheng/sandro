package com.keniu.security.traffic;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Handler;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;

public class MultiDirectionSlidingDrawer extends ViewGroup
{
  public static final int a = 0;
  public static final int b = 1;
  public static final int c = 2;
  public static final int d = 3;
  public static final String e = "Sliding";
  private static final int f = 6;
  private static final float g = 100.0F;
  private static final float h = 150.0F;
  private static final float i = 200.0F;
  private static final float j = 2000.0F;
  private static final int k = 1000;
  private static final int l = 1000;
  private static final int m = 16;
  private static final int n = -10001;
  private static final int o = -10002;
  private boolean A;
  private int B;
  private int C;
  private int D;
  private int E;
  private n F;
  private m G;
  private o H;
  private final Handler I = new p(this);
  private float J;
  private float K;
  private float L;
  private long M;
  private long N;
  private int O;
  private boolean P;
  private boolean Q;
  private boolean R;
  private final int S;
  private final int T;
  private int U;
  private int V;
  private int W;
  private final int X;
  private final int p;
  private final int q;
  private View r;
  private View s;
  private final Rect t = new Rect();
  private final Rect u = new Rect();
  private boolean v;
  private boolean w;
  private VelocityTracker x;
  private boolean y;
  private boolean z;

  public MultiDirectionSlidingDrawer(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public MultiDirectionSlidingDrawer(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, com.ijinshan.a.m.i, paramInt, 0);
    int i1 = localTypedArray.getInt(0, 1);
    boolean bool1;
    if ((i1 == 1) || (i1 == 3))
    {
      bool1 = true;
      this.z = bool1;
      this.B = ((int)localTypedArray.getDimension(3, 0.0F));
      this.C = ((int)localTypedArray.getDimension(4, 0.0F));
      this.Q = localTypedArray.getBoolean(5, true);
      this.R = localTypedArray.getBoolean(6, true);
      if ((i1 != 3) && (i1 != 2))
        break label181;
    }
    int i2;
    label181: for (boolean bool2 = true; ; bool2 = false)
    {
      this.y = bool2;
      i2 = localTypedArray.getResourceId(1, 0);
      if (i2 != 0)
        break label187;
      throw new IllegalArgumentException("The handle attribute is required and must refer to a valid child.");
      bool1 = false;
      break;
    }
    label187: int i3 = localTypedArray.getResourceId(2, 0);
    if (i3 == 0)
      throw new IllegalArgumentException("The content attribute is required and must refer to a valid child.");
    if (i2 == i3)
      throw new IllegalArgumentException("The content and handle attributes must refer to different children.");
    this.p = i2;
    this.q = i3;
    float f1 = getResources().getDisplayMetrics().density;
    this.S = ((int)(0.5F + 6.0F * f1));
    this.T = ((int)(0.5F + 100.0F * f1));
    this.U = ((int)(0.5F + 150.0F * f1));
    this.V = ((int)(0.5F + 200.0F * f1));
    this.W = ((int)(0.5F + 2000.0F * f1));
    this.X = ((int)(0.5F + f1 * 1000.0F));
    if (this.y)
    {
      this.W = (-this.W);
      this.V = (-this.V);
      this.U = (-this.U);
    }
    localTypedArray.recycle();
    setAlwaysDrawnWithCacheEnabled(false);
  }

  private void a(int paramInt)
  {
    c(paramInt);
    a(paramInt, this.W, true);
  }

  private void a(int paramInt, float paramFloat, boolean paramBoolean)
  {
    this.L = paramInt;
    this.K = paramFloat;
    int i6;
    int i7;
    label44: int i8;
    label64: int i11;
    label91: int i12;
    if (this.A)
      if (this.z)
      {
        i6 = getBottom();
        if (!this.z)
          break label270;
        i7 = this.D;
        if (!this.y)
          break label285;
        if (paramFloat >= this.V)
          break label279;
        i8 = 1;
        if (!this.y)
          break label313;
        if (i6 - (paramInt + i7) + this.B <= i7)
          break label307;
        i11 = 1;
        if (!this.y)
          break label368;
        if (paramFloat >= -this.V)
          break label362;
        i12 = 1;
        label112: if ((!paramBoolean) && (i8 == 0) && ((i11 == 0) || (i12 == 0)))
          break label405;
        this.J = this.W;
        if (!this.y)
          break label391;
        if (paramFloat > 0.0F)
          this.K = 0.0F;
      }
    while (true)
    {
      long l1 = SystemClock.uptimeMillis();
      this.M = l1;
      this.N = (l1 + 16L);
      this.P = true;
      this.I.removeMessages(1000);
      this.I.sendMessageAtTime(this.I.obtainMessage(1000), this.N);
      this.r.setPressed(false);
      this.v = false;
      if ((this.H == null) || (this.x != null))
      {
        this.x.recycle();
        this.x = null;
      }
      return;
      i6 = getRight();
      break;
      label270: i7 = this.E;
      break label44;
      label279: i8 = 0;
      break label64;
      label285: if (paramFloat > this.V)
      {
        i8 = 1;
        break label64;
      }
      i8 = 0;
      break label64;
      label307: i11 = 0;
      break label91;
      label313: int i9 = this.C;
      if (this.z);
      for (int i10 = this.D; ; i10 = this.E)
      {
        if (paramInt <= i9 + i10)
          break label356;
        i11 = 1;
        break;
      }
      label356: i11 = 0;
      break label91;
      label362: i12 = 0;
      break label112;
      label368: if (paramFloat > -this.V)
      {
        i12 = 1;
        break label112;
      }
      i12 = 0;
      break label112;
      label391: if (paramFloat < 0.0F)
      {
        this.K = 0.0F;
        continue;
        label405: this.J = (-this.W);
        if (this.y)
        {
          if (paramFloat < 0.0F)
            this.K = 0.0F;
        }
        else if (paramFloat > 0.0F)
        {
          this.K = 0.0F;
          continue;
          int i1;
          label470: int i5;
          label490: int i3;
          label501: int i4;
          if (this.y)
            if (paramFloat < this.V)
            {
              i1 = 1;
              if (!this.y)
                break label614;
              if (!this.z)
                break label599;
              i5 = getHeight();
              if (paramInt >= i5 / 2)
                break label608;
              i3 = 1;
              if (!this.y)
                break label662;
              if (paramFloat >= -this.V)
                break label656;
              i4 = 1;
            }
          while (true)
            if ((!paramBoolean) && ((i1 != 0) || ((i3 != 0) && (i4 != 0))))
            {
              this.J = this.W;
              if (this.y)
              {
                if (paramFloat <= 0.0F)
                  break;
                this.K = 0.0F;
                break;
                i1 = 0;
                break label470;
                if (paramFloat > this.V)
                {
                  i1 = 1;
                  break label470;
                }
                i1 = 0;
                break label470;
                label599: i5 = getWidth();
                break label490;
                label608: i3 = 0;
                break label501;
                label614: if (this.z);
                for (int i2 = getHeight(); ; i2 = getWidth())
                {
                  if (paramInt <= i2 / 2)
                    break label650;
                  i3 = 1;
                  break;
                }
                label650: i3 = 0;
                break label501;
                label656: i4 = 0;
                continue;
                label662: if (paramFloat > -this.V)
                {
                  i4 = 1;
                  continue;
                }
                i4 = 0;
                continue;
              }
              if (paramFloat >= 0.0F)
                break;
              this.K = 0.0F;
              break;
            }
          this.J = (-this.W);
          if (this.y)
          {
            if (paramFloat < 0.0F)
              this.K = 0.0F;
          }
          else if (paramFloat > 0.0F)
            this.K = 0.0F;
        }
      }
    }
  }

  private void a(o paramo)
  {
    this.H = paramo;
  }

  private void b(int paramInt)
  {
    c(paramInt);
    a(paramInt, -this.W, true);
  }

  private void c()
  {
    if (this.P)
      return;
    View localView = this.s;
    int i2;
    if (localView.isLayoutRequested())
    {
      if (!this.z)
        break label160;
      i2 = this.D;
      int i3 = getBottom() - getTop() - i2 - this.C;
      localView.measure(View.MeasureSpec.makeMeasureSpec(getRight() - getLeft(), 1073741824), View.MeasureSpec.makeMeasureSpec(i3, 1073741824));
      if (!this.y)
        break label129;
      localView.layout(0, this.C, localView.getMeasuredWidth(), this.C + localView.getMeasuredHeight());
    }
    while (true)
    {
      localView.getViewTreeObserver().dispatchOnPreDraw();
      localView.buildDrawingCache();
      localView.setVisibility(8);
      break;
      label129: localView.layout(0, i2 + this.C, localView.getMeasuredWidth(), i2 + this.C + localView.getMeasuredHeight());
      continue;
      label160: int i1 = this.r.getWidth();
      localView.measure(View.MeasureSpec.makeMeasureSpec(getRight() - getLeft() - i1 - this.C, 1073741824), View.MeasureSpec.makeMeasureSpec(getBottom() - getTop(), 1073741824));
      if (this.y)
        localView.layout(this.C, 0, this.C + localView.getMeasuredWidth(), localView.getMeasuredHeight());
      else
        localView.layout(i1 + this.C, 0, i1 + this.C + localView.getMeasuredWidth(), localView.getMeasuredHeight());
    }
  }

  private void c(int paramInt)
  {
    this.v = true;
    this.x = VelocityTracker.obtain();
    int i1;
    if (!this.A)
    {
      i1 = 1;
      if (i1 == 0)
        break label164;
      this.J = this.W;
      this.K = this.V;
      if (!this.y)
        break label115;
      this.L = this.C;
      d((int)this.L);
      this.P = true;
      this.I.removeMessages(1000);
      long l1 = SystemClock.uptimeMillis();
      this.M = l1;
      this.N = (l1 + 16L);
      this.P = true;
    }
    while (true)
    {
      return;
      i1 = 0;
      break;
      label115: int i2 = this.B;
      if (this.z);
      for (int i3 = getHeight() - this.D; ; i3 = getWidth() - this.E)
      {
        this.L = (i2 + i3);
        break;
      }
      label164: if (this.P)
      {
        this.P = false;
        this.I.removeMessages(1000);
      }
      d(paramInt);
    }
  }

  private void d()
  {
    this.r.setPressed(false);
    this.v = false;
    if ((this.H == null) || (this.x != null))
    {
      this.x.recycle();
      this.x = null;
    }
  }

  private void d(int paramInt)
  {
    View localView = this.r;
    int i4;
    int i5;
    int i6;
    if (this.z)
    {
      if (paramInt == -10001)
      {
        if (this.y)
          localView.offsetTopAndBottom(this.B + getBottom() - getTop() - this.D);
        while (true)
        {
          invalidate();
          return;
          localView.offsetTopAndBottom(this.C - localView.getTop());
        }
      }
      if (paramInt == -10002)
      {
        if (this.y)
          localView.offsetTopAndBottom(this.C - localView.getTop());
        while (true)
        {
          invalidate();
          break;
          localView.offsetTopAndBottom(this.B + getBottom() - getTop() - this.D - localView.getTop());
        }
      }
      i4 = localView.getTop();
      i5 = paramInt - i4;
      if (paramInt < this.C)
        i6 = this.C - i4;
    }
    while (true)
    {
      localView.offsetTopAndBottom(i6);
      Rect localRect3 = this.t;
      Rect localRect4 = this.u;
      localView.getHitRect(localRect3);
      localRect4.set(localRect3);
      localRect4.union(localRect3.left, localRect3.top - i6, localRect3.right, localRect3.bottom - i6);
      localRect4.union(0, localRect3.bottom - i6, getWidth(), localRect3.bottom - i6 + this.s.getHeight());
      invalidate(localRect4);
      break;
      if (i5 > this.B + getBottom() - getTop() - this.D - i4)
      {
        i6 = this.B + getBottom() - getTop() - this.D - i4;
        continue;
        if (paramInt == -10001)
        {
          if (this.y)
            localView.offsetLeftAndRight(this.B + getRight() - getLeft() - this.E);
          while (true)
          {
            invalidate();
            break;
            localView.offsetLeftAndRight(this.C - localView.getLeft());
          }
        }
        if (paramInt == -10002)
        {
          if (this.y)
            localView.offsetLeftAndRight(this.C - localView.getLeft());
          while (true)
          {
            invalidate();
            break;
            localView.offsetLeftAndRight(this.B + getRight() - getLeft() - this.E - localView.getLeft());
          }
        }
        int i1 = localView.getLeft();
        int i2 = paramInt - i1;
        int i3;
        if (paramInt < this.C)
          i3 = this.C - i1;
        while (true)
        {
          localView.offsetLeftAndRight(i3);
          Rect localRect1 = this.t;
          Rect localRect2 = this.u;
          localView.getHitRect(localRect1);
          localRect2.set(localRect1);
          localRect2.union(localRect1.left - i3, localRect1.top, localRect1.right - i3, localRect1.bottom);
          localRect2.union(localRect1.right - i3, 0, localRect1.right - i3 + this.s.getWidth(), getHeight());
          invalidate(localRect2);
          break;
          if (i2 > this.B + getRight() - getLeft() - this.E - i1)
            i3 = this.B + getRight() - getLeft() - this.E - i1;
          else
            i3 = i2;
        }
      }
      else
      {
        i6 = i5;
      }
    }
  }

  private void e()
  {
    if (this.P)
    {
      long l1 = SystemClock.uptimeMillis();
      float f1 = (float)(l1 - this.M) / 1000.0F;
      float f2 = this.L;
      float f3 = this.K;
      float f4 = this.J;
      this.L = (f2 + f3 * f1 + f1 * (f1 * (0.5F * f4)));
      this.K = (f3 + f1 * f4);
      this.M = l1;
      if (!this.y)
        break label218;
      if (this.L >= this.C)
        break label112;
      this.P = false;
      k();
    }
    while (true)
    {
      return;
      label112: float f6 = this.L;
      int i3 = this.C;
      if (this.z);
      for (int i4 = getHeight(); ; i4 = getWidth())
      {
        if (f6 < i3 + i4 - 1)
          break label172;
        this.P = false;
        l();
        break;
      }
      label172: d((int)this.L);
      this.N = (16L + this.N);
      this.I.sendMessageAtTime(this.I.obtainMessage(1000), this.N);
      continue;
      label218: float f5 = this.L;
      int i1 = this.B;
      if (this.z);
      for (int i2 = getHeight(); ; i2 = getWidth())
      {
        if (f5 < i1 + i2 - 1)
          break label278;
        this.P = false;
        k();
        break;
      }
      label278: if (this.L < this.C)
      {
        this.P = false;
        l();
      }
      else
      {
        d((int)this.L);
        this.N = (16L + this.N);
        this.I.sendMessageAtTime(this.I.obtainMessage(1000), this.N);
      }
    }
  }

  private void f()
  {
    long l1 = SystemClock.uptimeMillis();
    float f1 = (float)(l1 - this.M) / 1000.0F;
    float f2 = this.L;
    float f3 = this.K;
    float f4 = this.J;
    this.L = (f2 + f3 * f1 + f1 * (f1 * (0.5F * f4)));
    this.K = (f3 + f1 * f4);
    this.M = l1;
  }

  private void g()
  {
    l();
    invalidate();
    requestLayout();
    sendAccessibilityEvent(32);
  }

  private void h()
  {
    k();
    invalidate();
    requestLayout();
  }

  private void i()
  {
    c();
    if (this.z);
    for (int i1 = this.r.getTop(); ; i1 = this.r.getLeft())
    {
      a(i1);
      return;
    }
  }

  private void j()
  {
    c();
    if (this.z);
    for (int i1 = this.r.getTop(); ; i1 = this.r.getLeft())
    {
      b(i1);
      sendAccessibilityEvent(32);
      return;
    }
  }

  private void k()
  {
    d(-10002);
    this.s.setVisibility(8);
    this.s.destroyDrawingCache();
    if (!this.A);
    while (true)
    {
      return;
      this.A = false;
      if (this.G != null)
        this.G.a();
    }
  }

  private void l()
  {
    d(-10001);
    this.s.setVisibility(0);
    if (this.A);
    while (true)
    {
      return;
      this.A = true;
      if (this.F != null)
        this.F.a();
    }
  }

  private View m()
  {
    return this.r;
  }

  private View n()
  {
    return this.s;
  }

  private void o()
  {
    this.w = false;
  }

  private void p()
  {
    this.w = true;
  }

  private boolean q()
  {
    return this.A;
  }

  private boolean r()
  {
    if ((this.v) || (this.P));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final void a()
  {
    if (!this.A)
      l();
    while (true)
    {
      invalidate();
      requestLayout();
      return;
      k();
    }
  }

  public final void a(m paramm)
  {
    this.G = paramm;
  }

  public final void a(n paramn)
  {
    this.F = paramn;
  }

  public final void b()
  {
    if (!this.A)
    {
      c();
      if (this.z);
      for (int i2 = this.r.getTop(); ; i2 = this.r.getLeft())
      {
        b(i2);
        sendAccessibilityEvent(32);
        return;
      }
    }
    c();
    if (this.z);
    for (int i1 = this.r.getTop(); ; i1 = this.r.getLeft())
    {
      a(i1);
      break;
    }
  }

  protected void dispatchDraw(Canvas paramCanvas)
  {
    long l1 = getDrawingTime();
    View localView = this.r;
    boolean bool = this.z;
    drawChild(paramCanvas, localView, l1);
    Bitmap localBitmap;
    if ((this.v) || (this.P))
    {
      localBitmap = this.s.getDrawingCache();
      if (localBitmap != null)
        if (bool)
          if (this.y)
          {
            paramCanvas.drawBitmap(localBitmap, 0.0F, localView.getTop() - (getBottom() - getTop()) + this.D, null);
            invalidate();
          }
    }
    while (true)
    {
      return;
      paramCanvas.drawBitmap(localBitmap, 0.0F, localView.getBottom(), null);
      break;
      if (this.y);
      for (float f5 = localView.getLeft() - localBitmap.getWidth(); ; f5 = localView.getRight())
      {
        paramCanvas.drawBitmap(localBitmap, f5, 0.0F, null);
        break;
      }
      paramCanvas.save();
      if (this.y)
      {
        float f3;
        if (bool)
        {
          f3 = 0.0F;
          label182: if (!bool)
            break label258;
        }
        label258: for (float f4 = localView.getTop() - this.C - this.s.getMeasuredHeight(); ; f4 = 0.0F)
        {
          paramCanvas.translate(f3, f4);
          drawChild(paramCanvas, this.s, l1);
          paramCanvas.restore();
          break;
          f3 = localView.getLeft() - this.C - this.s.getMeasuredWidth();
          break label182;
        }
      }
      float f1;
      if (bool)
      {
        f1 = 0.0F;
        label272: if (!bool)
          break label317;
      }
      label317: for (float f2 = localView.getTop() - this.C; ; f2 = 0.0F)
      {
        paramCanvas.translate(f1, f2);
        break;
        f1 = localView.getLeft() - this.C;
        break label272;
      }
      if (this.A)
        drawChild(paramCanvas, this.s, l1);
    }
  }

  protected void onFinishInflate()
  {
    this.r = findViewById(this.p);
    if (this.r == null)
      throw new IllegalArgumentException("The handle attribute is must refer to an existing child.");
    this.r.setOnClickListener(new l(this));
    this.s = findViewById(this.q);
    if (this.s == null)
      throw new IllegalArgumentException("The content attribute is must refer to an existing child.");
    this.s.setVisibility(8);
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.w);
    int i1;
    float f1;
    float f2;
    View localView;
    for (boolean bool = false; ; bool = false)
    {
      return bool;
      i1 = paramMotionEvent.getAction();
      f1 = paramMotionEvent.getX();
      f2 = paramMotionEvent.getY();
      Rect localRect = this.t;
      localView = this.r;
      localView.getHitRect(localRect);
      if ((this.v) || (localRect.contains((int)f1, (int)f2)))
        break;
    }
    if (i1 == 0)
    {
      this.v = true;
      localView.setPressed(true);
      c();
      if ((this.H != null) && (!this.z))
        break label151;
      int i3 = this.r.getTop();
      this.O = ((int)f2 - i3);
      c(i3);
    }
    while (true)
    {
      this.x.addMovement(paramMotionEvent);
      bool = true;
      break;
      label151: int i2 = this.r.getLeft();
      this.O = ((int)f1 - i2);
      c(i2);
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (this.v)
      return;
    int i1 = paramInt3 - paramInt1;
    int i2 = paramInt4 - paramInt2;
    View localView1 = this.r;
    int i3 = localView1.getMeasuredWidth();
    int i4 = localView1.getMeasuredHeight();
    View localView2 = this.s;
    int i7;
    int i8;
    if (this.z)
    {
      int i10 = (i1 - i3) / 2;
      if (this.y)
      {
        if (this.A);
        for (int i13 = i2 - this.B - i4; ; i13 = this.C)
        {
          localView2.layout(0, this.C, localView2.getMeasuredWidth(), this.C + localView2.getMeasuredHeight());
          int i14 = i13;
          i7 = i10;
          i8 = i14;
          localView1.layout(i7, i8, i3 + i7, i4 + i8);
          this.D = localView1.getHeight();
          this.E = localView1.getWidth();
          break;
        }
      }
      if (this.A);
      for (int i11 = this.C; ; i11 = i2 - i4 + this.B)
      {
        localView2.layout(0, i4 + this.C, localView2.getMeasuredWidth(), i4 + this.C + localView2.getMeasuredHeight());
        int i12 = i11;
        i7 = i10;
        i8 = i12;
        break;
      }
    }
    int i5 = (i2 - i4) / 2;
    if (this.y)
    {
      if (this.A);
      for (int i9 = i1 - this.B - i3; ; i9 = this.C)
      {
        localView2.layout(this.C, 0, this.C + localView2.getMeasuredWidth(), localView2.getMeasuredHeight());
        i7 = i9;
        i8 = i5;
        break;
      }
    }
    if (this.A);
    for (int i6 = this.C; ; i6 = i1 - i3 + this.B)
    {
      localView2.layout(i3 + this.C, 0, i3 + this.C + localView2.getMeasuredWidth(), localView2.getMeasuredHeight());
      i7 = i6;
      i8 = i5;
      break;
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i1 = View.MeasureSpec.getMode(paramInt1);
    int i2 = View.MeasureSpec.getSize(paramInt1);
    int i3 = View.MeasureSpec.getMode(paramInt2);
    int i4 = View.MeasureSpec.getSize(paramInt2);
    if ((i1 == 0) || (i3 == 0))
      throw new RuntimeException("SlidingDrawer cannot have UNSPECIFIED dimensions");
    View localView = this.r;
    measureChild(localView, paramInt1, paramInt2);
    if (this.z)
    {
      int i6 = i4 - localView.getMeasuredHeight() - this.C;
      this.s.measure(View.MeasureSpec.makeMeasureSpec(i2, 1073741824), View.MeasureSpec.makeMeasureSpec(i6, 1073741824));
    }
    while (true)
    {
      setMeasuredDimension(i2, i4);
      return;
      int i5 = i2 - localView.getMeasuredWidth() - this.C;
      this.s.measure(View.MeasureSpec.makeMeasureSpec(i5, 1073741824), View.MeasureSpec.makeMeasureSpec(i4, 1073741824));
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.w);
    for (boolean bool1 = true; ; bool1 = true)
    {
      return bool1;
      if (this.v)
        this.x.addMovement(paramMotionEvent);
      switch (paramMotionEvent.getAction())
      {
      default:
        if ((!this.v) && (!this.P) && (!super.onTouchEvent(paramMotionEvent)))
          break label899;
      case 2:
      case 1:
      case 3:
      }
    }
    if (this.z);
    for (float f7 = paramMotionEvent.getY(); ; f7 = paramMotionEvent.getX())
    {
      d((int)f7 - this.O);
      break;
    }
    VelocityTracker localVelocityTracker = this.x;
    localVelocityTracker.computeCurrentVelocity(this.X);
    float f1 = localVelocityTracker.getYVelocity();
    float f2 = localVelocityTracker.getXVelocity();
    boolean bool2 = this.z;
    int i1;
    label166: float f3;
    int i3;
    if (bool2)
      if (f1 < 0.0F)
      {
        i1 = 1;
        if (f2 < 0.0F)
          f2 = -f2;
        if (((this.y) || (f2 <= this.U)) && ((!this.y) || (f2 >= this.U)))
          break label911;
        float f6 = this.U;
        int i24 = i1;
        f3 = f6;
        i3 = i24;
      }
    while (true)
    {
      float f4 = (float)Math.hypot(f3, f1);
      if (i3 != 0);
      for (float f5 = -f4; ; f5 = f4)
      {
        int i4 = this.r.getTop();
        int i5 = this.r.getLeft();
        int i6 = this.r.getBottom();
        int i7 = this.r.getRight();
        if (Math.abs(f5) < this.T)
        {
          int i17;
          label341: int i18;
          label370: int i19;
          label399: int i20;
          label428: int i13;
          int i14;
          int i9;
          int i10;
          if (this.y)
            if ((this.A) && (getBottom() - i6 < this.S + this.B))
            {
              i17 = 1;
              if ((this.A) || (i4 >= this.C + this.D - this.S))
                break label602;
              i18 = 1;
              if ((!this.A) || (getRight() - i7 >= this.S + this.B))
                break label608;
              i19 = 1;
              if ((this.A) || (i5 <= this.C + this.E + this.S))
                break label614;
              i20 = 1;
              int i21 = i20;
              i13 = i17;
              i14 = i21;
              int i22 = i19;
              i9 = i18;
              i10 = i22;
              if (!bool2)
                break label785;
              if ((i13 == 0) && (i9 == 0))
                break label795;
            }
          int i16;
          while (true)
            if (this.Q)
            {
              playSoundEffect(0);
              if (this.A)
                if (bool2)
                {
                  i16 = i4;
                  label495: a(i16);
                  break;
                  i1 = 0;
                  break label166;
                  if (f2 < 0.0F);
                  for (i1 = 1; ; i1 = 0)
                  {
                    if (f1 < 0.0F)
                      f1 = -f1;
                    if (((this.y) || (f1 <= this.U)) && ((!this.y) || (f1 >= this.U)))
                      break label911;
                    f1 = this.U;
                    int i23 = i1;
                    f3 = f2;
                    i3 = i23;
                    break;
                  }
                  i17 = 0;
                  break label341;
                  label602: i18 = 0;
                  break label370;
                  label608: i19 = 0;
                  break label399;
                  label614: i20 = 0;
                  break label428;
                  int i8;
                  if ((this.A) && (i4 < this.S + this.C))
                  {
                    i8 = 1;
                    label644: if ((this.A) || (i4 <= this.B + getBottom() - getTop() - this.D - this.S))
                      break label767;
                    i9 = 1;
                    label683: if ((!this.A) || (i5 >= this.S + this.C))
                      break label773;
                    i10 = 1;
                    label707: if ((this.A) || (i5 <= this.B + getRight() - getLeft() - this.E - this.S))
                      break label779;
                  }
                  label773: label779: for (int i11 = 1; ; i11 = 0)
                  {
                    int i12 = i11;
                    i13 = i8;
                    i14 = i12;
                    break;
                    i8 = 0;
                    break label644;
                    label767: i9 = 0;
                    break label683;
                    i10 = 0;
                    break label707;
                  }
                  label785: if ((i10 != 0) || (i14 != 0))
                    continue;
                  label795: if (!bool2)
                    break label868;
                }
            }
          while (true)
          {
            a(i4, f5, false);
            break;
            i16 = i5;
            break label495;
            if (bool2);
            for (int i15 = i4; ; i15 = i5)
            {
              b(i15);
              break;
            }
            if (bool2);
            while (true)
            {
              a(i4, f5, false);
              break;
              i4 = i5;
            }
            label868: i4 = i5;
          }
        }
        if (bool2);
        while (true)
        {
          a(i4, f5, false);
          break;
          i4 = i5;
        }
        label899: bool1 = false;
        break;
      }
      label911: int i2 = i1;
      f3 = f2;
      i3 = i2;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.MultiDirectionSlidingDrawer
 * JD-Core Version:    0.6.2
 */