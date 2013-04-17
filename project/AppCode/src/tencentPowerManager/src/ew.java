import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class ew
{
  private static final char[] a = "0123456789abcdef".toCharArray();

  public static String a(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = b(paramArrayOfByte);
    StringBuilder localStringBuilder = new StringBuilder(3 * arrayOfByte.length);
    int i = arrayOfByte.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return localStringBuilder.toString().toUpperCase();
      int k = 0xFF & arrayOfByte[j];
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

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     ew
 * JD-Core Version:    0.6.2
 */