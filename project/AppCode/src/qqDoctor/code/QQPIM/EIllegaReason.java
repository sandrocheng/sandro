package QQPIM;

public final class EIllegaReason
{
  public static final EIllegaReason IR_Ad;
  public static final EIllegaReason IR_Conn;
  public static final EIllegaReason IR_Damage;
  public static final EIllegaReason IR_GetInfo;
  public static final EIllegaReason IR_InvalidDownLoad;
  public static final EIllegaReason IR_InvalidInstall;
  public static final EIllegaReason IR_NeedUpdate;
  public static final EIllegaReason IR_Other;
  public static final EIllegaReason IR_Pay;
  public static final EIllegaReason IR_Plugin;
  public static final EIllegaReason IR_SMS;
  public static final EIllegaReason IR_TermProc;
  public static final EIllegaReason IR_Virus;
  public static final EIllegaReason IR_WrongInfo;
  public static final int _IR_Ad = 6;
  public static final int _IR_Conn = 2;
  public static final int _IR_Damage = 8;
  public static final int _IR_GetInfo = 4;
  public static final int _IR_InvalidDownLoad = 9;
  public static final int _IR_InvalidInstall = 10;
  public static final int _IR_NeedUpdate = 13;
  public static final int _IR_Other = 0;
  public static final int _IR_Pay = 1;
  public static final int _IR_Plugin = 5;
  public static final int _IR_SMS = 3;
  public static final int _IR_TermProc = 7;
  public static final int _IR_Virus = 11;
  public static final int _IR_WrongInfo = 12;
  private static EIllegaReason[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EIllegaReason.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EIllegaReason[14];
      IR_Other = new EIllegaReason(0, 0, "IR_Other");
      IR_Pay = new EIllegaReason(1, 1, "IR_Pay");
      IR_Conn = new EIllegaReason(2, 2, "IR_Conn");
      IR_SMS = new EIllegaReason(3, 3, "IR_SMS");
      IR_GetInfo = new EIllegaReason(4, 4, "IR_GetInfo");
      IR_Plugin = new EIllegaReason(5, 5, "IR_Plugin");
      IR_Ad = new EIllegaReason(6, 6, "IR_Ad");
      IR_TermProc = new EIllegaReason(7, 7, "IR_TermProc");
      IR_Damage = new EIllegaReason(8, 8, "IR_Damage");
      IR_InvalidDownLoad = new EIllegaReason(9, 9, "IR_InvalidDownLoad");
      IR_InvalidInstall = new EIllegaReason(10, 10, "IR_InvalidInstall");
      IR_Virus = new EIllegaReason(11, 11, "IR_Virus");
      IR_WrongInfo = new EIllegaReason(12, 12, "IR_WrongInfo");
      IR_NeedUpdate = new EIllegaReason(13, 13, "IR_NeedUpdate");
      return;
    }
  }

  private EIllegaReason(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EIllegaReason convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EIllegaReason localEIllegaReason = __values[i]; ; localEIllegaReason = null)
    {
      return localEIllegaReason;
      i++;
      break;
    }
  }

  public static EIllegaReason convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EIllegaReason localEIllegaReason = __values[i]; ; localEIllegaReason = null)
    {
      return localEIllegaReason;
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
 * Qualified Name:     QQPIM.EIllegaReason
 * JD-Core Version:    0.6.2
 */