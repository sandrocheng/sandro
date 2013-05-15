package b.a.a.a.a.a;

import java.io.OutputStream;

public class b extends a
{
  private final byte[] a;
  private final String b;

  public b(byte[] paramArrayOfByte, String paramString)
  {
    this(paramArrayOfByte, "application/octet-stream", paramString);
  }

  public b(byte[] paramArrayOfByte, String paramString1, String paramString2)
  {
    super(paramString1);
    if (paramArrayOfByte == null)
      throw new IllegalArgumentException("byte[] may not be null");
    this.a = paramArrayOfByte;
    this.b = paramString2;
  }

  public void a(OutputStream paramOutputStream)
  {
    paramOutputStream.write(this.a);
  }

  public String b()
  {
    return this.b;
  }

  public String c()
  {
    return null;
  }

  public String d()
  {
    return "binary";
  }

  public long e()
  {
    return this.a.length;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     b.a.a.a.a.a.b
 * JD-Core Version:    0.6.2
 */