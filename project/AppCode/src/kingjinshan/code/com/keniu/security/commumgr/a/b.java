package com.keniu.security.commumgr.a;

import android.content.Context;
import java.io.BufferedInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.ByteArrayBuffer;
import org.apache.http.util.EntityUtils;

public final class b extends d
{
  private static HashSet a = new HashSet();

  public static void a(Context paramContext, t paramt)
  {
    try
    {
      c(paramContext, paramt);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  private static String b(Context paramContext, t paramt)
  {
    HttpPost localHttpPost = new HttpPost(e.C);
    ArrayList localArrayList = new ArrayList();
    for (String str : paramt.a(paramContext).split("\\|"))
      if (str.split("=").length >= 2)
        localArrayList.add(new BasicNameValuePair(str.split("=", 2)[0], str.split("=", 2)[1]));
    try
    {
      localHttpPost.setEntity(new UrlEncodedFormEntity(localArrayList, "UTF-8"));
      HttpResponse localHttpResponse = new DefaultHttpClient().execute(localHttpPost);
      if (localHttpResponse.getStatusLine().getStatusCode() == 200)
        return EntityUtils.toString(localHttpResponse.getEntity()).trim();
      q localq4 = q.b;
      String[] arrayOfString5 = new String[1];
      arrayOfString5[0] = ("Error Response: " + localHttpResponse.getStatusLine().toString());
      throw new p(localq4, arrayOfString5);
    }
    catch (ClientProtocolException localClientProtocolException)
    {
      q localq3 = q.b;
      String[] arrayOfString4 = new String[1];
      arrayOfString4[0] = ("Error Response: " + localClientProtocolException.getMessage().toString());
      throw new p(localq3, arrayOfString4);
    }
    catch (IOException localIOException)
    {
      q localq2 = q.b;
      String[] arrayOfString3 = new String[1];
      arrayOfString3[0] = ("Error Response: " + localIOException.getMessage().toString());
      throw new p(localq2, arrayOfString3);
    }
    catch (Exception localException)
    {
      q localq1 = q.b;
      String[] arrayOfString2 = new String[1];
      arrayOfString2[0] = ("Error Response: " + localException.getMessage().toString());
      throw new p(localq1, arrayOfString2);
    }
  }

  private static String c(Context paramContext, t paramt)
  {
    String str = "param" + "=" + paramt.a(paramContext);
    HttpURLConnection localHttpURLConnection = (HttpURLConnection)new URL(e.C + "?" + str).openConnection();
    localHttpURLConnection.setUseCaches(false);
    localHttpURLConnection.setConnectTimeout(5000);
    localHttpURLConnection.setReadTimeout(5000);
    int i = localHttpURLConnection.getResponseCode();
    if (i != 200)
    {
      q localq = q.b;
      String[] arrayOfString = new String[1];
      arrayOfString[0] = ("" + i);
      throw new p(localq, arrayOfString);
    }
    BufferedInputStream localBufferedInputStream = new BufferedInputStream(localHttpURLConnection.getInputStream());
    ByteArrayBuffer localByteArrayBuffer = new ByteArrayBuffer(50);
    while (true)
    {
      int j = localBufferedInputStream.read();
      if (j == -1)
        break;
      localByteArrayBuffer.append((byte)j);
    }
    return new String(localByteArrayBuffer.toByteArray()).trim();
  }

  public final void a()
  {
    Iterator localIterator = e.A.iterator();
    Object localObject;
    while (true)
    {
      if (!localIterator.hasNext())
        break label204;
      t localt = (t)localIterator.next();
      localObject = "";
      try
      {
        if (!((String)localObject).equals("true"))
        {
          String str = c(e.z, localt);
          localObject = str;
        }
        if (!((String)localObject).equals("true"))
          if (((String)localObject).length() > 5)
          {
            q localq2 = q.b;
            String[] arrayOfString3 = new String[2];
            arrayOfString3[0] = "retfile";
            arrayOfString3[1] = ((String)localObject).substring(0, 5);
            throw new p(localq2, arrayOfString3);
          }
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        while (true)
          localFileNotFoundException.printStackTrace();
      }
      catch (p localp)
      {
        throw localp;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        String[] arrayOfString1 = localException.getClass().getName().split("\\.");
        q localq1 = q.b;
        String[] arrayOfString2 = new String[1];
        arrayOfString2[0] = arrayOfString1[(arrayOfString1.length - 1)];
        throw new p(localq1, arrayOfString2);
      }
    }
    throw new p(q.b, new String[] { "retfile", localObject });
    label204: e.w = true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.commumgr.a.b
 * JD-Core Version:    0.6.2
 */