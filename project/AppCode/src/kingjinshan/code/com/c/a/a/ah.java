package com.c.a.a;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnRouteParams;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.util.EntityUtils;

public final class ah
{
  private static StringBuffer k = null;
  private Context a;
  private af b;
  private ConnectivityManager c;
  private int d = 0;
  private int e = 0;
  private String f = "";
  private int g = 0;
  private int h;
  private boolean i = false;
  private boolean j = false;
  private String l = "10.0.0.172";

  public ah(Context paramContext)
  {
    this.a = paramContext;
    this.d = 3;
    this.e = 0;
    this.b = af.a(paramContext);
    this.c = this.b.a;
  }

  private String b()
  {
    try
    {
      if (k == null)
        localObject = "";
    }
    catch (Exception localException1)
    {
      try
      {
        PackageInfo localPackageInfo = this.a.getPackageManager().getPackageInfo(this.a.getPackageName(), 0);
        Object localObject = URLEncoder.encode(localPackageInfo.applicationInfo.loadLabel(this.a.getPackageManager()).toString(), "utf-8");
        String str3 = (String)localObject + "_" + localPackageInfo.versionName;
        localObject = str3;
        label89: StringBuffer localStringBuffer = new StringBuffer();
        k = localStringBuffer;
        localStringBuffer.append("Android_CellLocation_").append(n.a).append("_").append(w.b(this.a.getPackageName()) + "@" + (String)localObject).append(";").append(s.a).append(";").append(s.b).append(";").append(Build.BRAND).append(";").append(Build.MODEL).append(";").append(Build.VERSION.SDK);
        String str2 = k.toString();
        for (String str1 = str2; ; str1 = "")
        {
          return str1;
          localException1 = localException1;
        }
      }
      catch (Exception localException2)
      {
        break label89;
      }
    }
  }

  private byte[] b(String paramString)
  {
    DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
    Object localObject1;
    if (this.e == 0)
      localObject1 = new HttpPost(paramString);
    while (true)
    {
      if (this.i)
      {
        HttpParams localHttpParams = localDefaultHttpClient.getParams();
        ConnRouteParams.setDefaultProxy(localHttpParams, new HttpHost(this.l, 80));
        ((HttpRequestBase)localObject1).setParams(localHttpParams);
      }
      BasicHttpParams localBasicHttpParams = new BasicHttpParams();
      HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 20000);
      HttpConnectionParams.setSoTimeout(localBasicHttpParams, 20000);
      ((HttpRequestBase)localObject1).setParams(localBasicHttpParams);
      String str = s.a(this.a);
      if ((str != null) && (str.trim().length() > 0))
        ((HttpRequestBase)localObject1).addHeader("maptag", str);
      ((HttpRequestBase)localObject1).addHeader("IMEI", s.a);
      ((HttpRequestBase)localObject1).setHeader("User-Agent", b());
      ((HttpRequestBase)localObject1).addHeader("s_n", b());
      try
      {
        HttpResponse localHttpResponse = localDefaultHttpClient.execute((HttpUriRequest)localObject1);
        this.h = localHttpResponse.getStatusLine().getStatusCode();
        byte[] arrayOfByte2;
        if (this.h == 200)
        {
          arrayOfByte2 = EntityUtils.toByteArray(localHttpResponse.getEntity());
          localDefaultHttpClient.getConnectionManager().shutdown();
        }
        for (byte[] arrayOfByte1 = arrayOfByte2; ; arrayOfByte1 = null)
        {
          return arrayOfByte1;
          localObject1 = new HttpGet(paramString);
          break;
          localDefaultHttpClient.getConnectionManager().shutdown();
        }
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        while (true)
        {
          this.h = 413;
          ((HttpRequestBase)localObject1).abort();
          localDefaultHttpClient.getConnectionManager().shutdown();
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        while (true)
        {
          this.h = 400;
          ((HttpRequestBase)localObject1).abort();
          localDefaultHttpClient.getConnectionManager().shutdown();
        }
      }
      catch (IOException localIOException)
      {
        while (true)
        {
          this.h = 502;
          ((HttpRequestBase)localObject1).abort();
          localDefaultHttpClient.getConnectionManager().shutdown();
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          this.h = 503;
          ((HttpRequestBase)localObject1).abort();
          localDefaultHttpClient.getConnectionManager().shutdown();
        }
      }
      finally
      {
        localDefaultHttpClient.getConnectionManager().shutdown();
      }
    }
  }

