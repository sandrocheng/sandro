package WUPSYNC;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class PhotoItem extends JceStruct
{
  public String luid = "";
  public String photoMd5 = "";
  public String url = "";

  static
  {
    if (!PhotoItem.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public PhotoItem()
  {
    setLuid(this.luid);
    setPhotoMd5(this.photoMd5);
    setUrl(this.url);
  }

  public PhotoItem(String paramString1, String paramString2, String paramString3)
  {
    setLuid(paramString1);
    setPhotoMd5(paramString2);
    setUrl(paramString3);
  }

  public final String className()
  {
    return "WUPSYNC.PhotoItem";
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
    localJceDisplayer.display(this.luid, "luid");
    localJceDisplayer.display(this.photoMd5, "photoMd5");
    localJceDisplayer.display(this.url, "url");
  }

  public final boolean equals(Object paramObject)
  {
    PhotoItem localPhotoItem = (PhotoItem)paramObject;
    if ((JceUtil.equals(this.luid, localPhotoItem.luid)) && (JceUtil.equals(this.photoMd5, localPhotoItem.photoMd5)) && (JceUtil.equals(this.url, localPhotoItem.url)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String getLuid()
  {
    return this.luid;
  }

  public final String getPhotoMd5()
  {
    return this.photoMd5;
  }

  public final String getUrl()
  {
    return this.url;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.luid = paramJceInputStream.readString(0, true);
    this.photoMd5 = paramJceInputStream.readString(1, true);
    this.url = paramJceInputStream.readString(2, true);
  }

  public final void setLuid(String paramString)
  {
    this.luid = paramString;
  }

  public final void setPhotoMd5(String paramString)
  {
    this.photoMd5 = paramString;
  }

  public final void setUrl(String paramString)
  {
    this.url = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.luid, 0);
    paramJceOutputStream.write(this.photoMd5, 1);
    paramJceOutputStream.write(this.url, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     WUPSYNC.PhotoItem
 * JD-Core Version:    0.6.2
 */