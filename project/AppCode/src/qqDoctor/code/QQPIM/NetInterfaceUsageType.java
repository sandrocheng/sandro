package QQPIM;

public final class NetInterfaceUsageType
{
  public static final NetInterfaceUsageType NET_INTERFACE_TYPE_TRAFFIC_STAT;
  public static final int _NET_INTERFACE_TYPE_TRAFFIC_STAT;
  private static NetInterfaceUsageType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!NetInterfaceUsageType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new NetInterfaceUsageType[1];
      NET_INTERFACE_TYPE_TRAFFIC_STAT = new NetInterfaceUsageType(0, 0, "NET_INTERFACE_TYPE_TRAFFIC_STAT");
      return;
    }
  }

  private NetInterfaceUsageType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static NetInterfaceUsageType convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (NetInterfaceUsageType localNetInterfaceUsageType = __values[i]; ; localNetInterfaceUsageType = null)
    {
      return localNetInterfaceUsageType;
      i++;
      break;
    }
  }

  public static NetInterfaceUsageType convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (NetInterfaceUsageType localNetInterfaceUsageType = __values[i]; ; localNetInterfaceUsageType = null)
    {
      return localNetInterfaceUsageType;
      i++;
      break;
    }
  }

  public final String toString()
  {
    return this.__T;
  }

  public final int value()
  {
    return this.__value;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.NetInterfaceUsageType
 * JD-Core Version:    0.6.2
 */