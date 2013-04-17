package puw;

public class b
{
  public static final byte[] a = new byte[0];
  private static final char[] b = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };

  public static String a(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0));
    char[] arrayOfChar;
    for (String str = null; ; str = new String(arrayOfChar))
    {
      return str;
      arrayOfChar = new char[2 * paramArrayOfByte.length];
      for (int i = 0; i < paramArrayOfByte.length; i++)
      {
        int j = paramArrayOfByte[i];
        arrayOfChar[(1 + i * 2)] = b[(j & 0xF)];
        int k = (byte)(j >>> 4);
        arrayOfChar[(0 + i * 2)] = b[(k & 0xF)];
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     puw.b
 * JD-Core Version:    0.6.2
 */