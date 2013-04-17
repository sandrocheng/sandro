package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class CloudCmdRes extends JceStruct
  implements Cloneable
{
  public int res = 0;
  public int seqid = 0;

  static
  {
    if (!CloudCmdRes.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public CloudCmdRes()
  {
    setSeqid(this.seqid);
    setRes(this.res);
  }

  public CloudCmdRes(int paramInt1, int paramInt2)
  {
    setSeqid(paramInt1);
    setRes(paramInt2);
  }

  public final String className()
  {
    return "QQPIM.CloudCmdRes";
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
    localJceDisplayer.display(this.seqid, "seqid");
    localJceDisplayer.display(this.res, "res");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      CloudCmdRes localCloudCmdRes = (CloudCmdRes)paramObject;
      boolean bool2 = JceUtil.equals(this.seqid, localCloudCmdRes.seqid);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.res, localCloudCmdRes.res);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.CloudCmdRes";
  }

  public final int getRes()
  {
    return this.res;
  }

  public final int getSeqid()
  {
    return this.seqid;
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
    this.seqid = paramJceInputStream.read(this.seqid, 1, true);
    this.res = paramJceInputStream.read(this.res, 2, true);
  }

  public final void setRes(int paramInt)
  {
    this.res = paramInt;
  }

  public final void setSeqid(int paramInt)
  {
    this.seqid = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.seqid, 1);
    paramJceOutputStream.write(this.res, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.CloudCmdRes
 * JD-Core Version:    0.6.2
 */