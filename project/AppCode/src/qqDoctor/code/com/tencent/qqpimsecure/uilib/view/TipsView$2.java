package com.tencent.qqpimsecure.uilib.view;

import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.uilib.model.TipsModel;
import java.util.Iterator;
import java.util.List;

class TipsView$2 extends Thread
{
  TipsView$2(TipsView paramTipsView)
  {
  }

  public void run()
  {
    Iterator localIterator = TipsView.access$100(this.this$0).iterator();
    while (localIterator.hasNext())
    {
      TipsModel localTipsModel = (TipsModel)localIterator.next();
      Message localMessage = new Message();
      localMessage.obj = localTipsModel;
      this.this$0.mHandler.sendMessageDelayed(localMessage, localTipsModel.getCloseTime());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.TipsView.2
 * JD-Core Version:    0.6.2
 */