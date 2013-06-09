package com.google.android.apps.analytics;

import android.util.Log;
import java.io.IOException;
import java.util.Collections;
import java.util.LinkedList;
import org.apache.http.Header;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.entity.StringEntity;
import org.apache.http.message.BasicHttpEntityEnclosingRequest;

class NetworkDispatcher$DispatcherThread$AsyncDispatchTask
  implements Runnable
{
  private final LinkedList hits = new LinkedList();

  public NetworkDispatcher$DispatcherThread$AsyncDispatchTask(NetworkDispatcher.DispatcherThread paramDispatcherThread, Hit[] paramArrayOfHit)
  {
    Collections.addAll(this.hits, paramArrayOfHit);
  }

  private void dispatchSomePendingHits(boolean paramBoolean)
  {
    if ((GoogleAnalyticsTracker.getInstance().getDebug()) && (paramBoolean))
      Log.v("GoogleAnalyticsTracker", "dispatching hits in dry run mode");
    int i = 0;
    if ((i < this.hits.size()) && (i < NetworkDispatcher.DispatcherThread.access$1000(this.this$0)))
    {
      String str1 = Utils.addQueueTimeParameter(((Hit)this.hits.get(i)).hitString, System.currentTimeMillis());
      int j = str1.indexOf('?');
      String str2;
      String str3;
      if (j < 0)
      {
        str2 = str1;
        str3 = "";
        if (str3.length() >= 2036)
          break label320;
      }
      StringBuffer localStringBuffer;
      label318: label320: BasicHttpEntityEnclosingRequest localBasicHttpEntityEnclosingRequest;
      for (Object localObject = new BasicHttpEntityEnclosingRequest("GET", str1); ; localObject = localBasicHttpEntityEnclosingRequest)
      {
        String str4 = NetworkDispatcher.access$200(NetworkDispatcher.DispatcherThread.access$700(this.this$0)).getHostName();
        if (NetworkDispatcher.access$200(NetworkDispatcher.DispatcherThread.access$700(this.this$0)).getPort() != 80)
          str4 = str4 + ":" + NetworkDispatcher.access$200(NetworkDispatcher.DispatcherThread.access$700(this.this$0)).getPort();
        ((HttpEntityEnclosingRequest)localObject).addHeader("Host", str4);
        ((HttpEntityEnclosingRequest)localObject).addHeader("User-Agent", NetworkDispatcher.DispatcherThread.access$1100(this.this$0));
        if (!GoogleAnalyticsTracker.getInstance().getDebug())
          break label431;
        localStringBuffer = new StringBuffer();
        Header[] arrayOfHeader = ((HttpEntityEnclosingRequest)localObject).getAllHeaders();
        int k = arrayOfHeader.length;
        for (int m = 0; m < k; m++)
          localStringBuffer.append(arrayOfHeader[m].toString()).append("\n");
        if (j > 0);
        for (str2 = str1.substring(0, j); ; str2 = "")
        {
          if (j >= -2 + str1.length())
            break label318;
          str3 = str1.substring(j + 1);
          break;
        }
        break;
        localBasicHttpEntityEnclosingRequest = new BasicHttpEntityEnclosingRequest("POST", "/p" + str2);
        localBasicHttpEntityEnclosingRequest.addHeader("Content-Length", Integer.toString(str3.length()));
        localBasicHttpEntityEnclosingRequest.addHeader("Content-Type", "text/plain");
        localBasicHttpEntityEnclosingRequest.setEntity(new StringEntity(str3));
      }
      localStringBuffer.append(((HttpEntityEnclosingRequest)localObject).getRequestLine().toString()).append("\n");
      Log.i("GoogleAnalyticsTracker", localStringBuffer.toString());
      label431: if (str3.length() > 8192)
      {
        Log.w("GoogleAnalyticsTracker", "Hit too long (> 8192 bytes)--not sent");
        NetworkDispatcher.DispatcherThread.access$1200(this.this$0).requestSent();
      }
      while (true)
      {
        i++;
        break;
        if (paramBoolean)
          NetworkDispatcher.DispatcherThread.access$1200(this.this$0).requestSent();
        else
          NetworkDispatcher.DispatcherThread.access$800(this.this$0).addRequest((HttpEntityEnclosingRequest)localObject);
      }
    }
    if (!paramBoolean)
      NetworkDispatcher.DispatcherThread.access$800(this.this$0).sendRequests();
  }

  public Hit removeNextHit()
  {
    return (Hit)this.hits.poll();
  }

  public void run()
  {
    NetworkDispatcher.DispatcherThread.access$402(this.this$0, this);
    int i = 0;
    while (true)
    {
      long l;
      if ((i < 5) && (this.hits.size() > 0))
        l = 0L;
      try
      {
        if ((NetworkDispatcher.DispatcherThread.access$500(this.this$0) == 500) || (NetworkDispatcher.DispatcherThread.access$500(this.this$0) == 503))
        {
          l = ()(Math.random() * NetworkDispatcher.DispatcherThread.access$600(this.this$0));
          if (NetworkDispatcher.DispatcherThread.access$600(this.this$0) < 256L)
            NetworkDispatcher.DispatcherThread.access$630(this.this$0, 2L);
        }
        while (true)
        {
          Thread.sleep(l * 1000L);
          dispatchSomePendingHits(NetworkDispatcher.DispatcherThread.access$700(this.this$0).isDryRun());
          i++;
          break;
          NetworkDispatcher.DispatcherThread.access$602(this.this$0, 2L);
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        Log.w("GoogleAnalyticsTracker", "Couldn't sleep.", localInterruptedException);
        NetworkDispatcher.DispatcherThread.access$800(this.this$0).finishedCurrentRequests();
        NetworkDispatcher.DispatcherThread.access$900(this.this$0).dispatchFinished();
        NetworkDispatcher.DispatcherThread.access$402(this.this$0, null);
        return;
      }
      catch (IOException localIOException)
      {
        while (true)
          Log.w("GoogleAnalyticsTracker", "Problem with socket or streams.", localIOException);
      }
      catch (HttpException localHttpException)
      {
        while (true)
          Log.w("GoogleAnalyticsTracker", "Problem with http streams.", localHttpException);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.android.apps.analytics.NetworkDispatcher.DispatcherThread.AsyncDispatchTask
 * JD-Core Version:    0.6.2
 */