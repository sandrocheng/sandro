package QQPIM;

public final class EPhoneType
{
  public static final EPhoneType MPT_Android;
  public static final EPhoneType MPT_BB;
  public static final EPhoneType MPT_END;
  public static final EPhoneType MPT_Iphone;
  public static final EPhoneType MPT_Kjava;
  public static final EPhoneType MPT_MTK;
  public static final EPhoneType MPT_NONE;
  public static final EPhoneType MPT_PC_Windows;
  public static final EPhoneType MPT_Server;
  public static final EPhoneType MPT_Symbian;
  public static final EPhoneType MPT_SymbianV5;
  public static final EPhoneType MPT_WinPhone;
  private static EPhoneType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EPhoneType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EPhoneType[12];
      MPT_NONE = new EPhoneType(0, 0, "MPT_NONE");
      MPT_Symbian = new EPhoneType(1, 1, "MPT_Symbian");
      MPT_Android = new EPhoneType(2, 2, "MPT_Android");
      MPT_Iphone = new EPhoneType(3, 3, "MPT_Iphone");
      MPT_Kjava = new EPhoneType(4, 4, "MPT_Kjava");
      MPT_Server = new EPhoneType(5, 5, "MPT_Server");
      MPT_WinPhone = new EPhoneType(6, 6, "MPT_WinPhone");
      MPT_MTK = new EPhoneType(7, 7, "MPT_MTK");
      MPT_BB = new EPhoneType(8, 8, "MPT_BB");
      MPT_PC_Windows = new EPhoneType(9, 9, "MPT_PC_Windows");
      MPT_SymbianV5 = new EPhoneType(10, 101, "MPT_SymbianV5");
      MPT_END = new EPhoneType(11, 102, "MPT_END");
      return;
    }
  }

  private EPhoneType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
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

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     QQPIM.EPhoneType
 * JD-Core Version:    0.6.2
 */