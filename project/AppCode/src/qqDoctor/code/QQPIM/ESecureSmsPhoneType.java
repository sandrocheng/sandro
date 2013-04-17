package QQPIM;

public final class ESecureSmsPhoneType
{
  public static final ESecureSmsPhoneType ESS_MPT_Android;
  public static final ESecureSmsPhoneType ESS_MPT_BB;
  public static final ESecureSmsPhoneType ESS_MPT_Iphone;
  public static final ESecureSmsPhoneType ESS_MPT_Kjava;
  public static final ESecureSmsPhoneType ESS_MPT_MTK;
  public static final ESecureSmsPhoneType ESS_MPT_NONE;
  public static final ESecureSmsPhoneType ESS_MPT_Server;
  public static final ESecureSmsPhoneType ESS_MPT_Symbian;
  public static final ESecureSmsPhoneType ESS_MPT_SymbianV5;
  public static final ESecureSmsPhoneType ESS_MPT_WinPhone;
  public static final int _ESS_MPT_Android = 2;
  public static final int _ESS_MPT_BB = 8;
  public static final int _ESS_MPT_Iphone = 3;
  public static final int _ESS_MPT_Kjava = 4;
  public static final int _ESS_MPT_MTK = 7;
  public static final int _ESS_MPT_NONE = 0;
  public static final int _ESS_MPT_Server = 5;
  public static final int _ESS_MPT_Symbian = 1;
  public static final int _ESS_MPT_SymbianV5 = 101;
  public static final int _ESS_MPT_WinPhone = 6;
  private static ESecureSmsPhoneType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!ESecureSmsPhoneType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new ESecureSmsPhoneType[10];
      ESS_MPT_NONE = new ESecureSmsPhoneType(0, 0, "ESS_MPT_NONE");
      ESS_MPT_Symbian = new ESecureSmsPhoneType(1, 1, "ESS_MPT_Symbian");
      ESS_MPT_Android = new ESecureSmsPhoneType(2, 2, "ESS_MPT_Android");
      ESS_MPT_Iphone = new ESecureSmsPhoneType(3, 3, "ESS_MPT_Iphone");
      ESS_MPT_Kjava = new ESecureSmsPhoneType(4, 4, "ESS_MPT_Kjava");
      ESS_MPT_Server = new ESecureSmsPhoneType(5, 5, "ESS_MPT_Server");
      ESS_MPT_WinPhone = new ESecureSmsPhoneType(6, 6, "ESS_MPT_WinPhone");
      ESS_MPT_MTK = new ESecureSmsPhoneType(7, 7, "ESS_MPT_MTK");
      ESS_MPT_BB = new ESecureSmsPhoneType(8, 8, "ESS_MPT_BB");
      ESS_MPT_SymbianV5 = new ESecureSmsPhoneType(9, 101, "ESS_MPT_SymbianV5");
      return;
    }
  }

  private ESecureSmsPhoneType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static ESecureSmsPhoneType convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (ESecureSmsPhoneType localESecureSmsPhoneType = __values[i]; ; localESecureSmsPhoneType = null)
    {
      return localESecureSmsPhoneType;
      i++;
      break;
    }
  }

  public static ESecureSmsPhoneType convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (ESecureSmsPhoneType localESecureSmsPhoneType = __values[i]; ; localESecureSmsPhoneType = null)
    {
      return localESecureSmsPhoneType;
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
 * Qualified Name:     QQPIM.ESecureSmsPhoneType
 * JD-Core Version:    0.6.2
 */