package com.antivirus.core.g;

import com.avg.toolkit.f.a;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;

public class b
{
  private final Pattern a = Pattern.compile("<\\?xml version=\\\"1\\.0\\\" encoding=\\\"UTF-8\\\"\\?>\\s+<res>\\s+<ts>\\d+</ts>\\s+<ud>\\s+<id>\\d+</id>\\s+<catID>\\d+</catID>\\s+<action>\\d+</action>\\s+</ud>\\s+<sig>[a-zA-Z0-9]+</sig>\\s+</res>");
  private ArrayList b;
  private ArrayList c;
  private ArrayList d;
  private String e;
  private int f;
  private String g;
  private boolean h;
  private String i;

  public b(String paramString)
  {
    this.e = paramString;
    this.b = new ArrayList();
    this.c = new ArrayList();
    this.d = new ArrayList();
  }

  private static String a(InputStream paramInputStream)
  {
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramInputStream), 8192);
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      while (true)
      {
        String str = localBufferedReader.readLine();
        if (str == null)
          break;
        localStringBuilder.append(str + "\n");
      }
    }
    catch (IOException localIOException2)
    {
      a.a(localIOException2);
    }
    finally
    {
      try
      {
        paramInputStream.close();
        return localStringBuilder.toString();
        localObject = finally;
        try
        {
          paramInputStream.close();
          throw localObject;
        }
        catch (IOException localIOException1)
        {
          while (true)
            a.a(localIOException1);
        }
      }
      catch (IOException localIOException3)
      {
      }
    }
    while (true)
      while (true)
      {
        a.a(localIOException3);
        break;
        try
        {
          paramInputStream.close();
        }
        catch (IOException localIOException4)
        {
        }
      }
  }

  private void a(HttpUriRequest paramHttpUriRequest, String paramString)
  {
    this.h = false;
    DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
    try
    {
      HttpResponse localHttpResponse = localDefaultHttpClient.execute(paramHttpUriRequest);
      this.f = localHttpResponse.getStatusLine().getStatusCode();
      this.g = localHttpResponse.getStatusLine().getReasonPhrase();
      HttpEntity localHttpEntity = localHttpResponse.getEntity();
      InputStream localInputStream;
      if (localHttpEntity != null)
      {
        localInputStream = localHttpEntity.getContent();
        this.i = a(localInputStream);
      }
      try
      {
        if ((this.i != null) && (this.a.matcher(this.i).find()));
        for (this.h = true; ; this.h = false)
        {
          localInputStream.close();
          return;
        }
      }
      catch (Exception localException2)
      {
        while (true)
          a.a(localException2);
      }
    }
    catch (Exception localException1)
    {
      while (true)
      {
        localDefaultHttpClient.getConnectionManager().shutdown();
        a.a(localException1);
      }
    }
  }

  public void a(d paramd)
  {
    switch (c.a[paramd.ordinal()])
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      Object localObject = "";
      if (!this.b.isEmpty())
      {
        String str1 = (String)localObject + "?";
        Iterator localIterator3 = this.b.iterator();
        localObject = str1;
        if (localIterator3.hasNext())
        {
          NameValuePair localNameValuePair4 = (NameValuePair)localIterator3.next();
          String str3 = localNameValuePair4.getName() + "=" + URLEncoder.encode(localNameValuePair4.getValue(), "UTF-8");
          if (((String)localObject).length() > 1);
          for (String str4 = (String)localObject + "&" + str3; ; str4 = (String)localObject + str3)
          {
            localObject = str4;
            break;
          }
        }
        if (!this.c.isEmpty())
        {
          Iterator localIterator4 = this.c.iterator();
          while (localIterator4.hasNext())
          {
            NameValuePair localNameValuePair3 = (NameValuePair)localIterator4.next();
            String str2 = localNameValuePair3.getName() + "=" + URLEncoder.encode(localNameValuePair3.getValue(), "UTF-8");
            if (((String)localObject).length() > 1)
              localObject = (String)localObject + "&" + str2;
            else
              localObject = (String)localObject + str2;
          }
        }
      }
      HttpGet localHttpGet = new HttpGet(this.e + (String)localObject);
      Iterator localIterator2 = this.d.iterator();
      while (localIterator2.hasNext())
      {
        NameValuePair localNameValuePair2 = (NameValuePair)localIterator2.next();
        localHttpGet.addHeader(localNameValuePair2.getName(), localNameValuePair2.getValue());
      }
      a(localHttpGet, this.e);
      continue;
      HttpPost localHttpPost = new HttpPost(this.e);
      Iterator localIterator1 = this.d.iterator();
      while (localIterator1.hasNext())
      {
        NameValuePair localNameValuePair1 = (NameValuePair)localIterator1.next();
        localHttpPost.addHeader(localNameValuePair1.getName(), localNameValuePair1.getValue());
      }
      if (!this.b.isEmpty())
      {
        this.b.addAll(this.c);
        localHttpPost.setEntity(new UrlEncodedFormEntity(this.b, "UTF-8"));
        this.b.removeAll(this.c);
      }
      a(localHttpPost, this.e);
    }
  }

  public void a(String paramString1, String paramString2)
  {
    this.b.add(new BasicNameValuePair(paramString1, paramString2));
  }

  public boolean a()
  {
    return this.h;
  }

  public String b()
  {
    return this.i;
  }

  public void b(String paramString1, String paramString2)
  {
    this.c.add(new BasicNameValuePair(paramString1, paramString2));
  }

  public void c()
  {
    this.c.clear();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.g.b
 * JD-Core Version:    0.6.2
 */