import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class btk
{
  private static final char[] a = "0123456789abcdef".toCharArray();

  public static byte[] a(int paramInt)
  {
    byte[] arrayOfByte = new byte[4];
    arrayOfByte[0] = ((byte)(paramInt >> 24));
    arrayOfByte[1] = ((byte)(paramInt >> 16));
    arrayOfByte[2] = ((byte)(paramInt >> 8));
    arrayOfByte[3] = ((byte)paramInt);
    return arrayOfByte;
  }

  public static byte[] a(byte[] paramArrayOfByte)
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

  public static String b(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = a(paramArrayOfByte);
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
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     btk
 * JD-Core Version:    0.6.2
 */