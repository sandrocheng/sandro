import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tccdb.TccCryptor;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.StreamCorruptedException;
import java.security.Key;

public final class ks
{
  private static String a = null;
  private static String b = null;

  public static String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int j;
    for (int i = 0; ; i++)
    {
      j = 0;
      if (i >= 13)
        break;
      localStringBuilder.append("FinalFantacyX".charAt(12 - i));
    }
    while (j < 13)
    {
      localStringBuilder.setCharAt(j, (char)('ð¿¿' + localStringBuilder.charAt(j)));
      j++;
    }
    String str = localStringBuilder.toString();
    a = str;
    return str;
  }

  public static String a(int paramInt)
  {
    if (a == null);
    for (String str2 = null; ; str2 = b.substring(0, paramInt))
    {
      return str2;
      String str1 = a.h(a);
      b = str1;
      int i = str1.length();
      if (i < paramInt)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(b);
        for (int j = 0; j < paramInt - i; j++)
          localStringBuilder.append("0");
        b = localStringBuilder.toString();
      }
    }
  }

  public static Key a(String paramString)
  {
    int i = paramString.length() / 2;
    byte[] arrayOfByte1 = new byte[i];
    byte[] arrayOfByte2 = paramString.getBytes();
    for (int j = 0; j < i; j++)
    {
      int k = arrayOfByte2[(j << 1)];
      int m = arrayOfByte2[(1 + (j << 1))];
      arrayOfByte1[j] = ((byte)((byte)(Byte.decode("0x" + new String(new byte[] { k })).byteValue() << 4) ^ Byte.decode("0x" + new String(new byte[] { m })).byteValue()));
    }
    ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(TccCryptor.decrypt(QQPimApplication.a(), arrayOfByte1, null));
    try
    {
      ObjectInputStream localObjectInputStream = new ObjectInputStream(localByteArrayInputStream);
      localKey = (Key)localObjectInputStream.readObject();
      localObjectInputStream.close();
      localByteArrayInputStream.close();
      return localKey;
    }
    catch (StreamCorruptedException localStreamCorruptedException)
    {
      while (true)
      {
        localStreamCorruptedException.printStackTrace();
        Key localKey = null;
      }
    }
    catch (IOException localIOException)
    {
      while (true)
        localIOException.printStackTrace();
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      while (true)
        localClassNotFoundException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ks
 * JD-Core Version:    0.6.2
 */