package WUPSYNC;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class GROUPITEM extends JceStruct
{
  static ArrayList<String> cache_idList;
  public String groupName = "";
  public ArrayList<String> idList = null;

  static
  {
    if (!GROUPITEM.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public GROUPITEM()
  {
    setGroupName(this.groupName);
    setIdList(this.idList);
  }

  public GROUPITEM(String paramString, ArrayList<String> paramArrayList)
  {
    setGroupName(paramString);
    setIdList(paramArrayList);
  }

  public final String className()
  {
    return "WUPSYNC.GROUPITEM";
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
    localJceDisplayer.display(this.groupName, "groupName");
    localJceDisplayer.display(this.idList, "idList");
  }

  public final boolean equals(Object paramObject)
  {
    GROUPITEM localGROUPITEM = (GROUPITEM)paramObject;
    if ((JceUtil.equals(this.groupName, localGROUPITEM.groupName)) && (JceUtil.equals(this.idList, localGROUPITEM.idList)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String getGroupName()
  {
    return this.groupName;
  }

  public final ArrayList<String> getIdList()
  {
    return this.idList;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.groupName = paramJceInputStream.readString(0, true);
    if (cache_idList == null)
    {
      cache_idList = new ArrayList();
      cache_idList.add("");
    }
    setIdList((ArrayList)paramJceInputStream.read(cache_idList, 1, false));
  }

  public final void setGroupName(String paramString)
  {
    this.groupName = paramString;
  }

  public final void setIdList(ArrayList<String> paramArrayList)
  {
    this.idList = paramArrayList;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.groupName, 0);
    if (this.idList != null)
      paramJceOutputStream.write(this.idList, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     WUPSYNC.GROUPITEM
 * JD-Core Version:    0.6.2
 */