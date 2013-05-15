package com.avast.android.mobilesecurity.engine;

import com.avast.android.generic.util.e;
import java.net.URI;
import java.net.URISyntaxException;
import org.apache.http.client.utils.URIUtils;

public class y
{
  public String a;
  public String b;
  public Integer c;
  public String d;

  private y()
  {
  }

  public y(String paramString1, String paramString2, Integer paramInteger, String paramString3)
  {
    this.b = paramString1;
    this.a = paramString2;
    this.c = paramInteger;
    this.d = paramString3;
    if ((paramInteger.intValue() < 1) || (paramInteger.intValue() > 49151))
      this.c = Integer.valueOf(-1);
  }

  public static y a(byte[] paramArrayOfByte)
  {
    y localy1 = new y();
    while (true)
    {
      int j;
      int k;
      y localy2;
      try
      {
        if (4 + ((Integer)e.a(paramArrayOfByte, null, Integer.TYPE, 0)).intValue() == paramArrayOfByte.length)
          break label276;
        throw new IllegalArgumentException("Invalid structure length");
        aa localaa;
        if (i < paramArrayOfByte.length)
        {
          j = ((Integer)e.a(paramArrayOfByte, null, Integer.TYPE, i)).intValue();
          k = i + 4;
          if (paramArrayOfByte[(-1 + (k + j))] != -1)
            throw new IllegalArgumentException("Invalid payload length");
          localaa = aa.a(((Short)e.a(paramArrayOfByte, null, Short.TYPE, k)).shortValue());
          if (localaa == null)
            break label282;
        }
        switch (z.a[localaa.ordinal()])
        {
        case 1:
          localy1.a = new String(paramArrayOfByte, k + 2, -1 + (j - 2));
          break;
        case 2:
          localy1.b = new String(paramArrayOfByte, k + 2, -1 + (j - 2));
          break;
        case 3:
          Integer localInteger = (Integer)e.a(paramArrayOfByte, null, Integer.TYPE, k + 2);
          if (localInteger == null)
            break;
          localy1.c = localInteger;
          break;
        case 4:
          localy1.d = new String(paramArrayOfByte, k + 2, -1 + (j - 2));
          break;
          localy2 = localy1;
        }
      }
      catch (Exception localException)
      {
        localy2 = null;
      }
      return localy2;
      label276: int i = 4;
      continue;
      label282: i = k + j;
    }
  }

  public static Integer b()
  {
    return Integer.valueOf(Integer.parseInt("si-2".substring(1 + "si-2".indexOf("-"))));
  }

  public URI a()
  {
    try
    {
      URI localURI2 = URIUtils.createURI(this.b, this.a, this.c.intValue(), this.d, null, null);
      localURI1 = localURI2;
      return localURI1;
    }
    catch (URISyntaxException localURISyntaxException)
    {
      while (true)
        URI localURI1 = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.y
 * JD-Core Version:    0.6.2
 */