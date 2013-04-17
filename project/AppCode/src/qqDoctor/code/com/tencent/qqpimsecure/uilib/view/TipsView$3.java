package com.tencent.qqpimsecure.uilib.view;

import android.os.Handler;
import android.os.Message;
import java.util.List;

class TipsView$3 extends Handler
{
  TipsView$3(TipsView paramTipsView)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    TipsView.access$100(this.this$0).remove(paramMessage.obj);
    if (TipsView.access$100(this.this$0).size() == 0)
      this.this$0.close();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.TipsView.3
 * JD-Core Version:    0.6.2
 */