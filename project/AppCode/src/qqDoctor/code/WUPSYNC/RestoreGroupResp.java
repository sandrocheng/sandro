package WUPSYNC;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class RestoreGroupResp extends JceStruct
{
  static ArrayList<GROUPITEM> cache_groupList;
  static int cache_result;
  public ArrayList<GROUPITEM> groupList = null;
  public int result = 0;

  static
  {
    if (!RestoreGroupResp.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public RestoreGroupResp()
  {
    setResult(this.result);
    setGroupList(this.groupList);
  }

  public RestoreGroupResp(int paramInt, ArrayList<GROUPITEM> paramArrayList)
  {
    setResult(paramInt);
    setGroupList(paramArrayList);
  }

  public final String className()
  {
    return "WUPSYNC.RestoreGroupResp";
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
    localJceDisplayer.display(this.groupList, "groupList");
  }

  public final boolean equals(Object paramObject)
  {
    RestoreGroupResp localRestoreGroupResp = (RestoreGroupResp)paramObject;
    if ((JceUtil.equals(this.result, localRestoreGroupResp.result)) && (JceUtil.equals(this.groupList, localRestoreGroupResp.groupList)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final ArrayList<GROUPITEM> getGroupList()
  {
    return this.groupList;
  }

  public final int getResult()
  {
    return this.result;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.result = paramJceInputStream.read(this.result, 0, true);
    if (cache_groupList == null)
    {
      cache_groupList = new ArrayList();
      GROUPITEM localGROUPITEM = new GROUPITEM();
      cache_groupList.add(localGROUPITEM);
    }
    setGroupList((ArrayList)paramJceInputStream.read(cache_groupList, 1, true));
  }

  public final void setGroupList(ArrayList<GROUPITEM> paramArrayList)
  {
    this.groupList = paramArrayList;
  }

  public final void setResult(int paramInt)
  {
    this.result = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.result, 0);
    paramJceOutputStream.write(this.groupList, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     WUPSYNC.RestoreGroupResp
 * JD-Core Version:    0.6.2
 */