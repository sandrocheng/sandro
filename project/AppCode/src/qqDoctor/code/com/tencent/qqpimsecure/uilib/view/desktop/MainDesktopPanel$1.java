package com.tencent.qqpimsecure.uilib.view.desktop;

import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.uilib.ui.adapter.DesktopAdapter;

class MainDesktopPanel$1 extends Handler
{
  MainDesktopPanel$1(MainDesktopPanel paramMainDesktopPanel)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    MainDesktopPanel.access$000(this.this$0).notifyDataSetChanged();
    MainDesktopPanel.access$100(this.this$0).notifyDataSetChanged();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.desktop.MainDesktopPanel.1
 * JD-Core Version:    0.6.2
 */