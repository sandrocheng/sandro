import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.zip.InflaterInputStream;

public final class dd
{
  private static boolean h = false;
  private String a = null;
  private HttpURLConnection b = null;
  private String c = "网络连接错误";
  private boolean d = false;
  private String e = "qqppim android";
  private boolean f = false;
  private int g = 0;

  public dd()
  {
    cv.a();
  }

  public dd(String paramString)
  {
    this();
    this.a = paramString;
    System.setProperty("http.keepAlive", "false");
  }

  private byte[] e()
    throws bz
  {
    byte[] arrayOfByte2;
    if (this.b == null)
    {
      arrayOfByte2 = null;
      return arrayOfByte2;
    }
    dk.b("HttpUtil", "getResponse(), encoding:" + this.b.getHeaderField("Transfer-Encoding"));
    this.b.getContentLength();
    while (true)
    {
      DataOutputStream localDataOutputStream;
      byte[] arrayOfByte1;
      int i;
      try
      {
        String str = this.b.getHeaderField("Transfer-Encoding");
        if ((this.d) || ((str != null) && ("deflate".equalsIgnoreCase(str))))
        {
          dk.b("HttpUtil", "getResponse begin inflate");
          localObject = new InflaterInputStream(this.b.getInputStream());
          ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
          localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
          arrayOfByte1 = new byte[1024];
          i = ((InputStream)localObject).read(arrayOfByte1, 0, 1024);
          if (i != -1)
            break label225;
          arrayOfByte2 = localByteArrayOutputStream.toByteArray();
          localByteArrayOutputStream.close();
          ((InputStream)localObject).close();
        }
      }
      catch (Throwable localThrowable)
      {
        dk.c("HttpUtil", "getResponse Throwable= " + localThrowable.toString());
        throw new bz(this.c);
      }
      dk.b("HttpUtil", "getResponse not inflate");
      Object localObject = this.b.getInputStream();
      continue;
      label225: localDataOutputStream.write(arrayOfByte1, 0, i);
    }
  }

