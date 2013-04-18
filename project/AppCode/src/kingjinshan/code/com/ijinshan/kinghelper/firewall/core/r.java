package com.ijinshan.kinghelper.firewall.core;

import android.content.Context;
import com.ijinshan.kinghelper.a.i;
import com.ijinshan.kinghelper.firewall.a.e;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class r
{
  private static r b = null;
  public ExecutorService a = Executors.newFixedThreadPool(3);
  private Context c;

  private r(Context paramContext)
  {
    this.c = paramContext;
  }

  public static r a(Context paramContext)
  {
    if (b == null)
      b = new r(paramContext);
    return b;
  }

  public final String a(String paramString1, String paramString2, u paramu)
  {
    String str = e.c(i.a(paramString2));
    if ((str != null) && (!str.equals("")));
    while (true)
    {
      return str;
      s locals = new s(this, paramu);
      this.a.execute(new t(this, paramString2, paramString1, locals));
      str = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.core.r
 * JD-Core Version:    0.6.2
 */