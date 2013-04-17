package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class uploadPacketInfoResp extends JceStruct
{
  public int is_succ = 0;

  static
  {
    if (!uploadPacketInfoResp.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public uploadPacketInfoResp()
  {
    setIs_succ(this.is_succ);
  }

  public uploadPacketInfoResp(int paramInt)
  {
    setIs_succ(paramInt);
  }

  public final String className()
  {
    return "QQPIM.uploadPacketInfoResp";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.is_succ, "is_succ");
  }

  public final boolean equals(Object paramObject)
  {
    uploadPacketInfoResp localuploadPacketInfoResp = (uploadPacketInfoResp)paramObject;
    return JceUtil.equals(this.is_succ, localuploadPacketInfoResp.is_succ);
  }

  public final int getIs_succ()
  {
    return this.is_succ;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.is_succ = paramJceInputStream.read(this.is_succ, 0, true);
  }

  public final void setIs_succ(int paramInt)
  {
    this.is_succ = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.is_succ, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.uploadPacketInfoResp
 * JD-Core Version:    0.6.2
 */