import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class cx
{
  private static final char[] a = "0123456789abcdef".toCharArray();

  public static String a(String paramString)
  {
    return a(b(paramString.getBytes()));
  }

  public static String a(byte[] paramArrayOfByte)
  {
    String str;
    if (paramArrayOfByte == null)
    {
      str = null;
      return str;
    }
    StringBuilder localStringBuilder = new StringBuilder(3 * paramArrayOfByte.length);
    int i = paramArrayOfByte.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
      {
        str = localStringBuilder.toString().toUpperCase();
        break;
      }
      int k = 0xFF & paramArrayOfByte[j];
      localStringBuilder.append(a[(k >> 4)]);
      localStringBuilder.append(a[(k & 0xF)]);
    }
  }

  private static byte[] b(byte[] paramArrayOfByte)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramArrayOfByte);
      byte[] arrayOfByte2 = localMessageDigest.digest();
      arrayOfByte1 = arrayOfByte2;
      return arrayOfByte1;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      while (true)
      {
        localNoSuchAlgorithmException.printStackTrace();
        byte[] arrayOfByte1 = null;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     cx
 * JD-Core Version:    0.6.2
 */