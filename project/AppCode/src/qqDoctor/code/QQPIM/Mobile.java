package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class Mobile extends JceStruct
  implements Cloneable
{
  public String brand = "";
  public String model = "";
  public String romversion = "";
  public String url = "";

  static
  {
    if (!Mobile.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public Mobile()
  {
    setModel(this.model);
    setBrand(this.brand);
    setUrl(this.url);
    setRomversion(this.romversion);
  }

  public Mobile(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    setModel(paramString1);
    setBrand(paramString2);
    setUrl(paramString3);
    setRomversion(paramString4);
  }

  public final String className()
  {
    return "QQPIM.Mobile";
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
    localJceDisplayer.display(this.model, "model");
    localJceDisplayer.display(this.brand, "brand");
    localJceDisplayer.display(this.url, "url");
    localJceDisplayer.display(this.romversion, "romversion");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      Mobile localMobile = (Mobile)paramObject;
      boolean bool2 = JceUtil.equals(this.model, localMobile.model);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.brand, localMobile.brand);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.url, localMobile.url);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.romversion, localMobile.romversion);
            bool1 = false;
            if (bool5)
              bool1 = true;
          }
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.Mobile";
  }

  public final String getBrand()
  {
    return this.brand;
  }

  public final String getModel()
  {
    return this.model;
  }

  public final String getRomversion()
  {
    return this.romversion;
  }

  public final String getUrl()
  {
    return this.url;
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
    this.model = paramJceInputStream.readString(0, true);
    this.brand = paramJceInputStream.readString(1, true);
    this.url = paramJceInputStream.readString(2, false);
    this.romversion = paramJceInputStream.readString(3, false);
  }

  public final void setBrand(String paramString)
  {
    this.brand = paramString;
  }

  public final void setModel(String paramString)
  {
    this.model = paramString;
  }

  public final void setRomversion(String paramString)
  {
    this.romversion = paramString;
  }

  public final void setUrl(String paramString)
  {
    this.url = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.model, 0);
    paramJceOutputStream.write(this.brand, 1);
    if (this.url != null)
      paramJceOutputStream.write(this.url, 2);
    if (this.romversion != null)
      paramJceOutputStream.write(this.romversion, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.Mobile
 * JD-Core Version:    0.6.2
 */