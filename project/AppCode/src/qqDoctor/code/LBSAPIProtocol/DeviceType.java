package LBSAPIProtocol;

public final class DeviceType
{
  public static final DeviceType DEVICE_ANDROID;
  public static final DeviceType DEVICE_BLACKBERRY;
  public static final DeviceType DEVICE_IPHONE;
  public static final DeviceType DEVICE_S60_V3;
  public static final DeviceType DEVICE_S60_V5;
  public static final int _DEVICE_ANDROID = 1;
  public static final int _DEVICE_BLACKBERRY = 5;
  public static final int _DEVICE_IPHONE = 4;
  public static final int _DEVICE_S60_V3 = 2;
  public static final int _DEVICE_S60_V5 = 3;
  private static DeviceType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!DeviceType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new DeviceType[5];
      DEVICE_ANDROID = new DeviceType(0, 1, "DEVICE_ANDROID");
      DEVICE_S60_V3 = new DeviceType(1, 2, "DEVICE_S60_V3");
      DEVICE_S60_V5 = new DeviceType(2, 3, "DEVICE_S60_V5");
      DEVICE_IPHONE = new DeviceType(3, 4, "DEVICE_IPHONE");
      DEVICE_BLACKBERRY = new DeviceType(4, 5, "DEVICE_BLACKBERRY");
      return;
    }
  }

  private DeviceType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static DeviceType convert(int paramInt)
  {
    int i = 0;
    if (i < __values.length)
      if (__values[i].value() != paramInt);
    for (DeviceType localDeviceType = __values[i]; ; localDeviceType = null)
    {
      return localDeviceType;
      i++;
      break;
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
  }

  public static DeviceType convert(String paramString)
  {
    int i = 0;
    if (i < __values.length)
      if (!__values[i].toString().equals(paramString));
    for (DeviceType localDeviceType = __values[i]; ; localDeviceType = null)
    {
      return localDeviceType;
      i++;
      break;
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
  }

  public String toString()
  {
    return this.__T;
  }

  public int value()
  {
    return this.__value;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     LBSAPIProtocol.DeviceType
 * JD-Core Version:    0.6.2
 */