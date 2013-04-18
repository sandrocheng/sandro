package com.keniu.security.i;

import android.content.Context;
import android.content.IntentFilter;

final class c extends u
{
  private d g;
  private f h;

  public c(Context paramContext, t paramt)
  {
    super(paramContext, paramt);
  }

  private static StringBuilder b(String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramString1);
    int i = paramString1.length();
    if ((i == 0) || (paramString1.charAt(i - 1) != '/'))
      localStringBuilder.append('/');
    localStringBuilder.append(paramString2);
    return localStringBuilder;
  }

  private void d()
  {
    if (this.h == null)
    {
      this.h = new f(this);
      this.h.start();
    }
    if (this.g == null)
    {
      IntentFilter localIntentFilter = new IntentFilter("android.intent.action.MEDIA_MOUNTED");
      localIntentFilter.addDataScheme("file");
      this.g = new d(this);
      this.f.registerReceiver(this.g, localIntentFilter);
    }
  }

  private void e()
  {
    if (this.g != null)
    {
      this.f.unregisterReceiver(this.g);
      this.g = null;
    }
    if (this.h != null)
    {
      this.h.b();
      this.h = null;
    }
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
      if (this.h == null)
      {
        this.h = new f(this);
        this.h.start();
      }
      if (this.g == null)
      {
        IntentFilter localIntentFilter = new IntentFilter("android.intent.action.MEDIA_MOUNTED");
        localIntentFilter.addDataScheme("file");
        this.g = new d(this);
        this.f.registerReceiver(this.g, localIntentFilter);
      }
      this.d = 1;
      continue;
      if (this.g != null)
      {
        this.f.unregisterReceiver(this.g);
        this.g = null;
      }
      if (this.h != null)
      {
        this.h.b();
        this.h = null;
      }
      this.d = 0;
    }
  }

  public final void finalize()
  {
    a(0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.i.c
 * JD-Core Version:    0.6.2
 */