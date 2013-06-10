package org.antivirus.license.qrreader.general;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;

public final class HttpHelper
{
  private static final Collection REDIRECTOR_DOMAINS = new HashSet(Arrays.asList(new String[] { "amzn.to", "bit.ly", "bitly.com", "fb.me", "goo.gl", "is.gd", "j.mp", "lnkd.in", "ow.ly", "R.BEETAGG.COM", "r.beetagg.com", "SCN.BY", "su.pr", "t.co", "tinyurl.com", "tr.im" }));

  // ERROR //
  private static String consume(URLConnection paramURLConnection)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 67	org/antivirus/license/qrreader/general/HttpHelper:getEncoding	(Ljava/net/URLConnection;)Ljava/lang/String;
    //   4: astore_1
    //   5: new 69	java/io/ByteArrayOutputStream
    //   8: dup
    //   9: invokespecial 70	java/io/ByteArrayOutputStream:<init>	()V
    //   12: astore_2
    //   13: aload_0
    //   14: invokevirtual 76	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   17: astore_3
    //   18: aload_0
    //   19: invokevirtual 76	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   22: astore_3
    //   23: sipush 1024
    //   26: newarray byte
    //   28: astore 6
    //   30: aload_3
    //   31: aload 6
    //   33: invokevirtual 82	java/io/InputStream:read	([B)I
    //   36: istore 7
    //   38: iload 7
    //   40: ifle +24 -> 64
    //   43: aload_2
    //   44: aload 6
    //   46: iconst_0
    //   47: iload 7
    //   49: invokevirtual 86	java/io/ByteArrayOutputStream:write	([BII)V
    //   52: goto -22 -> 30
    //   55: astore 4
    //   57: aload_3
    //   58: invokevirtual 89	java/io/InputStream:close	()V
    //   61: aload 4
    //   63: athrow
    //   64: aload_3
    //   65: invokevirtual 89	java/io/InputStream:close	()V
    //   68: new 12	java/lang/String
    //   71: dup
    //   72: aload_2
    //   73: invokevirtual 93	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   76: aload_1
    //   77: invokespecial 96	java/lang/String:<init>	([BLjava/lang/String;)V
    //   80: astore 9
    //   82: aload 9
    //   84: areturn
    //   85: astore 10
    //   87: new 12	java/lang/String
    //   90: dup
    //   91: aload_2
    //   92: invokevirtual 93	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   95: ldc 98
    //   97: invokespecial 96	java/lang/String:<init>	([BLjava/lang/String;)V
    //   100: astore 9
    //   102: goto -20 -> 82
    //   105: astore 11
    //   107: new 100	java/lang/IllegalStateException
    //   110: dup
    //   111: aload 11
    //   113: invokespecial 103	java/lang/IllegalStateException:<init>	(Ljava/lang/Throwable;)V
    //   116: athrow
    //   117: astore 8
    //   119: goto -51 -> 68
    //   122: astore 5
    //   124: goto -63 -> 61
    //
    // Exception table:
    //   from	to	target	type
    //   18	52	55	finally
    //   68	82	85	java/io/UnsupportedEncodingException
    //   87	102	105	java/io/UnsupportedEncodingException
    //   64	68	117	java/io/IOException
    //   57	61	122	java/io/IOException
  }

  private static String downloadViaHttp(String paramString1, String paramString2)
  {
    HttpURLConnection localHttpURLConnection = (HttpURLConnection)new URL(paramString1).openConnection();
    localHttpURLConnection.setRequestProperty("Accept", paramString2);
    localHttpURLConnection.setRequestProperty("Accept-Charset", "utf-8,*");
    localHttpURLConnection.setRequestProperty("User-Agent", "ZXing (Android)");
    try
    {
      localHttpURLConnection.connect();
      if (localHttpURLConnection.getResponseCode() != 200)
        throw new IOException("Bad HTTP response: " + localHttpURLConnection.getResponseCode());
    }
    finally
    {
      localHttpURLConnection.disconnect();
    }
    String str = consume(localHttpURLConnection);
    localHttpURLConnection.disconnect();
    return str;
  }

  public static String downloadViaHttp(String paramString, HttpHelper.ContentType paramContentType)
  {
    String str;
    switch (HttpHelper.1.$SwitchMap$org$antivirus$license$qrreader$general$HttpHelper$ContentType[paramContentType.ordinal()])
    {
    default:
      str = "text/*,*/*";
    case 1:
    case 2:
    }
    while (true)
    {
      return downloadViaHttp(paramString, str);
      str = "application/xhtml+xml,text/html,text/*,*/*";
      continue;
      str = "application/json,text/*,*/*";
    }
  }

  private static String getEncoding(URLConnection paramURLConnection)
  {
    String str1 = paramURLConnection.getHeaderField("Content-Type");
    int i;
    if (str1 != null)
    {
      i = str1.indexOf("charset=");
      if (i < 0);
    }
    for (String str2 = str1.substring(i + 8); ; str2 = "UTF-8")
      return str2;
  }

  // ERROR //
  public static java.net.URI unredirect(java.net.URI paramURI)
  {
    // Byte code:
    //   0: getstatic 56	org/antivirus/license/qrreader/general/HttpHelper:REDIRECTOR_DOMAINS	Ljava/util/Collection;
    //   3: aload_0
    //   4: invokevirtual 201	java/net/URI:getHost	()Ljava/lang/String;
    //   7: invokeinterface 207 2 0
    //   12: ifne +5 -> 17
    //   15: aload_0
    //   16: areturn
    //   17: aload_0
    //   18: invokevirtual 211	java/net/URI:toURL	()Ljava/net/URL;
    //   21: invokevirtual 114	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   24: checkcast 116	java/net/HttpURLConnection
    //   27: astore_1
    //   28: aload_1
    //   29: iconst_0
    //   30: invokevirtual 215	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   33: aload_1
    //   34: iconst_0
    //   35: invokevirtual 218	java/net/HttpURLConnection:setDoInput	(Z)V
    //   38: aload_1
    //   39: ldc 220
    //   41: invokevirtual 223	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   44: aload_1
    //   45: ldc 128
    //   47: ldc 130
    //   49: invokevirtual 122	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   52: aload_1
    //   53: invokevirtual 133	java/net/HttpURLConnection:connect	()V
    //   56: aload_1
    //   57: invokevirtual 137	java/net/HttpURLConnection:getResponseCode	()I
    //   60: istore_3
    //   61: iload_3
    //   62: tableswitch	default:+46 -> 108, 300:+53->115, 301:+53->115, 302:+53->115, 303:+53->115, 304:+46->108, 305:+46->108, 306:+46->108, 307:+53->115
    //   109: invokevirtual 154	java/net/HttpURLConnection:disconnect	()V
    //   112: goto -97 -> 15
    //   115: aload_1
    //   116: ldc 225
    //   118: invokevirtual 226	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   121: astore 4
    //   123: aload 4
    //   125: ifnull -17 -> 108
    //   128: new 198	java/net/URI
    //   131: dup
    //   132: aload 4
    //   134: invokespecial 227	java/net/URI:<init>	(Ljava/lang/String;)V
    //   137: astore 5
    //   139: aload_1
    //   140: invokevirtual 154	java/net/HttpURLConnection:disconnect	()V
    //   143: aload 5
    //   145: astore_0
    //   146: goto -131 -> 15
    //   149: astore_2
    //   150: aload_1
    //   151: invokevirtual 154	java/net/HttpURLConnection:disconnect	()V
    //   154: aload_2
    //   155: athrow
    //   156: astore 6
    //   158: goto -50 -> 108
    //
    // Exception table:
    //   from	to	target	type
    //   52	61	149	finally
    //   115	123	149	finally
    //   128	139	149	finally
    //   128	139	156	java/net/URISyntaxException
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.license.qrreader.general.HttpHelper
 * JD-Core Version:    0.6.2
 */