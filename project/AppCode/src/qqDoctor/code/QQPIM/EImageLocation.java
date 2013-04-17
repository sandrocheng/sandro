package QQPIM;

public final class EImageLocation
{
  public static final EImageLocation EILOC_End;
  public static final EImageLocation EILOC_None;
  public static final EImageLocation EILOC_PB_Android_CloudSms_Top;
  public static final EImageLocation EILOC_PB_Android_Sms_Background;
  public static final EImageLocation EILOC_PB_Iphone_CloudSms_Top;
  public static final EImageLocation EILOC_PB_SymbianV3_CloudSms_Top;
  public static final EImageLocation EILOC_PB_SymbianV5_CloudSms_Top;
  public static final EImageLocation EILOC_SEC_Android_Ads_Entry_TopRight;
  public static final EImageLocation EILOC_SEC_Android_Main;
  public static final EImageLocation EILOC_SEC_Iphone_Ads_Top;
  public static final int _EILOC_End = 4302;
  public static final int _EILOC_None = 0;
  public static final int _EILOC_PB_Android_CloudSms_Top = 4202;
  public static final int _EILOC_PB_Android_Sms_Background = 4201;
  public static final int _EILOC_PB_Iphone_CloudSms_Top = 4301;
  public static final int _EILOC_PB_SymbianV3_CloudSms_Top = 4101;
  public static final int _EILOC_PB_SymbianV5_CloudSms_Top = 4150;
  public static final int _EILOC_SEC_Android_Ads_Entry_TopRight = 1202;
  public static final int _EILOC_SEC_Android_Main = 1201;
  public static final int _EILOC_SEC_Iphone_Ads_Top = 1301;
  private static EImageLocation[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EImageLocation.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EImageLocation[10];
      EILOC_None = new EImageLocation(0, 0, "EILOC_None");
      EILOC_SEC_Android_Main = new EImageLocation(1, 1201, "EILOC_SEC_Android_Main");
      EILOC_SEC_Android_Ads_Entry_TopRight = new EImageLocation(2, 1202, "EILOC_SEC_Android_Ads_Entry_TopRight");
      EILOC_SEC_Iphone_Ads_Top = new EImageLocation(3, 1301, "EILOC_SEC_Iphone_Ads_Top");
      EILOC_PB_SymbianV3_CloudSms_Top = new EImageLocation(4, 4101, "EILOC_PB_SymbianV3_CloudSms_Top");
      EILOC_PB_SymbianV5_CloudSms_Top = new EImageLocation(5, 4150, "EILOC_PB_SymbianV5_CloudSms_Top");
      EILOC_PB_Android_Sms_Background = new EImageLocation(6, 4201, "EILOC_PB_Android_Sms_Background");
      EILOC_PB_Android_CloudSms_Top = new EImageLocation(7, 4202, "EILOC_PB_Android_CloudSms_Top");
      EILOC_PB_Iphone_CloudSms_Top = new EImageLocation(8, 4301, "EILOC_PB_Iphone_CloudSms_Top");
      EILOC_End = new EImageLocation(9, 4302, "EILOC_End");
      return;
    }
  }

  private EImageLocation(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EImageLocation convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EImageLocation localEImageLocation = __values[i]; ; localEImageLocation = null)
    {
      return localEImageLocation;
      i++;
      break;
    }
  }

  public static EImageLocation convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EImageLocation localEImageLocation = __values[i]; ; localEImageLocation = null)
    {
      return localEImageLocation;
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
 * Qualified Name:     QQPIM.EImageLocation
 * JD-Core Version:    0.6.2
 */