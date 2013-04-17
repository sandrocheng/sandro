package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class UploadInfo extends JceStruct
{
  public long pos = 0L;
  public int size = 0;

  static
  {
    if (!UploadInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public UploadInfo()
  {
    setPos(this.pos);
    setSize(this.size);
  }

  public UploadInfo(long paramLong, int paramInt)
  {
    setPos(paramLong);
    setSize(paramInt);
  }

  public final String className()
  {
    return "QQPIM.UploadInfo";
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
    localJceDisplayer.display(this.pos, "pos");
    localJceDisplayer.display(this.size, "size");
  }

  public final boolean equals(Object paramObject)
  {
    UploadInfo localUploadInfo = (UploadInfo)paramObject;
    if ((JceUtil.equals(this.pos, localUploadInfo.pos)) && (JceUtil.equals(this.size, localUploadInfo.size)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String fullClassName()
  {
    return "QQPIM.UploadInfo";
  }

  public final long getPos()
  {
    return this.pos;
  }

  public final int getSize()
  {
    return this.size;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.pos = paramJceInputStream.read(this.pos, 0, true);
    this.size = paramJceInputStream.read(this.size, 1, true);
  }

  public final void setPos(long paramLong)
  {
    this.pos = paramLong;
  }

  public final void setSize(int paramInt)
  {
    this.size = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.pos, 0);
    paramJceOutputStream.write(this.size, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.UploadInfo
 * JD-Core Version:    0.6.2
 */