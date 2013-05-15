package com.google.a;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class g
{
  private static final g b = new g(true);
  private final Map a;

  g()
  {
    this.a = new HashMap();
  }

  private g(boolean paramBoolean)
  {
    this.a = Collections.emptyMap();
  }

  public static g a()
  {
    return b;
  }

  public t a(aa paramaa, int paramInt)
  {
    return (t)this.a.get(new h(paramaa, paramInt));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.a.g
 * JD-Core Version:    0.6.2
 */