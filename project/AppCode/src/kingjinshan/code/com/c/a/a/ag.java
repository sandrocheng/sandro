package com.c.a.a;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.SystemClock;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import java.util.Vector;
import org.apache.http.Header;
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

public final class ag extends x
{
  private static StringBuffer l = null;
  private Context a;
  private af b;
  private ConnectivityManager c;
  private int d = 0;
  private int e = 0;
  private String f = "";
  private int g;
  private int h = 0;
  private int i;
  private boolean j = false;
  private boolean k = false;
  private String m = "10.0.0.172";
  private k n;
  private l o;

  public ag(Context paramContext)
  {
    this.a = paramContext;
    this.d = 3;
    this.e = 0;
    this.b = af.a(paramContext);
    this.c = this.b.a;
  }

  private byte[] b(String paramString)
  {
    DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
    Object localObject1;
    if (this.e == 0)
    {
      localObject1 = new HttpPost(paramString);
      if (this.j)
      {
        HttpParams localHttpParams = localDefaultHttpClient.getParams();
        ConnRouteParams.setDefaultProxy(localHttpParams, new HttpHost(this.m, 80));
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
      ((HttpRequestBase)localObject1).setHeader("User-Agent", g());
      ((HttpRequestBase)localObject1).addHeader("s_n", g());
    }
    while (true)
    {
      try
      {
        HttpResponse localHttpResponse = localDefaultHttpClient.execute((HttpUriRequest)localObject1);
        Header[] arrayOfHeader = localHttpResponse.getHeaders("Server");
        if (arrayOfHeader != null)
        {
          int i2 = arrayOfHeader.length;
          int i3 = 0;
          if (i3 < i2)
          {
            String str2 = arrayOfHeader[i3].getValue();
            if ((str2 != null) && ("mapbarserver".equals(str2.toLowerCase())))
            {
              i1 = 1;
              if (i1 == 0)
                continue;
              this.i = localHttpResponse.getStatusLine().getStatusCode();
              if (this.o != null)
                this.o.a(this, this.i);
              if (this.i != 200)
                continue;
              byte[] arrayOfByte2 = EntityUtils.toByteArray(localHttpResponse.getEntity());
              localDefaultHttpClient.getConnectionManager().shutdown();
              arrayOfByte1 = arrayOfByte2;
              return arrayOfByte1;
              localObject1 = new HttpGet(paramString);
              break;
            }
            i3++;
            continue;
            if (this.o != null)
              this.o.a(this, 401);
            localDefaultHttpClient.getConnectionManager().shutdown();
            byte[] arrayOfByte1 = null;
            continue;
          }
        }
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        if (this.o != null)
          this.o.a(this, 413);
        ((HttpRequestBase)localObject1).abort();
        localDefaultHttpClient.getConnectionManager().shutdown();
        continue;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        if (this.o != null)
          this.o.a(this, 400);
        ((HttpRequestBase)localObject1).abort();
        localDefaultHttpClient.getConnectionManager().shutdown();
        continue;
      }
      catch (IOException localIOException)
      {
        if (this.o != null)
          this.o.a(this, 500);
        ((HttpRequestBase)localObject1).abort();
        localDefaultHttpClient.getConnectionManager().shutdown();
        continue;
      }
      catch (Exception localException)
      {
        if (this.o != null)
          this.o.a(this, 503);
        ((HttpRequestBase)localObject1).abort();
        localDefaultHttpClient.getConnectionManager().shutdown();
        continue;
      }
      finally
      {
        localDefaultHttpClient.getConnectionManager().shutdown();
      }
      int i1 = 0;
    }
  }

  private String c(String paramString)
  {
    DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
    Object localObject1;
    if (this.e == 0)
    {
      localObject1 = new HttpPost(paramString);
      if (this.j)
      {
        HttpParams localHttpParams = localDefaultHttpClient.getParams();
        ConnRouteParams.setDefaultProxy(localHttpParams, new HttpHost(this.m, 80));
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
      ((HttpRequestBase)localObject1).setHeader("User-Agent", g());
      ((HttpRequestBase)localObject1).addHeader("s_n", g());
    }
    while (true)
    {
      try
      {
        HttpResponse localHttpResponse = localDefaultHttpClient.execute((HttpUriRequest)localObject1);
        Header[] arrayOfHeader = localHttpResponse.getHeaders("Server");
        if (arrayOfHeader != null)
        {
          int i2 = arrayOfHeader.length;
          int i3 = 0;
          if (i3 < i2)
          {
            String str4 = arrayOfHeader[i3].getValue();
            if ((str4 != null) && ("mapbarserver".equals(str4.toLowerCase())))
            {
              i1 = 1;
              if (i1 == 0)
                continue;
              this.i = localHttpResponse.getStatusLine().getStatusCode();
              if (this.o != null)
                this.o.a(this, this.i);
              if (this.i != 200)
                continue;
              String str3 = EntityUtils.toString(localHttpResponse.getEntity(), "utf-8");
              localDefaultHttpClient.getConnectionManager().shutdown();
              str2 = str3;
              return str2;
              localObject1 = new HttpGet(paramString);
              break;
            }
            i3++;
            continue;
            if (this.o != null)
              this.o.a(this, 401);
            localDefaultHttpClient.getConnectionManager().shutdown();
            String str2 = null;
            continue;
          }
        }
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        if (this.o != null)
          this.o.a(this, 413);
        ((HttpRequestBase)localObject1).abort();
        localDefaultHttpClient.getConnectionManager().shutdown();
        continue;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        if (this.o != null)
          this.o.a(this, 400);
        ((HttpRequestBase)localObject1).abort();
        localDefaultHttpClient.getConnectionManager().shutdown();
        continue;
      }
      catch (IOException localIOException)
      {
        if (this.o != null)
          this.o.a(this, 500);
        ((HttpRequestBase)localObject1).abort();
        localDefaultHttpClient.getConnectionManager().shutdown();
        continue;
      }
      catch (Exception localException)
      {
        if (this.o != null)
          this.o.a(this, 503);
        ((HttpRequestBase)localObject1).abort();
        localDefaultHttpClient.getConnectionManager().shutdown();
        continue;
      }
      finally
      {
        localDefaultHttpClient.getConnectionManager().shutdown();
      }
      int i1 = 0;
    }
  }

  private InputStream d(String paramString)
  {
    DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
    Object localObject1;
    if (this.e == 0)
    {
      localObject1 = new HttpPost(paramString);
      if (this.j)
      {
        HttpParams localHttpParams = localDefaultHttpClient.getParams();
        ConnRouteParams.setDefaultProxy(localHttpParams, new HttpHost(this.m, 80));
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
      ((HttpRequestBase)localObject1).setHeader("User-Agent", g());
      ((HttpRequestBase)localObject1).addHeader("s_n", g());
    }
    while (true)
    {
      try
      {
        HttpResponse localHttpResponse = localDefaultHttpClient.execute((HttpUriRequest)localObject1);
        Header[] arrayOfHeader = localHttpResponse.getHeaders("Server");
        if (arrayOfHeader != null)
        {
          int i2 = arrayOfHeader.length;
          int i3 = 0;
          if (i3 < i2)
          {
            String str2 = arrayOfHeader[i3].getValue();
            if ((str2 != null) && ("mapbarserver".equals(str2.toLowerCase())))
            {
              i1 = 1;
              if (i1 == 0)
                continue;
              this.i = localHttpResponse.getStatusLine().getStatusCode();
              if (this.o != null)
                this.o.a(this, this.i);
              if (this.i != 200)
                continue;
              InputStream localInputStream2 = localHttpResponse.getEntity().getContent();
              localDefaultHttpClient.getConnectionManager().shutdown();
              localInputStream1 = localInputStream2;
              return localInputStream1;
              localObject1 = new HttpGet(paramString);
              break;
            }
            i3++;
            continue;
            if (this.o != null)
              this.o.a(this, 401);
            localDefaultHttpClient.getConnectionManager().shutdown();
            InputStream localInputStream1 = null;
            continue;
          }
        }
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        if (this.o != null)
          this.o.a(this, 413);
        ((HttpRequestBase)localObject1).abort();
        localDefaultHttpClient.getConnectionManager().shutdown();
        continue;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        if (this.o != null)
          this.o.a(this, 400);
        ((HttpRequestBase)localObject1).abort();
        localDefaultHttpClient.getConnectionManager().shutdown();
        continue;
      }
      catch (IOException localIOException)
      {
        if (this.o != null)
          this.o.a(this, 500);
        ((HttpRequestBase)localObject1).abort();
        localDefaultHttpClient.getConnectionManager().shutdown();
        continue;
      }
      catch (Exception localException)
      {
        if (this.o != null)
          this.o.a(this, 503);
        ((HttpRequestBase)localObject1).abort();
        localDefaultHttpClient.getConnectionManager().shutdown();
        continue;
      }
      finally
      {
        localDefaultHttpClient.getConnectionManager().shutdown();
      }
      int i1 = 0;
    }
  }

  private String g()
  {
    try
    {
      if (l == null)
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
        label90: StringBuffer localStringBuffer = new StringBuffer();
        l = localStringBuffer;
        localStringBuffer.append("Android_CellLocation_").append(n.a).append("_").append(w.b(this.a.getPackageName()) + "@" + (String)localObject).append(";").append(s.a).append(";").append(s.b).append(";").append(Build.BRAND).append(";").append(Build.MODEL).append(";").append(Build.VERSION.SDK);
        String str2 = l.toString();
        for (String str1 = str2; ; str1 = "")
        {
          return str1;
          localException1 = localException1;
        }
      }
      catch (Exception localException2)
      {
        break label90;
      }
    }
  }

  public final Object a()
  {
    NetworkInfo localNetworkInfo = this.c.getActiveNetworkInfo();
    String str2;
    if (localNetworkInfo != null)
    {
      int i3 = localNetworkInfo.getType();
      if ((i3 != 1) && (i3 == 0))
      {
        String str1 = localNetworkInfo.getExtraInfo();
        if (str1 != null)
        {
          str2 = str1.toLowerCase();
          if (str2.indexOf("cmwap") == -1)
            break label336;
          this.j = true;
        }
      }
    }
    while (true)
    {
      p.a();
      Object localObject;
      label110: k localk;
      switch (this.d)
      {
      case 2:
      default:
        localObject = null;
        new StringBuilder().append("mStatusCode=").append(this.i).append("; ").append(this.f).toString();
        p.a();
        if (this.n != null)
        {
          localk = this.n;
          int i1 = this.g;
          if (i1 >= d.i(localk.b))
          {
            d.b(localk.b, i1);
            d locald = localk.b;
            d.a(locald, d.c((String)localObject));
            if (d.a(localk.b) != null)
            {
              d.l(localk.b).sendEmptyMessage(2);
              d.a(localk.b, SystemClock.elapsedRealtime());
              d.l(localk.b).sendEmptyMessage(3);
            }
          }
        }
        break;
      case 0:
      case 1:
      case 3:
      }
      try
      {
        int i2 = d.m(localk.b).size();
        if ((i2 > 0) && (localk.a.equals(((h)d.m(localk.b).get(i2 - 1)).b)))
          d.m(localk.b).remove(i2 - 1);
        label334: return null;
        label336: if (str2.indexOf("ctwap") != -1)
        {
          this.j = true;
          this.m = "10.0.0.200";
          continue;
        }
        if (str2.indexOf("3gwap") == -1)
          continue;
        this.j = true;
        continue;
        localObject = b(this.f);
        break label110;
        localObject = d(this.f);
        break label110;
        localObject = c(this.f);
      }
      catch (Exception localException)
      {
        break label334;
      }
    }
  }

  public final void a(int paramInt)
  {
    this.g = paramInt;
  }

  public final void a(k paramk)
  {
    this.n = paramk;
  }

  public final void a(l paraml)
  {
    this.o = paraml;
  }

  public final void a(String paramString)
  {
    this.f = paramString;
  }

  public final int f()
  {
    return this.g;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.c.a.a.ag
 * JD-Core Version:    0.6.2
 */