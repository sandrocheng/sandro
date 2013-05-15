package android.b.a;

import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.HttpContext;

class d
  implements HttpRequestInterceptor
{
  private d(a parama)
  {
  }

  public void process(HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    e locale = a.a(this.a);
    if ((locale != null) && (e.a(locale)) && ((paramHttpRequest instanceof HttpUriRequest)))
      e.a(locale, a.a((HttpUriRequest)paramHttpRequest, false));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.b.a.d
 * JD-Core Version:    0.6.2
 */