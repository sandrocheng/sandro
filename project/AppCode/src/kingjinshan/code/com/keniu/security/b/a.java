package com.keniu.security.b;

import com.jxphone.mosecurity.b.c;
import java.util.ArrayList;
import java.util.List;

public final class a
  implements f
{
  public static final int a = 100;
  private static final int b = 112;
  private static a c;

  public static a a()
  {
    if (c == null)
      c = new a();
    return c;
  }

  public final String b()
  {
    return "mosecurity_process_list.db";
  }

  public final int c()
  {
    return 112;
  }

  public final List d()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(c.class);
    localArrayList.add(com.jxphone.mosecurity.b.a.class);
    localArrayList.add(com.jxphone.mosecurity.b.f.class);
    return localArrayList;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.b.a
 * JD-Core Version:    0.6.2
 */