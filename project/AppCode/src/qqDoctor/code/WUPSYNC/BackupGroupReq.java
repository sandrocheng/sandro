package WUPSYNC;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class BackupGroupReq extends JceStruct
{
  static DevInf cache_devInfo;
  static ArrayList<GROUPITEM> cache_groupList;
  static AccInfo cache_userInfo;
  public DevInf devInfo = null;
  public ArrayList<GROUPITEM> groupList = null;
  public AccInfo userInfo = null;

  static
  {
    if (!BackupGroupReq.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public BackupGroupReq()
  {
    setUserInfo(this.userInfo);
    setDevInfo(this.devInfo);
    setGroupList(this.groupList);
  }

  public BackupGroupReq(AccInfo paramAccInfo, DevInf paramDevInf, ArrayList<GROUPITEM> paramArrayList)
  {
    setUserInfo(paramAccInfo);
    setDevInfo(paramDevInf);
    setGroupList(paramArrayList);
  }

  public final String className()
  {
    return "WUPSYNC.BackupGroupReq";
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
    localJceDisplayer.display(this.groupList, "groupList");
  }

  public final boolean equals(Object paramObject)
  {
    BackupGroupReq localBackupGroupReq = (BackupGroupReq)paramObject;
    if ((JceUtil.equals(this.userInfo, localBackupGroupReq.userInfo)) && (JceUtil.equals(this.devInfo, localBackupGroupReq.devInfo)) && (JceUtil.equals(this.groupList, localBackupGroupReq.groupList)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final DevInf getDevInfo()
  {
    return this.devInfo;
  }

  public final ArrayList<GROUPITEM> getGroupList()
  {
    return this.groupList;
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
    if (cache_groupList == null)
    {
      cache_groupList = new ArrayList();
      GROUPITEM localGROUPITEM = new GROUPITEM();
      cache_groupList.add(localGROUPITEM);
    }
    setGroupList((ArrayList)paramJceInputStream.read(cache_groupList, 2, true));
  }

  public final void setDevInfo(DevInf paramDevInf)
  {
    this.devInfo = paramDevInf;
  }

  public final void setGroupList(ArrayList<GROUPITEM> paramArrayList)
  {
    this.groupList = paramArrayList;
  }

  public final void setUserInfo(AccInfo paramAccInfo)
  {
    this.userInfo = paramAccInfo;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.userInfo, 0);
    paramJceOutputStream.write(this.devInfo, 1);
    paramJceOutputStream.write(this.groupList, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     WUPSYNC.BackupGroupReq
 * JD-Core Version:    0.6.2
 */