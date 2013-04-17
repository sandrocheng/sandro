package QQPIM;

public final class ConnectType
{
  public static final ConnectType CT_GPRS;
  public static final ConnectType CT_GPRS_NET;
  public static final ConnectType CT_GPRS_WAP;
  public static final ConnectType CT_NONE;
  public static final ConnectType CT_WIFI;
  public static final int _CT_GPRS = 1;
  public static final int _CT_GPRS_NET = 4;
  public static final int _CT_GPRS_WAP = 3;
  public static final int _CT_NONE = 0;
  public static final int _CT_WIFI = 2;
  private static ConnectType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!ConnectType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new ConnectType[5];
      CT_NONE = new ConnectType(0, 0, "CT_NONE");
      CT_GPRS = new ConnectType(1, 1, "CT_GPRS");
      CT_WIFI = new ConnectType(2, 2, "CT_WIFI");
      CT_GPRS_WAP = new ConnectType(3, 3, "CT_GPRS_WAP");
      CT_GPRS_NET = new ConnectType(4, 4, "CT_GPRS_NET");
      return;
    }
  }

  private ConnectType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static ConnectType convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (ConnectType localConnectType = __values[i]; ; localConnectType = null)
    {
      return localConnectType;
      i++;
      break;
    }
  }

  public static ConnectType convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (ConnectType localConnectType = __values[i]; ; localConnectType = null)
    {
      return localConnectType;
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
 * Qualified Name:     QQPIM.ConnectType
 * JD-Core Version:    0.6.2
 */