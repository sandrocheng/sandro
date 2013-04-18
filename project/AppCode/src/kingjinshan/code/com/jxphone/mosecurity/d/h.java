package com.jxphone.mosecurity.d;

import android.util.Log;
import com.jxphone.mosecurity.c.e;
import com.jxphone.mosecurity.c.f;
import com.jxphone.mosecurity.c.g;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

public class h
{
  private static final String a = "messages";
  private static final String b = "message";
  private URL c;

  private h(String paramString)
  {
    this.c = new URL(paramString);
  }

  private static e a(XmlPullParser paramXmlPullParser)
  {
    e locale = new e();
    locale.a(paramXmlPullParser.getAttributeValue(null, "title"));
    String str = paramXmlPullParser.getAttributeValue(null, "contentType");
    try
    {
      locale.a(f.valueOf(str.replace('/', '_').toUpperCase()));
      locale.a(Integer.parseInt(paramXmlPullParser.getAttributeValue(null, "id")));
      locale.a(Long.parseLong(paramXmlPullParser.getAttributeValue(null, "createAtTS")));
      locale.b(paramXmlPullParser.nextText());
      return locale;
    }
    catch (Exception localException)
    {
      while (true)
        Log.w(h.class.getSimpleName(), "unknown content-type:".concat(str));
    }
  }

  private static g a(InputStream paramInputStream)
  {
    XmlPullParser localXmlPullParser = XmlPullParserFactory.newInstance().newPullParser();
    localXmlPullParser.setInput(new InputStreamReader(paramInputStream));
    int i = localXmlPullParser.getEventType();
    boolean bool = false;
    int j = 0;
    int k = i;
    int m = 0;
    Object localObject = null;
    while (true)
      switch (k)
      {
      default:
        k = localXmlPullParser.next();
      case 2:
      case 1:
      }
    String str = localXmlPullParser.getName();
    if (str.equals("message"))
      if (m >= j)
      {
        Log.w("HttpsMessageFettler", "recheck the value of count");
        label112: if (localObject == null)
          break label225;
      }
    label225: for (g localg = new g((e[])localObject, bool); ; localg = null)
    {
      return localg;
      if (localObject == null)
      {
        Log.w("HttpsMessageFettler", "node: messages not found");
        break label112;
      }
      int i1 = m + 1;
      localObject[m] = a(localXmlPullParser);
      m = i1;
      break;
      if (!str.equals("messages"))
        break;
      int n = Integer.parseInt(localXmlPullParser.getAttributeValue(null, "count"));
      bool = Boolean.parseBoolean(localXmlPullParser.getAttributeValue(null, "hasMore"));
      e[] arrayOfe = new e[n];
      j = n;
      localObject = arrayOfe;
      break;
    }
  }

