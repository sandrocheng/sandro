package b.a.a.a.a;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.http.util.ByteArrayBuffer;

public class c
{
  private static final ByteArrayBuffer a = a(f.a, ": ");
  private static final ByteArrayBuffer b = a(f.a, "\r\n");
  private static final ByteArrayBuffer c = a(f.a, "--");
  private final String d;
  private final Charset e;
  private final String f;
  private final List g;
  private final e h;

  public c(String paramString1, Charset paramCharset, String paramString2, e parame)
  {
    if (paramString1 == null)
      throw new IllegalArgumentException("Multipart subtype may not be null");
    if (paramString2 == null)
      throw new IllegalArgumentException("Multipart boundary may not be null");
    this.d = paramString1;
    if (paramCharset != null);
    while (true)
    {
      this.e = paramCharset;
      this.f = paramString2;
      this.g = new ArrayList();
      this.h = parame;
      return;
      paramCharset = f.a;
    }
  }

  private static ByteArrayBuffer a(Charset paramCharset, String paramString)
  {
    ByteBuffer localByteBuffer = paramCharset.encode(CharBuffer.wrap(paramString));
    ByteArrayBuffer localByteArrayBuffer = new ByteArrayBuffer(localByteBuffer.remaining());
    localByteArrayBuffer.append(localByteBuffer.array(), localByteBuffer.position(), localByteBuffer.remaining());
    return localByteArrayBuffer;
  }

  private void a(e parame, OutputStream paramOutputStream, boolean paramBoolean)
  {
    ByteArrayBuffer localByteArrayBuffer = a(this.e, b());
    Iterator localIterator1 = this.g.iterator();
    if (localIterator1.hasNext())
    {
      a locala = (a)localIterator1.next();
      a(c, paramOutputStream);
      a(localByteArrayBuffer, paramOutputStream);
      a(b, paramOutputStream);
      b localb = locala.c();
      switch (d.a[parame.ordinal()])
      {
      default:
      case 1:
      case 2:
      }
      while (true)
      {
        a(b, paramOutputStream);
        if (paramBoolean)
          locala.b().a(paramOutputStream);
        a(b, paramOutputStream);
        break;
        Iterator localIterator2 = localb.iterator();
        while (localIterator2.hasNext())
          a((g)localIterator2.next(), paramOutputStream);
        a(locala.c().a("Content-Disposition"), this.e, paramOutputStream);
        if (locala.b().b() != null)
          a(locala.c().a("Content-Type"), this.e, paramOutputStream);
      }
    }
    a(c, paramOutputStream);
    a(localByteArrayBuffer, paramOutputStream);
    a(c, paramOutputStream);
    a(b, paramOutputStream);
  }

  private static void a(g paramg, OutputStream paramOutputStream)
  {
    a(paramg.a(), paramOutputStream);
    a(a, paramOutputStream);
    a(paramg.b(), paramOutputStream);
    a(b, paramOutputStream);
  }

  private static void a(g paramg, Charset paramCharset, OutputStream paramOutputStream)
  {
    a(paramg.a(), paramCharset, paramOutputStream);
    a(a, paramOutputStream);
    a(paramg.b(), paramCharset, paramOutputStream);
    a(b, paramOutputStream);
  }

  private static void a(String paramString, OutputStream paramOutputStream)
  {
    a(a(f.a, paramString), paramOutputStream);
  }

  private static void a(String paramString, Charset paramCharset, OutputStream paramOutputStream)
  {
    a(a(paramCharset, paramString), paramOutputStream);
  }

  private static void a(ByteArrayBuffer paramByteArrayBuffer, OutputStream paramOutputStream)
  {
    paramOutputStream.write(paramByteArrayBuffer.buffer(), 0, paramByteArrayBuffer.length());
  }

  public List a()
  {
    return this.g;
  }

  public void a(a parama)
  {
    if (parama == null);
    while (true)
    {
      return;
      this.g.add(parama);
    }
  }

  public void a(OutputStream paramOutputStream)
  {
    a(this.h, paramOutputStream, true);
  }

  public String b()
  {
    return this.f;
  }

  public long c()
  {
    Iterator localIterator = this.g.iterator();
    long l1 = 0L;
    long l2;
    while (localIterator.hasNext())
    {
      long l3 = ((a)localIterator.next()).b().e();
      if (l3 >= 0L)
        l1 += l3;
      else
        l2 = -1L;
    }
    while (true)
    {
      return l2;
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      try
      {
        a(this.h, localByteArrayOutputStream, false);
        int i = localByteArrayOutputStream.toByteArray().length;
        l2 = l1 + i;
      }
      catch (IOException localIOException)
      {
        l2 = -1L;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     b.a.a.a.a.c
 * JD-Core Version:    0.6.2
 */