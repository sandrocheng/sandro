package com.tencent.qqpimsecure.uilib.view.network;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;

class FlowPercentView$1 extends Handler
{
  FlowPercentView$1(FlowPercentView paramFlowPercentView)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    this.this$0.reflashPercentImage(paramMessage.getData().getFloat("Percent"));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.network.FlowPercentView.1
 * JD-Core Version:    0.6.2
 */