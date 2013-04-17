package puw;

public class d
{
  public static final byte[] a = new byte[0];
  private static final char[] b = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };

  public static byte a(char paramChar)
  {
    byte b1;
    if ((paramChar >= '0') && (paramChar <= '9'))
      b1 = (byte)(paramChar - '0');
    while (true)
    {
      return b1;
      if ((paramChar >= 'a') && (paramChar <= 'f'))
        b1 = (byte)(10 + (paramChar - 'a'));
      else if ((paramChar >= 'A') && (paramChar <= 'F'))
        b1 = (byte)(10 + (paramChar - 'A'));
      else
        b1 = 0;
    }
  }

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

  public static byte[] a(String paramString)
  {
    if ((paramString == null) || (paramString.equals("")));
    byte[] arrayOfByte;
    for (Object localObject = a; ; localObject = arrayOfByte)
    {
      return localObject;
      arrayOfByte = new byte[paramString.length() / 2];
      for (int i = 0; i < arrayOfByte.length; i++)
      {
        char c1 = paramString.charAt(i * 2);
        char c2 = paramString.charAt(1 + i * 2);
        arrayOfByte[i] = ((byte)(16 * a(c1) + a(c2)));
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     puw.d
 * JD-Core Version:    0.6.2
 */