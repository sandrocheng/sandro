package com.avast.android.generic.util.ga;

import com.google.analytics.tracking.android.bo;

class c
  implements bo
{
  bo a;

  private c(a parama, bo parambo)
  {
    this.a = parambo;
  }

  public void a(double paramDouble)
  {
    this.a.a(paramDouble);
  }

  public void a(String paramString)
  {
    this.a.a(paramString);
  }

  public void a(String paramString1, String paramString2, String paramString3, Long paramLong)
  {
    if (a.a(this.b))
      this.a.a(paramString1, paramString2, paramString3, paramLong);
  }

  public void a(String paramString, boolean paramBoolean)
  {
    if (a.a(this.b))
      this.a.a(paramString, paramBoolean);
  }

  public void a(boolean paramBoolean)
  {
    this.a.a(paramBoolean);
  }

  public void b(String paramString)
  {
    this.a.b(paramString);
  }

  public void b(boolean paramBoolean)
  {
    this.a.b(paramBoolean);
  }

  public void c(String paramString)
  {
    if (a.a(this.b))
      this.a.c(paramString);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.ga.c
 * JD-Core Version:    0.6.2
 */