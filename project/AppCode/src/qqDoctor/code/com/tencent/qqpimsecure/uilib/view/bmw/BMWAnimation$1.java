package com.tencent.qqpimsecure.uilib.view.bmw;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;

class BMWAnimation$1 extends Handler
{
  BMWAnimation$1(BMWAnimation paramBMWAnimation)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    BMWAnimation.access$000(this.this$0, paramMessage.getData().getInt("Percent"));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.bmw.BMWAnimation.1
 * JD-Core Version:    0.6.2
 */