package com.google.android.apps.analytics;

import android.os.Handler;

final class GoogleAnalyticsTracker$DispatcherCallbacks
  implements Dispatcher.Callbacks
{
  GoogleAnalyticsTracker$DispatcherCallbacks(GoogleAnalyticsTracker paramGoogleAnalyticsTracker)
  {
  }

  public final void dispatchFinished()
  {
    GoogleAnalyticsTracker.access$000(this.this$0).post(new GoogleAnalyticsTracker.DispatcherCallbacks.1(this));
  }

  public final void hitDispatched(long paramLong)
  {
    GoogleAnalyticsTracker.access$100(this.this$0).deleteHit(paramLong);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.android.apps.analytics.GoogleAnalyticsTracker.DispatcherCallbacks
 * JD-Core Version:    0.6.2
 */