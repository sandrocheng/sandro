package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class FBMobile extends JceStruct
  implements Cloneable
{
  static int cache_mtype;
  static int cache_sp;
  public String city = "";
  public int mtype = 0;
  public String phone = "";
  public int sp = 0;
  public String state = "";

  static
  {
    if (!FBMobile.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public FBMobile()
  {
    setPhone(this.phone);
    setMtype(this.mtype);
    setState(this.state);
    setCity(this.city);
    setSp(this.sp);
  }

  public FBMobile(String paramString1, int paramInt1, String paramString2, String paramString3, int paramInt2)
  {
    setPhone(paramString1);
    setMtype(paramInt1);
    setState(paramString2);
    setCity(paramString3);
    setSp(paramInt2);
  }

  public final String className()
  {
    return "QQPIM.FBMobile";
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
    localJceDisplayer.display(this.phone, "phone");
    localJceDisplayer.display(this.mtype, "mtype");
    localJceDisplayer.display(this.state, "state");
    localJceDisplayer.display(this.city, "city");
    localJceDisplayer.display(this.sp, "sp");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      FBMobile localFBMobile = (FBMobile)paramObject;
      boolean bool2 = JceUtil.equals(this.phone, localFBMobile.phone);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.mtype, localFBMobile.mtype);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.state, localFBMobile.state);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.city, localFBMobile.city);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.sp, localFBMobile.sp);
              bool1 = false;
              if (bool6)
                bool1 = true;
            }
          }
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.FBMobile";
  }

  public final String getCity()
  {
    return this.city;
  }

  public final int getMtype()
  {
    return this.mtype;
  }

  public final String getPhone()
  {
    return this.phone;
  }

  public final int getSp()
  {
    return this.sp;
  }

  public final String getState()
  {
    return this.state;
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
    this.phone = paramJceInputStream.readString(0, true);
    this.mtype = paramJceInputStream.read(this.mtype, 1, true);
    this.state = paramJceInputStream.readString(2, true);
    this.city = paramJceInputStream.readString(3, true);
    this.sp = paramJceInputStream.read(this.sp, 4, true);
  }

  public final void setCity(String paramString)
  {
    this.city = paramString;
  }

  public final void setMtype(int paramInt)
  {
    this.mtype = paramInt;
  }

  public final void setPhone(String paramString)
  {
    this.phone = paramString;
  }

  public final void setSp(int paramInt)
  {
    this.sp = paramInt;
  }

  public final void setState(String paramString)
  {
    this.state = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.phone, 0);
    paramJceOutputStream.write(this.mtype, 1);
    paramJceOutputStream.write(this.state, 2);
    paramJceOutputStream.write(this.city, 3);
    paramJceOutputStream.write(this.sp, 4);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.FBMobile
 * JD-Core Version:    0.6.2
 */