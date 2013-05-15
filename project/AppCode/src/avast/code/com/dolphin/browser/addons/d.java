package com.dolphin.browser.addons;

import android.os.Handler;
import android.os.Message;
import android.util.SparseArray;

class d extends Handler
{
  private d(AddonService paramAddonService)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    AddonService.a(this.a, paramMessage.arg2);
    h localh = (h)AddonService.b(this.a).get(AddonService.d(this.a));
    if (localh != null)
      AddonService.a(this.a, paramMessage, localh);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.dolphin.browser.addons.d
 * JD-Core Version:    0.6.2
 */