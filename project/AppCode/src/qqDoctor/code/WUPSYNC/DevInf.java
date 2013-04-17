package WUPSYNC;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class DevInf extends JceStruct
{
  static ArrayList<Integer> cache_pushToken;
  public String imei = "";
  public String imsi = "";
  public String manufactor = "";
  public String model = "";
  public ArrayList<Integer> pushToken = null;
  public String system = "";

  static
  {
    if (!DevInf.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public DevInf()
  {
    setImei(this.imei);
    setImsi(this.imsi);
    setManufactor(this.manufactor);
    setModel(this.model);
    setSystem(this.system);
    setPushToken(this.pushToken);
  }

  public DevInf(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, ArrayList<Integer> paramArrayList)
  {
    setImei(paramString1);
    setImsi(paramString2);
    setManufactor(paramString3);
    setModel(paramString4);
    setSystem(paramString5);
    setPushToken(paramArrayList);
  }

  public final String className()
  {
    return "WUPSYNC.DevInf";
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
    localJceDisplayer.display(this.imei, "imei");
    localJceDisplayer.display(this.imsi, "imsi");
    localJceDisplayer.display(this.manufactor, "manufactor");
    localJceDisplayer.display(this.model, "model");
    localJceDisplayer.display(this.system, "system");
    localJceDisplayer.display(this.pushToken, "pushToken");
  }

  public final boolean equals(Object paramObject)
  {
    DevInf localDevInf = (DevInf)paramObject;
    if ((JceUtil.equals(this.imei, localDevInf.imei)) && (JceUtil.equals(this.imsi, localDevInf.imsi)) && (JceUtil.equals(this.manufactor, localDevInf.manufactor)) && (JceUtil.equals(this.model, localDevInf.model)) && (JceUtil.equals(this.system, localDevInf.system)) && (JceUtil.equals(this.pushToken, localDevInf.pushToken)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String getImei()
  {
    return this.imei;
  }

  public final String getImsi()
  {
    return this.imsi;
  }

  public final String getManufactor()
  {
    return this.manufactor;
  }

  public final String getModel()
  {
    return this.model;
  }

  public final ArrayList<Integer> getPushToken()
  {
    return this.pushToken;
  }

  public final String getSystem()
  {
    return this.system;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.imei = paramJceInputStream.readString(0, true);
    this.imsi = paramJceInputStream.readString(1, false);
    this.manufactor = paramJceInputStream.readString(2, false);
    this.model = paramJceInputStream.readString(3, false);
    this.system = paramJceInputStream.readString(4, false);
    if (cache_pushToken == null)
    {
      cache_pushToken = new ArrayList();
      Integer localInteger = Integer.valueOf(0);
      cache_pushToken.add(localInteger);
    }
    setPushToken((ArrayList)paramJceInputStream.read(cache_pushToken, 5, false));
  }

  public final void setImei(String paramString)
  {
    this.imei = paramString;
  }

  public final void setImsi(String paramString)
  {
    this.imsi = paramString;
  }

  public final void setManufactor(String paramString)
  {
    this.manufactor = paramString;
  }

  public final void setModel(String paramString)
  {
    this.model = paramString;
  }

  public final void setPushToken(ArrayList<Integer> paramArrayList)
  {
    this.pushToken = paramArrayList;
  }

  public final void setSystem(String paramString)
  {
    this.system = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.imei, 0);
    if (this.imsi != null)
      paramJceOutputStream.write(this.imsi, 1);
    if (this.manufactor != null)
      paramJceOutputStream.write(this.manufactor, 2);
    if (this.model != null)
      paramJceOutputStream.write(this.model, 3);
    if (this.system != null)
      paramJceOutputStream.write(this.system, 4);
    if (this.pushToken != null)
      paramJceOutputStream.write(this.pushToken, 5);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     WUPSYNC.DevInf
 * JD-Core Version:    0.6.2
 */