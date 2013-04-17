package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class AndroidSoftInfoExpand extends JceStruct
  implements Cloneable
{
  public String recommend = "";
  public String signature = "";

  static
  {
    if (!AndroidSoftInfoExpand.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public AndroidSoftInfoExpand()
  {
    setRecommend(this.recommend);
    setSignature(this.signature);
  }

  public AndroidSoftInfoExpand(String paramString1, String paramString2)
  {
    setRecommend(paramString1);
    setSignature(paramString2);
  }

  public final String className()
  {
    return "QQPIM.AndroidSoftInfoExpand";
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
    localJceDisplayer.display(this.recommend, "recommend");
    localJceDisplayer.display(this.signature, "signature");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      AndroidSoftInfoExpand localAndroidSoftInfoExpand = (AndroidSoftInfoExpand)paramObject;
      boolean bool2 = JceUtil.equals(this.recommend, localAndroidSoftInfoExpand.recommend);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.signature, localAndroidSoftInfoExpand.signature);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.AndroidSoftInfoExpand";
  }

  public final String getRecommend()
  {
    return this.recommend;
  }

  public final String getSignature()
  {
    return this.signature;
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
    this.recommend = paramJceInputStream.readString(0, false);
    this.signature = paramJceInputStream.readString(2, false);
  }

  public final void setRecommend(String paramString)
  {
    this.recommend = paramString;
  }

  public final void setSignature(String paramString)
  {
    this.signature = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    if (this.recommend != null)
      paramJceOutputStream.write(this.recommend, 0);
    if (this.signature != null)
      paramJceOutputStream.write(this.signature, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.AndroidSoftInfoExpand
 * JD-Core Version:    0.6.2
 */