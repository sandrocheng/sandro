package com.google.a.a.a;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import java.util.Locale;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.entity.StringEntity;
import org.apache.http.message.BasicHttpEntityEnclosingRequest;

class bd
  implements m
{
  private final String a;
  private final ap b;
  private final Context c;

  bd(ap paramap, Context paramContext)
  {
    this.c = paramContext.getApplicationContext();
    this.a = a("GoogleAnalytics", "2.0", Build.VERSION.RELEASE, bj.a(Locale.getDefault()), Build.MODEL, Build.ID);
    this.b = paramap;
  }

  bd(h paramh, ap paramap, Context paramContext)
  {
    this(paramap, paramContext);
  }

  private URL a(an paraman)
  {
    boolean bool = TextUtils.isEmpty(paraman.d());
    Object localObject = null;
    if (bool);
    while (true)
    {
      return localObject;
      try
      {
        URL localURL1 = new URL(paraman.d());
        localObject = localURL1;
      }
      catch (MalformedURLException localMalformedURLException1)
      {
        try
        {
          URL localURL2 = new URL("http://www.google-analytics.com/collect");
          localObject = localURL2;
        }
        catch (MalformedURLException localMalformedURLException2)
        {
          localObject = null;
        }
      }
    }
  }

  private HttpEntityEnclosingRequest a(String paramString1, String paramString2)
  {
    Object localObject;
    if (TextUtils.isEmpty(paramString1))
    {
      aq.h("Empty hit, discarding.");
      localObject = null;
    }
    while (true)
    {
      return localObject;
      String str = paramString2 + "?" + paramString1;
      if (str.length() < 2036)
        localObject = new BasicHttpEntityEnclosingRequest("GET", str);
      while (true)
      {
        ((HttpEntityEnclosingRequest)localObject).addHeader("User-Agent", this.a);
        break;
        localObject = new BasicHttpEntityEnclosingRequest("POST", paramString2);
        try
        {
          ((HttpEntityEnclosingRequest)localObject).setEntity(new StringEntity(paramString1));
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException)
        {
          aq.h("Encoding error, discarding hit");
          localObject = null;
        }
      }
    }
  }

  private void a(boolean paramBoolean, HttpEntityEnclosingRequest paramHttpEntityEnclosingRequest)
  {
    StringBuffer localStringBuffer;
    if (paramBoolean)
    {
      localStringBuffer = new StringBuffer();
      Header[] arrayOfHeader = paramHttpEntityEnclosingRequest.getAllHeaders();
      int i = arrayOfHeader.length;
      for (int j = 0; j < i; j++)
        localStringBuffer.append(arrayOfHeader[j].toString()).append("\n");
      localStringBuffer.append(paramHttpEntityEnclosingRequest.getRequestLine().toString()).append("\n");
      if (paramHttpEntityEnclosingRequest.getEntity() == null);
    }
    try
    {
      InputStream localInputStream = paramHttpEntityEnclosingRequest.getEntity().getContent();
      if (localInputStream != null)
      {
        int k = localInputStream.available();
        if (k > 0)
        {
          byte[] arrayOfByte = new byte[k];
          localInputStream.read(arrayOfByte);
          localStringBuffer.append("POST:\n");
          localStringBuffer.append(new String(arrayOfByte)).append("\n");
        }
      }
      aq.d(localStringBuffer.toString());
      return;
    }
    catch (IOException localIOException)
    {
      while (true)
        aq.h("Error Writing hit to log...");
    }
  }

  public int a(List paramList)
  {
    int i = Math.min(paramList.size(), 40);
    int j = 0;
    int k = 0;
    HttpClient localHttpClient;
    label91: HttpHost localHttpHost;
    HttpEntityEnclosingRequest localHttpEntityEnclosingRequest;
    if (j < i)
    {
      localHttpClient = this.b.a();
      an localan = (an)paramList.get(j);
      URL localURL = a(localan);
      int n;
      if (localURL == null)
        if (aq.a())
        {
          aq.h("No destination: discarding hit: " + localan.a());
          n = k + 1;
        }
      while (true)
      {
        j++;
        k = n;
        break;
        aq.h("No destination: discarding hit.");
        break label91;
        localHttpHost = new HttpHost(localURL.getHost(), localURL.getPort(), localURL.getProtocol());
        String str1 = localURL.getPath();
        if (TextUtils.isEmpty(localan.a()));
        for (String str2 = ""; ; str2 = ao.a(localan, System.currentTimeMillis()))
        {
          localHttpEntityEnclosingRequest = a(str2, str1);
          if (localHttpEntityEnclosingRequest != null)
            break label199;
          n = k + 1;
          break;
        }
        label199: localHttpEntityEnclosingRequest.addHeader("Host", localHttpHost.toHostString());
        a(aq.a(), localHttpEntityEnclosingRequest);
        if (str2.length() <= 8192)
          break label250;
        aq.h("Hit too long (> 8192 bytes)--not sent");
        n = k + 1;
      }
    }
    while (true)
    {
      try
      {
        label250: HttpResponse localHttpResponse = localHttpClient.execute(localHttpHost, localHttpEntityEnclosingRequest);
        if (localHttpResponse.getStatusLine().getStatusCode() == 200)
          break;
        aq.h("Bad response: " + localHttpResponse.getStatusLine().getStatusCode());
        m = k;
        return m;
      }
      catch (ClientProtocolException localClientProtocolException)
      {
        aq.h("ClientProtocolException sending hit; discarding hit...");
      }
      catch (IOException localIOException)
      {
        aq.h("Exception sending hit: " + localIOException.getClass().getSimpleName());
        aq.h(localIOException.getMessage());
        m = k;
        continue;
      }
      int m = k;
    }
  }

  String a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    return String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", new Object[] { paramString1, paramString2, paramString3, paramString4, paramString5, paramString6 });
  }

  public boolean a()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)this.c.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo == null) || (!localNetworkInfo.isConnected()))
      aq.g("...no network connectivity");
    for (boolean bool = false; ; bool = true)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.a.bd
 * JD-Core Version:    0.6.2
 */