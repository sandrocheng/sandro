package QQPIM;

public final class EMessageTime
{
  public static final EMessageTime EMTI_END;
  public static final EMessageTime EMTI_Execute_Time_Zone;
  public static final EMessageTime EMTI_Get_X;
  public static final EMessageTime EMTI_Immediatly;
  public static final EMessageTime EMTI_None;
  public static final EMessageTime EMTI_Open;
  public static final EMessageTime EMTI_PB_Android_Private_Entry_Click;
  public static final EMessageTime EMTI_Sec_Android_Harass_Entry_Click;
  public static final int _EMTI_END = 420103001;
  public static final int _EMTI_Execute_Time_Zone = 4;
  public static final int _EMTI_Get_X = 3;
  public static final int _EMTI_Immediatly = 1;
  public static final int _EMTI_None = 0;
  public static final int _EMTI_Open = 2;
  public static final int _EMTI_PB_Android_Private_Entry_Click = 420103000;
  public static final int _EMTI_Sec_Android_Harass_Entry_Click = 120103000;
  private static EMessageTime[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EMessageTime.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EMessageTime[8];
      EMTI_None = new EMessageTime(0, 0, "EMTI_None");
      EMTI_Immediatly = new EMessageTime(1, 1, "EMTI_Immediatly");
      EMTI_Open = new EMessageTime(2, 2, "EMTI_Open");
      EMTI_Get_X = new EMessageTime(3, 3, "EMTI_Get_X");
      EMTI_Execute_Time_Zone = new EMessageTime(4, 4, "EMTI_Execute_Time_Zone");
      EMTI_Sec_Android_Harass_Entry_Click = new EMessageTime(5, 120103000, "EMTI_Sec_Android_Harass_Entry_Click");
      EMTI_PB_Android_Private_Entry_Click = new EMessageTime(6, 420103000, "EMTI_PB_Android_Private_Entry_Click");
      EMTI_END = new EMessageTime(7, 420103001, "EMTI_END");
      return;
    }
  }

  private EMessageTime(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EMessageTime convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EMessageTime localEMessageTime = __values[i]; ; localEMessageTime = null)
    {
      return localEMessageTime;
      i++;
      break;
    }
  }

  public static EMessageTime convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EMessageTime localEMessageTime = __values[i]; ; localEMessageTime = null)
    {
      return localEMessageTime;
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
 * Qualified Name:     QQPIM.EMessageTime
 * JD-Core Version:    0.6.2
 */