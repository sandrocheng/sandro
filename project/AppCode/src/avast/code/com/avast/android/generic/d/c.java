package com.avast.android.generic.d;

import android.content.Context;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.ag;

public class c
  implements e
{
  private ae a = null;
  private Context b = null;

  public c(Context paramContext)
  {
    this.b = paramContext;
    this.a = ((ae)ad.a(paramContext, ag.class));
  }

  public int a(String paramString)
  {
    return b(paramString, 0);
  }

  protected ae a()
  {
    return this.a;
  }

  public boolean a(String paramString, int paramInt)
  {
    this.a.a();
    this.a.a(paramString, paramInt);
    return this.a.b();
  }

  public boolean a(String paramString1, String paramString2)
  {
    this.a.a();
    this.a.a(paramString1, paramString2);
    return this.a.b();
  }

  public boolean a(String paramString, boolean paramBoolean)
  {
    this.a.a();
    this.a.a(paramString, paramBoolean);
    return this.a.b();
  }

  public int b(String paramString, int paramInt)
  {
    return this.a.b(paramString, paramInt);
  }

  protected Context b()
  {
    return this.b;
  }

  public String b(String paramString)
  {
    return b(paramString, null);
  }

  public String b(String paramString1, String paramString2)
  {
    return this.a.b(paramString1, paramString2);
  }

  public boolean b(String paramString, boolean paramBoolean)
  {
    return this.a.b(paramString, paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.d.c
 * JD-Core Version:    0.6.2
 */