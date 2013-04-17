package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class NetInterfaceTypeInfo extends JceStruct
  implements Cloneable
{
  static ArrayList<String> cache_keySet;
  public ArrayList<String> keySet = null;
  public String typeName = "";

  static
  {
    if (!NetInterfaceTypeInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public NetInterfaceTypeInfo()
  {
    setTypeName(this.typeName);
    setKeySet(this.keySet);
  }

  public NetInterfaceTypeInfo(String paramString, ArrayList<String> paramArrayList)
  {
    setTypeName(paramString);
    setKeySet(paramArrayList);
  }

  public final String className()
  {
    return "QQPIM.NetInterfaceTypeInfo";
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
    localJceDisplayer.display(this.typeName, "typeName");
    localJceDisplayer.display(this.keySet, "keySet");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      NetInterfaceTypeInfo localNetInterfaceTypeInfo = (NetInterfaceTypeInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.typeName, localNetInterfaceTypeInfo.typeName);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.keySet, localNetInterfaceTypeInfo.keySet);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.NetInterfaceTypeInfo";
  }

  public final ArrayList<String> getKeySet()
  {
    return this.keySet;
  }

  public final String getTypeName()
  {
    return this.typeName;
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
    this.typeName = paramJceInputStream.readString(0, true);
    if (cache_keySet == null)
    {
      cache_keySet = new ArrayList();
      cache_keySet.add("");
    }
    setKeySet((ArrayList)paramJceInputStream.read(cache_keySet, 1, false));
  }

  public final void setKeySet(ArrayList<String> paramArrayList)
  {
    this.keySet = paramArrayList;
  }

  public final void setTypeName(String paramString)
  {
    this.typeName = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.typeName, 0);
    if (this.keySet != null)
      paramJceOutputStream.write(this.keySet, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.NetInterfaceTypeInfo
 * JD-Core Version:    0.6.2
 */