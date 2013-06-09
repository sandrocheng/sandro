package com.google.android.apps.analytics;

import android.os.Handler;
import android.os.HandlerThread;

class NetworkDispatcher$DispatcherThread extends HandlerThread
{
  private final Dispatcher.Callbacks callbacks;
  private NetworkDispatcher.DispatcherThread.AsyncDispatchTask currentTask = null;
  volatile Handler handlerExecuteOnDispatcherThread;
  private int lastStatusCode;
  private int maxEventsPerRequest = 30;
  private final NetworkDispatcher parent;
  private final PipelinedRequester pipelinedRequester;
  private final NetworkDispatcher.DispatcherThread.RequesterCallbacks requesterCallBacks;
  private long retryInterval;
  private final String userAgent;

  private NetworkDispatcher$DispatcherThread(Dispatcher.Callbacks paramCallbacks, PipelinedRequester paramPipelinedRequester, String paramString, NetworkDispatcher paramNetworkDispatcher)
  {
    super("DispatcherThread");
    this.callbacks = paramCallbacks;
    this.userAgent = paramString;
    this.pipelinedRequester = paramPipelinedRequester;
    this.requesterCallBacks = new NetworkDispatcher.DispatcherThread.RequesterCallbacks(this, null);
    this.pipelinedRequester.installCallbacks(this.requesterCallBacks);
    this.parent = paramNetworkDispatcher;
  }

  private NetworkDispatcher$DispatcherThread(Dispatcher.Callbacks paramCallbacks, String paramString, NetworkDispatcher paramNetworkDispatcher)
  {
    this(paramCallbacks, new PipelinedRequester(NetworkDispatcher.access$200(paramNetworkDispatcher)), paramString, paramNetworkDispatcher);
  }

  public void dispatchHits(Hit[] paramArrayOfHit)
  {
    if (this.handlerExecuteOnDispatcherThread == null);
    while (true)
    {
      return;
      this.handlerExecuteOnDispatcherThread.post(new NetworkDispatcher.DispatcherThread.AsyncDispatchTask(this, paramArrayOfHit));
    }
  }

  protected void onLooperPrepared()
  {
    this.handlerExecuteOnDispatcherThread = new Handler();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.android.apps.analytics.NetworkDispatcher.DispatcherThread
 * JD-Core Version:    0.6.2
 */