  public final int a()
  {
    try
    {
      int j = this.b.getResponseCode();
      i = j;
      return i;
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        dk.c("HttpUtil", "getResposeCode(), " + localThrowable.toString());
        int i = 400;
      }
    }
  }

  public final int a(byte[] paramArrayOfByte)
  {
    h = false;
    int i = 0;
    int j = 0;
    if (j >= 3);
    while (true)
      while (true)
      {
        h = false;
        return i;
        dk.b("HttpUtil", "postAndRetry(), start post");
        try
        {
          b(paramArrayOfByte);
          i = a();
          dk.b("HttpUtil", "postAndRetry(), post res: " + i + ", retryCount: " + j);
          Thread localThread = Thread.currentThread();
          if (localThread != null)
            dk.b("HttpUtil", "postAndRetry(), doSendHttpData currentThread=" + localThread.getName());
          k = j + 1;
          if ((i != 200) && (k < 3))
            if (this.b != null)
            {
              this.b.disconnect();
              this.b = null;
            }
        }
        catch (bz localbz2)
        {
          try
          {
            a(this.g);
          }
          catch (bz localbz2)
          {
            try
            {
              while (true)
              {
                int k;
                Thread.sleep(15000L);
                j = k;
                break;
                localbz1 = localbz1;
                localbz1.printStackTrace();
                dk.c("HttpUtil", "postAndRetry(), post NetWorkException:");
                continue;
                localbz2 = localbz2;
                dk.c("HttpUtil", "postAndRetry(), " + localbz2.toString());
              }
            }
            catch (InterruptedException localInterruptedException)
            {
              dk.c("HttpUtil", "postAndRetry(), 重试线程interrupted");
            }
          }
        }
      }
  }

  public final void a(int paramInt)
    throws bz
  {
    dk.b("HttpUtil", "openConnection = " + paramInt);
    while (true)
    {
      URL localURL;
      try
      {
        localURL = new URL(this.a);
        if (cv.c)
        {
          dk.a("HttpUtil", "USE_PROXY : " + cv.a);
          String str1 = localURL.toString();
          int i = 3 + str1.indexOf("://");
          int j = str1.indexOf('/', i);
          String str3;
          Object localObject;
          if (j < 0)
          {
            String str4 = str1.substring(i);
            str3 = "";
            localObject = str4;
            dk.a("HttpUtil", "Host : " + (String)localObject + ", Path : " + str3);
            if (cv.b != 1)
              continue;
            dk.a("HttpUtil", "PROXY_TYPE : CT");
            this.b = ((HttpURLConnection)localURL.openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(cv.a, 80))));
            this.b.setReadTimeout(15000);
            this.b.setConnectTimeout(30000);
            this.d = false;
          }
          switch (paramInt)
          {
          default:
            this.b.setRequestProperty("User-Agent", this.e);
            this.b.setRequestProperty("Content-Type", "application/octet-stream");
            this.b.setRequestProperty("Connection", "close");
            this.g = paramInt;
            return;
            String str2 = str1.substring(i, j);
            str3 = str1.substring(j);
            localObject = str2;
            continue;
            dk.a("HttpUtil", "PROXY_TYPE : CM");
            this.b = ((HttpURLConnection)new URL("http://" + cv.a + str3).openConnection());
            this.b.setRequestProperty("X-Online-Host", (String)localObject);
            continue;
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          }
        }
      }
      catch (IOException localIOException)
      {
        dk.c("HttpUtil", "openConnection(), " + localIOException.toString());
        throw new bz(this.c);
      }
      this.b = ((HttpURLConnection)localURL.openConnection());
      continue;
      this.d = true;
      this.b.setRequestProperty("User-Agent", this.e);
      this.b.setRequestProperty("Accept-Encoding", "deflate");
      this.b.setRequestProperty("Accept-Charset", "utf-8");
      this.b.setRequestProperty("Content-Type", "application/octet-stream");
      this.b.setRequestProperty("Connection", "close");
      continue;
      this.b.setRequestProperty("User-Agent", this.e);
      this.b.setRequestProperty("Accept-Charset", "utf-8");
      this.b.setRequestProperty("Content-Type", "application/vnd.syncml+wbxml");
      this.b.setRequestProperty("Connection", "close");
      continue;
      this.b.setRequestProperty("User-Agent", this.e);
      this.b.setRequestProperty("Connection", "keep-alive");
      continue;
      this.b.setRequestProperty("User-Agent", this.e);
      this.b.setRequestProperty("Accept-Encoding", "qzip");
      this.b.setRequestProperty("Connection", "close");
      continue;
      this.b.setRequestProperty("User-Agent", this.e);
      this.b.setRequestProperty("Accept", "*/*");
      this.b.setRequestProperty("Accept-Charset", "utf-8");
      this.b.setRequestProperty("Content-Type", "application/octet-stream");
      continue;
      this.b.setRequestProperty("User-Agent", this.e);
      this.b.setRequestProperty("Content-Type", "application/vnd.syncml+wbxml");
      this.b.setRequestProperty("Accept", "application/vnd.syncml+wbxml");
      this.b.setRequestProperty("Connection", "close");
    }
  }

  public final void b(byte[] paramArrayOfByte)
    throws bz
  {
    int i = 0;
    dk.b("HttpUtil", "post(), start post");
    if (this.b == null)
      dk.b("HttpUtil", "post(), null == httpURLConnection");
    while (true)
    {
      return;
      if (paramArrayOfByte == null)
      {
        dk.b("HttpUtil", "post(), null == data");
      }
      else
      {
        this.f = false;
        try
        {
          this.b.setDoOutput(true);
          this.b.setDoInput(true);
          this.b.setRequestMethod("POST");
          this.b.setFixedLengthStreamingMode(paramArrayOfByte.length);
          this.b.setUseCaches(false);
          dk.b("HttpUtil", "post(), getOutputStream");
          localOutputStream = this.b.getOutputStream();
          j = 1024;
          dk.b("HttpUtil", "post(), begin while");
          if (i >= paramArrayOfByte.length)
          {
            dk.b("HttpUtil", "post(), end while");
            localOutputStream.close();
            this.f = true;
          }
        }
        catch (SocketTimeoutException localSocketTimeoutException)
        {
          while (true)
          {
            OutputStream localOutputStream;
            int j;
            dk.c("HttpUtil", "post(), SocketTimeoutException  e=" + localSocketTimeoutException.toString());
            break;
            int k = i + j;
            if (k > paramArrayOfByte.length)
              j = paramArrayOfByte.length - i;
            localOutputStream.write(paramArrayOfByte, i, j);
            localOutputStream.flush();
            i += j;
          }
        }
        catch (Exception localException)
        {
          dk.c("HttpUtil", "post(), Exception  e=" + localException.toString());
        }
      }
    }
    throw new bz(this.c);
  }

  public final byte[] b()
    throws bz
  {
    return e();
  }

  // ERROR //
  public final byte[] c()
  {
    // Byte code:
    //   0: iconst_0
    //   1: putstatic 20	dd:h	Z
    //   4: aload_0
    //   5: getfield 35	dd:f	Z
    //   8: ifne +172 -> 180
    //   11: aconst_null
    //   12: astore_1
    //   13: aload_1
    //   14: areturn
    //   15: ldc 69
    //   17: ldc_w 370
    //   20: invokestatic 96	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   23: aload_0
    //   24: invokespecial 368	dd:e	()[B
    //   27: astore_1
    //   28: new 71	java/lang/StringBuilder
    //   31: dup
    //   32: ldc_w 372
    //   35: invokespecial 75	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   38: astore 6
    //   40: aload_1
    //   41: ifnonnull +48 -> 89
    //   44: ldc_w 374
    //   47: astore 8
    //   49: ldc 69
    //   51: aload 6
    //   53: aload 8
    //   55: invokevirtual 377	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   58: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   61: invokestatic 96	dk:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   64: aload_1
    //   65: ifnonnull +17 -> 82
    //   68: ldc2_w 192
    //   71: invokestatic 197	java/lang/Thread:sleep	(J)V
    //   74: iinc 2 1
    //   77: iload_2
    //   78: iconst_3
    //   79: if_icmplt -64 -> 15
    //   82: iconst_0
    //   83: putstatic 20	dd:h	Z
    //   86: goto -73 -> 13
    //   89: aload_1
    //   90: arraylength
    //   91: invokestatic 383	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   94: astore 7
    //   96: aload 7
    //   98: astore 8
    //   100: goto -51 -> 49
    //   103: astore 5
    //   105: ldc 69
    //   107: new 71	java/lang/StringBuilder
    //   110: dup
    //   111: ldc_w 385
    //   114: invokespecial 75	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   117: aload 5
    //   119: invokevirtual 205	bz:toString	()Ljava/lang/String;
    //   122: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   125: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   128: invokestatic 145	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   131: aconst_null
    //   132: astore_1
    //   133: goto -69 -> 64
    //   136: astore_3
    //   137: ldc 69
    //   139: new 71	java/lang/StringBuilder
    //   142: dup
    //   143: ldc_w 385
    //   146: invokespecial 75	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   149: aload_3
    //   150: invokevirtual 366	java/lang/Exception:toString	()Ljava/lang/String;
    //   153: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   156: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   159: invokestatic 145	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   162: aconst_null
    //   163: astore_1
    //   164: goto -100 -> 64
    //   167: astore 4
    //   169: ldc 69
    //   171: ldc_w 387
    //   174: invokestatic 145	dk:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   177: goto -95 -> 82
    //   180: aconst_null
    //   181: astore_1
    //   182: iconst_0
    //   183: istore_2
    //   184: goto -107 -> 77
    //
    // Exception table:
    //   from	to	target	type
    //   15	64	103	bz
    //   89	96	103	bz
    //   15	64	136	java/lang/Exception
    //   89	96	136	java/lang/Exception
    //   68	74	167	java/lang/InterruptedException
  }

  public final void d()
  {
    if (this.b != null)
    {
      this.b.disconnect();
      this.b = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     dd
 * JD-Core Version:    0.6.2
 */