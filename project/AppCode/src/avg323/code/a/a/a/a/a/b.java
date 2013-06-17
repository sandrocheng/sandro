package a.a.a.a.a;

public class b
{
  private static final char[] a = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  private static final char[] b = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
  private final String c;

  public static char[] a(byte[] paramArrayOfByte)
  {
    return a(paramArrayOfByte, true);
  }

  public static char[] a(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    if (paramBoolean);
    for (char[] arrayOfChar = a; ; arrayOfChar = b)
      return a(paramArrayOfByte, arrayOfChar);
  }

  protected static char[] a(byte[] paramArrayOfByte, char[] paramArrayOfChar)
  {
    int i = 0;
    int j = paramArrayOfByte.length;
    char[] arrayOfChar = new char[j << 1];
    for (int k = 0; ; k++)
    {
      if (k >= j)
        return arrayOfChar;
      int m = i + 1;
      arrayOfChar[i] = paramArrayOfChar[((0xF0 & paramArrayOfByte[k]) >>> 4)];
      i = m + 1;
      arrayOfChar[m] = paramArrayOfChar[(0xF & paramArrayOfByte[k])];
    }
  }

  public static String b(byte[] paramArrayOfByte)
  {
    return new String(a(paramArrayOfByte));
  }

  public String toString()
  {
    return super.toString() + "[charsetName=" + this.c + "]";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.a.b
 * JD-Core Version:    0.6.2
 */