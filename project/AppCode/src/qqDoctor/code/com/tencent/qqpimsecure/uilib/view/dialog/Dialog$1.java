package com.tencent.qqpimsecure.uilib.view.dialog;

import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.uilib.view.imageview.AutoLoadingView;

class Dialog$1 extends Handler
{
  Dialog$1(Dialog paramDialog)
  {
  }

  public void dispatchMessage(Message paramMessage)
  {
    this.this$0.insideLoading.stopRotationAnimation();
    this.this$0.outsideLoading.stopRotationAnimation();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.dialog.Dialog.1
 * JD-Core Version:    0.6.2
 */