package com.avast.android.mobilesecurity.engine.internal;

import android.content.Context;
import com.avast.android.mobilesecurity.engine.i;
import com.avast.android.mobilesecurity.engine.internal.vps.c;
import com.avast.android.mobilesecurity.engine.internal.vps.h;
import com.avast.android.mobilesecurity.engine.q;
import com.avast.android.mobilesecurity.engine.y;
import java.util.HashMap;
import java.util.Map;

public class n
{
  public static y a(Context paramContext, Integer paramInteger)
  {
    return a(paramContext, paramInteger, new y("http", "ap.ff.avast.com", Integer.valueOf(80), "urlinfo/"), q.b);
  }

  private static y a(Context paramContext, Integer paramInteger, y paramy, q paramq)
  {
    if ((paramInteger == null) || (paramInteger.intValue() < 0))
      paramInteger = i.a(paramContext);
    for (int i = 1; ; i = 0)
    {
      if ((paramInteger != null) && (paramInteger.intValue() >= 0))
      {
        HashMap localHashMap = new HashMap();
        localHashMap.put(Short.valueOf(c.c.a()), paramContext);
        localHashMap.put(Short.valueOf(c.d.a()), paramInteger);
        localHashMap.put(Short.valueOf(c.b.a()), y.b());
        localHashMap.put(Short.valueOf(c.a.a()), Short.valueOf(paramq.a()));
        localHashMap.put(Short.valueOf(h.a.a()), paramy.a);
        localHashMap.put(Short.valueOf(h.d.a()), paramy.d);
        localHashMap.put(Short.valueOf(h.c.a()), paramy.c);
        localHashMap.put(Short.valueOf(h.b.a()), paramy.b);
        y localy = y.a((byte[])s.a(paramContext, x.a, localHashMap));
        if (localy != null)
          paramy = localy;
        localHashMap.clear();
        if (i != 0)
          i.a(paramContext, paramInteger.intValue());
      }
      return paramy;
    }
  }

  public static y b(Context paramContext, Integer paramInteger)
  {
    return a(paramContext, paramInteger, new y("http", "ab.ff.avast.com", Integer.valueOf(80), "cgi-bin/submit50.cgi"), q.a);
  }

  public static y c(Context paramContext, Integer paramInteger)
  {
    return a(paramContext, paramInteger, new y("http", "au.ff.avast.com", Integer.valueOf(80), "android/"), q.c);
  }

  public static y d(Context paramContext, Integer paramInteger)
  {
    return a(paramContext, paramInteger, new y("http", "al.ff.avast.com", Integer.valueOf(80), "F/"), q.d);
  }

  public static y e(Context paramContext, Integer paramInteger)
  {
    return a(paramContext, paramInteger, new y("http", "ta.ff.avast.com", Integer.valueOf(80), "F/"), q.g);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.n
 * JD-Core Version:    0.6.2
 */