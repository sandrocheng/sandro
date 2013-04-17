package com.tencent.qqpimsecure.uilib.view;

import android.os.Handler;
import android.os.Message;

class BaseView$1 extends Handler
{
  BaseView$1(BaseView paramBaseView)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    this.this$0.onHandlerMessage(paramMessage);
    switch (paramMessage.what)
    {
    default:
    case -1:
    case -2:
    }
    while (true)
    {
      return;
      this.this$0.onLoadDataStart();
      BaseView.access$002(this.this$0, new Thread(new BaseView.1.1(this)));
      BaseView.access$000(this.this$0).start();
      this.this$0.startLoading();
      continue;
      if (!BaseView.access$100(this.this$0))
      {
        removeMessages(-2);
        this.this$0.refreshListData();
        this.this$0.stopLoading();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.BaseView.1
 * JD-Core Version:    0.6.2
 */