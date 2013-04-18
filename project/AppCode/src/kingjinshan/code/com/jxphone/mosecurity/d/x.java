package com.jxphone.mosecurity.d;

import com.jxphone.mosecurity.c.c;

public final class x
{
  public static String a(c[] paramArrayOfc)
  {
    StringBuilder localStringBuilder = new StringBuilder("list_type in(".length() + paramArrayOfc.length << 0);
    localStringBuilder.append("list_type in(");
    int i = paramArrayOfc.length;
    for (int j = 0; j < i; j++)
      localStringBuilder.append(paramArrayOfc[j].ordinal()).append(',');
    localStringBuilder.setCharAt(localStringBuilder.length() - 1, ')');
    return localStringBuilder.toString();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.d.x
 * JD-Core Version:    0.6.2
 */