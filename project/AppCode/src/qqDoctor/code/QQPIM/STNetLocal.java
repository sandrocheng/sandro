package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class STNetLocal extends JceStruct
  implements Cloneable
{
  static ArrayList<String> cache_vecData;
  public int nNetType = 0;
  public String strImei = "";
  public String strbeginTime = "";
  public ArrayList<String> vecData = null;

  static
  {
    if (!STNetLocal.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public STNetLocal()
  {
    setStrbeginTime(this.strbeginTime);
    setStrImei(this.strImei);
    setNNetType(this.nNetType);
    setVecData(this.vecData);
  }

  public STNetLocal(String paramString1, String paramString2, int paramInt, ArrayList<String> paramArrayList)
  {
    setStrbeginTime(paramString1);
    setStrImei(paramString2);
    setNNetType(paramInt);
    setVecData(paramArrayList);
  }

  public final String className()
  {
    return "QQPIM.STNetLocal";
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
    localJceDisplayer.display(this.strbeginTime, "strbeginTime");
    localJceDisplayer.display(this.strImei, "strImei");
    localJceDisplayer.display(this.nNetType, "nNetType");
    localJceDisplayer.display(this.vecData, "vecData");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      STNetLocal localSTNetLocal = (STNetLocal)paramObject;
      boolean bool2 = JceUtil.equals(this.strbeginTime, localSTNetLocal.strbeginTime);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.strImei, localSTNetLocal.strImei);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.nNetType, localSTNetLocal.nNetType);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.vecData, localSTNetLocal.vecData);
            bool1 = false;
            if (bool5)
              bool1 = true;
          }
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.STNetLocal";
  }

  public final int getNNetType()
  {
    return this.nNetType;
  }

  public final String getStrImei()
  {
    return this.strImei;
  }

  public final String getStrbeginTime()
  {
    return this.strbeginTime;
  }

  public final ArrayList<String> getVecData()
  {
    return this.vecData;
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
    this.strbeginTime = paramJceInputStream.readString(0, false);
    this.strImei = paramJceInputStream.readString(1, false);
    this.nNetType = paramJceInputStream.read(this.nNetType, 2, false);
    if (cache_vecData == null)
    {
      cache_vecData = new ArrayList();
      cache_vecData.add("");
    }
    setVecData((ArrayList)paramJceInputStream.read(cache_vecData, 3, false));
  }

  public final void setNNetType(int paramInt)
  {
    this.nNetType = paramInt;
  }

  public final void setStrImei(String paramString)
  {
    this.strImei = paramString;
  }

  public final void setStrbeginTime(String paramString)
  {
    this.strbeginTime = paramString;
  }

  public final void setVecData(ArrayList<String> paramArrayList)
  {
    this.vecData = paramArrayList;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    if (this.strbeginTime != null)
      paramJceOutputStream.write(this.strbeginTime, 0);
    if (this.strImei != null)
      paramJceOutputStream.write(this.strImei, 1);
    paramJceOutputStream.write(this.nNetType, 2);
    if (this.vecData != null)
      paramJceOutputStream.write(this.vecData, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.STNetLocal
 * JD-Core Version:    0.6.2
 */