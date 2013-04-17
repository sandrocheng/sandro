package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class BrowserClient extends JceStruct
  implements Cloneable
{
  static int cache_product;
  public String guid = "";
  public String imei = "";
  public int product = 0;
  public String ua = "";
  public String version = "";

  static
  {
    if (!BrowserClient.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public BrowserClient()
  {
    setProduct(this.product);
    setVersion(this.version);
    setImei(this.imei);
    setGuid(this.guid);
    setUa(this.ua);
  }

  public BrowserClient(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    setProduct(paramInt);
    setVersion(paramString1);
    setImei(paramString2);
    setGuid(paramString3);
    setUa(paramString4);
  }

  public final String className()
  {
    return "QQPIM.BrowserClient";
  }

  public final Object clone()
  {
    try
    {
      Object localObject2 = super.clone();
      localObject1 = localObject2;
      return localObject1;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      boolean bool;
      do
      {
        bool = $assertionsDisabled;
        Object localObject1 = null;
      }
      while (bool);
    }
    throw new AssertionError();
  }

  public final void display(StringBuilder paramStringBuilder, int paramInt)
  {
    JceDisplayer localJceDisplayer = new JceDisplayer(paramStringBuilder, paramInt);
    localJceDisplayer.display(this.product, "product");
    localJceDisplayer.display(this.version, "version");
    localJceDisplayer.display(this.imei, "imei");
    localJceDisplayer.display(this.guid, "guid");
    localJceDisplayer.display(this.ua, "ua");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      BrowserClient localBrowserClient = (BrowserClient)paramObject;
      boolean bool2 = JceUtil.equals(this.product, localBrowserClient.product);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.version, localBrowserClient.version);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.imei, localBrowserClient.imei);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.guid, localBrowserClient.guid);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.ua, localBrowserClient.ua);
              bool1 = false;
              if (bool6)
                bool1 = true;
            }
          }
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.BrowserClient";
  }

  public final String getGuid()
  {
    return this.guid;
  }

  public final String getImei()
  {
    return this.imei;
  }

  public final int getProduct()
  {
    return this.product;
  }

  public final String getUa()
  {
    return this.ua;
  }

  public final String getVersion()
  {
    return this.version;
  }

  public final int hashCode()
  {
    try
    {
      throw new Exception("Need define key first!");
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return 0;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.product = paramJceInputStream.read(this.product, 0, true);
    this.version = paramJceInputStream.readString(1, true);
    this.imei = paramJceInputStream.readString(2, true);
    this.guid = paramJceInputStream.readString(3, true);
    this.ua = paramJceInputStream.readString(4, true);
  }

  public final void setGuid(String paramString)
  {
    this.guid = paramString;
  }

  public final void setImei(String paramString)
  {
    this.imei = paramString;
  }

  public final void setProduct(int paramInt)
  {
    this.product = paramInt;
  }

  public final void setUa(String paramString)
  {
    this.ua = paramString;
  }

  public final void setVersion(String paramString)
  {
    this.version = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.product, 0);
    paramJceOutputStream.write(this.version, 1);
    paramJceOutputStream.write(this.imei, 2);
    paramJceOutputStream.write(this.guid, 3);
    paramJceOutputStream.write(this.ua, 4);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.BrowserClient
 * JD-Core Version:    0.6.2
 */