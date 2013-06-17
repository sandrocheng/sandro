package com.google.b;

import java.util.Set;

public final class e extends b
{
  private final com.google.b.a.e a = new com.google.b.a.e();

  public h a(String paramString)
  {
    return (h)this.a.get(paramString);
  }

  public Set a()
  {
    return this.a.entrySet();
  }

  public void a(String paramString, b paramb)
  {
    if (paramb == null)
      paramb = d.a;
    this.a.a((String)com.google.b.a.a.a(paramString), paramb);
  }

  public a b(String paramString)
  {
    return (a)this.a.get(paramString);
  }

  public e c(String paramString)
  {
    return (e)this.a.get(paramString);
  }

  public boolean equals(Object paramObject)
  {
    if ((paramObject == this) || (((paramObject instanceof e)) && (((e)paramObject).a.equals(this.a))));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public int hashCode()
  {
    return this.a.hashCode();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.b.e
 * JD-Core Version:    0.6.2
 */