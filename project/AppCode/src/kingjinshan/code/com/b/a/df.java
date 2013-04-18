package com.b.a;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class df
{
  private static final df b = new df();
  private final Map a;

  private df()
  {
    this.a = Collections.emptyMap();
  }

  df(byte paramByte)
  {
    this.a = new HashMap();
  }

  df(df paramdf)
  {
    if (paramdf == b);
    for (this.a = Collections.emptyMap(); ; this.a = Collections.unmodifiableMap(paramdf.a))
      return;
  }

  private static df a()
  {
    return new df((byte)0);
  }

  private void a(en paramen)
  {
    this.a.put(new dg(paramen.a(), paramen.b()), paramen);
  }

  public static df c()
  {
    return b;
  }

  public final en a(ex paramex, int paramInt)
  {
    return (en)this.a.get(new dg(paramex, paramInt));
  }

  public df b()
  {
    return new df(this);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.df
 * JD-Core Version:    0.6.2
 */