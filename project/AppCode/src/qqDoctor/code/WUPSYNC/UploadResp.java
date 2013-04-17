package WUPSYNC;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class UploadResp extends JceStruct
{
  static ArrayList<Status> cache_failList;
  static ArrayList<PhotoItem> cache_photoList;
  static int cache_result;
  public short addCount = 0;
  public short delCount = 0;
  public ArrayList<Status> failList = null;
  public short mdfCount = 0;
  public short mergeCount = 0;
  public ArrayList<PhotoItem> photoList = null;
  public int result = 0;

  static
  {
    if (!UploadResp.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public UploadResp()
  {
    setResult(this.result);
    setAddCount(this.addCount);
    setMdfCount(this.mdfCount);
    setDelCount(this.delCount);
    setMergeCount(this.mergeCount);
    setFailList(this.failList);
    setPhotoList(this.photoList);
  }

  public UploadResp(int paramInt, short paramShort1, short paramShort2, short paramShort3, short paramShort4, ArrayList<Status> paramArrayList, ArrayList<PhotoItem> paramArrayList1)
  {
    setResult(paramInt);
    setAddCount(paramShort1);
    setMdfCount(paramShort2);
    setDelCount(paramShort3);
    setMergeCount(paramShort4);
    setFailList(paramArrayList);
    setPhotoList(paramArrayList1);
  }

  public final String className()
  {
    return "WUPSYNC.UploadResp";
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
    localJceDisplayer.display(this.result, "result");
    localJceDisplayer.display(this.addCount, "addCount");
    localJceDisplayer.display(this.mdfCount, "mdfCount");
    localJceDisplayer.display(this.delCount, "delCount");
    localJceDisplayer.display(this.mergeCount, "mergeCount");
    localJceDisplayer.display(this.failList, "failList");
    localJceDisplayer.display(this.photoList, "photoList");
  }

  public final boolean equals(Object paramObject)
  {
    UploadResp localUploadResp = (UploadResp)paramObject;
    if ((JceUtil.equals(this.result, localUploadResp.result)) && (JceUtil.equals(this.addCount, localUploadResp.addCount)) && (JceUtil.equals(this.mdfCount, localUploadResp.mdfCount)) && (JceUtil.equals(this.delCount, localUploadResp.delCount)) && (JceUtil.equals(this.mergeCount, localUploadResp.mergeCount)) && (JceUtil.equals(this.failList, localUploadResp.failList)) && (JceUtil.equals(this.photoList, localUploadResp.photoList)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final short getAddCount()
  {
    return this.addCount;
  }

  public final short getDelCount()
  {
    return this.delCount;
  }

  public final ArrayList<Status> getFailList()
  {
    return this.failList;
  }

  public final short getMdfCount()
  {
    return this.mdfCount;
  }

  public final short getMergeCount()
  {
    return this.mergeCount;
  }

  public final ArrayList<PhotoItem> getPhotoList()
  {
    return this.photoList;
  }

  public final int getResult()
  {
    return this.result;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.result = paramJceInputStream.read(this.result, 0, true);
    this.addCount = paramJceInputStream.read(this.addCount, 1, true);
    this.mdfCount = paramJceInputStream.read(this.mdfCount, 2, true);
    this.delCount = paramJceInputStream.read(this.delCount, 3, true);
    this.mergeCount = paramJceInputStream.read(this.mergeCount, 4, true);
    if (cache_failList == null)
    {
      cache_failList = new ArrayList();
      Status localStatus = new Status();
      cache_failList.add(localStatus);
    }
    setFailList((ArrayList)paramJceInputStream.read(cache_failList, 5, false));
    if (cache_photoList == null)
    {
      cache_photoList = new ArrayList();
      PhotoItem localPhotoItem = new PhotoItem();
      cache_photoList.add(localPhotoItem);
    }
    setPhotoList((ArrayList)paramJceInputStream.read(cache_photoList, 6, false));
  }

  public final void setAddCount(short paramShort)
  {
    this.addCount = paramShort;
  }

  public final void setDelCount(short paramShort)
  {
    this.delCount = paramShort;
  }

  public final void setFailList(ArrayList<Status> paramArrayList)
  {
    this.failList = paramArrayList;
  }

  public final void setMdfCount(short paramShort)
  {
    this.mdfCount = paramShort;
  }

  public final void setMergeCount(short paramShort)
  {
    this.mergeCount = paramShort;
  }

  public final void setPhotoList(ArrayList<PhotoItem> paramArrayList)
  {
    this.photoList = paramArrayList;
  }

  public final void setResult(int paramInt)
  {
    this.result = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.result, 0);
    paramJceOutputStream.write(this.addCount, 1);
    paramJceOutputStream.write(this.mdfCount, 2);
    paramJceOutputStream.write(this.delCount, 3);
    paramJceOutputStream.write(this.mergeCount, 4);
    if (this.failList != null)
      paramJceOutputStream.write(this.failList, 5);
    if (this.photoList != null)
      paramJceOutputStream.write(this.photoList, 6);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     WUPSYNC.UploadResp
 * JD-Core Version:    0.6.2
 */