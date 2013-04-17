package WUPSYNC;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class UploadReq extends JceStruct
{
  static ArrayList<Action> cache_actionList;
  public ArrayList<Action> actionList = null;
  public byte isFinish = 0;
  public short seqId = 0;
  public String sid = "";

  static
  {
    if (!UploadReq.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public UploadReq()
  {
    setSid(this.sid);
    setSeqId(this.seqId);
    setActionList(this.actionList);
    setIsFinish(this.isFinish);
  }

  public UploadReq(String paramString, short paramShort, ArrayList<Action> paramArrayList, byte paramByte)
  {
    setSid(paramString);
    setSeqId(paramShort);
    setActionList(paramArrayList);
    setIsFinish(paramByte);
  }

  public final String className()
  {
    return "WUPSYNC.UploadReq";
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
    localJceDisplayer.display(this.sid, "sid");
    localJceDisplayer.display(this.seqId, "seqId");
    localJceDisplayer.display(this.actionList, "actionList");
    localJceDisplayer.display(this.isFinish, "isFinish");
  }

  public final boolean equals(Object paramObject)
  {
    UploadReq localUploadReq = (UploadReq)paramObject;
    if ((JceUtil.equals(this.sid, localUploadReq.sid)) && (JceUtil.equals(this.seqId, localUploadReq.seqId)) && (JceUtil.equals(this.actionList, localUploadReq.actionList)) && (JceUtil.equals(this.isFinish, localUploadReq.isFinish)));
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

  public final short getSeqId()
  {
    return this.seqId;
  }

  public final String getSid()
  {
    return this.sid;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.sid = paramJceInputStream.readString(0, true);
    this.seqId = paramJceInputStream.read(this.seqId, 1, true);
    if (cache_actionList == null)
    {
      cache_actionList = new ArrayList();
      Action localAction = new Action();
      cache_actionList.add(localAction);
    }
    setActionList((ArrayList)paramJceInputStream.read(cache_actionList, 2, true));
    setIsFinish(paramJceInputStream.read(this.isFinish, 3, true));
  }

  public final void setActionList(ArrayList<Action> paramArrayList)
  {
    this.actionList = paramArrayList;
  }

  public final void setIsFinish(byte paramByte)
  {
    this.isFinish = paramByte;
  }

  public final void setSeqId(short paramShort)
  {
    this.seqId = paramShort;
  }

  public final void setSid(String paramString)
  {
    this.sid = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.sid, 0);
    paramJceOutputStream.write(this.seqId, 1);
    paramJceOutputStream.write(this.actionList, 2);
    paramJceOutputStream.write(this.isFinish, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     WUPSYNC.UploadReq
 * JD-Core Version:    0.6.2
 */