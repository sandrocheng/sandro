package com.jxphone.mosecurity.d;

public final class e
{
  private static String a(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    StringBuilder localStringBuilder = new StringBuilder(i * 2);
    for (int j = 0; j < i; j++)
    {
      String str = Integer.toHexString(0xFF & paramArrayOfByte[j]);
      if (str.length() == 1)
        localStringBuilder.append('0');
      localStringBuilder.append(str);
    }
    return localStringBuilder.toString();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.d.e
 * JD-Core Version:    0.6.2
 */