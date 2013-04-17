package com.tencent.qqpimsecure.view.privacy;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.os.Vibrator;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation.AnimationListener;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import fm;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class LockPatternView extends LinearLayout
{
  private final Rect A;
  private Vibrator B;
  private long[] C;
  private LockPatternBackgroundView D;
  private ArrayList<Path> a;
  private c b;
  private ArrayList<a> c = new ArrayList(9);
  private boolean[][] d;
  private float e;
  private float f;
  private long g;
  private b h;
  private boolean i;
  private boolean j;
  private boolean k;
  private boolean l;
  private float m;
  private float n;
  private float o;
  private float p;
  private int q;
  private int r;
  private int s;
  private int t;
  private int u;
  private int v;
  private int w;
  private int x;
  private int y;
  private Paint z;

  public LockPatternView(Context paramContext)
  {
    this(paramContext, null);
  }

  public LockPatternView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    int[] arrayOfInt1 = { 3, 3 };
    this.d = ((boolean[][])Array.newInstance(Boolean.TYPE, arrayOfInt1));
    this.e = -1.0F;
    this.f = -1.0F;
    this.h = b.a;
    this.i = true;
    this.j = false;
    this.k = false;
    this.l = false;
    this.m = 0.5F;
    this.n = 0.6F;
    this.A = new Rect();
    setClickable(true);
    a.a(paramContext);
    this.z = new Paint();
    this.z.setAntiAlias(true);
    this.z.setDither(true);
    this.z.setColor(-14037284);
    this.z.setAlpha(128);
    this.z.setStyle(Paint.Style.STROKE);
    this.z.setStrokeJoin(Paint.Join.ROUND);
    this.z.setStrokeCap(Paint.Cap.ROUND);
    this.B = ((Vibrator)paramContext.getSystemService("vibrator"));
    try
    {
      int[] arrayOfInt2 = paramContext.getResources().getIntArray(2131165245);
      this.C = new long[arrayOfInt2.length];
      for (int i1 = 0; i1 < arrayOfInt2.length; i1++)
        this.C[i1] = arrayOfInt2[i1];
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      localNotFoundException.printStackTrace();
      this.D = new LockPatternBackgroundView(paramContext);
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
      addView(this.D, localLayoutParams);
    }
  }

  private a a(float paramFloat1, float paramFloat2)
  {
    int i1 = 0;
    int i2 = 1;
    float f1 = this.p;
    float f2 = f1 * this.n;
    float f3 = (f1 - f2) / 2.0F;
    int i3 = 0;
    label75: a locala1;
    label83: a locala2;
    a locala3;
    int i6;
    int i7;
    int i11;
    label204: int i9;
    if (i3 < 3)
    {
      float f8 = f3 + f1 * i3 + this.D.a();
      if ((paramFloat2 >= f8) && (paramFloat2 <= f8 + f2))
      {
        if (i3 >= 0)
          break label324;
        locala1 = null;
        locala2 = null;
        if (locala1 != null)
        {
          ArrayList localArrayList = this.c;
          boolean bool = localArrayList.isEmpty();
          locala3 = null;
          if (!bool)
          {
            a locala4 = (a)localArrayList.get(-1 + localArrayList.size());
            int i4 = locala1.a - locala4.a;
            int i5 = locala1.b - locala4.b;
            i6 = locala4.a;
            i7 = locala4.b;
            if ((Math.abs(i4) == 2) && (Math.abs(i5) != i2))
            {
              int i10 = locala4.a;
              if (i4 <= 0)
                break label430;
              i11 = i2;
              i6 = i11 + i10;
            }
            if ((Math.abs(i5) != 2) || (Math.abs(i4) == i2))
              break label442;
            i9 = locala4.b;
            if (i5 <= 0)
              break label436;
          }
        }
      }
    }
    label242: for (int i8 = i9 + i2; ; i8 = i7)
    {
      locala3 = a.a(i6, i8);
      if ((locala3 != null) && (this.d[locala3.a][locala3.b] == 0))
        a(locala3);
      a(locala1);
      if (this.k)
        g();
      locala2 = locala1;
      return locala2;
      i3++;
      break;
      i3 = -1;
      break label75;
      float f4 = this.o;
      float f5 = f4 * this.n;
      float f6 = (f4 - f5) / 2.0F;
      if (i1 < 3)
      {
        float f7 = f6 + f4 * i1;
        if ((paramFloat1 < f7) || (paramFloat1 > f7 + f5));
      }
      while (true)
      {
        if (i1 >= 0)
          break label401;
        locala1 = null;
        break;
        i1++;
        break label348;
        i1 = -1;
      }
      if (this.d[i3][i1] != 0)
      {
        locala1 = null;
        break label83;
      }
      locala1 = a.a(i3, i1);
      break label83;
      i11 = -1;
      break label204;
      i2 = -1;
      break label242;
    }
  }

  private void a(a parama)
  {
    this.d[parama.a()][parama.b()] = 1;
    this.c.add(parama);
    if (this.b != null);
  }

  private void e()
  {
    for (int i1 = 0; i1 < 3; i1++)
      for (int i2 = 0; i2 < 3; i2++)
        this.d[i1][i2] = 0;
    a.c();
  }

  private void f()
  {
    this.r = ((int)(0.2080000042915344D * this.q));
    this.s = ((int)(0.08749999850988388D * this.q));
    this.t = ((int)(0.066600002348423D * this.q) + this.D.a());
    this.u = ((int)(0.1049999967217445D * this.q));
    this.v = ((int)(0.09799999743700028D * this.q));
    this.w = ((int)(1.5D * (this.r / 2.0D)));
    this.x = ((int)(1.5D * (0.75D * (this.r / 2.0D))));
    this.y = ((int)(1.5D * (0.25D * (this.r / 2.0D))));
    int i1 = this.r / 5;
    this.z.setStrokeWidth(i1);
    this.z.setStrokeCap(Paint.Cap.ROUND);
    for (int i2 = 0; i2 < 3; i2++)
      for (int i3 = 0; i3 < 3; i3++)
      {
        int i4 = this.s + i3 * this.r + i3 * this.u;
        int i5 = this.t + i2 * this.r + i2 * this.v;
        int i6 = i4 + this.r;
        int i7 = i5 + this.r;
        a locala = a.a(i2, i3);
        a.a(locala).setBounds(i4, i5, i6, i7);
        a.b(locala).setBounds(i4, i5, i6, i7);
      }
  }

  private void g()
  {
    while (true)
    {
      Vibrator localVibrator;
      long[] arrayOfLong;
      try
      {
        if ((this.C == null) || (this.C.length == 0))
        {
          this.B.vibrate(50L);
          return;
        }
        localVibrator = this.B;
        arrayOfLong = this.C;
        if (localVibrator == null)
          continue;
        if (fm.a)
        {
          localVibrator.vibrate(20L);
          continue;
        }
      }
      finally
      {
      }
      if (fm.b)
        localVibrator.vibrate(50L);
      else
        localVibrator.vibrate(arrayOfLong, -1);
    }
  }

  private void h()
  {
    try
    {
      if (this.h == b.c)
        this.z.setColor(-2408127);
      while (true)
      {
        return;
        this.z.setColor(-14037284);
      }
    }
    finally
    {
    }
  }

  public final void a()
  {
    this.c.clear();
    e();
    this.h = b.a;
    invalidate();
  }

  public final void a(Animation.AnimationListener paramAnimationListener)
  {
    this.D.a(paramAnimationListener);
  }

  public final boolean a(LinkedList<Integer> paramLinkedList)
  {
    LinkedList localLinkedList = d();
    int i1 = paramLinkedList.size();
    int i2 = localLinkedList.size();
    boolean bool = false;
    int i3;
    if (i1 == i2)
    {
      i3 = 0;
      if (i3 >= paramLinkedList.size())
        break label72;
      Object localObject1 = paramLinkedList.get(i3);
      Object localObject2 = localLinkedList.get(i3);
      bool = false;
      if (localObject1 == localObject2)
        break label66;
    }
    while (true)
    {
      return bool;
      label66: i3++;
      break;
      label72: bool = true;
    }
  }

  public final void b()
  {
    this.i = false;
  }

  public final void c()
  {
    this.i = true;
  }

  public final LinkedList<Integer> d()
  {
    LinkedList localLinkedList = new LinkedList();
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      localLinkedList.add(Integer.valueOf(3 * locala.a() + locala.b()));
    }
    return localLinkedList;
  }

  protected void dispatchDraw(Canvas paramCanvas)
  {
    super.dispatchDraw(paramCanvas);
    ArrayList localArrayList = this.c;
    int i1 = localArrayList.size();
    boolean[][] arrayOfBoolean = this.d;
    int i17;
    Path localPath1;
    int i2;
    label379: int i7;
    int i8;
    label390: float f1;
    float f2;
    if (this.h == b.b)
    {
      int i13 = 700 * (i1 + 1);
      int i14 = (int)(SystemClock.elapsedRealtime() - this.g) % i13;
      int i15 = i14 / 700;
      e();
      for (int i16 = 0; i16 < i15; i16++)
      {
        a locala5 = (a)localArrayList.get(i16);
        arrayOfBoolean[locala5.a()][locala5.b()] = 1;
      }
      if ((i15 > 0) && (i15 < i1))
      {
        i17 = 1;
        if (i17 != 0)
        {
          float f8 = i14 % 700 / 700.0F;
          a locala3 = (a)localArrayList.get(i15 - 1);
          int i18 = locala3.b;
          float f9 = this.s + i18 * (this.r + this.u) + this.r / 2;
          int i19 = locala3.a;
          float f10 = this.t + i19 * (this.r + this.v) + this.r / 2;
          a locala4 = (a)localArrayList.get(i15);
          int i20 = locala4.b;
          float f11 = f8 * (this.s + i20 * (this.r + this.u) + this.r / 2 - f9);
          int i21 = locala4.a;
          float f12 = f8 * (this.t + i21 * (this.r + this.v) + this.r / 2 - f10);
          this.e = (f9 + f11);
          this.f = (f12 + f10);
        }
        invalidate();
      }
    }
    else
    {
      localPath1 = new Path();
      localPath1.rewind();
      this.a = new ArrayList();
      if ((this.j) && (this.h != b.c))
        break label814;
      i2 = 1;
      if (i2 == 0)
        break label881;
      i7 = 0;
      i8 = 0;
      if (i8 >= i1)
        break label832;
      a locala1 = (a)localArrayList.get(i8);
      if (arrayOfBoolean[locala1.a][locala1.b] == 0)
        break label832;
      i7 = 1;
      int i9 = locala1.b;
      f1 = this.s + i9 * (this.r + this.u) + this.r / 2;
      int i10 = locala1.a;
      f2 = this.t + i10 * (this.r + this.v) + this.r / 2;
      if (i8 != 0)
        break label820;
      localPath1.moveTo(f1, f2);
    }
    while (true)
    {
      if (i8 != i1 - 1)
      {
        Path localPath2 = new Path();
        a locala2 = (a)localArrayList.get(i8 + 1);
        int i11 = locala2.b;
        float f3 = this.s + i11 * (this.r + this.u) + this.r / 2;
        int i12 = locala2.a;
        double d1 = Math.atan2(f2 - (this.t + i12 * (this.r + this.v) + this.r / 2), f1 - f3);
        float f4 = f1 - (float)(Math.cos(d1) * this.w);
        float f5 = f2 - (float)(Math.sin(d1) * this.w);
        float f6 = f1 - (float)(Math.cos(d1) * this.x);
        float f7 = f2 - (float)(Math.sin(d1) * this.x);
        localPath2.moveTo(f4, f5);
        localPath2.lineTo(f6 - (float)(this.y * Math.cos(1.570796326794897D + d1)), f7 - (float)(this.y * Math.sin(1.570796326794897D + d1)));
        localPath2.lineTo(f6 - (float)(this.y * Math.cos(d1 - 1.570796326794897D)), f7 - (float)(this.y * Math.sin(d1 - 1.570796326794897D)));
        localPath2.lineTo(f4, f5);
        this.a.add(localPath2);
      }
      i8++;
      break label390;
      i17 = 0;
      break;
      label814: i2 = 0;
      break label379;
      label820: localPath1.lineTo(f1, f2);
    }
    label832: if (((this.l) || (this.h == b.b)) && (i7 != 0))
      localPath1.lineTo(this.e, this.f);
    h();
    paramCanvas.drawPath(localPath1, this.z);
    label881: for (int i3 = 0; i3 < 3; i3++)
    {
      int i6 = 0;
      if (i6 < 3)
      {
        if ((arrayOfBoolean[i3][i6] != 0) && ((!this.j) || (this.h == b.c)))
        {
          if (!this.l)
            break label953;
          a.a(i3, i6).a(b.a);
        }
        while (true)
        {
          i6++;
          break;
          if (this.h == b.c)
          {
            a.a(i3, i6).a(b.c);
          }
          else
          {
            if ((this.h != b.a) && (this.h != b.b))
              break label1015;
            a.a(i3, i6).a(b.a);
          }
        }
        label1015: throw new IllegalStateException("unknown display mode " + this.h);
      }
    }
    label953: for (int i4 = 0; i4 < 3; i4++)
      for (int i5 = 0; i5 < 3; i5++)
        if (a.a(i4, i5).c != null)
          a.a(i4, i5).c.draw(paramCanvas);
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    new StringBuilder("onlayout  getWidth() :: ").append(this.D.getWidth()).toString();
    this.q = this.D.getWidth();
    this.o = (this.q / 3.0F);
    this.p = (this.q / 3.0F);
    f();
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool;
    if ((!this.i) || (!isEnabled()))
      bool = false;
    while (true)
    {
      return bool;
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      switch (paramMotionEvent.getAction())
      {
      default:
        bool = false;
        break;
      case 0:
        this.c.clear();
        e();
        this.h = b.a;
        invalidate();
        a locala4 = a(f1, f2);
        if ((locala4 != null) && (this.b != null))
        {
          this.l = true;
          this.h = b.a;
          this.b.a();
        }
        while (true)
        {
          if (locala4 != null)
          {
            int i9 = locala4.b;
            float f20 = this.s + i9 * (this.r + this.u) + this.r / 2;
            int i10 = locala4.a;
            float f21 = this.t + i10 * (this.r + this.v) + this.r / 2;
            float f22 = this.o / 2.0F;
            float f23 = this.p / 2.0F;
            invalidate((int)(f20 - f22), (int)(f21 - f23), (int)(f20 + f22), (int)(f21 + f23));
          }
          this.e = f1;
          this.f = f2;
          bool = true;
          break;
          if (this.b != null)
          {
            this.l = false;
            this.b.b();
          }
        }
      case 1:
        if ((!this.c.isEmpty()) && (this.b != null))
        {
          this.l = false;
          c localc = this.b;
          localc.c();
          invalidate();
        }
        bool = true;
        break;
      case 2:
        int i1 = this.c.size();
        a locala1 = a(f1, f2);
        int i2 = this.c.size();
        if ((locala1 != null) && (this.b != null) && (i2 == 1))
        {
          this.l = true;
          this.b.a();
        }
        float f3;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        float f11;
        float f12;
        float f17;
        float f14;
        float f13;
        if (Math.abs(f1 - this.e) + Math.abs(f2 - this.f) > 0.01F * this.o)
        {
          f3 = this.e;
          float f4 = this.f;
          this.e = f1;
          this.f = f2;
          if ((!this.l) || (i2 <= 0))
            break label996;
          ArrayList localArrayList = this.c;
          float f5 = 0.5F * (this.o * this.m);
          a locala2 = (a)localArrayList.get(i2 - 1);
          int i3 = locala2.b;
          f6 = this.s + i3 * (this.r + this.u) + this.r / 2;
          int i4 = locala2.a;
          f7 = this.t + i4 * (this.r + this.v) + this.r / 2;
          Rect localRect = this.A;
          if (f6 >= f1)
            break label932;
          f8 = f6;
          if (f7 >= f2)
            break label941;
          f9 = f2;
          f2 = f7;
          localRect.set((int)(f8 - f5), (int)(f2 - f5), (int)(f1 + f5), (int)(f9 + f5));
          if (f6 >= f3)
            break label948;
          f10 = f3;
          if (f7 < f4)
          {
            float f19 = f4;
            f4 = f7;
            f7 = f19;
          }
          localRect.union((int)(f6 - f5), (int)(f4 - f5), (int)(f10 + f5), (int)(f7 + f5));
          if (locala1 != null)
          {
            int i5 = locala1.b;
            f11 = this.s + i5 * (this.r + this.u) + this.r / 2;
            int i6 = locala1.a;
            f12 = this.t + i6 * (this.r + this.v) + this.r / 2;
            if (i2 < 2)
              break label985;
            a locala3 = (a)localArrayList.get(i2 - 1 - (i2 - i1));
            int i7 = locala3.b;
            f17 = this.s + i7 * (this.r + this.u) + this.r / 2;
            int i8 = locala3.a;
            f14 = this.t + i8 * (this.r + this.v) + this.r / 2;
            if (f11 >= f17)
              break label959;
            f13 = f17;
            if (f12 >= f14)
              break label970;
            float f15 = this.o / 2.0F;
            float f16 = this.p / 2.0F;
            localRect.set((int)(f11 - f15), (int)(f12 - f16), (int)(f13 + f15), (int)(f14 + f16));
          }
          invalidate(localRect);
        }
        while (true)
        {
          bool = true;
          break;
          f8 = f1;
          f1 = f6;
          break label584;
          f9 = f7;
          break label600;
          f10 = f6;
          f6 = f3;
          break label640;
          f13 = f11;
          f11 = f17;
          break label868;
          float f18 = f12;
          f12 = f14;
          f14 = f18;
          break label876;
          f13 = f11;
          f14 = f12;
          break label876;
          invalidate();
        }
      case 3:
        label584: label600: label868: label876: this.c.clear();
        label640: label932: label941: label948: label959: label970: label985: label996: e();
        this.h = b.a;
        invalidate();
        if (this.b != null)
        {
          this.l = false;
          this.b.b();
        }
        bool = true;
      }
    }
  }

  public void setDisplayMode(b paramb)
  {
    this.h = paramb;
    if (paramb == b.b)
    {
      if (this.c.size() == 0)
        throw new IllegalStateException("you must have a pattern to animate if you want to set the display mode to animate");
      this.g = SystemClock.elapsedRealtime();
      a locala = (a)this.c.get(0);
      int i1 = locala.b();
      this.e = (this.s + i1 * (this.r + this.u) + this.r / 2);
      int i2 = locala.a();
      this.f = (this.t + i2 * (this.r + this.v) + this.r / 2);
      e();
    }
    invalidate();
  }

  public void setFooterView(View paramView)
  {
    this.D.setFooterView(paramView);
  }

  public void setHeaderView(View paramView)
  {
    this.D.setHeaderView(paramView);
  }

  public void setInStealthMode(boolean paramBoolean)
  {
    this.j = paramBoolean;
  }

  public void setOnPatternListener(c paramc)
  {
    this.b = paramc;
  }

  public void setPattern(b paramb, List<a> paramList)
  {
    this.c.clear();
    this.c.addAll(paramList);
    e();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      this.d[locala.a()][locala.b()] = 1;
    }
    setDisplayMode(paramb);
  }

  public void setTactileFeedbackEnabled(boolean paramBoolean)
  {
    this.k = paramBoolean;
  }

  public static final class a
  {
    private static a[][] f = (a[][])Array.newInstance(a.class, new int[] { 3, 3 });
    int a;
    int b;
    public Drawable c = null;
    private Drawable d;
    private Drawable e;

    static
    {
      for (int i = 0; i < 3; i++)
        for (int j = 0; j < 3; j++)
          f[i][j] = new a(i, j);
    }

    private a(int paramInt1, int paramInt2)
    {
      b(paramInt1, paramInt2);
      this.a = paramInt1;
      this.b = paramInt2;
    }

    public static a a(int paramInt1, int paramInt2)
    {
      try
      {
        b(paramInt1, paramInt2);
        a locala = f[paramInt1][paramInt2];
        return locala;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public static void a(Context paramContext)
    {
      for (int i = 0; i < 3; i++)
        for (int j = 0; j < 3; j++)
        {
          f[i][j].d = paramContext.getResources().getDrawable(2130837691);
          f[i][j].e = paramContext.getResources().getDrawable(2130837695);
        }
    }

    private static void b(int paramInt1, int paramInt2)
    {
      if ((paramInt1 < 0) || (paramInt1 > 2))
        throw new IllegalArgumentException("row must be in range 0-2");
      if ((paramInt2 < 0) || (paramInt2 > 2))
        throw new IllegalArgumentException("column must be in range 0-2");
    }

    public static void c()
    {
      for (int i = 0; i < 3; i++)
        for (int j = 0; j < 3; j++)
          f[i][j].c = null;
    }

    public final int a()
    {
      return this.a;
    }

    public final void a(LockPatternView.b paramb)
    {
      switch (LockPatternView.1.a[paramb.ordinal()])
      {
      default:
        this.c = null;
      case 1:
      case 2:
      }
      while (true)
      {
        return;
        this.c = this.e;
        continue;
        this.c = this.d;
      }
    }

    public final int b()
    {
      return this.b;
    }

    public final String toString()
    {
      return "(row=" + this.a + ",clmn=" + this.b + ")";
    }
  }

  public static enum b
  {
    static
    {
      b[] arrayOfb = new b[3];
      arrayOfb[0] = a;
      arrayOfb[1] = b;
      arrayOfb[2] = c;
    }
  }

  public static abstract interface c
  {
    public abstract void a();

    public abstract void b();

    public abstract void c();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.view.privacy.LockPatternView
 * JD-Core Version:    0.6.2
 */