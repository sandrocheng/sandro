package com.keniu.security.sync.b;

import java.util.ArrayList;
import java.util.List;

public final class c
{
  private static List a;

  static
  {
    ArrayList localArrayList = new ArrayList();
    a = localArrayList;
    localArrayList.add("pre_firewall_user_keyword");
  }

  public static boolean a(String paramString)
  {
    return a.contains(paramString);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.b.c
 * JD-Core Version:    0.6.2
 */