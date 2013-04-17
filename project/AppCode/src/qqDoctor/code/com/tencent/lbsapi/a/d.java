package com.tencent.lbsapi.a;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.net.Uri;
import java.net.InetSocketAddress;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicHeader;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.util.EntityUtils;

public class d
{
  public static final String a = "POST";
  public static final String b = "GET";
  protected static String c = "ctnet";
  protected static String d = "ctwap";
  protected static String e = "cmnet";
  protected static String f = "cmwap";
  protected static String g = "uninet";
  protected static String h = "uniwap";
  private static final int i = 10000;
  private static final int j = 10000;
  private static Uri k = Uri.parse("content://telephony/carriers/preferapn");

  protected static InetSocketAddress a(Context paramContext)
  {
    Object localObject;
    int i2;
    if (paramContext == null)
    {
      String str3 = Proxy.getDefaultHost();
      int i3 = Proxy.getDefaultPort();
      localObject = str3;
      i2 = i3;
    }
    while (true)
    {
      if ((localObject != null) && (((String)localObject).trim().length() > 0));
      String str1;
      int n;
      for (InetSocketAddress localInetSocketAddress2 = new InetSocketAddress((String)localObject, i2); ; localInetSocketAddress2 = null)
      {
        InetSocketAddress localInetSocketAddress1 = localInetSocketAddress2;
        int m;
        do
        {
          return localInetSocketAddress1;
          m = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo().getType();
          localInetSocketAddress1 = null;
        }
        while (m != 0);
        str1 = Proxy.getHost(paramContext);
        n = Proxy.getPort(paramContext);
        if ((str1 != null) && (str1.trim().length() != 0) && (n > 0))
          break label173;
        str1 = Proxy.getDefaultHost();
        n = Proxy.getDefaultPort();
        if ((str1 != null) && (str1.trim().length() != 0) && (n > 0))
          break label173;
        f localf = b(paramContext);
        String str2 = localf.a;
        int i1 = localf.b;
        localObject = str2;
        i2 = i1;
        break;
      }
      label173: localObject = str1;
      i2 = n;
    }
  }

  public static byte[] a(String paramString1, byte[] paramArrayOfByte, String paramString2, BasicHeader[] paramArrayOfBasicHeader, Context paramContext)
  {
    HttpEntity localHttpEntity = b(paramString1, paramArrayOfByte, paramString2, paramArrayOfBasicHeader, paramContext);
    byte[] arrayOfByte;
    if (localHttpEntity != null)
    {
      arrayOfByte = EntityUtils.toByteArray(localHttpEntity);
      localHttpEntity.consumeContent();
    }
    while (true)
    {
      return arrayOfByte;
      arrayOfByte = null;
    }
  }

  private static f b(Context paramContext)
  {
    f localf1 = new f();
    try
    {
      String str1;
      String str2;
      String str3;
      try
      {
        Cursor localCursor = paramContext.getContentResolver().query(k, null, null, null, null);
        localCursor.moveToFirst();
        str1 = localCursor.getString(localCursor.getColumnIndex("proxy"));
        if (str1 != null)
          str1.toLowerCase();
        str2 = localCursor.getString(localCursor.getColumnIndex("port"));
        str3 = localCursor.getString(localCursor.getColumnIndex("apn"));
        if (str3 != null)
          str3.toLowerCase();
        localCursor.close();
        if ((str3 != null) && (str3.startsWith(d)))
          if ((str1 != null) && (str1.length() > 0) && (Integer.valueOf(str2).intValue() < 0))
          {
            localf1.a = str1;
            localf1.b = Integer.valueOf(str2).intValue();
          }
          else
          {
            localf1.a = "10.0.0.200";
            localf1.b = 80;
          }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
      if ((str3 != null) && (str3.startsWith(f)))
      {
        if ((str1 != null) && (str1.length() > 0) && (Integer.valueOf(str2).intValue() < 0))
        {
          localf1.a = str1;
          localf1.b = Integer.valueOf(str2).intValue();
        }
        else
        {
          localf1.a = "10.0.0.172";
          localf1.b = 80;
        }
      }
      else if ((str3 != null) && (str3.startsWith(h)))
        if ((str1 != null) && (str1.length() > 0) && (Integer.valueOf(str2).intValue() < 0))
        {
          localf1.a = str1;
          localf1.b = Integer.valueOf(str2).intValue();
        }
        else
        {
          localf1.a = "10.0.0.172";
          localf1.b = 80;
        }
      localf2 = localf1;
      return localf2;
    }
    finally
    {
      while (true)
        f localf2 = localf1;
    }
  }

  protected static HttpEntity b(String paramString1, byte[] paramArrayOfByte, String paramString2, BasicHeader[] paramArrayOfBasicHeader, Context paramContext)
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 10000);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, 10000);
    ByteArrayEntity localByteArrayEntity = new ByteArrayEntity(paramArrayOfByte);
    HttpPost localHttpPost;
    if (paramString2.equals("POST"))
    {
      localHttpPost = new HttpPost(paramString1);
      ((HttpPost)localHttpPost).setEntity(localByteArrayEntity);
    }
    for (Object localObject1 = localHttpPost; paramArrayOfBasicHeader != null; localObject1 = new HttpGet(paramString1 + "?" + new String(paramArrayOfByte)))
    {
      int i1 = paramArrayOfBasicHeader.length;
      for (int i2 = 0; i2 < i1; i2++)
        ((HttpRequestBase)localObject1).addHeader(paramArrayOfBasicHeader[i2]);
    }
    DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient(localBasicHttpParams);
    String str;
    int n;
    if (a(paramContext) != null)
    {
      Proxy.getDefaultHost();
      Proxy.getDefaultPort();
      if (paramContext != null)
        break label305;
      str = Proxy.getDefaultHost();
      n = Proxy.getDefaultPort();
    }
    while (true)
    {
      if ((str == null) || (str.trim().length() == 0) || (n <= 0))
      {
        f localf = b(paramContext);
        str = localf.a;
        n = localf.b;
      }
      HttpHost localHttpHost = new HttpHost(str, n);
      localDefaultHttpClient.getParams().setParameter("http.route.default-proxy", localHttpHost);
      try
      {
        localHttpResponse = localDefaultHttpClient.execute((HttpUriRequest)localObject1);
        int m = localHttpResponse.getStatusLine().getStatusCode();
        if (m != 200)
          throw new e(m);
      }
      catch (Exception localException)
      {
        HttpResponse localHttpResponse;
        localException = localException;
        label305: HttpEntity localHttpEntity;
        for (Object localObject3 = null; ; localObject3 = localHttpEntity)
        {
          return localObject3;
          str = Proxy.getHost(paramContext);
          n = Proxy.getPort(paramContext);
          if ((str != null) && (str.trim().length() != 0) && (n > 0))
            break;
          str = Proxy.getDefaultHost();
          n = Proxy.getDefaultPort();
          break;
          localHttpEntity = localHttpResponse.getEntity();
        }
      }
      finally
      {
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.lbsapi.a.d
 * JD-Core Version:    0.6.2
 */