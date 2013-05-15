package android.b.a;

import android.content.Context;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.net.URI;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.impl.client.RequestWrapper;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.HttpContext;

public final class a
  implements HttpClient
{
  public static long a = 256L;
  private static final HttpRequestInterceptor b = new b();
  private final HttpClient c;
  private RuntimeException d = new IllegalStateException("AndroidHttpClient created and never closed");
  private volatile e e;

  private a(ClientConnectionManager paramClientConnectionManager, HttpParams paramHttpParams)
  {
    this.c = new c(this, paramClientConnectionManager, paramHttpParams);
  }

  public static a a(String paramString)
  {
    return a(paramString, null);
  }

  public static a a(String paramString, Context paramContext)
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpConnectionParams.setStaleCheckingEnabled(localBasicHttpParams, false);
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 20000);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, 20000);
    HttpConnectionParams.setSocketBufferSize(localBasicHttpParams, 8192);
    HttpClientParams.setRedirecting(localBasicHttpParams, false);
    HttpProtocolParams.setUserAgent(localBasicHttpParams, paramString);
    SchemeRegistry localSchemeRegistry = new SchemeRegistry();
    localSchemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
    return new a(new ThreadSafeClientConnManager(localBasicHttpParams, localSchemeRegistry), localBasicHttpParams);
  }

  private static String b(HttpUriRequest paramHttpUriRequest, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("curl ");
    Header[] arrayOfHeader = paramHttpUriRequest.getAllHeaders();
    int i = arrayOfHeader.length;
    int j = 0;
    if (j < i)
    {
      Header localHeader = arrayOfHeader[j];
      if ((!paramBoolean) && ((localHeader.getName().equals("Authorization")) || (localHeader.getName().equals("Cookie"))));
      while (true)
      {
        j++;
        break;
        localStringBuilder.append("--header \"");
        localStringBuilder.append(localHeader.toString().trim());
        localStringBuilder.append("\" ");
      }
    }
    URI localURI1 = paramHttpUriRequest.getURI();
    HttpRequest localHttpRequest;
    if ((paramHttpUriRequest instanceof RequestWrapper))
    {
      localHttpRequest = ((RequestWrapper)paramHttpUriRequest).getOriginal();
      if (!(localHttpRequest instanceof HttpUriRequest));
    }
    for (URI localURI2 = ((HttpUriRequest)localHttpRequest).getURI(); ; localURI2 = localURI1)
    {
      localStringBuilder.append("\"");
      localStringBuilder.append(localURI2);
      localStringBuilder.append("\"");
      if ((paramHttpUriRequest instanceof HttpEntityEnclosingRequest))
      {
        HttpEntity localHttpEntity = ((HttpEntityEnclosingRequest)paramHttpUriRequest).getEntity();
        if ((localHttpEntity != null) && (localHttpEntity.isRepeatable()))
        {
          if (localHttpEntity.getContentLength() >= 1024L)
            break label274;
          ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
          localHttpEntity.writeTo(localByteArrayOutputStream);
          String str = localByteArrayOutputStream.toString();
          localStringBuilder.append(" --data-ascii \"").append(str).append("\"");
        }
      }
      while (true)
      {
        return localStringBuilder.toString();
        label274: localStringBuilder.append(" [TOO MUCH DATA TO INCLUDE]");
      }
    }
  }

  public void a()
  {
    if (this.d != null)
    {
      getConnectionManager().shutdown();
      this.d = null;
    }
  }

  public void b()
  {
    this.e = null;
  }

  public Object execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler paramResponseHandler)
  {
    return this.c.execute(paramHttpHost, paramHttpRequest, paramResponseHandler);
  }

  public Object execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler paramResponseHandler, HttpContext paramHttpContext)
  {
    return this.c.execute(paramHttpHost, paramHttpRequest, paramResponseHandler, paramHttpContext);
  }

  public Object execute(HttpUriRequest paramHttpUriRequest, ResponseHandler paramResponseHandler)
  {
    return this.c.execute(paramHttpUriRequest, paramResponseHandler);
  }

  public Object execute(HttpUriRequest paramHttpUriRequest, ResponseHandler paramResponseHandler, HttpContext paramHttpContext)
  {
    return this.c.execute(paramHttpUriRequest, paramResponseHandler, paramHttpContext);
  }

  public HttpResponse execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest)
  {
    return this.c.execute(paramHttpHost, paramHttpRequest);
  }

  public HttpResponse execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    return this.c.execute(paramHttpHost, paramHttpRequest, paramHttpContext);
  }

  public HttpResponse execute(HttpUriRequest paramHttpUriRequest)
  {
    return this.c.execute(paramHttpUriRequest);
  }

  public HttpResponse execute(HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext)
  {
    return this.c.execute(paramHttpUriRequest, paramHttpContext);
  }

  protected void finalize()
  {
    super.finalize();
    if (this.d != null)
    {
      Log.e("AndroidHttpClient", "Leak found", this.d);
      this.d = null;
    }
  }

  public ClientConnectionManager getConnectionManager()
  {
    return this.c.getConnectionManager();
  }

  public HttpParams getParams()
  {
    return this.c.getParams();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.b.a.a
 * JD-Core Version:    0.6.2
 */