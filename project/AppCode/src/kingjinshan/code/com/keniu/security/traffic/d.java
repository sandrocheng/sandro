package com.keniu.security.traffic;

import android.content.Context;
import android.text.TextUtils;
import com.ijinshan.kinghelper.firewall.core.i;

final class d
  implements Runnable
{
  private Context a;
  private String b;
  private String c;
  private String d;

  public d(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    this.a = paramContext;
    this.b = paramString2;
    this.c = paramString1;
    this.d = paramString3;
  }

  public final void run()
  {
    y localy = y.a(this.a);
    String str1 = localy.k.split(",")[1] + '|' + localy.l.split(",")[1] + '|' + localy.n.split(",")[1] + '|' + localy.m.split(",")[1];
    if (!TextUtils.isEmpty(str1))
    {
      String str2 = str1 + '|' + this.c + '|' + this.d + '|' + this.b;
      i.b(this.a, null, str2, 21, null);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.d
 * JD-Core Version:    0.6.2
 */