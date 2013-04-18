package com.jxphone.b.b;

import java.util.Collections;
import java.util.List;

public final class b
{
  private static int a(List paramList, Comparable paramComparable)
  {
    int i = Collections.binarySearch(paramList, paramComparable);
    if (i >= 0);
    for (int j = i + 1; ; j = -i - 1)
    {
      paramList.add(j, paramComparable);
      return j;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.b.b.b
 * JD-Core Version:    0.6.2
 */