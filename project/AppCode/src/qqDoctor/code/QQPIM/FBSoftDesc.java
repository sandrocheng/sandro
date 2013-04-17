package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class FBSoftDesc extends JceStruct
  implements Cloneable
{
  static SoftKey cache_softkey;
  public String desc = "";
  public SoftKey softkey = null;

  static
  {
    if (!FBSoftDesc.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public FBSoftDesc()
  {
    setSoftkey(this.softkey);
    setDesc(this.desc);
  }

  public FBSoftDesc(SoftKey paramSoftKey, String paramString)
  {
    setSoftkey(paramSoftKey);
    setDesc(paramString);
  }

  public final String className()
  {
    return "QQPIM.FBSoftDesc";
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
    localJceDisplayer.display(this.softkey, "softkey");
    localJceDisplayer.display(this.desc, "desc");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      FBSoftDesc localFBSoftDesc = (FBSoftDesc)paramObject;
      boolean bool2 = JceUtil.equals(this.softkey, localFBSoftDesc.softkey);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.desc, localFBSoftDesc.desc);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.FBSoftDesc";
  }

  public final String getDesc()
  {
    return this.desc;
  }

  public final SoftKey getSoftkey()
  {
    return this.softkey;
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
    if (cache_softkey == null)
      cache_softkey = new SoftKey();
    this.softkey = ((SoftKey)paramJceInputStream.read(cache_softkey, 0, true));
    this.desc = paramJceInputStream.readString(1, true);
  }

  public final void setDesc(String paramString)
  {
    this.desc = paramString;
  }

  public final void setSoftkey(SoftKey paramSoftKey)
  {
    this.softkey = paramSoftKey;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.softkey, 0);
    paramJceOutputStream.write(this.desc, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.FBSoftDesc
 * JD-Core Version:    0.6.2
 */