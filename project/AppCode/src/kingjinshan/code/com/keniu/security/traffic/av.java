package com.keniu.security.traffic;

import android.content.Context;
import android.text.TextUtils;
import com.ijinshan.kinghelper.firewall.core.i;
import com.ijinshan.kinghelper.firewall.dd;
import com.keniu.security.util.at;
import java.io.PrintStream;

final class av
  implements Runnable
{
  private Context a;
  private boolean b;
  private String c;
  private String d;

  public av(Context paramContext, boolean paramBoolean, String paramString1, String paramString2)
  {
    this.a = paramContext.getApplicationContext();
    this.b = paramBoolean;
    this.c = paramString2;
    this.d = paramString1;
  }

  public final void run()
  {
    if (!dd.j());
    while (true)
    {
      return;
      if (at.b(this.a))
      {
        y localy = y.a(this.a);
        String str1 = localy.k.split(",")[1] + localy.l.split(",")[1] + localy.n.split(",")[1] + localy.m.split(",")[1];
        if (!TextUtils.isEmpty(str1))
        {
          String str2 = str1 + '|' + this.d + '|' + this.c;
          System.out.println("content=" + str2 + "|" + this.b);
          i.b(this.a, null, str2, 15, String.valueOf(this.b));
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.av
 * JD-Core Version:    0.6.2
 */