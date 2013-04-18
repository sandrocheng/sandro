package kdebug;

public final class c
{
  private byte[] a;
  private String b;
  private String c;
  private String d = "application/octet-stream";
  private String e;

  public c(String paramString1, String paramString2, String paramString3)
  {
    this.e = paramString2;
    this.b = paramString1;
    this.c = paramString3;
  }

  public c(String paramString1, byte[] paramArrayOfByte, String paramString2)
  {
    this.a = paramArrayOfByte;
    this.b = paramString1;
    this.c = paramString2;
  }

  private void a(String paramString)
  {
    this.b = paramString;
  }

  private void a(byte[] paramArrayOfByte)
  {
    this.a = paramArrayOfByte;
  }

  private void b(String paramString)
  {
    this.c = paramString;
  }

  private void c(String paramString)
  {
    this.d = paramString;
  }

  public final String a()
  {
    return this.e;
  }

  public final byte[] b()
  {
    return this.a;
  }

  public final String c()
  {
    return this.b;
  }

  public final String d()
  {
    return this.c;
  }

  public final String e()
  {
    return this.d;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     kdebug.c
 * JD-Core Version:    0.6.2
 */