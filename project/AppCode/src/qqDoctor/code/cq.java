import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.zip.CRC32;

public final class cq extends cc
{
  private static long f = 0L;
  private bm e = new bm();

  public final cc.a a()
  {
    return cc.a.a;
  }

  public final int c()
  {
    CRC32 localCRC32 = new CRC32();
    StringBuilder localStringBuilder1 = new StringBuilder();
    int i = 0;
    StringBuilder localStringBuilder2 = localStringBuilder1;
    while (true)
    {
      if (i >= this.c.size())
        f += (localStringBuilder2.length() << 4);
      try
      {
        byte[] arrayOfByte = localStringBuilder2.toString().getBytes("UTF-8");
        localCRC32.update(arrayOfByte);
        j = (int)localCRC32.getValue();
        return j;
        cp localcp = (cp)this.c.get(i);
        if (localcp != null)
        {
          if (!localcp.a[0].toString().equals("PHOTO"))
            break label157;
          if (localcp.b == null);
        }
        label157: for (localStringBuilder2 = localStringBuilder2.append(localcp.a[1].toString()).append(new String(localcp.b)); ; localStringBuilder2 = localStringBuilder2.append(localcp.a[1].toString()).append(localcp.a[2].toString()))
        {
          i++;
          break;
        }
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        while (true)
        {
          localUnsupportedEncodingException.printStackTrace();
          int j = 0;
        }
      }
    }
  }

  public final boolean d()
  {
    int i = 1;
    if (this.e.c == i);
    while (true)
    {
      return i;
      int j = 0;
    }
  }

  public final String e()
  {
    return this.e.b;
  }

  public final String f()
  {
    return this.e.a;
  }

  public final void g()
  {
    if (this.c.size() > 0)
      this.d = Integer.valueOf(0);
    int i = 0;
    if (this.d.intValue() < this.c.size());
    for (int j = 0; ; j = 1)
    {
      if ((j != 0) || (i >= 3))
        return;
      cp localcp = b();
      this.d = Integer.valueOf(1 + this.d.intValue());
      if (localcp == null)
        break;
      String str1 = localcp.a[0].toString();
      if (str1 == null)
        break;
      if (str1.endsWith("X-FOCUS"))
      {
        i++;
        String str2 = localcp.a[2].toString();
        if ((str2 == null) || (str2.length() <= 0) || (!str2.equals("1")))
          break;
        this.e.c = 1;
        break;
      }
      if (str1.equals("ACCOUNTNAME"))
      {
        this.e.a = localcp.a[2].toString();
        i++;
        break;
      }
      if (!str1.equals("ACCOUNTTYPE"))
        break;
      this.e.b = localcp.a[2].toString();
      i++;
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     cq
 * JD-Core Version:    0.6.2
 */