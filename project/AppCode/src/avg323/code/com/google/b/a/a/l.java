package com.google.b.a.a;

import com.google.b.b.a;
import com.google.b.b.e;
import com.google.b.b.f;
import com.google.b.c;
import com.google.b.j;
import java.net.URI;
import java.net.URISyntaxException;

final class l extends j
{
  public void a(f paramf, URI paramURI)
  {
    if (paramURI == null);
    for (String str = null; ; str = paramURI.toASCIIString())
    {
      paramf.b(str);
      return;
    }
  }

  public URI b(a parama)
  {
    URI localURI = null;
    if (parama.g() == e.i)
      parama.k();
    while (true)
    {
      return localURI;
      try
      {
        String str = parama.i();
        boolean bool = "null".equals(str);
        localURI = null;
        if (bool)
          continue;
        localURI = new URI(str);
      }
      catch (URISyntaxException localURISyntaxException)
      {
        throw new c(localURISyntaxException);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.b.a.a.l
 * JD-Core Version:    0.6.2
 */