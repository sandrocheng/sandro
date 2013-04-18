package com.jxphone.mosecurity.logic;

import android.content.Context;
import com.jxphone.mosecurity.logic.a.d;
import com.jxphone.mosecurity.logic.a.g;
import com.jxphone.mosecurity.logic.a.j;
import com.jxphone.mosecurity.logic.a.k;
import com.jxphone.mosecurity.logic.a.l;
import com.jxphone.mosecurity.logic.a.m;

public final class h
{
  private static v a = null;
  private static u b = null;
  private static w c = null;
  private static s d = null;
  private static i e = null;
  private static a f = null;
  private static s g = null;
  private static i h = null;
  private static a i = null;
  private static r j = null;

  private static com.jxphone.mosecurity.logic.a.h a()
  {
    if (j == null)
      j = new r();
    return j;
  }

  public static j a(Context paramContext)
  {
    if (d == null)
      d = new s(paramContext);
    return d;
  }

  public static j a(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean)
      if (g == null)
        g = new s(paramContext, true);
    for (Object localObject = g; ; localObject = a(paramContext))
      return localObject;
  }

  public static g b(Context paramContext)
  {
    if (e == null)
      e = new i(paramContext);
    return e;
  }

  public static g b(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean)
      if (h == null)
        h = new i(paramContext, true);
    for (Object localObject = h; ; localObject = b(paramContext))
      return localObject;
  }

  public static d c(Context paramContext)
  {
    if (f == null)
      f = new a(paramContext);
    return f;
  }

  public static d c(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean)
      if (i == null)
        i = new a(paramContext, true);
    for (Object localObject = i; ; localObject = c(paramContext))
      return localObject;
  }

  public static l d(Context paramContext)
  {
    if (a == null)
      a = new v(paramContext);
    return a;
  }

  public static k e(Context paramContext)
  {
    if (b == null)
      b = new u(paramContext);
    return b;
  }

  public static m f(Context paramContext)
  {
    if (c == null)
      c = new w(paramContext);
    return c;
  }

  public static com.jxphone.mosecurity.logic.a.e g(Context paramContext)
  {
    return new e(paramContext);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.logic.h
 * JD-Core Version:    0.6.2
 */