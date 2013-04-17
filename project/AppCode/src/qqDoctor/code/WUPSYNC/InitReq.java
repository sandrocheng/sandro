package WUPSYNC;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class InitReq extends JceStruct
{
  static int cache_dataType;
  static DevInf cache_devInfo;
  static PhotoSpec cache_photoSpec;
  static int cache_syncType;
  static AccInfo cache_userInfo;
  public short addCount = 0;
  public int dataType = 0;
  public short delCount = 0;
  public DevInf devInfo = null;
  public String filter = "";
  public byte groupSync = 0;
  public int lastAnchor = 0;
  public short maxCount = 0;
  public int maxSize = 0;
  public short mdfCount = 0;
  public byte needPhoto = 0;
  public int nextAnchor = 0;
  public PhotoSpec photoSpec = null;
  public int syncType = 0;
  public int totalCount = 0;
  public AccInfo userInfo = null;

  static
  {
    if (!InitReq.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public InitReq()
  {
    setUserInfo(this.userInfo);
    setDevInfo(this.devInfo);
    setDataType(this.dataType);
    setSyncType(this.syncType);
    setLastAnchor(this.lastAnchor);
    setNextAnchor(this.nextAnchor);
    setMaxSize(this.maxSize);
    setMaxCount(this.maxCount);
    setGroupSync(this.groupSync);
    setNeedPhoto(this.needPhoto);
    setFilter(this.filter);
    setPhotoSpec(this.photoSpec);
    setAddCount(this.addCount);
    setMdfCount(this.mdfCount);
    setDelCount(this.delCount);
    setTotalCount(this.totalCount);
  }

  public InitReq(AccInfo paramAccInfo, DevInf paramDevInf, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, short paramShort1, byte paramByte1, byte paramByte2, String paramString, PhotoSpec paramPhotoSpec, short paramShort2, short paramShort3, short paramShort4, int paramInt6)
  {
    setUserInfo(paramAccInfo);
    setDevInfo(paramDevInf);
    setDataType(paramInt1);
    setSyncType(paramInt2);
    setLastAnchor(paramInt3);
    setNextAnchor(paramInt4);
    setMaxSize(paramInt5);
    setMaxCount(paramShort1);
    setGroupSync(paramByte1);
    setNeedPhoto(paramByte2);
    setFilter(paramString);
    setPhotoSpec(paramPhotoSpec);
    setAddCount(paramShort2);
    setMdfCount(paramShort3);
    setDelCount(paramShort4);
    setTotalCount(paramInt6);
  }

  public final String className()
  {
    return "WUPSYNC.InitReq";
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
    localJceDisplayer.display(this.dataType, "dataType");
    localJceDisplayer.display(this.syncType, "syncType");
    localJceDisplayer.display(this.lastAnchor, "lastAnchor");
    localJceDisplayer.display(this.nextAnchor, "nextAnchor");
    localJceDisplayer.display(this.maxSize, "maxSize");
    localJceDisplayer.display(this.maxCount, "maxCount");
    localJceDisplayer.display(this.groupSync, "groupSync");
    localJceDisplayer.display(this.needPhoto, "needPhoto");
    localJceDisplayer.display(this.filter, "filter");
    localJceDisplayer.display(this.photoSpec, "photoSpec");
    localJceDisplayer.display(this.addCount, "addCount");
    localJceDisplayer.display(this.mdfCount, "mdfCount");
    localJceDisplayer.display(this.delCount, "delCount");
    localJceDisplayer.display(this.totalCount, "totalCount");
  }

  public final boolean equals(Object paramObject)
  {
    InitReq localInitReq = (InitReq)paramObject;
    if ((JceUtil.equals(this.userInfo, localInitReq.userInfo)) && (JceUtil.equals(this.devInfo, localInitReq.devInfo)) && (JceUtil.equals(this.dataType, localInitReq.dataType)) && (JceUtil.equals(this.syncType, localInitReq.syncType)) && (JceUtil.equals(this.lastAnchor, localInitReq.lastAnchor)) && (JceUtil.equals(this.nextAnchor, localInitReq.nextAnchor)) && (JceUtil.equals(this.maxSize, localInitReq.maxSize)) && (JceUtil.equals(this.maxCount, localInitReq.maxCount)) && (JceUtil.equals(this.groupSync, localInitReq.groupSync)) && (JceUtil.equals(this.needPhoto, localInitReq.needPhoto)) && (JceUtil.equals(this.filter, localInitReq.filter)) && (JceUtil.equals(this.photoSpec, localInitReq.photoSpec)) && (JceUtil.equals(this.addCount, localInitReq.addCount)) && (JceUtil.equals(this.mdfCount, localInitReq.mdfCount)) && (JceUtil.equals(this.delCount, localInitReq.delCount)) && (JceUtil.equals(this.totalCount, localInitReq.totalCount)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final short getAddCount()
  {
    return this.addCount;
  }

  public final int getDataType()
  {
    return this.dataType;
  }

  public final short getDelCount()
  {
    return this.delCount;
  }

  public final DevInf getDevInfo()
  {
    return this.devInfo;
  }

  public final String getFilter()
  {
    return this.filter;
  }

  public final byte getGroupSync()
  {
    return this.groupSync;
  }

  public final int getLastAnchor()
  {
    return this.lastAnchor;
  }

  public final short getMaxCount()
  {
    return this.maxCount;
  }

  public final int getMaxSize()
  {
    return this.maxSize;
  }

  public final short getMdfCount()
  {
    return this.mdfCount;
  }

  public final byte getNeedPhoto()
  {
    return this.needPhoto;
  }

  public final int getNextAnchor()
  {
    return this.nextAnchor;
  }

  public final PhotoSpec getPhotoSpec()
  {
    return this.photoSpec;
  }

  public final int getSyncType()
  {
    return this.syncType;
  }

  public final int getTotalCount()
  {
    return this.totalCount;
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
    this.dataType = paramJceInputStream.read(this.dataType, 2, true);
    this.syncType = paramJceInputStream.read(this.syncType, 3, true);
    this.lastAnchor = paramJceInputStream.read(this.lastAnchor, 4, true);
    this.nextAnchor = paramJceInputStream.read(this.nextAnchor, 5, true);
    this.maxSize = paramJceInputStream.read(this.maxSize, 6, true);
    this.maxCount = paramJceInputStream.read(this.maxCount, 7, true);
    this.groupSync = paramJceInputStream.read(this.groupSync, 8, true);
    this.needPhoto = paramJceInputStream.read(this.needPhoto, 9, true);
    this.filter = paramJceInputStream.readString(10, false);
    if (cache_photoSpec == null)
      cache_photoSpec = new PhotoSpec();
    this.photoSpec = ((PhotoSpec)paramJceInputStream.read(cache_photoSpec, 11, false));
    this.addCount = paramJceInputStream.read(this.addCount, 12, false);
    this.mdfCount = paramJceInputStream.read(this.mdfCount, 13, false);
    this.delCount = paramJceInputStream.read(this.delCount, 14, false);
    this.totalCount = paramJceInputStream.read(this.totalCount, 15, false);
  }

  public final void setAddCount(short paramShort)
  {
    this.addCount = paramShort;
  }

  public final void setDataType(int paramInt)
  {
    this.dataType = paramInt;
  }

  public final void setDelCount(short paramShort)
  {
    this.delCount = paramShort;
  }

  public final void setDevInfo(DevInf paramDevInf)
  {
    this.devInfo = paramDevInf;
  }

  public final void setFilter(String paramString)
  {
    this.filter = paramString;
  }

  public final void setGroupSync(byte paramByte)
  {
    this.groupSync = paramByte;
  }

  public final void setLastAnchor(int paramInt)
  {
    this.lastAnchor = paramInt;
  }

  public final void setMaxCount(short paramShort)
  {
    this.maxCount = paramShort;
  }

  public final void setMaxSize(int paramInt)
  {
    this.maxSize = paramInt;
  }

  public final void setMdfCount(short paramShort)
  {
    this.mdfCount = paramShort;
  }

  public final void setNeedPhoto(byte paramByte)
  {
    this.needPhoto = paramByte;
  }

  public final void setNextAnchor(int paramInt)
  {
    this.nextAnchor = paramInt;
  }

  public final void setPhotoSpec(PhotoSpec paramPhotoSpec)
  {
    this.photoSpec = paramPhotoSpec;
  }

  public final void setSyncType(int paramInt)
  {
    this.syncType = paramInt;
  }

  public final void setTotalCount(int paramInt)
  {
    this.totalCount = paramInt;
  }

  public final void setUserInfo(AccInfo paramAccInfo)
  {
    this.userInfo = paramAccInfo;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.userInfo, 0);
    paramJceOutputStream.write(this.devInfo, 1);
    paramJceOutputStream.write(this.dataType, 2);
    paramJceOutputStream.write(this.syncType, 3);
    paramJceOutputStream.write(this.lastAnchor, 4);
    paramJceOutputStream.write(this.nextAnchor, 5);
    paramJceOutputStream.write(this.maxSize, 6);
    paramJceOutputStream.write(this.maxCount, 7);
    paramJceOutputStream.write(this.groupSync, 8);
    paramJceOutputStream.write(this.needPhoto, 9);
    if (this.filter != null)
      paramJceOutputStream.write(this.filter, 10);
    if (this.photoSpec != null)
      paramJceOutputStream.write(this.photoSpec, 11);
    paramJceOutputStream.write(this.addCount, 12);
    paramJceOutputStream.write(this.mdfCount, 13);
    paramJceOutputStream.write(this.delCount, 14);
    paramJceOutputStream.write(this.totalCount, 15);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     WUPSYNC.InitReq
 * JD-Core Version:    0.6.2
 */