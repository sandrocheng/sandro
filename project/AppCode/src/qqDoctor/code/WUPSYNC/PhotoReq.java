package WUPSYNC;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class PhotoReq extends JceStruct
{
  static DevInf cache_devInfo;
  static ArrayList<PhotoItem> cache_photoList;
  static PhotoSpec cache_photoSpec;
  static int cache_syncType;
  static AccInfo cache_userInfo;
  public DevInf devInfo = null;
  public ArrayList<PhotoItem> photoList = null;
  public PhotoSpec photoSpec = null;
  public int syncType = 0;
  public AccInfo userInfo = null;

  static
  {
    if (!PhotoReq.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public PhotoReq()
  {
    setUserInfo(this.userInfo);
    setDevInfo(this.devInfo);
    setPhotoSpec(this.photoSpec);
    setPhotoList(this.photoList);
    setSyncType(this.syncType);
  }

  public PhotoReq(AccInfo paramAccInfo, DevInf paramDevInf, PhotoSpec paramPhotoSpec, ArrayList<PhotoItem> paramArrayList, int paramInt)
  {
    setUserInfo(paramAccInfo);
    setDevInfo(paramDevInf);
    setPhotoSpec(paramPhotoSpec);
    setPhotoList(paramArrayList);
    setSyncType(paramInt);
  }

  public final String className()
  {
    return "WUPSYNC.PhotoReq";
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
    localJceDisplayer.display(this.userInfo, "userInfo");
    localJceDisplayer.display(this.devInfo, "devInfo");
    localJceDisplayer.display(this.photoSpec, "photoSpec");
    localJceDisplayer.display(this.photoList, "photoList");
    localJceDisplayer.display(this.syncType, "syncType");
  }

  public final boolean equals(Object paramObject)
  {
    PhotoReq localPhotoReq = (PhotoReq)paramObject;
    if ((JceUtil.equals(this.userInfo, localPhotoReq.userInfo)) && (JceUtil.equals(this.devInfo, localPhotoReq.devInfo)) && (JceUtil.equals(this.photoSpec, localPhotoReq.photoSpec)) && (JceUtil.equals(this.photoList, localPhotoReq.photoList)) && (JceUtil.equals(this.syncType, localPhotoReq.syncType)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final DevInf getDevInfo()
  {
    return this.devInfo;
  }

  public final ArrayList<PhotoItem> getPhotoList()
  {
    return this.photoList;
  }

  public final PhotoSpec getPhotoSpec()
  {
    return this.photoSpec;
  }

  public final int getSyncType()
  {
    return this.syncType;
  }

  public final AccInfo getUserInfo()
  {
    return this.userInfo;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    if (cache_userInfo == null)
      cache_userInfo = new AccInfo();
    this.userInfo = ((AccInfo)paramJceInputStream.read(cache_userInfo, 0, true));
    if (cache_devInfo == null)
      cache_devInfo = new DevInf();
    this.devInfo = ((DevInf)paramJceInputStream.read(cache_devInfo, 1, true));
    if (cache_photoSpec == null)
      cache_photoSpec = new PhotoSpec();
    this.photoSpec = ((PhotoSpec)paramJceInputStream.read(cache_photoSpec, 2, true));
    if (cache_photoList == null)
    {
      cache_photoList = new ArrayList();
      PhotoItem localPhotoItem = new PhotoItem();
      cache_photoList.add(localPhotoItem);
    }
    setPhotoList((ArrayList)paramJceInputStream.read(cache_photoList, 3, true));
    setSyncType(paramJceInputStream.read(this.syncType, 4, true));
  }

  public final void setDevInfo(DevInf paramDevInf)
  {
    this.devInfo = paramDevInf;
  }

  public final void setPhotoList(ArrayList<PhotoItem> paramArrayList)
  {
    this.photoList = paramArrayList;
  }

  public final void setPhotoSpec(PhotoSpec paramPhotoSpec)
  {
    this.photoSpec = paramPhotoSpec;
  }

  public final void setSyncType(int paramInt)
  {
    this.syncType = paramInt;
  }

  public final void setUserInfo(AccInfo paramAccInfo)
  {
    this.userInfo = paramAccInfo;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.userInfo, 0);
    paramJceOutputStream.write(this.devInfo, 1);
    paramJceOutputStream.write(this.photoSpec, 2);
    paramJceOutputStream.write(this.photoList, 3);
    paramJceOutputStream.write(this.syncType, 4);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     WUPSYNC.PhotoReq
 * JD-Core Version:    0.6.2
 */