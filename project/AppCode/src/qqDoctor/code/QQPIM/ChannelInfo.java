package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class ChannelInfo extends JceStruct
  implements Cloneable
{
  static ArrayList<SoftKey> cache_checksoft;
  static int cache_product;
  public ArrayList<SoftKey> checksoft = null;
  public String id = "";
  public int isbuildin = 0;
  public int product = EProduct.EP_None.value();
  public String token = "";

  static
  {
    if (!ChannelInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public ChannelInfo()
  {
    setId(this.id);
    setProduct(this.product);
    setIsbuildin(this.isbuildin);
    setToken(this.token);
    setChecksoft(this.checksoft);
  }

  public ChannelInfo(String paramString1, int paramInt1, int paramInt2, String paramString2, ArrayList<SoftKey> paramArrayList)
  {
    setId(paramString1);
    setProduct(paramInt1);
    setIsbuildin(paramInt2);
    setToken(paramString2);
    setChecksoft(paramArrayList);
  }

  public final String className()
  {
    return "QQPIM.ChannelInfo";
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
    localJceDisplayer.display(this.id, "id");
    localJceDisplayer.display(this.product, "product");
    localJceDisplayer.display(this.isbuildin, "isbuildin");
    localJceDisplayer.display(this.token, "token");
    localJceDisplayer.display(this.checksoft, "checksoft");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      ChannelInfo localChannelInfo = (ChannelInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.id, localChannelInfo.id);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.product, localChannelInfo.product);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.isbuildin, localChannelInfo.isbuildin);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.token, localChannelInfo.token);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.checksoft, localChannelInfo.checksoft);
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
    return "QQPIM.ChannelInfo";
  }

  public final ArrayList<SoftKey> getChecksoft()
  {
    return this.checksoft;
  }

  public final String getId()
  {
    return this.id;
  }

  public final int getIsbuildin()
  {
    return this.isbuildin;
  }

  public final int getProduct()
  {
    return this.product;
  }

  public final String getToken()
  {
    return this.token;
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
    this.id = paramJceInputStream.readString(0, true);
    this.product = paramJceInputStream.read(this.product, 1, false);
    this.isbuildin = paramJceInputStream.read(this.isbuildin, 2, false);
    this.token = paramJceInputStream.readString(3, false);
    if (cache_checksoft == null)
    {
      cache_checksoft = new ArrayList();
      SoftKey localSoftKey = new SoftKey();
      cache_checksoft.add(localSoftKey);
    }
    setChecksoft((ArrayList)paramJceInputStream.read(cache_checksoft, 4, false));
  }

  public final void setChecksoft(ArrayList<SoftKey> paramArrayList)
  {
    this.checksoft = paramArrayList;
  }

  public final void setId(String paramString)
  {
    this.id = paramString;
  }

  public final void setIsbuildin(int paramInt)
  {
    this.isbuildin = paramInt;
  }

  public final void setProduct(int paramInt)
  {
    this.product = paramInt;
  }

  public final void setToken(String paramString)
  {
    this.token = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.id, 0);
    paramJceOutputStream.write(this.product, 1);
    paramJceOutputStream.write(this.isbuildin, 2);
    if (this.token != null)
      paramJceOutputStream.write(this.token, 3);
    if (this.checksoft != null)
      paramJceOutputStream.write(this.checksoft, 4);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.ChannelInfo
 * JD-Core Version:    0.6.2
 */