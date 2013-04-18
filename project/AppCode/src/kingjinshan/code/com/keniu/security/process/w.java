package com.keniu.security.process;

import android.os.Handler;
import android.os.Message;
import android.widget.ListView;
import android.widget.ProgressBar;

final class w extends Handler
{
  w(ProcessWhiteSettingActivity paramProcessWhiteSettingActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if (paramMessage.what == 1)
    {
      this.a.c.setVisibility(8);
      this.a.b.setVisibility(0);
      z localz = new z(this.a);
      localz.a();
      localz.notifyDataSetChanged();
      this.a.b.setAdapter(localz);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.process.w
 * JD-Core Version:    0.6.2
 */