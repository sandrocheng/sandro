package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class UserKey extends JceStruct
  implements Cloneable
{
  public String mainkey = "";
  public String model = "";

  static
  {
    if (!UserKey.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public UserKey()
  {
    setMainkey(this.mainkey);
    setModel(this.model);
  }

  public UserKey(String paramString1, String paramString2)
  {
    setMainkey(paramString1);
    setModel(paramString2);
  }

  public final String className()
  {
    return "QQPIM.UserKey";
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
    localJceDisplayer.display(this.mainkey, "mainkey");
    localJceDisplayer.display(this.model, "model");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      UserKey localUserKey = (UserKey)paramObject;
      boolean bool2 = JceUtil.equals(this.mainkey, localUserKey.mainkey);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.model, localUserKey.model);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.UserKey";
  }

  public final String getMainkey()
  {
    return this.mainkey;
  }

  public final String getModel()
  {
    return this.model;
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
    this.mainkey = paramJceInputStream.readString(0, true);
    this.model = paramJceInputStream.readString(1, true);
  }

  public final void setMainkey(String paramString)
  {
    this.mainkey = paramString;
  }

  public final void setModel(String paramString)
  {
    this.model = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.mainkey, 0);
    paramJceOutputStream.write(this.model, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.UserKey
 * JD-Core Version:    0.6.2
 */