package WUPSYNC;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class MapItem extends JceStruct
{
  public String guid = "";
  public String luid = "";

  static
  {
    if (!MapItem.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public MapItem()
  {
    setLuid(this.luid);
    setGuid(this.guid);
  }

  public MapItem(String paramString1, String paramString2)
  {
    setLuid(paramString1);
    setGuid(paramString2);
  }

  public final String className()
  {
    return "WUPSYNC.MapItem";
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
    localJceDisplayer.display(this.luid, "luid");
    localJceDisplayer.display(this.guid, "guid");
  }

  public final boolean equals(Object paramObject)
  {
    MapItem localMapItem = (MapItem)paramObject;
    if ((JceUtil.equals(this.luid, localMapItem.luid)) && (JceUtil.equals(this.guid, localMapItem.guid)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String getGuid()
  {
    return this.guid;
  }

  public final String getLuid()
  {
    return this.luid;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.luid = paramJceInputStream.readString(0, true);
    this.guid = paramJceInputStream.readString(1, true);
  }

  public final void setGuid(String paramString)
  {
    this.guid = paramString;
  }

  public final void setLuid(String paramString)
  {
    this.luid = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.luid, 0);
    paramJceOutputStream.write(this.guid, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     WUPSYNC.MapItem
 * JD-Core Version:    0.6.2
 */