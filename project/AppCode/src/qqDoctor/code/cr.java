import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.zip.CRC32;

public final class cr extends cc
{
  private long d()
  {
    CRC32 localCRC32 = new CRC32();
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    while (true)
    {
      if (i >= this.c.size());
      try
      {
        byte[] arrayOfByte = localStringBuilder.toString().getBytes("UTF-8");
        localCRC32.update(arrayOfByte);
        l = localCRC32.getValue();
        return l;
        cp localcp = (cp)this.c.get(i);
        if (localcp != null)
          localStringBuilder = localStringBuilder.append(localcp.a[1].toString()).append(localcp.a[2].toString());
        i++;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        while (true)
        {
          localUnsupportedEncodingException.printStackTrace();
          long l = 0L;
        }
      }
    }
  }

  public final cc.a a()
  {
    return cc.a.b;
  }

  public final int c()
  {
    return (int)d();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     cr
 * JD-Core Version:    0.6.2
 */