package com.keniu.security.sync.a;

import com.keniu.security.sync.d.d.a.jk;
import com.keniu.security.sync.d.d.a.jl;
import com.keniu.security.sync.d.d.a.jn;
import com.keniu.security.sync.d.d.a.jq;
import com.keniu.security.sync.d.d.a.jr;
import com.keniu.security.sync.d.d.a.jt;
import com.keniu.security.sync.i;
import com.keniu.security.sync.l;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONObject;

public final class a
{
  private static int a(int paramInt)
  {
    int i;
    switch (paramInt)
    {
    default:
      i = 1;
    case -13:
    case -10:
    case 0:
    case -5:
    case -4:
    }
    while (true)
    {
      return i;
      i = paramInt;
      continue;
      i = -4;
    }
  }

  public static jn a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    jl localjl = jk.J();
    localjl.d("12004");
    localjl.a(5);
    localjl.a(paramString1);
    localjl.b(paramString2);
    localjl.c(paramString3);
    localjl.e(paramString4);
    Object localObject;
    try
    {
      HttpURLConnection localHttpURLConnection = b("http://login.cloud2.1tpan.com/3/login");
      if (localHttpURLConnection == null)
      {
        localObject = null;
      }
      else
      {
        localjl.i().a(localHttpURLConnection.getOutputStream());
        if (200 == localHttpURLConnection.getResponseCode())
        {
          localInputStream = localHttpURLConnection.getInputStream();
          jn localjn2 = jn.a(localInputStream);
          localjn1 = localjn2;
        }
      }
    }
    catch (IOException localIOException1)
    {
      try
      {
        InputStream localInputStream;
        jn localjn1;
        localInputStream.close();
        while (true)
        {
          localObject = localjn1;
          break;
          localIOException1 = localIOException1;
          localjn1 = null;
          label125: localIOException1.printStackTrace();
        }
      }
      catch (IOException localIOException2)
      {
        break label125;
      }
      localObject = null;
    }
    return localObject;
  }

  public static jt a(String paramString)
  {
    jr localjr = jq.l();
    localjr.a(paramString);
    jt localjt1 = null;
    HttpURLConnection localHttpURLConnection = b("http://login.cloud2.1tpan.com/3/logout");
    try
    {
      localjr.i().a(localHttpURLConnection.getOutputStream());
      int i = localHttpURLConnection.getResponseCode();
      localjt1 = null;
      if (200 == i)
      {
        InputStream localInputStream = localHttpURLConnection.getInputStream();
        localjt1 = jt.a(localInputStream);
        localInputStream.close();
        localjt2 = localjt1;
        return localjt2;
      }
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        localIOException.printStackTrace();
        continue;
        jt localjt2 = null;
      }
    }
  }

  // ERROR //
  private static HttpURLConnection b(String paramString)
  {
    // Byte code:
    //   0: new 107	java/net/URL
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 110	java/net/URL:<init>	(Ljava/lang/String;)V
    //   8: invokevirtual 114	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   11: checkcast 52	java/net/HttpURLConnection
    //   14: astore 8
    //   16: aload 8
    //   18: iconst_1
    //   19: invokevirtual 118	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   22: aload 8
    //   24: iconst_1
    //   25: invokevirtual 121	java/net/HttpURLConnection:setDoInput	(Z)V
    //   28: aload 8
    //   30: ldc 123
    //   32: invokevirtual 126	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   35: aload 8
    //   37: ldc 128
    //   39: ldc 130
    //   41: invokevirtual 134	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   44: aload 8
    //   46: ldc 136
    //   48: ldc 138
    //   50: invokevirtual 134	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   53: aload 8
    //   55: sipush 30000
    //   58: invokevirtual 142	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   61: aload 8
    //   63: astore 4
    //   65: aload 4
    //   67: areturn
    //   68: astore 5
    //   70: aconst_null
    //   71: astore 6
    //   73: aload 5
    //   75: astore 7
    //   77: aload 7
    //   79: invokevirtual 143	java/net/MalformedURLException:printStackTrace	()V
    //   82: aload 6
    //   84: astore 4
    //   86: goto -21 -> 65
    //   89: astore_1
    //   90: aconst_null
    //   91: astore_2
    //   92: aload_1
    //   93: astore_3
    //   94: aload_3
    //   95: invokevirtual 80	java/io/IOException:printStackTrace	()V
    //   98: aload_2
    //   99: astore 4
    //   101: goto -36 -> 65
    //   104: astore_3
    //   105: aload 8
    //   107: astore_2
    //   108: goto -14 -> 94
    //   111: astore 7
    //   113: aload 8
    //   115: astore 6
    //   117: goto -40 -> 77
    //
    // Exception table:
    //   from	to	target	type
    //   0	16	68	java/net/MalformedURLException
    //   0	16	89	java/io/IOException
    //   16	61	104	java/io/IOException
    //   16	61	111	java/net/MalformedURLException
  }

  public final boolean a(String paramString1, String paramString2)
  {
    i.a(this, ">>>>> verify #" + paramString1 + ":" + paramString2);
    boolean bool = false;
    HttpResponse localHttpResponse;
    try
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(new BasicNameValuePair("passport", paramString1));
      localArrayList.add(new BasicNameValuePair("code", paramString2));
      HttpPost localHttpPost = new HttpPost("http://i.ijinshan.com/register/mobile/verify?ajax=1&source=mweishi");
      localHttpPost.setEntity(new UrlEncodedFormEntity(localArrayList));
      localHttpResponse = new DefaultHttpClient().execute(localHttpPost);
      int i = localHttpResponse.getStatusLine().getStatusCode();
      bool = false;
      if (i == 200)
      {
        JSONObject localJSONObject = l.a(localHttpResponse);
        i.a(this, ">>>>> HTTP_OK ERRORNO = " + localJSONObject.getInt("errno"));
        int j = localJSONObject.getInt("errno");
        bool = false;
        if (j == 0)
        {
          i.a(this, ">>>>> VERIFY SUCCESS");
          bool = true;
        }
        else
        {
          i.a(this, ">>>>> VERIFY FAIL");
          bool = false;
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    i.a(this, ">>>>> RESPONSE_CODE ERROR" + localHttpResponse.getStatusLine().getStatusCode());
    return bool;
  }

  public final int b(String paramString1, String paramString2)
  {
    i.a(this, ">>>>> registe #" + paramString1);
    try
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(new BasicNameValuePair("mobile", paramString1));
      localArrayList.add(new BasicNameValuePair("password", paramString2));
      localArrayList.add(new BasicNameValuePair("repassword", paramString2));
      HttpPost localHttpPost = new HttpPost("http://i.ijinshan.com/register/mobile?ajax=1&source=mweishi");
      localHttpPost.setEntity(new UrlEncodedFormEntity(localArrayList));
      HttpResponse localHttpResponse = new DefaultHttpClient().execute(localHttpPost);
      if (localHttpResponse.getStatusLine().getStatusCode() == 200)
      {
        i = l.a(localHttpResponse).getInt("errno");
        i.a(this, ">>>>> HTTP_OK ERRORNO = " + i);
      }
      switch (i)
      {
      default:
        i.a(this, ">>>>> RESPONSE_CODE ERROR" + localHttpResponse.getStatusLine().getStatusCode());
        i = 1022;
      case -13:
      case -10:
      case 0:
      case -5:
      case -4:
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      i = 1023;
    }
    for (int i = 1; ; i = -4)
      return i;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.a.a
 * JD-Core Version:    0.6.2
 */