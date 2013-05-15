package com.avast.android.generic.util.a;

import android.content.Context;
import com.avast.android.generic.util.ac;

public class a extends Exception
{
  private long a;
  private long b;

  public a(long paramLong1, long paramLong2)
  {
    this.a = paramLong1;
    this.b = paramLong2;
  }

  private String a(Context paramContext, long paramLong)
  {
    return new ac(paramContext).a(paramLong);
  }

  public String a(Context paramContext)
  {
    return a(paramContext, this.a);
  }

  public String b(Context paramContext)
  {
    return a(paramContext, this.b);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.a.a
 * JD-Core Version:    0.6.2
 */