package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class FeatureItem extends JceStruct
  implements Cloneable
{
  public String content = "";
  public short id = 0;

  static
  {
    if (!FeatureItem.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public FeatureItem()
  {
    setId(this.id);
    setContent(this.content);
  }

  public FeatureItem(short paramShort, String paramString)
  {
    setId(paramShort);
    setContent(paramString);
  }

  public final String className()
  {
    return "QQPIM.FeatureItem";
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
    localJceDisplayer.display(this.content, "content");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      FeatureItem localFeatureItem = (FeatureItem)paramObject;
      boolean bool2 = JceUtil.equals(this.id, localFeatureItem.id);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.content, localFeatureItem.content);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.FeatureItem";
  }

  public final String getContent()
  {
    return this.content;
  }

  public final short getId()
  {
    return this.id;
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
    this.id = paramJceInputStream.read(this.id, 0, true);
    this.content = paramJceInputStream.readString(1, true);
  }

  public final void setContent(String paramString)
  {
    this.content = paramString;
  }

  public final void setId(short paramShort)
  {
    this.id = paramShort;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.id, 0);
    paramJceOutputStream.write(this.content, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.FeatureItem
 * JD-Core Version:    0.6.2
 */