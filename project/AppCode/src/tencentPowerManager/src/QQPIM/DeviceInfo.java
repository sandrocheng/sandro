package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class DeviceInfo extends JceStruct
  implements Cloneable
{
  public String androidid = "";
  public String iccid = "";
  public String imei = "";
  public String imsi = "";
  public String lguid = "";
  public String mac = "";
  public String model = "";
  public String netfile = "";
  public String product = "";
  public int sdkversion = 0;

  static
  {
    if (!DeviceInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public DeviceInfo()
  {
    setImei(this.imei);
    setImsi(this.imsi);
    setMac(this.mac);
    setIccid(this.iccid);
    setAndroidid(this.androidid);
    setSdkversion(this.sdkversion);
    setModel(this.model);
    setProduct(this.product);
    setNetfile(this.netfile);
    setLguid(this.lguid);
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
    localJceDisplayer.display(this.mac, "mac");
    localJceDisplayer.display(this.iccid, "iccid");
    localJceDisplayer.display(this.androidid, "androidid");
    localJceDisplayer.display(this.sdkversion, "sdkversion");
    localJceDisplayer.display(this.model, "model");
    localJceDisplayer.display(this.product, "product");
    localJceDisplayer.display(this.netfile, "netfile");
    localJceDisplayer.display(this.lguid, "lguid");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      DeviceInfo localDeviceInfo = (DeviceInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.imei, localDeviceInfo.imei);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.imsi, localDeviceInfo.imsi);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.mac, localDeviceInfo.mac);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.iccid, localDeviceInfo.iccid);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.androidid, localDeviceInfo.androidid);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.sdkversion, localDeviceInfo.sdkversion);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.model, localDeviceInfo.model);
                  bool1 = false;
                  if (bool8)
                  {
                    boolean bool9 = JceUtil.equals(this.product, localDeviceInfo.product);
                    bool1 = false;
                    if (bool9)
                    {
                      boolean bool10 = JceUtil.equals(this.netfile, localDeviceInfo.netfile);
                      bool1 = false;
                      if (bool10)
                      {
                        boolean bool11 = JceUtil.equals(this.lguid, localDeviceInfo.lguid);
                        bool1 = false;
                        if (bool11)
                          bool1 = true;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
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
    this.imei = paramJceInputStream.readString(0, true);
    this.imsi = paramJceInputStream.readString(1, false);
    this.mac = paramJceInputStream.readString(2, false);
    this.iccid = paramJceInputStream.readString(3, false);
    this.androidid = paramJceInputStream.readString(4, false);
    this.sdkversion = paramJceInputStream.read(this.sdkversion, 5, false);
    this.model = paramJceInputStream.readString(6, false);
    this.product = paramJceInputStream.readString(7, false);
    this.netfile = paramJceInputStream.readString(8, false);
    this.lguid = paramJceInputStream.readString(9, false);
  }

  public final void setAndroidid(String paramString)
  {
    this.androidid = paramString;
  }

  public final void setIccid(String paramString)
  {
    this.iccid = paramString;
  }

  public final void setImei(String paramString)
  {
    this.imei = paramString;
  }

  public final void setImsi(String paramString)
  {
    this.imsi = paramString;
  }

  public final void setLguid(String paramString)
  {
    this.lguid = paramString;
  }

  public final void setMac(String paramString)
  {
    this.mac = paramString;
  }

  public final void setModel(String paramString)
  {
    this.model = paramString;
  }

  public final void setNetfile(String paramString)
  {
    this.netfile = paramString;
  }

  public final void setProduct(String paramString)
  {
    this.product = paramString;
  }

  public final void setSdkversion(int paramInt)
  {
    this.sdkversion = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.imei, 0);
    if (this.imsi != null)
      paramJceOutputStream.write(this.imsi, 1);
    if (this.mac != null)
      paramJceOutputStream.write(this.mac, 2);
    if (this.iccid != null)
      paramJceOutputStream.write(this.iccid, 3);
    if (this.androidid != null)
      paramJceOutputStream.write(this.androidid, 4);
    paramJceOutputStream.write(this.sdkversion, 5);
    if (this.model != null)
      paramJceOutputStream.write(this.model, 6);
    if (this.product != null)
      paramJceOutputStream.write(this.product, 7);
    if (this.netfile != null)
      paramJceOutputStream.write(this.netfile, 8);
    if (this.lguid != null)
      paramJceOutputStream.write(this.lguid, 9);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     QQPIM.DeviceInfo
 * JD-Core Version:    0.6.2
 */