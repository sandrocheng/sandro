import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.qqpimsecure.service.QQPimApplication;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.HttpEntity;
import org.apache.http.ParseException;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public abstract class f
{
  private String a = "http://df2.pr.qq.com/mobile_guard/dev_face_login";
  private String b = "e787a2";
  protected byte[] c;
  protected int d = 0;
  protected String e = "1.0";
  protected String f = "mobile_guard";
  protected String g = null;
  protected String h = null;
  private String i = "devface.mguard";

  public static ContentValues a(ky paramky, int paramInt, boolean paramBoolean)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("number", paramky.phonenum);
    localContentValues.put("date", Long.valueOf(paramky.date));
    localContentValues.put("duration", Long.valueOf(paramky.duration));
    localContentValues.put("type", Integer.valueOf(paramky.type));
    localContentValues.put("name", paramky.name);
    localContentValues.put("numbertype", Integer.valueOf(paramky.b));
    localContentValues.put("numberlabel", paramky.c);
    if (!paramBoolean)
    {
      localContentValues.put("tagnew", Integer.valueOf(paramky.a));
      localContentValues.put("privateflag", Integer.valueOf(paramInt));
    }
    while (true)
    {
      return localContentValues;
      localContentValues.put("new", Integer.valueOf(paramky.a));
    }
  }

  private static String a(String paramString)
  {
    int j = 0;
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      arrayOfChar = paramString.toCharArray();
      arrayOfByte1 = new byte[arrayOfChar.length];
      k = 0;
      if (k >= arrayOfChar.length)
      {
        arrayOfByte2 = localMessageDigest.digest(arrayOfByte1);
        localStringBuffer = new StringBuffer();
        if (j < arrayOfByte2.length)
          break label94;
        str = localStringBuffer.toString();
        return str;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        char[] arrayOfChar;
        byte[] arrayOfByte1;
        int k;
        byte[] arrayOfByte2;
        StringBuffer localStringBuffer;
        localException.printStackTrace();
        String str = "";
        continue;
        arrayOfByte1[k] = ((byte)arrayOfChar[k]);
        k++;
        continue;
        label94: int m = 0xFF & arrayOfByte2[j];
        if (m < 16)
          localStringBuffer.append("0");
        localStringBuffer.append(Integer.toHexString(m));
        j++;
      }
    }
  }

  public static List<ky> a(Cursor paramCursor)
  {
    ArrayList localArrayList = new ArrayList();
    int j = paramCursor.getColumnIndexOrThrow("id");
    int k = paramCursor.getColumnIndexOrThrow("privateflag");
    int m = paramCursor.getColumnIndexOrThrow("number");
    int n = paramCursor.getColumnIndexOrThrow("date");
    int i1 = paramCursor.getColumnIndexOrThrow("duration");
    int i2 = paramCursor.getColumnIndexOrThrow("type");
    int i3 = paramCursor.getColumnIndexOrThrow("numbertype");
    int i4 = paramCursor.getColumnIndexOrThrow("tagnew");
    int i5 = paramCursor.getColumnIndexOrThrow("name");
    int i6 = paramCursor.getColumnIndexOrThrow("numberlabel");
    paramCursor.moveToFirst();
    if (!paramCursor.isAfterLast())
    {
      ky localky = new ky();
      localky.id = paramCursor.getInt(j);
      localky.phonenum = paramCursor.getString(m);
      localky.date = paramCursor.getLong(n);
      localky.duration = paramCursor.getInt(i1);
      localky.type = paramCursor.getInt(i2);
      localky.b = paramCursor.getInt(i3);
      localky.a = paramCursor.getInt(i4);
      localky.c = paramCursor.getString(i6);
      localky.name = paramCursor.getString(i5);
      if (paramCursor.getInt(k) == 1);
      for (boolean bool = true; ; bool = false)
      {
        localky.d = bool;
        localArrayList.add(localky);
        paramCursor.moveToNext();
        break;
      }
    }
    paramCursor.close();
    return localArrayList;
  }

  // ERROR //
  private HttpEntity a(HttpUriRequest paramHttpUriRequest)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aconst_null
    //   3: invokestatic 239	android/net/http/AndroidHttpClient:newInstance	(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;
    //   6: astore 9
    //   8: aload 9
    //   10: astore 4
    //   12: aload 4
    //   14: aload_1
    //   15: invokevirtual 243	android/net/http/AndroidHttpClient:execute	(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    //   18: astore 10
    //   20: aload 4
    //   22: invokevirtual 247	android/net/http/AndroidHttpClient:getConnectionManager	()Lorg/apache/http/conn/ClientConnectionManager;
    //   25: invokeinterface 252 1 0
    //   30: aload 10
    //   32: invokeinterface 258 1 0
    //   37: invokeinterface 264 1 0
    //   42: istore 11
    //   44: new 59	java/lang/StringBuilder
    //   47: dup
    //   48: ldc_w 266
    //   51: invokespecial 68	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   54: iload 11
    //   56: invokevirtual 269	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   59: invokevirtual 75	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   62: pop
    //   63: aconst_null
    //   64: astore_2
    //   65: iload 11
    //   67: sipush 200
    //   70: if_icmpeq +21 -> 91
    //   73: aload_0
    //   74: bipush 253
    //   76: putfield 25	f:d	I
    //   79: aload 4
    //   81: ifnull +8 -> 89
    //   84: aload 4
    //   86: invokevirtual 270	android/net/http/AndroidHttpClient:close	()V
    //   89: aload_2
    //   90: areturn
    //   91: aload 10
    //   93: invokeinterface 274 1 0
    //   98: astore_2
    //   99: aload_2
    //   100: ifnonnull -21 -> 79
    //   103: aload_0
    //   104: bipush 252
    //   106: putfield 25	f:d	I
    //   109: goto -30 -> 79
    //   112: astore_3
    //   113: aload_3
    //   114: invokevirtual 275	org/apache/http/conn/ConnectTimeoutException:printStackTrace	()V
    //   117: aload_0
    //   118: bipush 253
    //   120: putfield 25	f:d	I
    //   123: goto -44 -> 79
    //   126: astore 8
    //   128: aconst_null
    //   129: astore 4
    //   131: aload 8
    //   133: invokevirtual 276	java/net/SocketTimeoutException:printStackTrace	()V
    //   136: aload_0
    //   137: bipush 253
    //   139: putfield 25	f:d	I
    //   142: goto -63 -> 79
    //   145: astore 7
    //   147: aconst_null
    //   148: astore 4
    //   150: aload 7
    //   152: invokevirtual 277	org/apache/http/client/ClientProtocolException:printStackTrace	()V
    //   155: aload_0
    //   156: bipush 253
    //   158: putfield 25	f:d	I
    //   161: goto -82 -> 79
    //   164: astore 6
    //   166: aconst_null
    //   167: astore 4
    //   169: aload 6
    //   171: invokevirtual 278	java/net/ConnectException:printStackTrace	()V
    //   174: aload_0
    //   175: bipush 253
    //   177: putfield 25	f:d	I
    //   180: goto -101 -> 79
    //   183: astore 5
    //   185: aconst_null
    //   186: astore 4
    //   188: aload 5
    //   190: invokevirtual 165	java/lang/Exception:printStackTrace	()V
    //   193: aload_0
    //   194: bipush 253
    //   196: putfield 25	f:d	I
    //   199: goto -120 -> 79
    //   202: astore 5
    //   204: goto -16 -> 188
    //   207: astore 6
    //   209: goto -40 -> 169
    //   212: astore 7
    //   214: goto -64 -> 150
    //   217: astore 8
    //   219: goto -88 -> 131
    //   222: astore_3
    //   223: aconst_null
    //   224: astore 4
    //   226: aconst_null
    //   227: astore_2
    //   228: goto -115 -> 113
    //
    // Exception table:
    //   from	to	target	type
    //   12	79	112	org/apache/http/conn/ConnectTimeoutException
    //   91	109	112	org/apache/http/conn/ConnectTimeoutException
    //   2	8	126	java/net/SocketTimeoutException
    //   2	8	145	org/apache/http/client/ClientProtocolException
    //   2	8	164	java/net/ConnectException
    //   2	8	183	java/lang/Exception
    //   12	79	202	java/lang/Exception
    //   91	109	202	java/lang/Exception
    //   12	79	207	java/net/ConnectException
    //   91	109	207	java/net/ConnectException
    //   12	79	212	org/apache/http/client/ClientProtocolException
    //   91	109	212	org/apache/http/client/ClientProtocolException
    //   12	79	217	java/net/SocketTimeoutException
    //   91	109	217	java/net/SocketTimeoutException
    //   2	8	222	org/apache/http/conn/ConnectTimeoutException
  }

  public static hp c()
  {
    try
    {
      hp localhp = hp.a();
      return localhp;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static km d()
  {
    try
    {
      km localkm = new km(QQPimApplication.a());
      return localkm;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static jl e()
  {
    try
    {
      jl localjl = new jl(QQPimApplication.a());
      return localjl;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static jc f()
  {
    try
    {
      jc localjc = jc.a(QQPimApplication.a());
      return localjc;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static io g()
  {
    try
    {
      io localio = io.a();
      return localio;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static iq h()
  {
    try
    {
      iq localiq = iq.a();
      return localiq;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static he i()
  {
    try
    {
      he localhe = new he();
      return localhe;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private HttpUriRequest j()
  {
    Object localObject = null;
    if (a() != 0)
      this.d = -1;
    while (true)
    {
      return localObject;
      byte[] arrayOfByte1 = this.c;
      long l1 = System.currentTimeMillis();
      new h(this.i.getBytes());
      byte[] arrayOfByte2 = h.a(arrayOfByte1);
      new StringBuilder("byte length = ").append(arrayOfByte2.length).toString();
      long l2 = System.currentTimeMillis() - l1;
      new StringBuilder("encode time: ").append(l2).append("ms").toString();
      HttpPost localHttpPost = new HttpPost(this.a);
      localHttpPost.addHeader("Cache-Control", "no-cache");
      localHttpPost.addHeader("Content-Type", "text/html");
      HttpParams localHttpParams = localHttpPost.getParams();
      HttpConnectionParams.setConnectionTimeout(localHttpParams, 3000);
      HttpConnectionParams.setSoTimeout(localHttpParams, 5000);
      localHttpPost.setParams(localHttpParams);
      try
      {
        localHttpPost.setEntity(new ByteArrayEntity(arrayOfByte2));
        localObject = localHttpPost;
      }
      catch (ParseException localParseException)
      {
        localParseException.printStackTrace();
        this.d = -2;
        localObject = null;
      }
    }
  }

  protected abstract int a();

  public abstract void a(HttpEntity paramHttpEntity);

  public final int b()
  {
    HttpUriRequest localHttpUriRequest = j();
    int j;
    if (localHttpUriRequest == null)
      j = this.d;
    while (true)
    {
      return j;
      HttpEntity localHttpEntity = a(localHttpUriRequest);
      if (localHttpEntity == null)
      {
        j = this.d;
      }
      else
      {
        a(localHttpEntity);
        j = this.d;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     f
 * JD-Core Version:    0.6.2
 */