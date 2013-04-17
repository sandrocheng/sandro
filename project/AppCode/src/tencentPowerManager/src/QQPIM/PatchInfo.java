package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class PatchInfo extends JceStruct
  implements Cloneable
{
  public String checksum = "";
  public int size = 0;
  public String url = "";

  static
  {
    if (!PatchInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public PatchInfo()
  {
    setUrl(this.url);
    setChecksum(this.checksum);
    setSize(this.size);
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
    localJceDisplayer.display(this.url, "url");
    localJceDisplayer.display(this.checksum, "checksum");
    localJceDisplayer.display(this.size, "size");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      PatchInfo localPatchInfo = (PatchInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.url, localPatchInfo.url);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.checksum, localPatchInfo.checksum);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.size, localPatchInfo.size);
          bool1 = false;
          if (bool4)
            bool1 = true;
        }
      }
    }
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
    this.url = paramJceInputStream.readString(0, false);
    this.checksum = paramJceInputStream.readString(1, false);
    this.size = paramJceInputStream.read(this.size, 2, false);
  }

  public final void setChecksum(String paramString)
  {
    this.checksum = paramString;
  }

  public final void setSize(int paramInt)
  {
    this.size = paramInt;
  }

  public final void setUrl(String paramString)
  {
    this.url = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    if (this.url != null)
      paramJceOutputStream.write(this.url, 0);
    if (this.checksum != null)
      paramJceOutputStream.write(this.checksum, 1);
    paramJceOutputStream.write(this.size, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     QQPIM.PatchInfo
 * JD-Core Version:    0.6.2
 */