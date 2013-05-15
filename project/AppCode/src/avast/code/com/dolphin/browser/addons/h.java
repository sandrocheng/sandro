package com.dolphin.browser.addons;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.util.HashSet;

public class h
{
  private HashSet A = new HashSet();
  private HashSet B = new HashSet();
  public a a = new i(this);
  public cb b = new p(this);
  public ab c = new q(this);
  public bt d = new r(this);
  public by e = new s(this);
  public g f = new t(this);
  public ad g = new u(this);
  public bs h = new v(this);
  private final String i;
  private final int j;
  private int k;
  private bv l;
  private bp m;
  private x n;
  private Handler o;
  private boolean p = false;
  private String q;
  private Bitmap r;
  private int s = 0;
  private bo t;
  private HashSet u = new HashSet();
  private HashSet v = new HashSet();
  private boolean w = false;
  private Bitmap x;
  private bo y;
  private HashSet z = new HashSet();

  h(int paramInt)
  {
    this.i = ("Browser " + paramInt);
    this.j = paramInt;
    this.o = new w(this, Looper.getMainLooper());
  }

  private void a(Message paramMessage)
  {
    try
    {
      switch (paramMessage.what)
      {
      case 1:
        bv localbv2 = this.l;
        if (localbv2 == null)
          return;
        localbv2.a();
      case 2:
      }
    }
    catch (Exception localException)
    {
      Log.w(this.i, localException);
    }
    bv localbv1 = this.l;
    if (localbv1 != null)
      localbv1.b();
  }

  af a()
  {
    return new j(this);
  }

  void a(int paramInt)
  {
    this.k = paramInt;
  }

  void a(bp parambp)
  {
    this.m = parambp;
  }

  void a(bv parambv)
  {
    this.l = parambv;
  }

  void a(x paramx)
  {
    this.n = paramx;
  }

  aj b()
  {
    return new k(this);
  }

  ao c()
  {
    return new l(this);
  }

  az d()
  {
    return new m(this);
  }

  bk e()
  {
    return new n(this);
  }

  bm f()
  {
    return new o(this);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.dolphin.browser.addons.h
 * JD-Core Version:    0.6.2
 */