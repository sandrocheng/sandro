package WUPSYNC;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class DownloadResp extends JceStruct
{
  static ArrayList<Action> cache_actionList;
  static ArrayList<PhotoItem> cache_photoList;
  static int cache_result;
  public ArrayList<Action> actionList = null;
  public byte isFinish = 0;
  public ArrayList<PhotoItem> photoList = null;
  public int result = 0;

  static
  {
    if (!DownloadResp.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public DownloadResp()
  {
    setResult(this.result);
    setActionList(this.actionList);
    setIsFinish(this.isFinish);
    setPhotoList(this.photoList);
  }

  public DownloadResp(int paramInt, ArrayList<Action> paramArrayList, byte paramByte, ArrayList<PhotoItem> paramArrayList1)
  {
    setResult(paramInt);
    setActionList(paramArrayList);
    setIsFinish(paramByte);
    setPhotoList(paramArrayList1);
  }

  public final String className()
  {
    return "WUPSYNC.DownloadResp";
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
    localJceDisplayer.display(this.actionList, "actionList");
    localJceDisplayer.display(this.isFinish, "isFinish");
    localJceDisplayer.display(this.photoList, "photoList");
  }

  public final boolean equals(Object paramObject)
  {
    DownloadResp localDownloadResp = (DownloadResp)paramObject;
    if ((JceUtil.equals(this.result, localDownloadResp.result)) && (JceUtil.equals(this.actionList, localDownloadResp.actionList)) && (JceUtil.equals(this.isFinish, localDownloadResp.isFinish)) && (JceUtil.equals(this.photoList, localDownloadResp.photoList)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final ArrayList<Action> getActionList()
  {
    return this.actionList;
  }

  public final byte getIsFinish()
  {
    return this.isFinish;
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
    if (cache_actionList == null)
    {
      cache_actionList = new ArrayList();
      Action localAction = new Action();
      cache_actionList.add(localAction);
    }
    setActionList((ArrayList)paramJceInputStream.read(cache_actionList, 1, true));
    setIsFinish(paramJceInputStream.read(this.isFinish, 2, true));
    if (cache_photoList == null)
    {
      cache_photoList = new ArrayList();
      PhotoItem localPhotoItem = new PhotoItem();
      cache_photoList.add(localPhotoItem);
    }
    setPhotoList((ArrayList)paramJceInputStream.read(cache_photoList, 3, false));
  }

  public final void setActionList(ArrayList<Action> paramArrayList)
  {
    this.actionList = paramArrayList;
  }

  public final void setIsFinish(byte paramByte)
  {
    this.isFinish = paramByte;
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
    paramJceOutputStream.write(this.actionList, 1);
    paramJceOutputStream.write(this.isFinish, 2);
    if (this.photoList != null)
      paramJceOutputStream.write(this.photoList, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     WUPSYNC.DownloadResp
 * JD-Core Version:    0.6.2
 */