package QQPIM;

public final class EMessageType
{
  public static final EMessageType EMT_Android_Notice_Bar;
  public static final EMessageType EMT_Android_Pop_Up;
  public static final EMessageType EMT_Android_QXinFriend_Top;
  public static final EMessageType EMT_Android_QxinSms_Top;
  public static final EMessageType EMT_Android_SettingPage;
  public static final EMessageType EMT_Android_Sms_Top;
  public static final EMessageType EMT_Android_SysPhoneBook_Top;
  public static final EMessageType EMT_Android_Top;
  public static final EMessageType EMT_END;
  public static final EMessageType EMT_External_Pop_Up;
  public static final EMessageType EMT_Iphone_Pop_Up;
  public static final EMessageType EMT_Iphone_SecureAdsList;
  public static final EMessageType EMT_Iphone_ToolBox_Top;
  public static final EMessageType EMT_None;
  public static final EMessageType EMT_Notice_Bar;
  public static final EMessageType EMT_PC_Pop_Up;
  public static final EMessageType EMT_Pop_UP;
  public static final EMessageType EMT_Symbian_Pop_Up;
  public static final EMessageType EMT_Symbian_Top;
  public static final EMessageType EMT_Top;
  public static final EMessageType EMT_Winphone_Pop_Up;
  public static final int _EMT_Android_Notice_Bar = 8;
  public static final int _EMT_Android_Pop_Up = 6;
  public static final int _EMT_Android_QXinFriend_Top = 4203;
  public static final int _EMT_Android_QxinSms_Top = 4204;
  public static final int _EMT_Android_SettingPage = 4205;
  public static final int _EMT_Android_Sms_Top = 4202;
  public static final int _EMT_Android_SysPhoneBook_Top = 4201;
  public static final int _EMT_Android_Top = 7;
  public static final int _EMT_END = 4302;
  public static final int _EMT_External_Pop_Up = 9;
  public static final int _EMT_Iphone_Pop_Up = 10;
  public static final int _EMT_Iphone_SecureAdsList = 1301;
  public static final int _EMT_Iphone_ToolBox_Top = 4301;
  public static final int _EMT_None = 0;
  public static final int _EMT_Notice_Bar = 3;
  public static final int _EMT_PC_Pop_Up = 12;
  public static final int _EMT_Pop_UP = 1;
  public static final int _EMT_Symbian_Pop_Up = 4;
  public static final int _EMT_Symbian_Top = 5;
  public static final int _EMT_Top = 2;
  public static final int _EMT_Winphone_Pop_Up = 11;
  private static EMessageType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EMessageType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EMessageType[21];
      EMT_None = new EMessageType(0, 0, "EMT_None");
      EMT_Pop_UP = new EMessageType(1, 1, "EMT_Pop_UP");
      EMT_Top = new EMessageType(2, 2, "EMT_Top");
      EMT_Notice_Bar = new EMessageType(3, 3, "EMT_Notice_Bar");
      EMT_Symbian_Pop_Up = new EMessageType(4, 4, "EMT_Symbian_Pop_Up");
      EMT_Symbian_Top = new EMessageType(5, 5, "EMT_Symbian_Top");
      EMT_Android_Pop_Up = new EMessageType(6, 6, "EMT_Android_Pop_Up");
      EMT_Android_Top = new EMessageType(7, 7, "EMT_Android_Top");
      EMT_Android_Notice_Bar = new EMessageType(8, 8, "EMT_Android_Notice_Bar");
      EMT_External_Pop_Up = new EMessageType(9, 9, "EMT_External_Pop_Up");
      EMT_Iphone_Pop_Up = new EMessageType(10, 10, "EMT_Iphone_Pop_Up");
      EMT_Winphone_Pop_Up = new EMessageType(11, 11, "EMT_Winphone_Pop_Up");
      EMT_PC_Pop_Up = new EMessageType(12, 12, "EMT_PC_Pop_Up");
      EMT_Iphone_SecureAdsList = new EMessageType(13, 1301, "EMT_Iphone_SecureAdsList");
      EMT_Android_SysPhoneBook_Top = new EMessageType(14, 4201, "EMT_Android_SysPhoneBook_Top");
      EMT_Android_Sms_Top = new EMessageType(15, 4202, "EMT_Android_Sms_Top");
      EMT_Android_QXinFriend_Top = new EMessageType(16, 4203, "EMT_Android_QXinFriend_Top");
      EMT_Android_QxinSms_Top = new EMessageType(17, 4204, "EMT_Android_QxinSms_Top");
      EMT_Android_SettingPage = new EMessageType(18, 4205, "EMT_Android_SettingPage");
      EMT_Iphone_ToolBox_Top = new EMessageType(19, 4301, "EMT_Iphone_ToolBox_Top");
      EMT_END = new EMessageType(20, 4302, "EMT_END");
      return;
    }
  }

  private EMessageType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EMessageType convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EMessageType localEMessageType = __values[i]; ; localEMessageType = null)
    {
      return localEMessageType;
      i++;
      break;
    }
  }

  public static EMessageType convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EMessageType localEMessageType = __values[i]; ; localEMessageType = null)
    {
      return localEMessageType;
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
 * Qualified Name:     QQPIM.EMessageType
 * JD-Core Version:    0.6.2
 */