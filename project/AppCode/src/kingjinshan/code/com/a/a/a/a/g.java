package com.a.a.a.a;

import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import king.org.apache.commons.codec.binary.StringUtils;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;

public class g
{
  private static final String a = g.class.getSimpleName();

  private static String a(String paramString)
  {
    ByteArrayOutputStream localByteArrayOutputStream;
    InputStream localInputStream;
    Object localObject;
    try
    {
      HttpURLConnection localHttpURLConnection = (HttpURLConnection)new URL(paramString).openConnection();
      localHttpURLConnection.setConnectTimeout(2000);
      localHttpURLConnection.setReadTimeout(2000);
      localByteArrayOutputStream = new ByteArrayOutputStream();
      byte[] arrayOfByte1 = new byte[512];
      localInputStream = localHttpURLConnection.getInputStream();
      while (true)
      {
        int i = localInputStream.read(arrayOfByte1);
        if (i == -1)
          break;
        localByteArrayOutputStream.write(arrayOfByte1, 0, i);
      }
    }
    catch (Exception localException)
    {
      Log.e(a, "http request failre:" + localException.getMessage());
      localObject = null;
    }
    while (true)
    {
      return localObject;
      localByteArrayOutputStream.flush();
      byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
      localByteArrayOutputStream.close();
      localInputStream.close();
      String str = StringUtils.newStringUtf8(arrayOfByte2);
      localObject = str;
    }
  }

  private static void a(HttpResponse paramHttpResponse, File paramFile)
  {
    InputStream localInputStream = paramHttpResponse.getEntity().getContent();
    byte[] arrayOfByte = new byte[2048];
    File localFile = paramFile.getParentFile();
    if (!localFile.exists())
      localFile.mkdirs();
    if (paramFile.exists())
      paramFile.delete();
    paramFile.createNewFile();
    FileOutputStream localFileOutputStream = new FileOutputStream(paramFile);
    while (true)
    {
      int i = localInputStream.read(arrayOfByte);
      if (i == -1)
        break;
      localFileOutputStream.write(arrayOfByte, 0, i);
    }
    localFileOutputStream.flush();
    localFileOutputStream.close();
    localInputStream.close();
  }

  private static byte[] a(HttpResponse paramHttpResponse)
  {
    HttpEntity localHttpEntity = paramHttpResponse.getEntity();
    try
    {
      localByteArrayOutputStream = new ByteArrayOutputStream();
      byte[] arrayOfByte1 = new byte[512];
      localInputStream = localHttpEntity.getContent();
      while (true)
      {
        int i = localInputStream.read(arrayOfByte1);
        if (i == -1)
          break;
        localByteArrayOutputStream.write(arrayOfByte1, 0, i);
      }
    }
    catch (IllegalStateException localIllegalStateException)
    {
      ByteArrayOutputStream localByteArrayOutputStream;
      InputStream localInputStream;
      Log.e(a, "IllegalStateException:" + localIllegalStateException.getMessage(), localIllegalStateException);
      byte[] arrayOfByte2;
      for (localObject = null; ; localObject = arrayOfByte2)
      {
        return localObject;
        localByteArrayOutputStream.flush();
        arrayOfByte2 = localByteArrayOutputStream.toByteArray();
        localByteArrayOutputStream.close();
        localInputStream.close();
      }
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        Log.e(a, "IOException:" + localIOException.getMessage(), localIOException);
        Object localObject = null;
      }
    }
  }

  private static String b(HttpResponse paramHttpResponse)
  {
    byte[] arrayOfByte = a(paramHttpResponse);
    try
    {
      String str1 = new String(arrayOfByte, 0, arrayOfByte.length, "UTF-8");
      str2 = str1;
      return str2;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      while (true)
        String str2 = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.a.a.a.a.g
 * JD-Core Version:    0.6.2
 */