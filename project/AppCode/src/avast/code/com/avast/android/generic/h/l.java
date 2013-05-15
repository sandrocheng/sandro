package com.avast.android.generic.h;

import a.a.a.a.a.a;
import android.content.Context;
import android.os.Bundle;
import com.avast.android.generic.service.AvastService;

public abstract class l
{
  private AvastService a;

  public AvastService a()
  {
    return this.a;
  }

  public abstract void a(Context paramContext, String paramString, Bundle paramBundle);

  public void a(Context paramContext, String paramString, Bundle paramBundle, n paramn)
  {
    try
    {
      new Thread(new m(this, paramContext, paramString, paramBundle, paramn)).start();
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        a.a().a("Exception in executing event", localException);
        paramn.a();
      }
    }
  }

  public void a(AvastService paramAvastService)
  {
    this.a = paramAvastService;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.h.l
 * JD-Core Version:    0.6.2
 */