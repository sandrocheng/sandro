package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class FBWBList extends JceStruct
  implements Cloneable
{
  static int cache_listtype;
  public int listtype = 0;
  public String phone = "";

  static
  {
    if (!FBWBList.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public FBWBList()
  {
    setListtype(this.listtype);
    setPhone(this.phone);
  }

  public FBWBList(int paramInt, String paramString)
  {
    setListtype(paramInt);
    setPhone(paramString);
  }

  public final String className()
  {
    return "QQPIM.FBWBList";
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
    localJceDisplayer.display(this.listtype, "listtype");
    localJceDisplayer.display(this.phone, "phone");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      FBWBList localFBWBList = (FBWBList)paramObject;
      boolean bool2 = JceUtil.equals(this.listtype, localFBWBList.listtype);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.phone, localFBWBList.phone);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.FBWBList";
  }

  public final int getListtype()
  {
    return this.listtype;
  }

  public final String getPhone()
  {
    return this.phone;
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
    this.listtype = paramJceInputStream.read(this.listtype, 0, true);
    this.phone = paramJceInputStream.readString(1, true);
  }

  public final void setListtype(int paramInt)
  {
    this.listtype = paramInt;
  }

  public final void setPhone(String paramString)
  {
    this.phone = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.listtype, 0);
    paramJceOutputStream.write(this.phone, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.FBWBList
 * JD-Core Version:    0.6.2
 */