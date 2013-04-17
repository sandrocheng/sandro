import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;

public class kr extends InputStream
  implements Closeable
{
  private static final String a = kr.class.getSimpleName();
  private kq b;
  private kq.a c;
  private RandomAccessFile d;
  private String e;
  private byte[] f;
  private int g;
  private int h;
  private int i;

  public kr(String paramString)
    throws Exception
  {
    this.e = paramString;
    this.i = 0;
    if (!a())
      throw new Exception("ImageViewStream::init() Failed");
  }

  private boolean a()
  {
    boolean bool = false;
    this.b = new kq();
    int j = this.b.a(this.e);
    if (j != 0)
      new StringBuilder("decryptPartialFile() failed:").append(j).toString();
    while (true)
    {
      return bool;
      this.c = this.b.b();
      this.f = this.b.a();
      this.g = this.f.length;
      if (this.c.d == 1)
        this.h = this.g;
      while (true)
      {
        bool = true;
        break;
        if (this.g != 1024)
          new StringBuilder("error length:").append(this.g).append(" --- 1024").toString();
        this.h = ((int)this.c.i);
        try
        {
          this.d = new RandomAccessFile(this.e, "r");
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          bool = false;
        }
      }
    }
  }

  public int available()
    throws IOException
  {
    return this.h - this.i;
  }

  public void close()
    throws IOException
  {
    if ((this.c != null) && (this.c.d != 1) && (this.d != null))
      this.d.close();
  }

  protected void finalize()
    throws IOException
  {
    try
    {
      close();
      try
      {
        super.finalize();
        return;
      }
      catch (Throwable localThrowable2)
      {
        throw new AssertionError(localThrowable2);
      }
    }
    finally
    {
    }
  }

  public int read()
    throws IOException
  {
    int j = -1;
    byte[] arrayOfByte = new byte[1];
    if (read(arrayOfByte, 0, 1) == j);
    while (true)
    {
      return j;
      j = 0xFF & arrayOfByte[0];
    }
  }

  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    if (paramArrayOfByte == null)
      throw new NullPointerException("buffer == null");
    if (((paramInt2 | paramInt1) < 0) || (paramInt2 > paramArrayOfByte.length - paramInt1))
      throw new IndexOutOfBoundsException();
    int j = 0;
    if (paramInt2 == 0)
      return j;
    int k;
    if (this.i < this.g)
      if (paramInt2 + this.i <= this.g)
        k = paramInt2;
    while (true)
    {
      if (k > 0)
      {
        System.arraycopy(this.f, this.i, paramArrayOfByte, paramInt1, k);
        this.i = (k + this.i);
      }
      if (j > 0)
      {
        this.d.seek(this.i);
        j = this.d.read(paramArrayOfByte, paramInt1 + k, j);
        if (j < 0)
          break;
        this.i = (j + this.i);
        j += k;
        break;
        k = this.g - this.i;
        int m = this.g;
        int n = this.h;
        j = 0;
        if (m >= n)
          continue;
        j = paramInt2 - k;
        if (paramInt2 + this.i <= this.h)
          continue;
        j = this.h - this.g;
        continue;
        if (this.c.d == 1)
        {
          j = -1;
          break;
        }
        if (this.i == this.h)
        {
          j = -1;
          break;
        }
        if (paramInt2 + this.i <= this.h)
          break label308;
        j = this.h - this.i;
        k = 0;
        continue;
      }
      j = k;
      break;
      label308: j = paramInt2;
      k = 0;
    }
  }

  public void reset()
  {
    this.i = 0;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     kr
 * JD-Core Version:    0.6.2
 */