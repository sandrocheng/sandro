package com.keniu.security.software;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import com.ijinshan.kinghelper.a.h;

public final class q
  implements h
{
  private Handler a;
  private Context b;
  private String c;

  public final void a(Context paramContext)
  {
    this.b = paramContext;
  }

  public final void a(Handler paramHandler)
  {
    this.a = paramHandler;
  }

  public final void a(String paramString)
  {
    this.c = paramString;
  }

  public final void run()
  {
    Message localMessage = this.a.obtainMessage();
    try
    {
      localMessage.obj = this.b.getPackageManager().getApplicationIcon(this.c);
      this.a.sendMessage(localMessage);
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        localMessage.obj = this.b.getResources().getDrawable(17301651);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.q
 * JD-Core Version:    0.6.2
 */