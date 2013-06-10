package com.google.android.apps.analytics;

import android.os.Build;
import android.os.Build.VERSION;
import android.os.Looper;
import java.util.Locale;
import org.apache.http.HttpHost;

class NetworkDispatcher
  implements Dispatcher
{
  private static final String GOOGLE_ANALYTICS_HOST_NAME = "www.google-analytics.com";
  private static final int GOOGLE_ANALYTICS_HOST_PORT = 80;
  private static final int MAX_EVENTS_PER_PIPELINE = 30;
  private static final int MAX_GET_LENGTH = 2036;
  private static final int MAX_POST_LENGTH = 8192;
  private static final int MAX_SEQUENTIAL_REQUESTS = 5;
  private static final long MIN_RETRY_INTERVAL = 2L;
  private static final String USER_AGENT_TEMPLATE = "%s/%s (Linux; U; Android %s; %s-%s; %s Build/%s)";
  private NetworkDispatcher.DispatcherThread dispatcherThread;
  private boolean dryRun = false;
  private final HttpHost googleAnalyticsHost;
  private final String userAgent;

  public NetworkDispatcher()
  {
    this("GoogleAnalytics", "1.4.1");
  }

  public NetworkDispatcher(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, "www.google-analytics.com", 80);
  }

  NetworkDispatcher(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    this.googleAnalyticsHost = new HttpHost(paramString3, paramInt);
    Locale localLocale = Locale.getDefault();
    Object[] arrayOfObject = new Object[7];
    arrayOfObject[0] = paramString1;
    arrayOfObject[1] = paramString2;
    arrayOfObject[2] = Build.VERSION.RELEASE;
    String str1;
    if (localLocale.getLanguage() != null)
    {
      str1 = localLocale.getLanguage().toLowerCase();
      arrayOfObject[3] = str1;
      if (localLocale.getCountry() == null)
        break label134;
    }
    label134: for (String str2 = localLocale.getCountry().toLowerCase(); ; str2 = "")
    {
      arrayOfObject[4] = str2;
      arrayOfObject[5] = Build.MODEL;
      arrayOfObject[6] = Build.ID;
      this.userAgent = String.format("%s/%s (Linux; U; Android %s; %s-%s; %s Build/%s)", arrayOfObject);
      return;
      str1 = "en";
      break;
    }
  }

  public void dispatchHits(Hit[] paramArrayOfHit)
  {
    if (this.dispatcherThread == null);
    while (true)
    {
      return;
      this.dispatcherThread.dispatchHits(paramArrayOfHit);
    }
  }

  String getUserAgent()
  {
    return this.userAgent;
  }

  public void init(Dispatcher.Callbacks paramCallbacks)
  {
    stop();
    this.dispatcherThread = new NetworkDispatcher.DispatcherThread(paramCallbacks, this.userAgent, this, null);
    this.dispatcherThread.start();
  }

  public void init(Dispatcher.Callbacks paramCallbacks, PipelinedRequester paramPipelinedRequester, HitStore paramHitStore)
  {
    stop();
    this.dispatcherThread = new NetworkDispatcher.DispatcherThread(paramCallbacks, paramPipelinedRequester, this.userAgent, this, null);
    this.dispatcherThread.start();
  }

  public boolean isDryRun()
  {
    return this.dryRun;
  }

  public void setDryRun(boolean paramBoolean)
  {
    this.dryRun = paramBoolean;
  }

  public void stop()
  {
    if ((this.dispatcherThread != null) && (this.dispatcherThread.getLooper() != null))
    {
      this.dispatcherThread.getLooper().quit();
      this.dispatcherThread = null;
    }
  }

  void waitForThreadLooper()
  {
    this.dispatcherThread.getLooper();
    while (this.dispatcherThread.handlerExecuteOnDispatcherThread == null)
      Thread.yield();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.android.apps.analytics.NetworkDispatcher
 * JD-Core Version:    0.6.2
 */