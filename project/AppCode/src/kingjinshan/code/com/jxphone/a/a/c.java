package com.jxphone.a.a;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;

final class c extends Thread
{
  private final byte[] b;
  private final h c;
  private final String d;
  private final g e;

  private c(a parama, byte[] paramArrayOfByte, h paramh, g paramg, String paramString, byte paramByte)
  {
    this.b = paramArrayOfByte;
    this.c = paramh;
    this.d = paramString;
    this.e = paramg;
  }

  public final void run()
  {
    DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
    HttpPost localHttpPost = new HttpPost(this.d);
    try
    {
      localHttpPost.setEntity(new ByteArrayEntity(this.b));
      BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(localDefaultHttpClient.execute(localHttpPost).getEntity().getContent()));
      String str3;
      for (String str1 = ""; ; str1 = str3 + "\r\n")
      {
        String str2 = localBufferedReader.readLine();
        if (str2 == null)
          break;
        str3 = str1 + str2;
      }
      boolean bool = TextUtils.isEmpty(str1);
      Object localObject2;
      if (bool)
        localObject2 = null;
      while (true)
      {
        if (localObject2 == null)
          break label363;
        j = 1;
        int k = j;
        localObject1 = localObject2;
        i = k;
        if (i == 0)
          break;
        if (this.c != null)
        {
          h localh = this.c;
          localh.a();
        }
        return;
        String[] arrayOfString = str1.split("\r\n");
        e locale = new e();
        if ((arrayOfString != null) && (arrayOfString.length >= 3))
        {
          if (!arrayOfString[0].equals("[common]"))
          {
            localObject2 = null;
          }
          else if (arrayOfString[1].startsWith("result="))
          {
            locale.b = Integer.parseInt(arrayOfString[1].substring("result=".length()));
            if (!arrayOfString[2].startsWith("time="))
              break label324;
            locale.a = Integer.parseInt(arrayOfString[2].substring("time=".length()));
          }
        }
        else
        {
          localObject2 = locale;
          continue;
          localObject2 = null;
          continue;
          label324: localObject2 = null;
        }
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        int j;
        localException.printStackTrace();
        int i = 0;
        Object localObject1 = null;
        continue;
        if (this.e != null)
        {
          this.e.a();
          continue;
          label363: j = 0;
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.a.a.c
 * JD-Core Version:    0.6.2
 */