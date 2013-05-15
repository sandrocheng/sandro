package com.avast.android.generic.h;

import a.a.a.a.a.a;
import android.content.Context;
import android.os.Bundle;

class m
  implements Runnable
{
  m(l paraml, Context paramContext, String paramString, Bundle paramBundle, n paramn)
  {
  }

  public void run()
  {
    try
    {
      this.e.a(this.a, this.b, this.c);
      this.d.a();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        a.a().a("Exception in executing task in own thread", localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.h.m
 * JD-Core Version:    0.6.2
 */