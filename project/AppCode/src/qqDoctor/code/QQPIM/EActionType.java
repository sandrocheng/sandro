package QQPIM;

public final class EActionType
{
  public static final EActionType EAT_Call;
  public static final EActionType EAT_NONE;
  public static final EActionType EAT_ReadContact;
  public static final EActionType EAT_ReadGps;
  public static final EActionType EAT_ReadIMEI;
  public static final EActionType EAT_ReadIMSI;
  public static final EActionType EAT_ReadLog;
  public static final EActionType EAT_ReadSMS;
  public static final EActionType EAT_RequestRoot;
  public static final EActionType EAT_SendSMS;
  public static final EActionType EAT_ShowAd;
  public static final int _EAT_Call = 2;
  public static final int _EAT_NONE = 0;
  public static final int _EAT_ReadContact = 4;
  public static final int _EAT_ReadGps = 8;
  public static final int _EAT_ReadIMEI = 6;
  public static final int _EAT_ReadIMSI = 7;
  public static final int _EAT_ReadLog = 5;
  public static final int _EAT_ReadSMS = 3;
  public static final int _EAT_RequestRoot = 9;
  public static final int _EAT_SendSMS = 1;
  public static final int _EAT_ShowAd = 10;
  private static EActionType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EActionType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EActionType[11];
      EAT_NONE = new EActionType(0, 0, "EAT_NONE");
      EAT_SendSMS = new EActionType(1, 1, "EAT_SendSMS");
      EAT_Call = new EActionType(2, 2, "EAT_Call");
      EAT_ReadSMS = new EActionType(3, 3, "EAT_ReadSMS");
      EAT_ReadContact = new EActionType(4, 4, "EAT_ReadContact");
      EAT_ReadLog = new EActionType(5, 5, "EAT_ReadLog");
      EAT_ReadIMEI = new EActionType(6, 6, "EAT_ReadIMEI");
      EAT_ReadIMSI = new EActionType(7, 7, "EAT_ReadIMSI");
      EAT_ReadGps = new EActionType(8, 8, "EAT_ReadGps");
      EAT_RequestRoot = new EActionType(9, 9, "EAT_RequestRoot");
      EAT_ShowAd = new EActionType(10, 10, "EAT_ShowAd");
      return;
    }
  }

  private EActionType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EActionType convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EActionType localEActionType = __values[i]; ; localEActionType = null)
    {
      return localEActionType;
      i++;
      break;
    }
  }

  public static EActionType convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EActionType localEActionType = __values[i]; ; localEActionType = null)
    {
      return localEActionType;
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
 * Qualified Name:     QQPIM.EActionType
 * JD-Core Version:    0.6.2
 */