package com.avast.android.mobilesecurity.ui;

import android.app.Activity;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.Scroller;
import com.a.a.d;
import com.a.a.q;

public class g
{
  private Activity a;
  private k b;
  private View c;
  private View d;
  private int e;
  private int f;
  private int g;
  private int h;
  private int i;
  private FrameLayout j;
  private j k;
  private Scroller l;
  private boolean m;
  private int n;
  private int o;
  private boolean p = false;

  public g(Activity paramActivity, View paramView, int paramInt)
  {
    this.a = paramActivity;
    this.c = paramView;
    this.e = paramInt;
    this.f = this.a.getResources().getDimensionPixelSize(2131361859);
    this.g = this.a.getResources().getDimensionPixelSize(2131361860);
    this.n = this.a.getResources().getDimensionPixelSize(2131361861);
    this.o = this.a.getResources().getInteger(2131427348);
    this.h = this.a.getResources().getInteger(2131427349);
    this.i = this.a.getResources().getDimensionPixelSize(2131361862);
    this.l = new Scroller(this.a, new DecelerateInterpolator(1.0F));
    f();
  }

  private void a(int paramInt)
  {
    this.j.scrollTo(-paramInt, 0);
    this.j.invalidate();
  }

  private void b(int paramInt)
  {
    if (paramInt == 0)
      c();
    while (true)
    {
      return;
      int i1 = Math.max(this.h, paramInt);
      this.l.fling(this.j.getScrollX(), 0, -i1, 0, -(this.j.getWidth() - this.g), 0, 0, 0);
      this.l.setFinalX(-(this.j.getWidth() - this.g));
      float f1 = -(this.j.getWidth() - this.g) - this.j.getScrollX();
      this.l.extendDuration(Math.abs((int)(1000.0F * (f1 / i1))));
      this.j.invalidate();
      if (!this.m)
      {
        this.m = true;
        if (this.k != null)
          this.k.a(this);
      }
    }
  }

  private void c(int paramInt)
  {
    if (paramInt == 0)
      d();
    while (true)
    {
      return;
      int i1 = Math.min(-this.h, paramInt);
      this.l.fling(this.j.getScrollX(), 0, -i1, 0, -(this.j.getWidth() - this.g), 0, 0, 0);
      this.l.setFinalX(0);
      float f1 = this.j.getScrollX();
      this.l.extendDuration(Math.abs((int)(1000.0F * (f1 / i1))));
      this.j.invalidate();
      if (this.m)
      {
        this.m = false;
        if (this.k != null)
          this.k.b(this);
      }
    }
  }

  private void f()
  {
    ViewGroup localViewGroup = (ViewGroup)this.c.getParent();
    localViewGroup.removeView(this.c);
    this.b = new k(this, this.a);
    this.b.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
    this.j = new l(this, this.a, null);
    this.j.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
    g();
    this.j.addView(this.c);
    this.b.addView(this.j);
    this.d = LayoutInflater.from(this.a).inflate(this.e, localViewGroup, false);
    localViewGroup.addView(this.d);
    localViewGroup.addView(this.b);
    this.j.post(new h(this, localViewGroup));
  }

  private void g()
  {
    ImageView localImageView = new ImageView(this.a);
    localImageView.setImageDrawable(this.a.getResources().getDrawable(2130837925));
    int i1 = this.a.getResources().getDimensionPixelSize(2131361863);
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(i1, -1);
    localLayoutParams.leftMargin = (-i1);
    localImageView.setLayoutParams(localLayoutParams);
    this.j.addView(localImageView);
  }

  private int h()
  {
    return (int)((1.0F - j()) * this.o);
  }

  private int i()
  {
    return (int)(j() * this.o);
  }

  private float j()
  {
    float f1 = this.j.getWidth() - this.g;
    return -this.j.getScrollX() / f1;
  }

  public void a(j paramj)
  {
    this.k = paramj;
  }

  public boolean a()
  {
    return this.m;
  }

  public void b()
  {
    this.j.scrollTo(-(this.j.getWidth() - this.g), 0);
    this.j.invalidate();
    this.m = true;
    if (this.k != null)
      this.k.a(this);
  }

  public void c()
  {
    if (this.j.getScrollX() == -(this.j.getWidth() - this.g));
    while (true)
    {
      return;
      this.l.startScroll(this.j.getScrollX(), 0, -(this.j.getWidth() - this.g) - this.j.getScrollX(), 0, h());
      this.j.invalidate();
      if (!this.m)
      {
        this.m = true;
        if (this.k != null)
          this.k.a(this);
      }
    }
  }

  public void d()
  {
    if (this.j.getScrollX() == 0);
    while (true)
    {
      return;
      this.l.startScroll(this.j.getScrollX(), 0, -this.j.getScrollX(), 0, i());
      this.j.invalidate();
      if (this.m)
      {
        this.m = false;
        if (this.k != null)
          this.k.b(this);
      }
    }
  }

  public void e()
  {
    this.p = true;
    this.d.setVisibility(0);
    Resources localResources = this.a.getResources();
    k localk1 = this.b;
    float[] arrayOfFloat1 = new float[2];
    arrayOfFloat1[0] = 0.0F;
    arrayOfFloat1[1] = localResources.getDimensionPixelSize(2131361864);
    q localq1 = q.a(localk1, "translationX", arrayOfFloat1);
    localq1.a(localResources.getInteger(2131427350));
    localq1.a(new AccelerateInterpolator(1.0F));
    k localk2 = this.b;
    float[] arrayOfFloat2 = new float[2];
    arrayOfFloat2[0] = localResources.getDimensionPixelSize(2131361864);
    arrayOfFloat2[1] = 0.0F;
    q localq2 = q.a(localk2, "translationX", arrayOfFloat2);
    localq2.a(localResources.getInteger(2131427352));
    localq2.a(new BounceInterpolator());
    d locald = new d();
    locald.a(localq2).a(localResources.getInteger(2131427351)).a(localq1);
    locald.a();
    locald.a(new i(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.g
 * JD-Core Version:    0.6.2
 */