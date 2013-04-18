package com.keniu.security.main.a;

import android.content.Context;
import android.util.Log;
import android.widget.Toast;
import com.ijinshan.cleaner.a.a;
import com.ijinshan.cleaner.o;
import com.ijinshan.cleaner.s;
import com.ijinshan.cleaner.u;
import com.keniu.security.util.ax;
import java.util.ArrayList;
import java.util.List;

public final class af
  implements s, m
{
  public String a = "缓存垃圾文件";
  public String b = "立即清理";
  public String c = "已清理";
  public String d = "未发现";
  public String e = "是否有缓存垃圾文件";
  public int f = k.c;
  public int g;
  private o h = null;
  private List i = null;
  private l j = null;
  private long k = 0L;

  private boolean c(Context paramContext)
  {
    long l1 = System.currentTimeMillis();
    this.k = 0L;
    this.i = new ArrayList();
    this.h = new o();
    this.h.a(paramContext, this, o.a);
    long l2 = System.currentTimeMillis();
    Log.e("Scan cache time", "time" + (l2 - l1));
    if ((this.k > 0L) && (this.i.size() > 0))
      this.a = ("检测到垃圾文件，共" + ax.c(this.k));
    if (this.i.size() == 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final void L_()
  {
  }

  public final void M_()
  {
  }

  public final void N_()
  {
  }

  public final void O_()
  {
  }

  public final void P_()
  {
  }

  public final void Q_()
  {
  }

  public final int a()
  {
    return this.f;
  }

  public final String a(int paramInt)
  {
    String str;
    if (paramInt == k.k)
      str = this.a;
    while (true)
    {
      return str;
      if (paramInt == k.l)
        str = this.b;
      else if (paramInt == k.m)
        str = this.c;
      else if (paramInt == k.n)
        str = this.d;
      else if (paramInt == k.o)
        str = this.e;
      else
        str = null;
    }
  }

  public final void a(Context paramContext)
  {
    this.h.a(o.a);
    this.g = k.g;
    this.a = ("清理垃圾文件" + ax.c(this.k));
    this.d = "已清理";
    Toast.makeText(paramContext, "清理成功！共节省" + ax.c(this.k) + "空间", 0).show();
  }

  public final void a(u paramu)
  {
    synchronized (this.i)
    {
      if (paramu.a == o.a)
        this.k += paramu.b.d();
      this.i.add(paramu);
      return;
    }
  }

  public final void a(l paraml, Context paramContext)
  {
    paraml.a(this);
    this.j = paraml;
    long l1 = System.currentTimeMillis();
    this.k = 0L;
    this.i = new ArrayList();
    this.h = new o();
    this.h.a(paramContext, this, o.a);
    long l2 = System.currentTimeMillis();
    Log.e("Scan cache time", "time" + (l2 - l1));
    if ((this.k > 0L) && (this.i.size() > 0))
      this.a = ("检测到垃圾文件，共" + ax.c(this.k));
    int m;
    if (this.i.size() == 0)
    {
      m = 1;
      if (m == 0)
        break label183;
    }
    label183: for (this.g = k.g; ; this.g = k.i)
    {
      paraml.b(this);
      return;
      m = 0;
      break;
    }
  }

  public final void a(boolean paramBoolean)
  {
  }

  public final int b()
  {
    return this.g;
  }

  public final void b(Context paramContext)
  {
  }

  public final String c()
  {
    return this.a;
  }

  public final int d()
  {
    return 80;
  }

  public final void e()
  {
  }

  public final void f()
  {
  }

  public final boolean g()
  {
    if ((this.g == k.h) || (this.g == k.g));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean h()
  {
    return false;
  }

  public final boolean i()
  {
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.a.af
 * JD-Core Version:    0.6.2
 */