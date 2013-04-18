package com.keniu.security.b;

import android.content.Context;
import android.os.Build.VERSION;
import com.jxphone.mosecurity.b.a;
import com.jxphone.mosecurity.b.f;

public final class e
{
  private static final int a = Integer.parseInt(Build.VERSION.SDK);
  private static com.jxphone.mosecurity.b.c b;
  private static Object c = new Object();
  private static com.keniu.security.c.b d;
  private static Object e = new Object();
  private static com.keniu.security.c.b f;
  private static Object g = new Object();
  private static a h;
  private static Object i = new Object();
  private static f j;
  private static Object k = new Object();
  private static h l = null;
  private static m m = null;
  private static c n = null;
  private static h o = null;
  private static m p = null;
  private static c q = null;
  private static p r = null;
  private static s s = null;
  private static v t = null;

  static
  {
    com.jxphone.mosecurity.d.s.a();
    com.jxphone.mosecurity.d.s.a(h.a);
    com.jxphone.mosecurity.d.s.a(m.a);
    com.jxphone.mosecurity.d.s.a(c.a);
  }

  public static com.jxphone.mosecurity.b.c a(Context paramContext)
  {
    if (b == null);
    synchronized (c)
    {
      if (b == null)
        b = new com.jxphone.mosecurity.b.c(paramContext);
      return b;
    }
  }

  public static g a(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean)
      if (o == null)
        o = new h(paramContext, true);
    for (h localh = o; ; localh = l)
    {
      return localh;
      if (l == null)
        l = new h(paramContext);
    }
  }

  public static l b(Context paramContext)
  {
    if (m == null)
      m = new m(paramContext);
    return m;
  }

  public static l b(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean)
      if (p == null)
        p = new m(paramContext, true);
    for (Object localObject = p; ; localObject = b(paramContext))
      return localObject;
  }

  public static b c(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean)
      if (q == null)
        q = new c(paramContext, true);
    for (Object localObject = q; ; localObject = d(paramContext))
      return localObject;
  }

  public static o c(Context paramContext)
  {
    if (r == null)
      r = new p(paramContext);
    return r;
  }

  public static b d(Context paramContext)
  {
    if (n == null)
      n = new c(paramContext);
    return n;
  }

  public static r e(Context paramContext)
  {
    if (s == null)
      if (a < 5)
        break label30;
    label30: for (Object localObject = new t(paramContext); ; localObject = new s(paramContext))
    {
      s = (s)localObject;
      return s;
    }
  }

  public static u f(Context paramContext)
  {
    if (t == null)
      t = new v(paramContext);
    return t;
  }

  private static com.keniu.security.c.b g(Context paramContext)
  {
    if (f == null);
    synchronized (g)
    {
      if (f == null)
        f = new com.keniu.security.c.b(paramContext, true);
      return f;
    }
  }

  private static com.keniu.security.c.b h(Context paramContext)
  {
    if (d == null);
    synchronized (e)
    {
      if (d == null)
        d = new com.keniu.security.c.b(paramContext, false);
      return d;
    }
  }

  private static a i(Context paramContext)
  {
    if (h == null);
    synchronized (i)
    {
      if (h == null)
        h = new a(paramContext);
      return h;
    }
  }

  private static f j(Context paramContext)
  {
    if (j == null);
    synchronized (k)
    {
      if (j == null)
        j = new f(paramContext);
      return j;
    }
  }

  private static g k(Context paramContext)
  {
    if (l == null)
      l = new h(paramContext);
    return l;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.b.e
 * JD-Core Version:    0.6.2
 */