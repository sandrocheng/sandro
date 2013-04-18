package com.keniu.security.a;

import java.util.ArrayList;
import java.util.HashMap;

public final class s
{
  private static HashMap a = new HashMap();
  private static ArrayList b = new ArrayList();
  private static ArrayList c = new ArrayList();

  public static HashMap a()
  {
    return a;
  }

  public static void a(String paramString, Boolean paramBoolean)
  {
    a.put(paramString, paramBoolean);
  }

  public static void a(ArrayList paramArrayList)
  {
    b = paramArrayList;
  }

  private static void a(HashMap paramHashMap)
  {
    a = paramHashMap;
  }

  public static ArrayList b()
  {
    return b;
  }

  public static void b(ArrayList paramArrayList)
  {
    c = paramArrayList;
  }

  public static ArrayList c()
  {
    return c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.a.s
 * JD-Core Version:    0.6.2
 */