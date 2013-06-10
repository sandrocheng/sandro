package org.a.a.a.a;

public final class b
{
  private static final char[] a = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  private static final char[] b = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
  private final String c;

  public static String a(byte[] paramArrayOfByte)
  {
    return new String(b(paramArrayOfByte));
  }

  private static char[] b(byte[] paramArrayOfByte)
  {
    int i = 0;
    char[] arrayOfChar1 = a;
    int j = paramArrayOfByte.length;
    char[] arrayOfChar2 = new char[j << 1];
    for (int k = 0; ; k++)
    {
      if (k >= j)
        return arrayOfChar2;
      int m = i + 1;
      arrayOfChar2[i] = arrayOfChar1[((0xF0 & paramArrayOfByte[k]) >>> 4)];
      i = m + 1;
      arrayOfChar2[m] = arrayOfChar1[(0xF & paramArrayOfByte[k])];
    }
  }

  public final String toString()
  {
    return super.toString() + "[charsetName=" + this.c + "]";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.a.a.a.a.b
 * JD-Core Version:    0.6.2
 */