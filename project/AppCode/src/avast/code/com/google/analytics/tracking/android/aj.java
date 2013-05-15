package com.google.analytics.tracking.android;

import android.text.TextUtils;
import java.util.Map;

class aj
  implements Runnable
{
  aj(ai paramai, Map paramMap, long paramLong)
  {
  }

  public void run()
  {
    if ((ai.a(this.c)) || (ai.a(this.c, this.a)));
    while (true)
    {
      return;
      this.a.put("clientId", ai.b(this.c));
      if (!TextUtils.isEmpty(ai.c(this.c)))
      {
        this.a.put("campaign", ai.c(this.c));
        ai.a(this.c, null);
      }
      ai.b(this.c, this.a);
      ai.c(this.c, this.a);
      ai.d(this.c, this.a);
      Map localMap = aw.a(ai.d(this.c), this.a);
      ai.f(this.c).a(localMap, this.b, ai.e(this.c, this.a), ai.e(this.c));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.aj
 * JD-Core Version:    0.6.2
 */