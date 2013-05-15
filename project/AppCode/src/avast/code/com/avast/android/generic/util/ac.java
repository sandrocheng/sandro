package com.avast.android.generic.util;

import android.content.Context;
import com.avast.android.generic.z;

public class ac
{
  private String a;
  private String b;
  private String c;
  private String d;
  private String e;

  public ac(Context paramContext)
  {
    this.a = paramContext.getString(z.bi);
    this.b = paramContext.getString(z.aX);
    this.c = paramContext.getString(z.aU);
    this.d = paramContext.getString(z.bF);
    this.e = paramContext.getString(z.S);
  }

  public String a(long paramLong)
  {
    String str;
    if (paramLong <= 1L)
      str = String.valueOf(paramLong) + " " + this.a;
    while (true)
    {
      return str;
      if (paramLong < 1024L)
        str = String.valueOf(paramLong) + " " + this.a;
      else if (paramLong < 1048576L)
        str = String.valueOf(paramLong / 1024L) + " " + this.b;
      else if (paramLong < 1073741824L)
        str = String.valueOf(paramLong / 1048576L) + " " + this.c;
      else
        str = String.valueOf(paramLong / 1073741824L) + " " + this.d;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.ac
 * JD-Core Version:    0.6.2
 */