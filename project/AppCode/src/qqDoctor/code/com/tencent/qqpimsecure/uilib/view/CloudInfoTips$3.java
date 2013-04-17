package com.tencent.qqpimsecure.uilib.view;

import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.uilib.model.TipsModel;
import java.util.Iterator;
import java.util.List;

class CloudInfoTips$3 extends Thread
{
  CloudInfoTips$3(CloudInfoTips paramCloudInfoTips)
  {
  }

  public void run()
  {
    Iterator localIterator = CloudInfoTips.access$100(this.this$0).iterator();
    while (localIterator.hasNext())
    {
      TipsModel localTipsModel = (TipsModel)localIterator.next();
      if (localTipsModel.getCloseTime() > 0)
      {
        Message localMessage = new Message();
        localMessage.obj = localTipsModel;
        CloudInfoTips.access$300(this.this$0).sendMessageDelayed(localMessage, localTipsModel.getCloseTime());
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.CloudInfoTips.3
 * JD-Core Version:    0.6.2
 */