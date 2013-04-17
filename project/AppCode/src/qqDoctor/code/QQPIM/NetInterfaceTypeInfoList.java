package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class NetInterfaceTypeInfoList extends JceStruct
  implements Cloneable
{
  static ArrayList<NetInterfaceTypeInfo> cache_vctInterfaceInfos;
  public ArrayList<NetInterfaceTypeInfo> vctInterfaceInfos = null;

  static
  {
    if (!NetInterfaceTypeInfoList.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public NetInterfaceTypeInfoList()
  {
    setVctInterfaceInfos(this.vctInterfaceInfos);
  }

  public NetInterfaceTypeInfoList(ArrayList<NetInterfaceTypeInfo> paramArrayList)
  {
    setVctInterfaceInfos(paramArrayList);
  }

  public final String className()
  {
    return "QQPIM.NetInterfaceTypeInfoList";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.vctInterfaceInfos, "vctInterfaceInfos");
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    NetInterfaceTypeInfoList localNetInterfaceTypeInfoList;
    for (boolean bool = false; ; bool = JceUtil.equals(this.vctInterfaceInfos, localNetInterfaceTypeInfoList.vctInterfaceInfos))
    {
      return bool;
      localNetInterfaceTypeInfoList = (NetInterfaceTypeInfoList)paramObject;
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.NetInterfaceTypeInfoList";
  }

  public final ArrayList<NetInterfaceTypeInfo> getVctInterfaceInfos()
  {
    return this.vctInterfaceInfos;
  }

  public final int hashCode()
  {
    try
    {
      throw new Exception("Need define key first!");
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return 0;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    if (cache_vctInterfaceInfos == null)
    {
      cache_vctInterfaceInfos = new ArrayList();
      NetInterfaceTypeInfo localNetInterfaceTypeInfo = new NetInterfaceTypeInfo();
      cache_vctInterfaceInfos.add(localNetInterfaceTypeInfo);
    }
    setVctInterfaceInfos((ArrayList)paramJceInputStream.read(cache_vctInterfaceInfos, 0, true));
  }

  public final void setVctInterfaceInfos(ArrayList<NetInterfaceTypeInfo> paramArrayList)
  {
    this.vctInterfaceInfos = paramArrayList;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.vctInterfaceInfos, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.NetInterfaceTypeInfoList
 * JD-Core Version:    0.6.2
 */