package com.keniu.security.sync.d.e;

import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Map;
import java.util.UUID;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;

public final class a
{
  private static final String c = "HttpRequest";
  HttpURLConnection a = null;
  OutputStream b = null;

  public a(String paramString)
  {
    this(new URL(paramString));
  }

  private a(HttpURLConnection paramHttpURLConnection)
  {
    this.a = paramHttpURLConnection;
    this.a.setDoInput(true);
    this.a.setUseCaches(false);
    this.a.setReadTimeout(10000);
    this.a.setConnectTimeout(10000);
    this.a.setRequestMethod("POST");
    this.a.setRequestProperty("User-Agent", "mosecurity");
    HttpsURLConnection localHttpsURLConnection;
    TrustManager[] arrayOfTrustManager;
    if (this.a.getURL().getProtocol().toLowerCase().startsWith("https"))
    {
      localHttpsURLConnection = (HttpsURLConnection)paramHttpURLConnection;
      arrayOfTrustManager = new TrustManager[1];
      arrayOfTrustManager[0] = new b(this);
    }
    try
    {
      SSLContext localSSLContext = SSLContext.getInstance("TLS");
      localSSLContext.init(new KeyManager[0], arrayOfTrustManager, new SecureRandom());
      localHttpsURLConnection.setSSLSocketFactory(localSSLContext.getSocketFactory());
      localHttpsURLConnection.setHostnameVerifier(new c(this));
      return;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      while (true)
        Log.e("HttpRequest", localNoSuchAlgorithmException.getMessage(), localNoSuchAlgorithmException);
    }
    catch (KeyManagementException localKeyManagementException)
    {
      while (true)
        Log.e("HttpRequest", localKeyManagementException.getMessage(), localKeyManagementException);
    }
  }

  private a(URL paramURL)
  {
    this((HttpURLConnection)paramURL.openConnection());
  }

  private InputStream a(InputStream paramInputStream)
  {
    while (true)
    {
      try
      {
        i = paramInputStream.available();
        if (16384 <= i)
          break label85;
        this.a.setRequestProperty("Connection", "keep-alive");
        this.a.setChunkedStreamingMode(i);
        b();
        byte[] arrayOfByte = new byte[i];
        int j = paramInputStream.read(arrayOfByte, 0, i);
        if (j >= 0)
        {
          this.b.write(arrayOfByte, 0, j);
          continue;
        }
      }
      finally
      {
      }
      return c();
      label85: int i = 16384;
    }
  }

  private void a(HttpURLConnection paramHttpURLConnection)
  {
    HttpsURLConnection localHttpsURLConnection = (HttpsURLConnection)paramHttpURLConnection;
    TrustManager[] arrayOfTrustManager = new TrustManager[1];
    arrayOfTrustManager[0] = new b(this);
    try
    {
      SSLContext localSSLContext = SSLContext.getInstance("TLS");
      localSSLContext.init(new KeyManager[0], arrayOfTrustManager, new SecureRandom());
      localHttpsURLConnection.setSSLSocketFactory(localSSLContext.getSocketFactory());
      localHttpsURLConnection.setHostnameVerifier(new c(this));
      return;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      while (true)
        Log.e("HttpRequest", localNoSuchAlgorithmException.getMessage(), localNoSuchAlgorithmException);
    }
    catch (KeyManagementException localKeyManagementException)
    {
      while (true)
        Log.e("HttpRequest", localKeyManagementException.getMessage(), localKeyManagementException);
    }
  }

  private InputStream b(String paramString)
  {
    b();
    this.b.write(paramString.getBytes());
    return c();
  }

  private String b(int paramInt)
  {
    return this.a.getHeaderField(paramInt);
  }

  private void c(int paramInt)
  {
    this.a.setChunkedStreamingMode(paramInt);
  }

  private void e()
  {
    d();
  }

  private Map f()
  {
    return this.a.getHeaderFields();
  }

  public final InputStream a(File paramFile)
  {
    String str = UUID.randomUUID().toString();
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("--");
    localStringBuffer.append(str);
    localStringBuffer.append("\r\n");
    localStringBuffer.append("Content-Disposition: form-data; name=\"myfile\"; filename=\"" + paramFile.getName() + "\"");
    localStringBuffer.append("\r\n");
    localStringBuffer.append("Content-Type: application/octet-stream");
    localStringBuffer.append("\r\n");
    localStringBuffer.append("\r\n");
    byte[] arrayOfByte1 = localStringBuffer.toString().getBytes();
    byte[] arrayOfByte2 = ("\r\n" + "--" + str + "--" + "\r\n").getBytes();
    this.a.setRequestProperty("Connection", "Keep-Alive");
    this.a.setRequestProperty("Charset", "UTF-8");
    this.a.setRequestProperty("Content-Type", "multipart/form-data" + ";boundary=" + str);
    this.a.setRequestProperty("Content-Length", String.valueOf(arrayOfByte1.length + paramFile.length() + arrayOfByte2.length));
    this.a.setChunkedStreamingMode(16384);
    this.b.write(arrayOfByte1);
    FileInputStream localFileInputStream = new FileInputStream(paramFile);
    byte[] arrayOfByte3 = new byte[8192];
    while (true)
    {
      int i = localFileInputStream.read(arrayOfByte3);
      if (i == -1)
        break;
      this.b.write(arrayOfByte3, 0, i);
    }
    localFileInputStream.close();
    this.b.write(arrayOfByte2);
    return c();
  }

  public final String a(String paramString)
  {
    return this.a.getHeaderField(paramString);
  }

  public final void a()
  {
    try
    {
      this.a.setRequestMethod("GET");
      return;
    }
    catch (IOException localIOException)
    {
      while (true)
        Log.e("HttpRequest", localIOException.getMessage(), localIOException);
    }
  }

  public final void a(int paramInt)
  {
    this.a.setFixedLengthStreamingMode(paramInt);
  }

  public final void a(String paramString1, String paramString2)
  {
    this.a.setRequestProperty(paramString1, paramString2);
  }

  public final OutputStream b()
  {
    if (this.b == null)
    {
      this.a.setDoOutput(true);
      this.b = this.a.getOutputStream();
    }
    return this.b;
  }

  public final InputStream c()
  {
    Log.d("HttpRequest", "Send with " + this.a.getRequestMethod() + ":" + this.a.getURL().toString());
    if (this.b != null)
    {
      this.b.flush();
      this.b.close();
      this.b = null;
    }
    int i = this.a.getResponseCode();
    Log.i("HttpRequest", this.a.getHeaderFields().toString());
    Log.i("HttpRequest", this.a.getRequestProperty("User-Agent"));
    if (i == 200)
      return this.a.getInputStream();
    throw new d(-i, this.a.getResponseMessage());
  }

  public final void d()
  {
    if (this.a != null)
    {
      this.a.disconnect();
      this.a = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.e.a
 * JD-Core Version:    0.6.2
 */