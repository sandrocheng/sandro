package com.c.a.a;

import android.content.Context;
import android.net.ConnectivityManager;

public final class af
{
  private static af b;
  ConnectivityManager a;
  private Context c;

  private af(Context paramContext)
  {
    this.c = paramContext;
    this.a = ((ConnectivityManager)this.c.getSystemService("connectivity"));
  }

  public static af a(Context paramContext)
  {
    if (b == null)
      b = new af(paramContext);
    return b;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.c.a.a.af
 * JD-Core Version:    0.6.2
 */