  // ERROR //
  private g a(String[][] paramArrayOfString)
  {
    // Byte code:
    //   0: new 167	java/lang/StringBuilder
    //   3: dup
    //   4: sipush 128
    //   7: invokespecial 169	java/lang/StringBuilder:<init>	(I)V
    //   10: astore_2
    //   11: aload_1
    //   12: arraylength
    //   13: istore_3
    //   14: iconst_0
    //   15: istore 4
    //   17: iload 4
    //   19: iload_3
    //   20: if_icmpge +50 -> 70
    //   23: aload_1
    //   24: iload 4
    //   26: aaload
    //   27: astore 17
    //   29: aload 17
    //   31: arraylength
    //   32: iconst_2
    //   33: if_icmpne +31 -> 64
    //   36: aload_2
    //   37: aload 17
    //   39: iconst_0
    //   40: aaload
    //   41: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: bipush 61
    //   46: invokevirtual 176	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   49: pop
    //   50: aload_2
    //   51: aload 17
    //   53: iconst_1
    //   54: aaload
    //   55: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   58: bipush 38
    //   60: invokevirtual 176	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   63: pop
    //   64: iinc 4 1
    //   67: goto -50 -> 17
    //   70: aload_2
    //   71: invokevirtual 179	java/lang/StringBuilder:length	()I
    //   74: istore 5
    //   76: aload_2
    //   77: iload 5
    //   79: iconst_1
    //   80: isub
    //   81: iload 5
    //   83: invokevirtual 183	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   86: pop
    //   87: aload_0
    //   88: getfield 24	com/jxphone/mosecurity/d/h:c	Ljava/net/URL;
    //   91: invokevirtual 187	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   94: checkcast 189	javax/net/ssl/HttpsURLConnection
    //   97: astore 11
    //   99: aload 11
    //   101: sipush 8000
    //   104: invokevirtual 192	javax/net/ssl/HttpsURLConnection:setConnectTimeout	(I)V
    //   107: aload 11
    //   109: iconst_1
    //   110: invokevirtual 196	javax/net/ssl/HttpsURLConnection:setDoOutput	(Z)V
    //   113: new 198	java/io/OutputStreamWriter
    //   116: dup
    //   117: aload 11
    //   119: invokevirtual 202	javax/net/ssl/HttpsURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   122: invokespecial 205	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;)V
    //   125: astore 12
    //   127: aload 12
    //   129: aload_2
    //   130: invokevirtual 208	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   133: invokevirtual 211	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   136: aload 12
    //   138: invokevirtual 214	java/io/OutputStreamWriter:flush	()V
    //   141: aload 11
    //   143: invokevirtual 218	javax/net/ssl/HttpsURLConnection:getInputStream	()Ljava/io/InputStream;
    //   146: astore 13
    //   148: aload 13
    //   150: invokestatic 220	com/jxphone/mosecurity/d/h:a	(Ljava/io/InputStream;)Lcom/jxphone/mosecurity/c/g;
    //   153: astore 16
    //   155: aload 12
    //   157: invokevirtual 223	java/io/OutputStreamWriter:close	()V
    //   160: aload 13
    //   162: ifnull +8 -> 170
    //   165: aload 13
    //   167: invokevirtual 226	java/io/InputStream:close	()V
    //   170: aload 11
    //   172: ifnull +8 -> 180
    //   175: aload 11
    //   177: invokevirtual 229	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   180: aload 16
    //   182: areturn
    //   183: astore 15
    //   185: new 27	java/lang/Exception
    //   188: dup
    //   189: aload 15
    //   191: invokespecial 232	java/lang/Exception:<init>	(Ljava/lang/Throwable;)V
    //   194: athrow
    //   195: astore 14
    //   197: aload 11
    //   199: astore 10
    //   201: aload 14
    //   203: astore 7
    //   205: aload 12
    //   207: astore 9
    //   209: aload 13
    //   211: astore 8
    //   213: aload 9
    //   215: ifnull +8 -> 223
    //   218: aload 9
    //   220: invokevirtual 223	java/io/OutputStreamWriter:close	()V
    //   223: aload 8
    //   225: ifnull +8 -> 233
    //   228: aload 8
    //   230: invokevirtual 226	java/io/InputStream:close	()V
    //   233: aload 10
    //   235: ifnull +8 -> 243
    //   238: aload 10
    //   240: invokevirtual 229	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   243: aload 7
    //   245: athrow
    //   246: astore 7
    //   248: aconst_null
    //   249: astore 8
    //   251: aconst_null
    //   252: astore 9
    //   254: aconst_null
    //   255: astore 10
    //   257: goto -44 -> 213
    //   260: astore 7
    //   262: aload 11
    //   264: astore 10
    //   266: aconst_null
    //   267: astore 8
    //   269: aconst_null
    //   270: astore 9
    //   272: goto -59 -> 213
    //   275: astore 7
    //   277: aload 12
    //   279: astore 9
    //   281: aload 11
    //   283: astore 10
    //   285: aconst_null
    //   286: astore 8
    //   288: goto -75 -> 213
    //
    // Exception table:
    //   from	to	target	type
    //   148	155	183	org/xmlpull/v1/XmlPullParserException
    //   148	155	195	finally
    //   185	195	195	finally
    //   87	99	246	finally
    //   99	127	260	finally
    //   127	148	275	finally
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.d.h
 * JD-Core Version:    0.6.2
 */