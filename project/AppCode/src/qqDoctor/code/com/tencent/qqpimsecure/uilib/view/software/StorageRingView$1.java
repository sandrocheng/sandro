package com.tencent.qqpimsecure.uilib.view.software;

import android.os.Handler;
import android.os.Message;

class StorageRingView$1 extends Handler
{
  StorageRingView$1(StorageRingView paramStorageRingView)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    StorageRingView.access$002(this.this$0, StorageRingView.access$000(this.this$0) + StorageRingView.access$100(this.this$0));
    if (StorageRingView.access$000(this.this$0) > StorageRingView.access$200(this.this$0))
      StorageRingView.access$002(this.this$0, StorageRingView.access$200(this.this$0));
    StorageRingView.access$300(this.this$0, StorageRingView.access$000(this.this$0));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.software.StorageRingView.1
 * JD-Core Version:    0.6.2
 */