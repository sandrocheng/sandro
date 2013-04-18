package com.ijinshan.kinghelper.firewall.a;

import java.util.HashMap;

public final class i
{
  public static Object a = new Object();
  private static HashMap b = new HashMap();

  public static j a(String paramString)
  {
    synchronized (a)
    {
      j localj = (j)b.get(paramString);
      return localj;
    }
  }

  public static void a(String paramString, j paramj)
  {
    synchronized (a)
    {
      b.put(paramString, paramj);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.a.i
 * JD-Core Version:    0.6.2
 */