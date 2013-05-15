package b.a.a.a.a;

import b.a.a.a.a.a.c;

public class a
{
  private final String a;
  private final b b;
  private final c c;

  public a(String paramString, c paramc)
  {
    if (paramString == null)
      throw new IllegalArgumentException("Name may not be null");
    if (paramc == null)
      throw new IllegalArgumentException("Body may not be null");
    this.a = paramString;
    this.c = paramc;
    this.b = new b();
    a(paramc);
    b(paramc);
    c(paramc);
  }

  public String a()
  {
    return this.a;
  }

  protected void a(c paramc)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("form-data; name=\"");
    localStringBuilder.append(a());
    localStringBuilder.append("\"");
    if (paramc.b() != null)
    {
      localStringBuilder.append("; filename=\"");
      localStringBuilder.append(paramc.b());
      localStringBuilder.append("\"");
    }
    a("Content-Disposition", localStringBuilder.toString());
  }

  public void a(String paramString1, String paramString2)
  {
    if (paramString1 == null)
      throw new IllegalArgumentException("Field name may not be null");
    this.b.a(new g(paramString1, paramString2));
  }

  public c b()
  {
    return this.c;
  }

  protected void b(c paramc)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramc.a());
    if (paramc.c() != null)
    {
      localStringBuilder.append("; charset=");
      localStringBuilder.append(paramc.c());
    }
    a("Content-Type", localStringBuilder.toString());
  }

  public b c()
  {
    return this.b;
  }

  protected void c(c paramc)
  {
    a("Content-Transfer-Encoding", paramc.d());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     b.a.a.a.a.a
 * JD-Core Version:    0.6.2
 */