package com.tencent.qqpimsecure.uilib.view;

import android.os.Handler;
import android.os.Message;
import java.util.List;

class CloudInfoTips$2 extends Handler
{
  CloudInfoTips$2(CloudInfoTips paramCloudInfoTips)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    CloudInfoTips.access$100(this.this$0).remove(paramMessage.obj);
    if (CloudInfoTips.access$100(this.this$0).size() == 0)
      CloudInfoTips.access$200(this.this$0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.CloudInfoTips.2
 * JD-Core Version:    0.6.2
 */