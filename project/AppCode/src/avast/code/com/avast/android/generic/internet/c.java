package com.avast.android.generic.internet;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.SSLCertificateSocketFactory;
import android.net.SSLSessionCache;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;

class c
{
  @TargetApi(8)
  static void a(Context paramContext, SchemeRegistry paramSchemeRegistry)
  {
    if (paramSchemeRegistry.get("https") == null)
      if (paramContext != null)
        break label40;
    label40: for (SSLSessionCache localSSLSessionCache = null; ; localSSLSessionCache = new SSLSessionCache(paramContext))
    {
      paramSchemeRegistry.register(new Scheme("https", SSLCertificateSocketFactory.getHttpSocketFactory(30000, localSSLSessionCache), 443));
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.c
 * JD-Core Version:    0.6.2
 */