package com.hoi.netstat;

import android.os.Handler;
import android.os.Message;
import android.widget.Toast;

final class b extends Handler
{
  b(NetStatActivity paramNetStatActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    Toast.makeText(this.a, NetStatActivity.a(), 1).show();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.netstat.b
 * JD-Core Version:    0.6.2
 */