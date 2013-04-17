package com.tencent.feedback.common;

import android.os.Build;
import android.os.Build.VERSION;

public class b
{
  public b()
  {
  }

  public b(long paramLong, int paramInt)
  {
  }

  public static String a()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(Build.MODEL);
    localStringBuffer.append(";Android ");
    localStringBuffer.append(Build.VERSION.RELEASE);
    localStringBuffer.append(",level ");
    localStringBuffer.append(Build.VERSION.SDK);
    return localStringBuffer.toString();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.feedback.common.b
 * JD-Core Version:    0.6.2
 */