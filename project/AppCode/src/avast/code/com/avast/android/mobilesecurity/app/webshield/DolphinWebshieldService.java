package com.avast.android.mobilesecurity.app.webshield;

import android.content.Intent;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.RemoteException;
import com.avast.android.generic.util.m;
import com.dolphin.browser.addons.AddonService;
import com.dolphin.browser.addons.ad;
import com.dolphin.browser.addons.al;
import com.dolphin.browser.addons.aw;
import com.dolphin.browser.addons.bh;
import com.dolphin.browser.addons.bs;
import com.dolphin.browser.addons.h;

public class DolphinWebshieldService extends AddonService
{
  private al a;
  private Looper b;
  private c c;
  private h d;

  private void a(h paramh, int paramInt, String paramString)
  {
    m.c("Redirecting Dolphin Browser in tab " + paramInt + " to " + paramString);
    try
    {
      int[] arrayOfInt = paramh.h.b();
      for (int i = 0; i < arrayOfInt.length; i++)
        if (arrayOfInt[i] == paramInt)
        {
          aw localaw = paramh.h.a(paramInt);
          if (localaw != null)
          {
            bh localbh = localaw.c();
            if (localbh != null)
              localbh.a(paramString);
          }
        }
    }
    catch (RemoteException localRemoteException)
    {
      throw localRemoteException;
    }
  }

  protected void a(h paramh)
  {
    m.c("Browser connected");
    this.a = new a(this);
    HandlerThread localHandlerThread = new HandlerThread("DolphinWebshieldService[helper]", 1);
    localHandlerThread.start();
    this.b = localHandlerThread.getLooper();
    this.c = new c(this, this, this.b);
    try
    {
      paramh.g.b(this.a);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
      {
        m.b("Remote exception registering history observer", localRemoteException);
        this.a = null;
      }
    }
  }

  protected void b(h paramh)
  {
    m.c("Browser disconnected");
    if (this.a != null);
    try
    {
      paramh.g.a(this.a);
      label26: return;
    }
    catch (RemoteException localRemoteException)
    {
      break label26;
    }
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    String str1;
    if ((paramIntent != null) && (paramIntent.getBooleanExtra("redirect_browser", false)))
      str1 = paramIntent.getStringExtra("tab_id");
    try
    {
      Integer localInteger = Integer.valueOf(Integer.parseInt(str1));
      String str2 = paramIntent.getDataString();
      try
      {
        a(this.d, localInteger.intValue(), str2);
        return super.onStartCommand(paramIntent, paramInt1, paramInt2);
      }
      catch (RemoteException localRemoteException)
      {
        while (true)
          m.c("Redirecting back to " + str2 + " failed");
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      while (true)
        m.e("Invalid tab ID to redirect");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.webshield.DolphinWebshieldService
 * JD-Core Version:    0.6.2
 */