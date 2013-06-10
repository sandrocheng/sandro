package com.google.android.apps.analytics;

class NetworkDispatcher$DispatcherThread$RequesterCallbacks
  implements PipelinedRequester.Callbacks
{
  private NetworkDispatcher$DispatcherThread$RequesterCallbacks(NetworkDispatcher.DispatcherThread paramDispatcherThread)
  {
  }

  public void pipelineModeChanged(boolean paramBoolean)
  {
    if (paramBoolean)
      NetworkDispatcher.DispatcherThread.access$1002(this.this$0, 30);
    while (true)
    {
      return;
      NetworkDispatcher.DispatcherThread.access$1002(this.this$0, 1);
    }
  }

  public void requestSent()
  {
    if (NetworkDispatcher.DispatcherThread.access$400(this.this$0) == null);
    while (true)
    {
      return;
      Hit localHit = NetworkDispatcher.DispatcherThread.access$400(this.this$0).removeNextHit();
      if (localHit != null)
        NetworkDispatcher.DispatcherThread.access$900(this.this$0).hitDispatched(localHit.hitId);
    }
  }

  public void serverError(int paramInt)
  {
    NetworkDispatcher.DispatcherThread.access$502(this.this$0, paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.android.apps.analytics.NetworkDispatcher.DispatcherThread.RequesterCallbacks
 * JD-Core Version:    0.6.2
 */