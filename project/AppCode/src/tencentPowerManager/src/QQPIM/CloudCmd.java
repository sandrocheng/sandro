package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class CloudCmd extends JceStruct
  implements Cloneable
{
  static byte[] cache_param;
  public int cmdid = 0;
  public byte[] param = null;
  public int seqid = 0;

  static
  {
    if (!CloudCmd.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public CloudCmd()
  {
    setCmdid(this.cmdid);
    setParam(this.param);
    setSeqid(this.seqid);
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
    localJceDisplayer.display(this.cmdid, "cmdid");
    localJceDisplayer.display(this.param, "param");
    localJceDisplayer.display(this.seqid, "seqid");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      CloudCmd localCloudCmd = (CloudCmd)paramObject;
      boolean bool2 = JceUtil.equals(this.cmdid, localCloudCmd.cmdid);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.param, localCloudCmd.param);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.seqid, localCloudCmd.seqid);
          bool1 = false;
          if (bool4)
            bool1 = true;
        }
      }
    }
  }

  public final int getCmdid()
  {
    return this.cmdid;
  }

  public final byte[] getParam()
  {
    return this.param;
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
    this.cmdid = paramJceInputStream.read(this.cmdid, 0, true);
    if (cache_param == null)
    {
      byte[] arrayOfByte = new byte[1];
      cache_param = arrayOfByte;
      arrayOfByte[0] = 0;
    }
    this.param = paramJceInputStream.read(cache_param, 1, true);
    this.seqid = paramJceInputStream.read(this.seqid, 2, true);
  }

  public final void setCmdid(int paramInt)
  {
    this.cmdid = paramInt;
  }

  public final void setParam(byte[] paramArrayOfByte)
  {
    this.param = paramArrayOfByte;
  }

  public final void setSeqid(int paramInt)
  {
    this.seqid = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.cmdid, 0);
    paramJceOutputStream.write(this.param, 1);
    paramJceOutputStream.write(this.seqid, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     QQPIM.CloudCmd
 * JD-Core Version:    0.6.2
 */