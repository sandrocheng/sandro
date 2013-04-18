package com.keniu.security.sync.d.e;

import android.util.Log;
import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

final class b
  implements X509TrustManager
{
  b(a parama)
  {
  }

  public final void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
  {
  }

  public final void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
  {
  }

  public final X509Certificate[] getAcceptedIssuers()
  {
    Log.i("HttpRequest", "Generate X509Certificate");
    return new X509Certificate[0];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.e.b
 * JD-Core Version:    0.6.2
 */