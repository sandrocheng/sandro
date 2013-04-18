package com.ijinshan.kinghelper.firewall;

import android.app.ProgressDialog;
import android.os.Handler;
import android.os.Message;

final class dz extends Thread
{
  dz(ServicesSmsListActivity paramServicesSmsListActivity)
  {
  }

  public final void run()
  {
    ServicesSmsListActivity.b(this.a);
    Message localMessage = Message.obtain();
    ServicesSmsListActivity.c(this.a).sendMessage(localMessage);
    ServicesSmsListActivity.d(this.a).dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.dz
 * JD-Core Version:    0.6.2
 */