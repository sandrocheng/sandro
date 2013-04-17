package WUPSYNC;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class PhotoSpec extends JceStruct
{
  public short height = 0;
  public int size = 0;
  public short wide = 0;

  static
  {
    if (!PhotoSpec.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public PhotoSpec()
  {
    setHeight(this.height);
    setWide(this.wide);
    setSize(this.size);
  }

  public PhotoSpec(short paramShort1, short paramShort2, int paramInt)
  {
    setHeight(paramShort1);
    setWide(paramShort2);
    setSize(paramInt);
  }

  public final String className()
  {
    return "WUPSYNC.PhotoSpec";
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
    localJceDisplayer.display(this.height, "height");
    localJceDisplayer.display(this.wide, "wide");
    localJceDisplayer.display(this.size, "size");
  }

  public final boolean equals(Object paramObject)
  {
    PhotoSpec localPhotoSpec = (PhotoSpec)paramObject;
    if ((JceUtil.equals(this.height, localPhotoSpec.height)) && (JceUtil.equals(this.wide, localPhotoSpec.wide)) && (JceUtil.equals(this.size, localPhotoSpec.size)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final short getHeight()
  {
    return this.height;
  }

  public final int getSize()
  {
    return this.size;
  }

  public final short getWide()
  {
    return this.wide;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.height = paramJceInputStream.read(this.height, 0, true);
    this.wide = paramJceInputStream.read(this.wide, 1, true);
    this.size = paramJceInputStream.read(this.size, 2, false);
  }

  public final void setHeight(short paramShort)
  {
    this.height = paramShort;
  }

  public final void setSize(int paramInt)
  {
    this.size = paramInt;
  }

  public final void setWide(short paramShort)
  {
    this.wide = paramShort;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.height, 0);
    paramJceOutputStream.write(this.wide, 1);
    paramJceOutputStream.write(this.size, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     WUPSYNC.PhotoSpec
 * JD-Core Version:    0.6.2
 */