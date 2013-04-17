import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.zip.InflaterInputStream;

public final class fk
{
  public HttpURLConnection a = null;
  private String b = null;
  private String c = "qqpimsecure android";
  private int d = 0;
  private boolean e = false;
  private boolean f = false;
  private boolean g = false;

  public fk(String paramString)
  {
    this.b = paramString;
    System.setProperty("http.keepAlive", "false");
  }

  public final int a()
  {
    try
    {
      int j = this.a.getResponseCode();
      i = j;
      return i;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        int i = 400;
    }
  }

  public final int a(byte[] paramArrayOfByte)
  {
    this.g = false;
    int i = 0;
    int j = 0;
    while (true)
      if (j < 3)
        try
        {
          if ((this.a != null) && (paramArrayOfByte != null))
          {
            this.f = false;
            this.a.setDoOutput(true);
            this.a.setDoInput(true);
            this.a.setRequestMethod("POST");
            this.a.setFixedLengthStreamingMode(paramArrayOfByte.length);
            this.a.setUseCaches(false);
            OutputStream localOutputStream = this.a.getOutputStream();
            int m = 1024;
            int n = 0;
            while (n < paramArrayOfByte.length)
            {
              if (n + m > paramArrayOfByte.length)
                m = paramArrayOfByte.length - n;
              localOutputStream.write(paramArrayOfByte, n, m);
              localOutputStream.flush();
              n += m;
            }
            localOutputStream.close();
            this.f = true;
          }
          i = a();
          k = j + 1;
          if ((i != 200) && (k < 3))
            if (this.a != null)
            {
              this.a.disconnect();
              this.a = null;
            }
        }
        catch (Exception localIOException)
        {
          try
          {
            a(this.d);
          }
          catch (IOException localIOException)
          {
            try
            {
              while (true)
              {
                int k;
                Thread.sleep(15000L);
                j = k;
                break;
                localException = localException;
                localException.printStackTrace();
                continue;
                localIOException = localIOException;
                localIOException.printStackTrace();
              }
            }
            catch (InterruptedException localInterruptedException)
            {
            }
          }
        }
    this.g = false;
    return i;
  }

  public final void a(int paramInt)
    throws IOException
  {
    this.a = ((HttpURLConnection)new URL(this.b).openConnection());
    this.a.setReadTimeout(15000);
    this.a.setConnectTimeout(30000);
    switch (paramInt)
    {
    default:
      this.e = false;
      this.a.setRequestProperty("User-Agent", this.c);
      this.a.setRequestProperty("Content-Type", "application/octet-stream");
      this.a.setRequestProperty("Connection", "close");
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    }
    while (true)
    {
      this.d = paramInt;
      return;
      this.e = true;
      this.a.setRequestProperty("User-Agent", this.c);
      this.a.setRequestProperty("Accept-Encoding", "deflate");
      this.a.setRequestProperty("Accept-Charset", "utf-8");
      this.a.setRequestProperty("Content-Type", "application/octet-stream");
      this.a.setRequestProperty("Connection", "close");
      continue;
      this.e = false;
      this.a.setRequestProperty("User-Agent", this.c);
      this.a.setRequestProperty("Accept-Charset", "utf-8");
      this.a.setRequestProperty("Content-Type", "application/vnd.syncml+wbxml");
      this.a.setRequestProperty("Connection", "close");
      continue;
      this.e = false;
      this.a.setRequestProperty("User-Agent", this.c);
      this.a.setRequestProperty("Connection", "keep-alive");
      continue;
      this.e = false;
      this.a.setRequestProperty("User-Agent", this.c);
      this.a.setRequestProperty("Accept-Encoding", "qzip");
      this.a.setRequestProperty("Connection", "close");
      continue;
      this.e = false;
      this.a.setRequestProperty("User-Agent", this.c);
      this.a.setRequestProperty("Accept", "*/*");
      this.a.setRequestProperty("Accept-Charset", "utf-8");
      this.a.setRequestProperty("Content-Type", "application/octet-stream");
    }
  }

  public final byte[] b()
  {
    this.g = false;
    boolean bool = this.f;
    Object localObject1 = null;
    if (!bool);
    while (true)
    {
      return localObject1;
      int i;
      if (i < 3);
      try
      {
        HttpURLConnection localHttpURLConnection = this.a;
        if (localHttpURLConnection == null)
        {
          arrayOfByte1 = null;
          if (arrayOfByte1 != null)
            break label201;
        }
      }
      catch (Exception localException)
      {
        try
        {
          while (true)
          {
            Thread.sleep(15000L);
            i++;
            break;
            String str = this.a.getHeaderField("Transfer-Encoding");
            if ((this.e) || ((str != null) && ("deflate".equalsIgnoreCase(str))));
            ByteArrayOutputStream localByteArrayOutputStream;
            for (Object localObject2 = new InflaterInputStream(this.a.getInputStream()); ; localObject2 = this.a.getInputStream())
            {
              localByteArrayOutputStream = new ByteArrayOutputStream();
              DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
              byte[] arrayOfByte2 = new byte[1024];
              while (true)
              {
                int j = ((InputStream)localObject2).read(arrayOfByte2, 0, 1024);
                if (j == -1)
                  break;
                localDataOutputStream.write(arrayOfByte2, 0, j);
              }
            }
            arrayOfByte1 = localByteArrayOutputStream.toByteArray();
            localByteArrayOutputStream.close();
            ((InputStream)localObject2).close();
          }
          localException = localException;
          arrayOfByte1 = null;
        }
        catch (InterruptedException localInterruptedException)
        {
        }
        this.g = false;
        localObject1 = arrayOfByte1;
        continue;
        arrayOfByte1 = null;
        i = 0;
      }
      catch (fr localfr)
      {
        while (true)
          label201: byte[] arrayOfByte1 = null;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     fk
 * JD-Core Version:    0.6.2
 */