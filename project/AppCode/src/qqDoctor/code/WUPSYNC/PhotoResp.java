package WUPSYNC;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class PhotoResp extends JceStruct
{
  static ArrayList<PhotoItem> cache_needDownload;
  static ArrayList<PhotoItem> cache_needUpload;
  static int cache_result;
  public ArrayList<PhotoItem> needDownload = null;
  public ArrayList<PhotoItem> needUpload = null;
  public int pkgSize = 0;
  public int result = 0;

  static
  {
    if (!PhotoResp.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public PhotoResp()
  {
    setResult(this.result);
    setNeedUpload(this.needUpload);
    setNeedDownload(this.needDownload);
    setPkgSize(this.pkgSize);
  }

  public PhotoResp(int paramInt1, ArrayList<PhotoItem> paramArrayList1, ArrayList<PhotoItem> paramArrayList2, int paramInt2)
  {
    setResult(paramInt1);
    setNeedUpload(paramArrayList1);
    setNeedDownload(paramArrayList2);
    setPkgSize(paramInt2);
  }

  public final String className()
  {
    return "WUPSYNC.PhotoResp";
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
    localJceDisplayer.display(this.needUpload, "needUpload");
    localJceDisplayer.display(this.needDownload, "needDownload");
    localJceDisplayer.display(this.pkgSize, "pkgSize");
  }

  public final boolean equals(Object paramObject)
  {
    PhotoResp localPhotoResp = (PhotoResp)paramObject;
    if ((JceUtil.equals(this.result, localPhotoResp.result)) && (JceUtil.equals(this.needUpload, localPhotoResp.needUpload)) && (JceUtil.equals(this.needDownload, localPhotoResp.needDownload)) && (JceUtil.equals(this.pkgSize, localPhotoResp.pkgSize)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final ArrayList<PhotoItem> getNeedDownload()
  {
    return this.needDownload;
  }

  public final ArrayList<PhotoItem> getNeedUpload()
  {
    return this.needUpload;
  }

  public final int getPkgSize()
  {
    return this.pkgSize;
  }

  public final int getResult()
  {
    return this.result;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.result = paramJceInputStream.read(this.result, 0, true);
    if (cache_needUpload == null)
    {
      cache_needUpload = new ArrayList();
      PhotoItem localPhotoItem2 = new PhotoItem();
      cache_needUpload.add(localPhotoItem2);
    }
    setNeedUpload((ArrayList)paramJceInputStream.read(cache_needUpload, 1, false));
    if (cache_needDownload == null)
    {
      cache_needDownload = new ArrayList();
      PhotoItem localPhotoItem1 = new PhotoItem();
      cache_needDownload.add(localPhotoItem1);
    }
    setNeedDownload((ArrayList)paramJceInputStream.read(cache_needDownload, 2, false));
    setPkgSize(paramJceInputStream.read(this.pkgSize, 3, true));
  }

  public final void setNeedDownload(ArrayList<PhotoItem> paramArrayList)
  {
    this.needDownload = paramArrayList;
  }

  public final void setNeedUpload(ArrayList<PhotoItem> paramArrayList)
  {
    this.needUpload = paramArrayList;
  }

  public final void setPkgSize(int paramInt)
  {
    this.pkgSize = paramInt;
  }

  public final void setResult(int paramInt)
  {
    this.result = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.result, 0);
    if (this.needUpload != null)
      paramJceOutputStream.write(this.needUpload, 1);
    if (this.needDownload != null)
      paramJceOutputStream.write(this.needDownload, 2);
    paramJceOutputStream.write(this.pkgSize, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     WUPSYNC.PhotoResp
 * JD-Core Version:    0.6.2
 */