  private String c(String paramString)
  {
    DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
    Object localObject1;
    if (this.e == 0)
      localObject1 = new HttpPost(paramString);
    while (true)
    {
      if (this.i)
      {
        HttpParams localHttpParams = localDefaultHttpClient.getParams();
        ConnRouteParams.setDefaultProxy(localHttpParams, new HttpHost(this.l, 80));
        ((HttpRequestBase)localObject1).setParams(localHttpParams);
      }
      BasicHttpParams localBasicHttpParams = new BasicHttpParams();
      HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 20000);
      HttpConnectionParams.setSoTimeout(localBasicHttpParams, 20000);
      ((HttpRequestBase)localObject1).setParams(localBasicHttpParams);
      String str1 = s.a(this.a);
      if ((str1 != null) && (str1.trim().length() > 0))
        ((HttpRequestBase)localObject1).addHeader("maptag", str1);
      ((HttpRequestBase)localObject1).addHeader("IMEI", s.a);
      ((HttpRequestBase)localObject1).setHeader("User-Agent", b());
      ((HttpRequestBase)localObject1).addHeader("s_n", b());
      try
      {
        HttpResponse localHttpResponse = localDefaultHttpClient.execute((HttpUriRequest)localObject1);
        this.h = localHttpResponse.getStatusLine().getStatusCode();
        String str3;
        if (this.h == 200)
        {
          str3 = EntityUtils.toString(localHttpResponse.getEntity(), "utf-8");
          localDefaultHttpClient.getConnectionManager().shutdown();
        }
        for (String str2 = str3; ; str2 = null)
        {
          return str2;
          localObject1 = new HttpGet(paramString);
          break;
          localDefaultHttpClient.getConnectionManager().shutdown();
        }
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        while (true)
        {
          this.h = 413;
          ((HttpRequestBase)localObject1).abort();
          localDefaultHttpClient.getConnectionManager().shutdown();
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        while (true)
        {
          this.h = 400;
          ((HttpRequestBase)localObject1).abort();
          localDefaultHttpClient.getConnectionManager().shutdown();
        }
      }
      catch (IOException localIOException)
      {
        while (true)
        {
          this.h = 502;
          ((HttpRequestBase)localObject1).abort();
          localDefaultHttpClient.getConnectionManager().shutdown();
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          this.h = 503;
          ((HttpRequestBase)localObject1).abort();
          localDefaultHttpClient.getConnectionManager().shutdown();
        }
      }
      finally
      {
        localDefaultHttpClient.getConnectionManager().shutdown();
      }
    }
  }

  private InputStream d(String paramString)
  {
    DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
    Object localObject1;
    if (this.e == 0)
      localObject1 = new HttpPost(paramString);
    while (true)
    {
      if (this.i)
      {
        HttpParams localHttpParams = localDefaultHttpClient.getParams();
        ConnRouteParams.setDefaultProxy(localHttpParams, new HttpHost(this.l, 80));
        ((HttpRequestBase)localObject1).setParams(localHttpParams);
      }
      BasicHttpParams localBasicHttpParams = new BasicHttpParams();
      HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 20000);
      HttpConnectionParams.setSoTimeout(localBasicHttpParams, 20000);
      ((HttpRequestBase)localObject1).setParams(localBasicHttpParams);
      String str = s.a(this.a);
      if ((str != null) && (str.trim().length() > 0))
        ((HttpRequestBase)localObject1).addHeader("maptag", str);
      ((HttpRequestBase)localObject1).addHeader("IMEI", s.a);
      ((HttpRequestBase)localObject1).setHeader("User-Agent", b());
      ((HttpRequestBase)localObject1).addHeader("s_n", b());
      try
      {
        HttpResponse localHttpResponse = localDefaultHttpClient.execute((HttpUriRequest)localObject1);
        this.h = localHttpResponse.getStatusLine().getStatusCode();
        InputStream localInputStream2;
        if (this.h == 200)
        {
          localInputStream2 = localHttpResponse.getEntity().getContent();
          localDefaultHttpClient.getConnectionManager().shutdown();
        }
        for (InputStream localInputStream1 = localInputStream2; ; localInputStream1 = null)
        {
          return localInputStream1;
          localObject1 = new HttpGet(paramString);
          break;
          localDefaultHttpClient.getConnectionManager().shutdown();
        }
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        while (true)
        {
          this.h = 413;
          ((HttpRequestBase)localObject1).abort();
          localDefaultHttpClient.getConnectionManager().shutdown();
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        while (true)
        {
          this.h = 400;
          ((HttpRequestBase)localObject1).abort();
          localDefaultHttpClient.getConnectionManager().shutdown();
        }
      }
      catch (IOException localIOException)
      {
        while (true)
        {
          this.h = 502;
          ((HttpRequestBase)localObject1).abort();
          localDefaultHttpClient.getConnectionManager().shutdown();
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          this.h = 503;
          ((HttpRequestBase)localObject1).abort();
          localDefaultHttpClient.getConnectionManager().shutdown();
        }
      }
      finally
      {
        localDefaultHttpClient.getConnectionManager().shutdown();
      }
    }
  }

  public final Object a()
  {
    NetworkInfo localNetworkInfo = this.c.getActiveNetworkInfo();
    String str2;
    if (localNetworkInfo != null)
    {
      int n = localNetworkInfo.getType();
      if ((n != 1) && (n == 0))
      {
        String str1 = localNetworkInfo.getExtraInfo();
        if (str1 != null)
        {
          str2 = str1.toLowerCase();
          if (str2.indexOf("cmwap") == -1)
            break label106;
          this.i = true;
        }
      }
    }
    int m = this.d;
    Object localObject = null;
    switch (m)
    {
    case 2:
    default:
    case 0:
    case 1:
    case 3:
    }
    while (true)
    {
      return localObject;
      label106: if (str2.indexOf("ctwap") != -1)
      {
        this.i = true;
        this.l = "10.0.0.200";
        break;
      }
      if (str2.indexOf("3gwap") == -1)
        break;
      this.i = true;
      break;
      localObject = b(this.f);
      continue;
      localObject = d(this.f);
      continue;
      localObject = c(this.f);
    }
  }

  public final void a(String paramString)
  {
    this.f = paramString;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.c.a.a.ah
 * JD-Core Version:    0.6.2
 */