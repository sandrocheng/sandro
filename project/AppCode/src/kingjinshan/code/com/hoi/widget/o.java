package com.hoi.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.keniu.security.util.ap;
import java.text.NumberFormat;

public final class o extends ap
{
  public static final int a = 0;
  public static final int b = 1;
  private ProgressBar c;
  private TextView d;
  private int e = 0;
  private TextView f;
  private String g;
  private TextView h;
  private NumberFormat i;
  private int j;
  private int k;
  private int l;
  private int m;
  private int n;
  private Drawable o;
  private Drawable p;
  private CharSequence q;
  private boolean r;
  private boolean s;
  private Handler t;

  private o(Context paramContext)
  {
    super(paramContext, 2131361820);
  }

  public o(Context paramContext, byte paramByte)
  {
    this(paramContext);
  }

  private static o a(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    return b(paramContext, paramCharSequence1, paramCharSequence2, false, false);
  }

  private static o a(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2, boolean paramBoolean1, boolean paramBoolean2)
  {
    return b(paramContext, paramCharSequence1, paramCharSequence2, paramBoolean1, paramBoolean2);
  }

  private void a(Drawable paramDrawable)
  {
    if (this.c != null)
      this.c.setProgressDrawable(paramDrawable);
    while (true)
    {
      return;
      this.o = paramDrawable;
    }
  }

  private void a(String paramString)
  {
    this.g = paramString;
  }

  private static o b(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    return b(paramContext, paramCharSequence1, paramCharSequence2, false, false);
  }

  private static o b(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2, boolean paramBoolean1, boolean paramBoolean2)
  {
    o localo = new o(paramContext, (byte)0);
    localo.setTitle(paramCharSequence1);
    localo.a(paramCharSequence2);
    localo.a(paramBoolean1);
    localo.setCancelable(paramBoolean2);
    localo.setOnCancelListener(null);
    localo.show();
    return localo;
  }

  private void b(Drawable paramDrawable)
  {
    if (this.c != null)
      this.c.setIndeterminateDrawable(paramDrawable);
    while (true)
    {
      return;
      this.p = paramDrawable;
    }
  }

  private void c(int paramInt)
  {
    if (this.c != null)
    {
      this.c.setSecondaryProgress(paramInt);
      g();
    }
    while (true)
    {
      return;
      this.l = paramInt;
    }
  }

  private int d()
  {
    if (this.c != null);
    for (int i1 = this.c.getSecondaryProgress(); ; i1 = this.l)
      return i1;
  }

  private void d(int paramInt)
  {
    if (this.c != null)
    {
      this.c.incrementProgressBy(paramInt);
      g();
    }
    while (true)
    {
      return;
      this.m = (paramInt + this.m);
    }
  }

  private int e()
  {
    if (this.c != null);
    for (int i1 = this.c.getMax(); ; i1 = this.j)
      return i1;
  }

  private void e(int paramInt)
  {
    if (this.c != null)
    {
      this.c.incrementSecondaryProgressBy(paramInt);
      g();
    }
    while (true)
    {
      return;
      this.n = (paramInt + this.n);
    }
  }

  private boolean f()
  {
    if (this.c != null);
    for (boolean bool = this.c.isIndeterminate(); ; bool = this.r)
      return bool;
  }

  private void g()
  {
    if (this.e == 1)
      this.t.sendEmptyMessage(0);
  }

  public final int a()
  {
    if (this.c != null);
    for (int i1 = this.c.getProgress(); ; i1 = this.k)
      return i1;
  }

  public final void a(int paramInt)
  {
    if (this.s)
    {
      this.c.setProgress(paramInt);
      g();
    }
    while (true)
    {
      return;
      this.k = paramInt;
    }
  }

  public final void a(CharSequence paramCharSequence)
  {
    if (this.c != null)
      if (this.e == 1)
        this.d.setText(paramCharSequence);
    while (true)
    {
      return;
      this.q = paramCharSequence;
    }
  }

  public final void a(boolean paramBoolean)
  {
    if (this.c != null)
      this.c.setIndeterminate(paramBoolean);
    while (true)
    {
      return;
      this.r = paramBoolean;
    }
  }

  public final void b()
  {
    this.e = 1;
  }

  public final void b(int paramInt)
  {
    if (this.c != null)
    {
      this.c.setMax(paramInt);
      g();
    }
    while (true)
    {
      return;
      this.j = paramInt;
    }
  }

  protected final void onCreate(Bundle paramBundle)
  {
    LayoutInflater localLayoutInflater = LayoutInflater.from(getContext());
    int i3;
    label183: int i2;
    label216: int i1;
    label249: Drawable localDrawable2;
    label278: Drawable localDrawable1;
    if (this.e == 1)
    {
      this.t = new p(this);
      View localView2 = localLayoutInflater.inflate(2130903195, null);
      this.c = ((ProgressBar)localView2.findViewById(2131230915));
      this.f = ((TextView)localView2.findViewById(2131230917));
      this.g = "%d/%d";
      this.h = ((TextView)localView2.findViewById(2131230916));
      this.i = NumberFormat.getPercentInstance();
      this.i.setMaximumFractionDigits(0);
      this.d = ((TextView)localView2.findViewById(2131231344));
      a(localView2);
      if (this.j > 0)
        b(this.j);
      if (this.k > 0)
        a(this.k);
      if (this.l > 0)
      {
        i3 = this.l;
        if (this.c == null)
          break label382;
        this.c.setSecondaryProgress(i3);
        g();
      }
      if (this.m > 0)
      {
        i2 = this.m;
        if (this.c == null)
          break label391;
        this.c.incrementProgressBy(i2);
        g();
      }
      if (this.n > 0)
      {
        i1 = this.n;
        if (this.c == null)
          break label405;
        this.c.incrementSecondaryProgressBy(i1);
        g();
      }
      if (this.o != null)
      {
        localDrawable2 = this.o;
        if (this.c == null)
          break label419;
        this.c.setProgressDrawable(localDrawable2);
      }
      if (this.p != null)
      {
        localDrawable1 = this.p;
        if (this.c == null)
          break label428;
        this.c.setIndeterminateDrawable(localDrawable1);
      }
    }
    while (true)
    {
      if (this.q != null)
        a(this.q);
      a(this.r);
      g();
      super.onCreate(paramBundle);
      return;
      View localView1 = localLayoutInflater.inflate(2130903196, null);
      this.c = ((ProgressBar)localView1.findViewById(2131230915));
      this.d = ((TextView)localView1.findViewById(2131231344));
      a(localView1);
      break;
      label382: this.l = i3;
      break label183;
      label391: this.m = (i2 + this.m);
      break label216;
      label405: this.n = (i1 + this.n);
      break label249;
      label419: this.o = localDrawable2;
      break label278;
      label428: this.p = localDrawable1;
    }
  }

  public final void onStart()
  {
    super.onStart();
    this.s = true;
  }

  protected final void onStop()
  {
    super.onStop();
    this.s = false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.widget.o
 * JD-Core Version:    0.6.2
 */