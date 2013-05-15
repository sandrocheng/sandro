package com.avast.android.mobilesecurity.app.messageshield;

import android.content.Context;
import com.avast.android.mobilesecurity.engine.ah;
import com.avast.android.mobilesecurity.engine.ak;
import com.avast.android.mobilesecurity.engine.i;
import com.avast.android.mobilesecurity.engine.k;
import com.avast.android.mobilesecurity.engine.l;
import com.avast.android.mobilesecurity.engine.o;
import com.avast.android.mobilesecurity.engine.p;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class a
{
  private Context a;

  public a(Context paramContext)
  {
    this.a = paramContext;
  }

  public static boolean a(k paramk)
  {
    l locall = c(paramk);
    boolean bool;
    Iterator localIterator1;
    if ((locall.a == o.j) || (locall.a == o.k) || (locall.a == o.i) || (locall.a == o.h))
    {
      bool = true;
      if ((locall.a != o.g) || (paramk.b == null) || (paramk.b.isEmpty()))
        break label200;
      if (paramk.b != null)
      {
        localIterator1 = paramk.b.values().iterator();
        i = 0;
        j = 0;
      }
    }
    else
    {
      label186: 
      while (true)
      {
        if (!localIterator1.hasNext())
          break label193;
        Iterator localIterator2 = ((List)localIterator1.next()).iterator();
        while (true)
        {
          if (!localIterator2.hasNext())
            break label186;
          ak localak = ((ah)localIterator2.next()).a;
          if (localak == ak.f)
          {
            j = 1;
            continue;
            bool = false;
            break;
          }
          if (localak == ak.c)
            i = 1;
        }
      }
    }
    int i = 0;
    int j = 0;
    label193: bool |= j | i;
    label200: return bool;
  }

  public static boolean b(k paramk)
  {
    l locall = c(paramk);
    boolean bool;
    if ((locall.a == o.f) || (locall.a == o.d) || (locall.a == o.e) || (locall.a == o.a))
      bool = true;
    while (true)
    {
      return bool;
      if ((locall.a == o.g) && (paramk.b != null) && (!paramk.b.isEmpty()) && (paramk.b != null))
      {
        Iterator localIterator2;
        do
        {
          Iterator localIterator1 = paramk.b.values().iterator();
          while (!localIterator2.hasNext())
          {
            if (!localIterator1.hasNext())
              break;
            localIterator2 = ((List)localIterator1.next()).iterator();
          }
        }
        while (((ah)localIterator2.next()).a != ak.d);
        bool = true;
      }
      else
      {
        bool = false;
      }
    }
  }

  public static l c(k paramk)
  {
    if ((paramk.a != null) && (!paramk.a.isEmpty()));
    for (l locall = (l)paramk.a.get(0); ; locall = new l(o.a, ""))
      return locall;
  }

  public k a(String paramString1, String paramString2, String paramString3, p paramp)
  {
    return i.a(this.a, null, paramp, paramString1, paramString2 + ", " + paramString3, null, null, 1);
  }

  public k b(String paramString1, String paramString2, String paramString3, p paramp)
  {
    return i.a(this.a, null, paramp, paramString1, paramString2 + ", " + paramString3, null, null, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.messageshield.a
 * JD-Core Version:    0.6.2
 */