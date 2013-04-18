package com.a.a.a.a;

import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import org.apache.http.HttpVersion;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;

public class a extends AsyncTask
{
  private static final String a = a.class.getSimpleName();
  private static final boolean b = true;
  private static String e;
  private DefaultHttpClient c;
  private HttpUriRequest d;
  private String f;
  private HashMap g;
  private d h;
  private e i;
  private f j;
  private c k;
  private b l;

  private Boolean a(Object[] paramArrayOfObject)
  {
    if ((paramArrayOfObject != null) && (paramArrayOfObject.length > 0))
      this.f = ((String)paramArrayOfObject[0]);
    String str1 = this.f;
    if (str1 == null)
      throw new NullPointerException("the url must not be mull!");
    Log.d(a, "begin execute http request:" + this.f);
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpProtocolParams.setVersion(localBasicHttpParams, HttpVersion.HTTP_1_1);
    HttpProtocolParams.setContentCharset(localBasicHttpParams, "UTF-8");
    HttpProtocolParams.setUseExpectContinue(localBasicHttpParams, false);
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 30000);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, 2147483647);
    this.c = new DefaultHttpClient(localBasicHttpParams);
    HashMap localHashMap = this.g;
    if (localHashMap != null);
    HttpUriRequest localHttpUriRequest;
    ArrayList localArrayList;
    Object localObject2;
    while (true)
    {
      try
      {
        localObject1 = new HttpPost(str1);
        this.d = ((HttpUriRequest)localObject1);
        localHttpUriRequest = this.d;
        if (!TextUtils.isEmpty(e))
          localHttpUriRequest.addHeader("User-Agent", e);
        if ((localHashMap == null) || (!(localHttpUriRequest instanceof HttpPost)))
          break label351;
        localArrayList = new ArrayList();
        Iterator localIterator = localHashMap.keySet().iterator();
        if (!localIterator.hasNext())
          break;
        String str2 = (String)localIterator.next();
        localArrayList.add(new BasicNameValuePair(str2, (String)localHashMap.get(str2)));
        continue;
      }
      catch (Exception localException)
      {
        publishProgress(new Object[] { localException });
        Log.d(a, "" + localException.getMessage(), localException);
        localObject2 = Boolean.valueOf(false);
      }
      return localObject2;
      Object localObject1 = new HttpGet(str1);
    }
    ((HttpPost)localHttpUriRequest).setEntity(new UrlEncodedFormEntity(localArrayList, "UTF-8"));
    label351: if (this.i != null);
    this.c.execute(localHttpUriRequest);
    if (this.j != null);
    for (boolean bool = this.j.a(); ; bool = false)
    {
      Boolean localBoolean = Boolean.valueOf(bool);
      localObject2 = localBoolean;
      break;
    }
  }

  private static void a()
  {
  }

  private void a(b paramb)
  {
    this.l = paramb;
  }

  private void a(c paramc)
  {
    this.k = paramc;
  }

  private void a(d paramd)
  {
    this.h = paramd;
  }

  private void a(e parame)
  {
    this.i = parame;
  }

  private void a(f paramf)
  {
    this.j = paramf;
  }

  private void a(Boolean paramBoolean)
  {
    super.onPostExecute(paramBoolean);
    d();
    if (this.k != null)
      paramBoolean.booleanValue();
  }

  private void a(String paramString)
  {
    this.f = paramString;
  }

  private void a(String paramString1, String paramString2)
  {
    if (this.g == null)
      this.g = new HashMap();
    this.g.put(paramString1, paramString2);
  }

  private void a(HashMap paramHashMap)
  {
    this.g = paramHashMap;
  }

  private boolean a(boolean paramBoolean)
  {
    if (this.j != null);
    for (boolean bool = this.j.a(); ; bool = paramBoolean)
      return bool;
  }

  private void b()
  {
    if (this.l != null);
  }

  private void b(Boolean paramBoolean)
  {
    if (this.k != null)
      paramBoolean.booleanValue();
  }

  private static void b(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
      e = paramString;
  }

  private void c()
  {
    if (this.i != null);
  }

  private void d()
  {
    Log.d(a, "Close the http connect");
    if (this.d != null)
    {
      this.d.abort();
      this.d = null;
    }
    if (this.c != null)
    {
      this.c.getConnectionManager().shutdown();
      this.c = null;
    }
    this.f = null;
    this.g = null;
  }

  private static DefaultHttpClient e()
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpProtocolParams.setVersion(localBasicHttpParams, HttpVersion.HTTP_1_1);
    HttpProtocolParams.setContentCharset(localBasicHttpParams, "UTF-8");
    HttpProtocolParams.setUseExpectContinue(localBasicHttpParams, false);
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 30000);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, 2147483647);
    return new DefaultHttpClient(localBasicHttpParams);
  }

  protected void onCancelled()
  {
    super.onCancelled();
    d();
  }

  protected void onPreExecute()
  {
    super.onPreExecute();
    if (this.h != null);
  }

  protected void onProgressUpdate(Object[] paramArrayOfObject)
  {
    super.onProgressUpdate(paramArrayOfObject);
    if (((paramArrayOfObject[0] instanceof Exception)) && (this.l != null));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.a.a.a.a.a
 * JD-Core Version:    0.6.2
 */