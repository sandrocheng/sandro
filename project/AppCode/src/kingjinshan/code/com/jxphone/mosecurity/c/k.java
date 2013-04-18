package com.jxphone.mosecurity.c;

import android.content.Context;
import com.ijinshan.kinghelper.a.i;
import com.jxphone.mosecurity.d.a;
import java.io.Serializable;
import java.util.WeakHashMap;

public final class k
  implements Serializable
{
  public static final k a = new k(null);
  private static final long b = -3247034319269695912L;
  private static final WeakHashMap c = new WeakHashMap(8);
  private final String d;
  private volatile String e;

  public k(String paramString)
  {
    this.d = paramString;
  }

  public final String a()
  {
    return this.d;
  }

  public final String a(Context paramContext)
  {
    if (this.e == null)
      this.e = a.a(paramContext).a(b(), paramContext.getString(2131429014));
    return this.e;
  }

  public final String a(Context paramContext, String paramString)
  {
    if (this.e == null)
      this.e = a.a(paramContext).a(b(), paramString);
    return this.e;
  }

  public final String b()
  {
    String str = (String)c.get(this.d);
    if (str == null)
    {
      str = i.a(this.d);
      c.put(this.d, str);
    }
    return str;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.c.k
 * JD-Core Version:    0.6.2
 */