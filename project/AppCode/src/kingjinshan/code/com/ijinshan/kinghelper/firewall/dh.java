package com.ijinshan.kinghelper.firewall;

import android.os.Handler;
import android.os.Message;
import android.widget.Toast;

final class dh extends Handler
{
  dh(ServiceSmsGroupActivity paramServiceSmsGroupActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    ServiceSmsGroupActivity.a(this.a).f();
    ServiceSmsGroupActivity.b(this.a);
    ServiceSmsGroupActivity.a(this.a).notifyDataSetChanged();
    Toast.makeText(this.a, 2131427700, 1).show();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.dh
 * JD-Core Version:    0.6.2
 */