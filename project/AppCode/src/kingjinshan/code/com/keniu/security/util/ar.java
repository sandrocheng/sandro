package com.keniu.security.util;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import java.text.NumberFormat;

public final class ar extends ap
{
  public static final int a = 0;
  public static final int b = 1;
  private static Context c;
  private ProgressBar d;
  private TextView e;
  private int f = 0;
  private TextView g;
  private String h;
  private TextView i;
  private NumberFormat j;
  private int k;
  private int l;
  private int m;
  private int n;
  private int o;
  private Drawable p;
  private Drawable q;
  private CharSequence r;
  private boolean s;
  private boolean t;
  private Handler u;
  private View v;

  private ar(Context paramContext)
  {
    super(paramContext, 2131361818);
    c = paramContext.getApplicationContext();
  }

  private ar(Context paramContext, byte paramByte)
  {
    this(paramContext);
    c = paramContext.getApplicationContext();
  }

  private int a()
  {
    if (this.d != null);
    for (int i1 = this.d.getProgress(); ; i1 = this.l)
      return i1;
  }

  private static ar a(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    c = paramContext.getApplicationContext();
    c = paramContext.getApplicationContext();
    return b(paramContext, paramCharSequence1, paramCharSequence2, false, false);
  }

  private static ar a(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2, boolean paramBoolean1, boolean paramBoolean2)
  {
    c = paramContext.getApplicationContext();
    return b(paramContext, paramCharSequence1, paramCharSequence2, paramBoolean1, paramBoolean2);
  }

  private void a(int paramInt)
  {
    if (this.t)
    {
      this.d.setProgress(paramInt);
      f();
    }
    while (true)
    {
      return;
      this.l = paramInt;
    }
  }

  private void a(Drawable paramDrawable)
  {
    if (this.d != null)
      this.d.setProgressDrawable(paramDrawable);
    while (true)
    {
      return;
      this.p = paramDrawable;
    }
  }

  private void a(String paramString)
  {
    this.h = paramString;
  }

  private void a(boolean paramBoolean)
  {
    if (this.d != null)
      this.d.setIndeterminate(paramBoolean);
    while (true)
    {
      return;
      this.s = paramBoolean;
    }
  }

  private int b()
  {
    if (this.d != null);
    for (int i1 = this.d.getSecondaryProgress(); ; i1 = this.m)
      return i1;
  }

  private static ar b(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    c = paramContext.getApplicationContext();
    return b(paramContext, paramCharSequence1, paramCharSequence2, false, false);
  }

  private static ar b(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2, boolean paramBoolean1, boolean paramBoolean2)
  {
    c = paramContext.getApplicationContext();
    ar localar = new ar(paramContext, (byte)0);
    localar.setTitle(paramCharSequence1);
    localar.a(paramCharSequence2);
    localar.a(paramBoolean1);
    localar.setCancelable(paramBoolean2);
    localar.setOnCancelListener(null);
    localar.show();
    return localar;
  }

  private void b(int paramInt)
  {
    if (this.d != null)
    {
      this.d.setSecondaryProgress(paramInt);
      f();
    }
    while (true)
    {
      return;
      this.m = paramInt;
    }
  }

  private void b(Drawable paramDrawable)
  {
    if (this.d != null)
      this.d.setIndeterminateDrawable(paramDrawable);
    while (true)
    {
      return;
      this.q = paramDrawable;
    }
  }

  private void b(View paramView)
  {
    this.v = paramView;
  }

  private void c(int paramInt)
  {
    if (this.d != null)
    {
      this.d.setMax(paramInt);
      f();
    }
    while (true)
    {
      return;
      this.k = paramInt;
    }
  }

  private int d()
  {
    if (this.d != null);
    for (int i1 = this.d.getMax(); ; i1 = this.k)
      return i1;
  }

  private void d(int paramInt)
  {
    if (this.d != null)
    {
      this.d.incrementProgressBy(paramInt);
      f();
    }
    while (true)
    {
      return;
      this.n = (paramInt + this.n);
    }
  }

  private void e(int paramInt)
  {
    if (this.d != null)
    {
      this.d.incrementSecondaryProgressBy(paramInt);
      f();
    }
    while (true)
    {
      return;
      this.o = (paramInt + this.o);
    }
  }

