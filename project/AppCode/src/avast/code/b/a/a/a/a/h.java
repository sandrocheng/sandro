package b.a.a.a.a;

import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.message.BasicHeader;

public class h
  implements HttpEntity
{
  private static final char[] a = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
  private final c b;
  private final Header c;
  private long d;
  private volatile boolean e;

  public h()
  {
    this(e.a, null, null);
  }

  public h(e parame)
  {
    this(parame, null, null);
  }

  public h(e parame, String paramString, Charset paramCharset)
  {
    if (paramString == null)
      paramString = a();
    if (parame == null)
      parame = e.a;
    this.b = new c("form-data", paramCharset, paramString, parame);
    this.c = new BasicHeader("Content-Type", a(paramString, paramCharset));
    this.e = true;
  }

  protected String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Random localRandom = new Random();
    int i = 30 + localRandom.nextInt(11);
    for (int j = 0; j < i; j++)
      localStringBuilder.append(a[localRandom.nextInt(a.length)]);
    return localStringBuilder.toString();
  }

  protected String a(String paramString, Charset paramCharset)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("multipart/form-data; boundary=");
    localStringBuilder.append(paramString);
    if (paramCharset != null)
    {
      localStringBuilder.append("; charset=");
      localStringBuilder.append(paramCharset.name());
    }
    return localStringBuilder.toString();
  }

  public void a(a parama)
  {
    this.b.a(parama);
    this.e = true;
  }

  public void a(String paramString, b.a.a.a.a.a.c paramc)
  {
    a(new a(paramString, paramc));
  }

  public void consumeContent()
  {
    if (isStreaming())
      throw new UnsupportedOperationException("Streaming entity does not implement #consumeContent()");
  }

  public InputStream getContent()
  {
    throw new UnsupportedOperationException("Multipart form entity does not implement #getContent()");
  }

  public Header getContentEncoding()
  {
    return null;
  }

  public long getContentLength()
  {
    if (this.e)
    {
      this.d = this.b.c();
      this.e = false;
    }
    return this.d;
  }

  public Header getContentType()
  {
    return this.c;
  }

  public boolean isChunked()
  {
    if (!isRepeatable());
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean isRepeatable()
  {
    Iterator localIterator = this.b.a().iterator();
    do
      if (!localIterator.hasNext())
        break;
    while (((a)localIterator.next()).b().e() >= 0L);
    for (boolean bool = false; ; bool = true)
      return bool;
  }

  public boolean isStreaming()
  {
    if (!isRepeatable());
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public void writeTo(OutputStream paramOutputStream)
  {
    this.b.a(paramOutputStream);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     b.a.a.a.a.h
 * JD-Core Version:    0.6.2
 */