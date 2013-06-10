package com.google.android.apps.analytics;

abstract interface PipelinedRequester$Callbacks
{
  public abstract void pipelineModeChanged(boolean paramBoolean);

  public abstract void requestSent();

  public abstract void serverError(int paramInt);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.android.apps.analytics.PipelinedRequester.Callbacks
 * JD-Core Version:    0.6.2
 */