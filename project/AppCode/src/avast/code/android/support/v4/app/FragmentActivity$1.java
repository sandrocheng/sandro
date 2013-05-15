package android.support.v4.app;

import android.os.Handler;
import android.os.Message;

class FragmentActivity$1 extends Handler
{
  FragmentActivity$1(FragmentActivity paramFragmentActivity)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      super.handleMessage(paramMessage);
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      if (this.this$0.mStopped)
      {
        this.this$0.doReallyStop(false);
        continue;
        this.this$0.onResumeFragments();
        this.this$0.mFragments.execPendingActions();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.FragmentActivity.1
 * JD-Core Version:    0.6.2
 */