package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class HotwordInfo extends JceStruct
  implements Cloneable
{
  public String hotword = "";

  static
  {
    if (!HotwordInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public HotwordInfo()
  {
    setHotword(this.hotword);
  }

  public HotwordInfo(String paramString)
  {
    setHotword(paramString);
  }

  public final String className()
  {
    return "QQPIM.HotwordInfo";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.hotword, "hotword");
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    HotwordInfo localHotwordInfo;
    for (boolean bool = false; ; bool = JceUtil.equals(this.hotword, localHotwordInfo.hotword))
    {
      return bool;
      localHotwordInfo = (HotwordInfo)paramObject;
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.HotwordInfo";
  }

  public final String getHotword()
  {
    return this.hotword;
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
    this.hotword = paramJceInputStream.readString(0, true);
  }

  public final void setHotword(String paramString)
  {
    this.hotword = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.hotword, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.HotwordInfo
 * JD-Core Version:    0.6.2
 */