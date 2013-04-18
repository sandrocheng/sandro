package com.keniu.security.i;

import android.content.Context;
import android.content.IntentFilter;

final class j extends u
{
  private k g;

  public j(Context paramContext, t paramt)
  {
    super(paramContext, paramt);
  }

  public final int a(int paramInt)
  {
    if (paramInt != this.d)
      switch (paramInt)
      {
      default:
      case 1:
      case 0:
      }
    while (true)
    {
      return this.d;
      if (this.g == null)
      {
        IntentFilter localIntentFilter = new IntentFilter();
        localIntentFilter.addAction("android.intent.action.PACKAGE_ADDED");
        localIntentFilter.addAction("android.intent.action.PACKAGE_INSTALL");
        localIntentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
        localIntentFilter.addDataScheme("package");
        this.g = new k(this);
        this.f.registerReceiver(this.g, localIntentFilter);
        this.d = 1;
        continue;
        if (this.g != null)
        {
          this.f.unregisterReceiver(this.g);
          this.g = null;
          this.d = 0;
        }
      }
    }
  }

  public final void finalize()
  {
    a(0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.i.j
 * JD-Core Version:    0.6.2
 */