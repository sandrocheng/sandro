package com.google.b.a;

import com.google.b.b;
import com.google.b.b.f;
import com.google.b.b.h;
import com.google.b.c;
import com.google.b.i;
import com.google.b.j;
import java.io.EOFException;
import java.io.IOException;

public final class d
{
  public static b a(com.google.b.b.a parama)
  {
    int i = 1;
    try
    {
      parama.g();
      i = 0;
      localObject = (b)com.google.b.a.a.a.P.a(parama);
      return localObject;
    }
    catch (EOFException localEOFException)
    {
      Object localObject;
      while (i != 0)
        localObject = com.google.b.d.a;
      throw new i(localEOFException);
    }
    catch (h localh)
    {
      throw new i(localh);
    }
    catch (IOException localIOException)
    {
      throw new c(localIOException);
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw new i(localNumberFormatException);
    }
  }

  public static void a(b paramb, f paramf)
  {
    com.google.b.a.a.a.P.a(paramf, paramb);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.b.a.d
 * JD-Core Version:    0.6.2
 */