  private boolean e()
  {
    if (this.d != null);
    for (boolean bool = this.d.isIndeterminate(); ; bool = this.s)
      return bool;
  }

  private void f()
  {
    if (this.f == 1)
      this.u.sendEmptyMessage(0);
  }

  private void f(int paramInt)
  {
    this.f = paramInt;
  }

  public final void a(CharSequence paramCharSequence)
  {
    if (this.d != null)
      if (this.f == 1)
        super.a(paramCharSequence);
    while (true)
    {
      return;
      this.e.setText(paramCharSequence);
      continue;
      this.r = paramCharSequence;
    }
  }

  protected final void onCreate(Bundle paramBundle)
  {
    LayoutInflater localLayoutInflater = LayoutInflater.from(c);
    FrameLayout localFrameLayout2;
    int i5;
    label175: int i4;
    label208: int i3;
    label241: int i2;
    label274: int i1;
    label307: Drawable localDrawable2;
    label336: Drawable localDrawable1;
    if (this.f == 1)
    {
      this.u = new as(this);
      View localView2 = localLayoutInflater.inflate(2130903070, null);
      localFrameLayout2 = (FrameLayout)localView2.findViewById(2131230914);
      if (this.v != null)
      {
        localFrameLayout2.addView(this.v, new ViewGroup.LayoutParams(-1, -1));
        this.d = ((ProgressBar)localView2.findViewById(2131230915));
        this.g = ((TextView)localView2.findViewById(2131230917));
        this.h = "%d/%d";
        this.i = ((TextView)localView2.findViewById(2131230916));
        this.j = NumberFormat.getPercentInstance();
        this.j.setMaximumFractionDigits(0);
        a(localView2);
        if (this.k > 0)
        {
          i5 = this.k;
          if (this.d == null)
            break label496;
          this.d.setMax(i5);
          f();
        }
        if (this.l > 0)
        {
          i4 = this.l;
          if (!this.t)
            break label505;
          this.d.setProgress(i4);
          f();
        }
        if (this.m > 0)
        {
          i3 = this.m;
          if (this.d == null)
            break label514;
          this.d.setSecondaryProgress(i3);
          f();
        }
        if (this.n > 0)
        {
          i2 = this.n;
          if (this.d == null)
            break label523;
          this.d.incrementProgressBy(i2);
          f();
        }
        if (this.o > 0)
        {
          i1 = this.o;
          if (this.d == null)
            break label537;
          this.d.incrementSecondaryProgressBy(i1);
          f();
        }
        if (this.p != null)
        {
          localDrawable2 = this.p;
          if (this.d == null)
            break label551;
          this.d.setProgressDrawable(localDrawable2);
        }
        if (this.q != null)
        {
          localDrawable1 = this.q;
          if (this.d == null)
            break label560;
          this.d.setIndeterminateDrawable(localDrawable1);
        }
      }
    }
    while (true)
    {
      if (this.r != null)
        a(this.r);
      a(this.s);
      f();
      super.onCreate(paramBundle);
      return;
      localFrameLayout2.setVisibility(8);
      break;
      View localView1 = localLayoutInflater.inflate(2130903260, null);
      FrameLayout localFrameLayout1 = (FrameLayout)localView1.findViewById(2131231525);
      if (this.v != null)
        localFrameLayout1.addView(this.v, new ViewGroup.LayoutParams(-1, -1));
      while (true)
      {
        this.d = ((ProgressBar)localView1.findViewById(16908301));
        this.e = ((TextView)localView1.findViewById(2131231344));
        a(localView1);
        break;
        localFrameLayout1.setVisibility(8);
      }
      label496: this.k = i5;
      break label175;
      label505: this.l = i4;
      break label208;
      label514: this.m = i3;
      break label241;
      label523: this.n = (i2 + this.n);
      break label274;
      label537: this.o = (i1 + this.o);
      break label307;
      label551: this.p = localDrawable2;
      break label336;
      label560: this.q = localDrawable1;
    }
  }

  public final void onStart()
  {
    super.onStart();
    this.t = true;
  }

  protected final void onStop()
  {
    super.onStop();
    this.t = false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.ar
 * JD-Core Version:    0.6.2
 */