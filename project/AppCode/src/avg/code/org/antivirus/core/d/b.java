package org.antivirus.core.d;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.antivirus.core.Logger;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;

public final class b
{
  ArrayList a;
  ArrayList b;
  ArrayList c;
  String d;
  boolean e;
  String f;
  private final Pattern g = Pattern.compile("<\\?xml version=\\\"1\\.0\\\" encoding=\\\"UTF-8\\\"\\?>\\s+<res>\\s+<ts>\\d+</ts>\\s+<ud>\\s+<id>\\d+</id>\\s+<catID>\\d+</catID>\\s+<action>\\d+</action>\\s+</ud>\\s+<sig>[a-zA-Z0-9]+</sig>\\s+</res>");
  private int h;
  private String i;

  public b(String paramString)
  {
    this.d = paramString;
    this.a = new ArrayList();
    this.b = new ArrayList();
    this.c = new ArrayList();
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
      localIOException2 = localIOException2;
      Logger.log(localIOException2);
      try
      {
        paramInputStream.close();
        while (true)
        {
          return localStringBuilder.toString();
          try
          {
            paramInputStream.close();
          }
          catch (IOException localIOException4)
          {
            Logger.log(localIOException4);
          }
        }
      }
      catch (IOException localIOException3)
      {
        while (true)
          Logger.log(localIOException3);
      }
    }
    finally
    {
    }
    try
    {
      paramInputStream.close();
      throw localObject;
    }
    catch (IOException localIOException1)
    {
      while (true)
        Logger.log(localIOException1);
    }
  }

  public final void a(String paramString1, String paramString2)
  {
    this.a.add(new BasicNameValuePair(paramString1, paramString2));
  }

  final void a(HttpUriRequest paramHttpUriRequest)
  {
    this.e = false;
    DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
    try
    {
      HttpResponse localHttpResponse = localDefaultHttpClient.execute(paramHttpUriRequest);
      this.h = localHttpResponse.getStatusLine().getStatusCode();
      this.i = localHttpResponse.getStatusLine().getReasonPhrase();
      HttpEntity localHttpEntity = localHttpResponse.getEntity();
      InputStream localInputStream;
      if (localHttpEntity != null)
      {
        localInputStream = localHttpEntity.getContent();
        this.f = a(localInputStream);
      }
      try
      {
        if ((this.f != null) && (this.g.matcher(this.f).find()));
        for (this.e = true; ; this.e = false)
        {
          localInputStream.close();
          return;
        }
      }
      catch (Exception localException2)
      {
        while (true)
          Logger.log(localException2);
      }
    }
    catch (Exception localException1)
    {
      while (true)
      {
        localDefaultHttpClient.getConnectionManager().shutdown();
        Logger.log(localException1);
      }
    }
  }

  public final void b(String paramString1, String paramString2)
  {
    this.b.add(new BasicNameValuePair(paramString1, paramString2));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.d.b
 * JD-Core Version:    0.6.2
 */