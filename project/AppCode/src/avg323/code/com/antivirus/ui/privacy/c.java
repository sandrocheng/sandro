package com.antivirus.ui.privacy;

import android.content.Context;
import android.support.v4.app.i;
import java.util.List;

class c
  implements Runnable
{
  c(b paramb, Context paramContext)
  {
  }

  public void run()
  {
    List localList = com.antivirus.core.b.a.b.a(this.a).c();
    b localb = this.b;
    if (localList.size() > 0);
    for (boolean bool = true; ; bool = false)
    {
      b.a(localb, bool);
      this.b.h().runOnUiThread(new d(this));
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.privacy.c
 * JD-Core Version:    0.6.2
 */