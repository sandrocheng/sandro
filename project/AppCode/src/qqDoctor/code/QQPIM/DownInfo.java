package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class DownInfo extends JceStruct
  implements Cloneable
{
  static ArrayList<DownSoftInfo> cache_listDownSoftItems;
  public ArrayList<DownSoftInfo> listDownSoftItems = null;
  public int nGUID = 0;
  public String sQUA = "";

  static
  {
    if (!DownInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public DownInfo()
  {
    setSQUA(this.sQUA);
    setNGUID(this.nGUID);
    setListDownSoftItems(this.listDownSoftItems);
  }

  public DownInfo(String paramString, int paramInt, ArrayList<DownSoftInfo> paramArrayList)
  {
    setSQUA(paramString);
    setNGUID(paramInt);
    setListDownSoftItems(paramArrayList);
  }

  public final String className()
  {
    return "QQPIM.DownInfo";
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
    localJceDisplayer.display(this.sQUA, "sQUA");
    localJceDisplayer.display(this.nGUID, "nGUID");
    localJceDisplayer.display(this.listDownSoftItems, "listDownSoftItems");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      DownInfo localDownInfo = (DownInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.sQUA, localDownInfo.sQUA);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.nGUID, localDownInfo.nGUID);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.listDownSoftItems, localDownInfo.listDownSoftItems);
          bool1 = false;
          if (bool4)
            bool1 = true;
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.DownInfo";
  }

  public final ArrayList<DownSoftInfo> getListDownSoftItems()
  {
    return this.listDownSoftItems;
  }

  public final int getNGUID()
  {
    return this.nGUID;
  }

  public final String getSQUA()
  {
    return this.sQUA;
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
    this.sQUA = paramJceInputStream.readString(0, true);
    this.nGUID = paramJceInputStream.read(this.nGUID, 1, true);
    if (cache_listDownSoftItems == null)
    {
      cache_listDownSoftItems = new ArrayList();
      DownSoftInfo localDownSoftInfo = new DownSoftInfo();
      cache_listDownSoftItems.add(localDownSoftInfo);
    }
    setListDownSoftItems((ArrayList)paramJceInputStream.read(cache_listDownSoftItems, 2, true));
  }

  public final void setListDownSoftItems(ArrayList<DownSoftInfo> paramArrayList)
  {
    this.listDownSoftItems = paramArrayList;
  }

  public final void setNGUID(int paramInt)
  {
    this.nGUID = paramInt;
  }

  public final void setSQUA(String paramString)
  {
    this.sQUA = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.sQUA, 0);
    paramJceOutputStream.write(this.nGUID, 1);
    paramJceOutputStream.write(this.listDownSoftItems, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.DownInfo
 * JD-Core Version:    0.6.2
 */