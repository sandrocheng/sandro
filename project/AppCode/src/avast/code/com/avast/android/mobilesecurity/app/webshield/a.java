package com.avast.android.mobilesecurity.app.webshield;

import android.os.Message;
import com.avast.android.generic.util.m;
import com.dolphin.browser.addons.am;

class a extends am
{
  a(DolphinWebshieldService paramDolphinWebshieldService)
  {
  }

  public void a()
  {
    m.c("On change called");
    Message localMessage = new Message();
    localMessage.obj = this.a.a();
    DolphinWebshieldService.a(this.a).sendMessage(localMessage);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.webshield.a
 * JD-Core Version:    0.6.2
 */