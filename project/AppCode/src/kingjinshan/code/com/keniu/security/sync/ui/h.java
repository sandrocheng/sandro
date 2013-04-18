package com.keniu.security.sync.ui;

import android.app.AlertDialog;
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

public final class h extends AlertDialog
{
  public static final int a = 0;
  public static final int b = 1;
  private static Context c;
  private ProgressBar d;
  private TextView e;
  private int f = 0;
  private TextView g;
  private String h;
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
  private View u;
  private TextView v;
  private String w;

  private h(Context paramContext)
  {
    super(paramContext, 2131361819);
    c = paramContext.getApplicationContext();
  }

  public h(Context paramContext, String paramString)
  {
    this(paramContext);
    c = paramContext.getApplicationContext();
    this.w = paramString;
  }

  private int a()
  {
    if (this.d != null);
    for (int i1 = this.d.getProgress(); ; i1 = this.k)
      return i1;
  }

  private static h a(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    c = paramContext.getApplicationContext();
    c = paramContext.getApplicationContext();
    return b(paramContext, paramCharSequence1, paramCharSequence2, false, false);
  }

  private static h a(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2, boolean paramBoolean1, boolean paramBoolean2)
  {
    c = paramContext.getApplicationContext();
    return b(paramContext, paramCharSequence1, paramCharSequence2, paramBoolean1, paramBoolean2);
  }

  private void a(Drawable paramDrawable)
  {
    if (this.d != null)
      this.d.setProgressDrawable(paramDrawable);
    while (true)
    {
      return;
      this.o = paramDrawable;
    }
  }

  private void a(View paramView)
  {
    this.u = paramView;
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
      this.r = paramBoolean;
    }
  }

  private int b()
  {
    if (this.d != null);
    for (int i1 = this.d.getSecondaryProgress(); ; i1 = this.l)
      return i1;
  }

  private static h b(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    c = paramContext.getApplicationContext();
    return b(paramContext, paramCharSequence1, paramCharSequence2, false, false);
  }

  private static h b(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2, boolean paramBoolean1, boolean paramBoolean2)
  {
    c = paramContext.getApplicationContext();
    h localh = new h(paramContext, "");
    localh.setTitle(paramCharSequence1);
    localh.setMessage(paramCharSequence2);
    localh.a(paramBoolean1);
    localh.setCancelable(paramBoolean2);
    localh.setOnCancelListener(null);
    localh.show();
    return localh;
  }

  private void b(Drawable paramDrawable)
  {
    if (this.d != null)
      this.d.setIndeterminateDrawable(paramDrawable);
    while (true)
    {
      return;
      this.p = paramDrawable;
    }
  }

  private int c()
  {
    if (this.d != null);
    for (int i1 = this.d.getMax(); ; i1 = this.j)
      return i1;
  }

  private void d(int paramInt)
  {
    if (this.d != null)
    {
      this.d.setSecondaryProgress(paramInt);
      e();
    }
    while (true)
    {
      return;
      this.l = paramInt;
    }
  }

  private boolean d()
  {
    if (this.d != null);
    for (boolean bool = this.d.isIndeterminate(); ; bool = this.r)
      return bool;
  }

  private void e()
  {
    if (this.f == 1)
      this.t.sendEmptyMessage(0);
  }

  private void e(int paramInt)
  {
    if (this.d != null)
    {
      this.d.incrementProgressBy(paramInt);
      e();
    }
    while (true)
    {
      return;
      this.m = (paramInt + this.m);
    }
  }

  private void f(int paramInt)
  {
    if (this.d != null)
    {
      this.d.incrementSecondaryProgressBy(paramInt);
      e();
    }
    while (true)
    {
      return;
      this.n = (paramInt + this.n);
    }
  }

  public final void a(int paramInt)
  {
    if (this.s)
    {
      this.d.setProgress(paramInt);
      e();
    }
    while (true)
    {
      return;
      this.k = paramInt;
    }
  }

  public final void b(int paramInt)
  {
    if (this.d != null)
    {
      this.d.setMax(paramInt);
      e();
    }
    while (true)
    {
      return;
      this.j = paramInt;
    }
  }

  public final void c(int paramInt)
  {
    this.f = paramInt;
  }

  protected final void onCreate(Bundle paramBundle)
  {
    LayoutInflater localLayoutInflater = LayoutInflater.from(c);
    int i3;
    label179: int i2;
    label212: int i1;
    label245: Drawable localDrawable2;
    label274: Drawable localDrawable1;
    if (this.f == 1)
    {
      this.t = new i(this);
      View localView2 = localLayoutInflater.inflate(2130903233, null);
      this.v = ((TextView)localView2.findViewById(2131231465));
      this.v.setText(this.w);
      this.d = ((ProgressBar)localView2.findViewById(2131230915));
      this.g = ((TextView)localView2.findViewById(2131230917));
      this.h = "%d/%d";
      this.i = NumberFormat.getPercentInstance();
      this.i.setMaximumFractionDigits(0);
      setView(localView2);
      if (this.j > 0)
        b(this.j);
      if (this.k > 0)
        a(this.k);
      if (this.l > 0)
      {
        i3 = this.l;
        if (this.d == null)
          break label424;
        this.d.setSecondaryProgress(i3);
        e();
      }
      if (this.m > 0)
      {
        i2 = this.m;
        if (this.d == null)
          break label433;
        this.d.incrementProgressBy(i2);
        e();
      }
      if (this.n > 0)
      {
        i1 = this.n;
        if (this.d == null)
          break label447;
        this.d.incrementSecondaryProgressBy(i1);
        e();
      }
      if (this.o != null)
      {
        localDrawable2 = this.o;
        if (this.d == null)
          break label461;
        this.d.setProgressDrawable(localDrawable2);
      }
      if (this.p != null)
      {
        localDrawable1 = this.p;
        if (this.d == null)
          break label470;
        this.d.setIndeterminateDrawable(localDrawable1);
      }
    }
    while (true)
    {
      if (this.q != null)
        setMessage(this.q);
      a(this.r);
      e();
      super.onCreate(paramBundle);
      return;
      View localView1 = localLayoutInflater.inflate(2130903260, null);
      FrameLayout localFrameLayout = (FrameLayout)localView1.findViewById(2131231525);
      if (this.u != null)
        localFrameLayout.addView(this.u, new ViewGroup.LayoutParams(-1, -1));
      while (true)
      {
        this.d = ((ProgressBar)localView1.findViewById(16908301));
        this.e = ((TextView)localView1.findViewById(2131231344));
        setView(localView1);
        break;
        localFrameLayout.setVisibility(8);
      }
      label424: this.l = i3;
      break label179;
      label433: this.m = (i2 + this.m);
      break label212;
      label447: this.n = (i1 + this.n);
      break label245;
      label461: this.o = localDrawable2;
      break label274;
      label470: this.p = localDrawable1;
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

  public final void setMessage(CharSequence paramCharSequence)
  {
    if (this.d != null)
      if (this.f == 1)
        super.setMessage(paramCharSequence);
    while (true)
    {
      return;
      this.e.setText(paramCharSequence);
      continue;
      this.q = paramCharSequence;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.h
 * JD-Core Version:    0.6.2
 */