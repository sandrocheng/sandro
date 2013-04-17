package WUPSYNC;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class Action extends JceStruct
{
  static int cache_action;
  static byte[] cache_data;
  static ArrayList<String> cache_groupList;
  public int action = 0;
  public short aid = 0;
  public byte[] data = null;
  public ArrayList<String> groupList = null;
  public String guid = "";
  public String luid = "";
  public String photoMd5 = "";

  static
  {
    if (!Action.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public Action()
  {
    setAid(this.aid);
    setAction(this.action);
    setLuid(this.luid);
    setData(this.data);
    setPhotoMd5(this.photoMd5);
    setGroupList(this.groupList);
    setGuid(this.guid);
  }

  public Action(short paramShort, int paramInt, String paramString1, byte[] paramArrayOfByte, String paramString2, ArrayList<String> paramArrayList, String paramString3)
  {
    setAid(paramShort);
    setAction(paramInt);
    setLuid(paramString1);
    setData(paramArrayOfByte);
    setPhotoMd5(paramString2);
    setGroupList(paramArrayList);
    setGuid(paramString3);
  }

  public final String className()
  {
    return "WUPSYNC.Action";
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
    localJceDisplayer.display(this.aid, "aid");
    localJceDisplayer.display(this.action, "action");
    localJceDisplayer.display(this.luid, "luid");
    localJceDisplayer.display(this.data, "data");
    localJceDisplayer.display(this.photoMd5, "photoMd5");
    localJceDisplayer.display(this.groupList, "groupList");
    localJceDisplayer.display(this.guid, "guid");
  }

  public final boolean equals(Object paramObject)
  {
    Action localAction = (Action)paramObject;
    if ((JceUtil.equals(this.aid, localAction.aid)) && (JceUtil.equals(this.action, localAction.action)) && (JceUtil.equals(this.luid, localAction.luid)) && (JceUtil.equals(this.data, localAction.data)) && (JceUtil.equals(this.photoMd5, localAction.photoMd5)) && (JceUtil.equals(this.groupList, localAction.groupList)) && (JceUtil.equals(this.guid, localAction.guid)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int getAction()
  {
    return this.action;
  }

  public final short getAid()
  {
    return this.aid;
  }

  public final byte[] getData()
  {
    return this.data;
  }

  public final ArrayList<String> getGroupList()
  {
    return this.groupList;
  }

  public final String getGuid()
  {
    return this.guid;
  }

  public final String getLuid()
  {
    return this.luid;
  }

  public final String getPhotoMd5()
  {
    return this.photoMd5;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.aid = paramJceInputStream.read(this.aid, 0, true);
    this.action = paramJceInputStream.read(this.action, 1, true);
    this.luid = paramJceInputStream.readString(2, true);
    if (cache_data == null)
    {
      byte[] arrayOfByte = new byte[1];
      cache_data = arrayOfByte;
      arrayOfByte[0] = 0;
    }
    this.data = paramJceInputStream.read(cache_data, 3, false);
    this.photoMd5 = paramJceInputStream.readString(4, false);
    if (cache_groupList == null)
    {
      cache_groupList = new ArrayList();
      cache_groupList.add("");
    }
    setGroupList((ArrayList)paramJceInputStream.read(cache_groupList, 5, false));
    setGuid(paramJceInputStream.readString(6, false));
  }

  public final void setAction(int paramInt)
  {
    this.action = paramInt;
  }

  public final void setAid(short paramShort)
  {
    this.aid = paramShort;
  }

  public final void setData(byte[] paramArrayOfByte)
  {
    this.data = paramArrayOfByte;
  }

  public final void setGroupList(ArrayList<String> paramArrayList)
  {
    this.groupList = paramArrayList;
  }

  public final void setGuid(String paramString)
  {
    this.guid = paramString;
  }

  public final void setLuid(String paramString)
  {
    this.luid = paramString;
  }

  public final void setPhotoMd5(String paramString)
  {
    this.photoMd5 = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.aid, 0);
    paramJceOutputStream.write(this.action, 1);
    paramJceOutputStream.write(this.luid, 2);
    if (this.data != null)
      paramJceOutputStream.write(this.data, 3);
    if (this.photoMd5 != null)
      paramJceOutputStream.write(this.photoMd5, 4);
    if (this.groupList != null)
      paramJceOutputStream.write(this.groupList, 5);
    if (this.guid != null)
      paramJceOutputStream.write(this.guid, 6);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     WUPSYNC.Action
 * JD-Core Version:    0.6.2
 */