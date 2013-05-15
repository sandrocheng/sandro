package com.avast.android.mobilesecurity.app.filter.core;

import android.content.Context;
import com.avast.android.generic.util.m;

final class i
  implements Runnable
{
  i(int paramInt, k paramk, Context paramContext, String paramString1, String paramString2, boolean paramBoolean)
  {
  }

  public void run()
  {
    if (this.a >= 2)
    {
      m.b("MessageBlockerHelper", "Maximum find attempts for message exceeded, message not found.");
      this.b.a();
    }
    while (true)
    {
      return;
      g.a(this.c, this.d, this.e, this.b, this.f, 1 + this.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.core.i
 * JD-Core Version:    0.6.2
 */