package com.avast.android.antitheft_setup_components.b;

import android.content.Context;
import com.avast.android.antitheft_setup_components.f;
import com.avast.android.antitheft_setup_components.g;
import com.avast.android.generic.util.o;

public class a
{
  public static int a(o paramo)
  {
    int i;
    if (paramo == null)
      i = f.c;
    while (true)
    {
      return i;
      switch (d.a[paramo.ordinal()])
      {
      default:
        i = f.c;
        break;
      case 1:
        i = f.a;
        break;
      case 2:
        i = f.c;
        break;
      case 3:
        i = f.b;
      }
    }
  }

  public static void a(Context paramContext, e parame)
  {
    String str = paramContext.getString(g.w);
    String[] arrayOfString = new String[4];
    arrayOfString[0] = paramContext.getString(g.B);
    arrayOfString[1] = paramContext.getString(g.ac);
    arrayOfString[2] = paramContext.getString(g.U);
    arrayOfString[3] = paramContext.getString(g.r);
    com.avast.android.generic.a.a(paramContext, str, arrayOfString, new b(parame, paramContext));
  }

  private static void c(Context paramContext, e parame)
  {
    com.avast.android.generic.a.a(paramContext, paramContext.getString(g.q), new c(paramContext, parame));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.b.a
 * JD-Core Version:    0.6.2
 */