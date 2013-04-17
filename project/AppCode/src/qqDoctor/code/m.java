import java.io.IOException;
import java.io.InputStream;

public final class m
{
  public Integer a = Integer.valueOf(-5);
  public Integer b = Integer.valueOf(-4);
  public String c;
  public String d;
  public String e;

  public static btc a(InputStream paramInputStream)
  {
    btc localbtc = new btc();
    byte[] arrayOfByte1 = new byte[4];
    try
    {
      paramInputStream.read(arrayOfByte1);
      paramInputStream.read(arrayOfByte1);
      int i = arrayOfByte1.length;
      int j = 0;
      if (i != 4);
      while (true)
      {
        localbtc.a = j;
        byte[] arrayOfByte2 = new byte[16];
        paramInputStream.read(arrayOfByte2);
        localbtc.b = arrayOfByte2;
        break;
        int k = 0xFF & arrayOfByte1[0] | (0xFF & arrayOfByte1[1]) << 8 | (0xFF & arrayOfByte1[2]) << 16;
        int m = arrayOfByte1[3];
        j = k | (m & 0xFF) << 24;
      }
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return localbtc;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     m
 * JD-Core Version:    0.6.2
 */