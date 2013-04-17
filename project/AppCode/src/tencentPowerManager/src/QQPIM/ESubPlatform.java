package QQPIM;

public final class ESubPlatform
{
  public static final ESubPlatform ESP_Android_General;
  public static final ESubPlatform ESP_Android_HD;
  public static final ESubPlatform ESP_Android_Pad;
  public static final ESubPlatform ESP_BB_General;
  public static final ESubPlatform ESP_END;
  public static final ESubPlatform ESP_Ipad;
  public static final ESubPlatform ESP_Iphone_General;
  public static final ESubPlatform ESP_Ipod;
  public static final ESubPlatform ESP_Kjava_General;
  public static final ESubPlatform ESP_MTK_General;
  public static final ESubPlatform ESP_NK_Kjava_General;
  public static final ESubPlatform ESP_NONE;
  public static final ESubPlatform ESP_PC_WindowsGeneral;
  public static final ESubPlatform ESP_Server_General;
  public static final ESubPlatform ESP_Symbian_3;
  public static final ESubPlatform ESP_Symbian_V2;
  public static final ESubPlatform ESP_Symbian_V3;
  public static final ESubPlatform ESP_Symbian_V5;
  public static final ESubPlatform ESP_WinPhone_General;
  public static final ESubPlatform ESP_WinPhone_Tablet;
  private static ESubPlatform[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!ESubPlatform.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new ESubPlatform[20];
      ESP_NONE = new ESubPlatform(0, 0, "ESP_NONE");
      ESP_Symbian_V3 = new ESubPlatform(1, 101, "ESP_Symbian_V3");
      ESP_Symbian_V5 = new ESubPlatform(2, 102, "ESP_Symbian_V5");
      ESP_Symbian_V2 = new ESubPlatform(3, 103, "ESP_Symbian_V2");
      ESP_Symbian_3 = new ESubPlatform(4, 104, "ESP_Symbian_3");
      ESP_Android_General = new ESubPlatform(5, 201, "ESP_Android_General");
      ESP_Android_Pad = new ESubPlatform(6, 202, "ESP_Android_Pad");
      ESP_Android_HD = new ESubPlatform(7, 203, "ESP_Android_HD");
      ESP_Iphone_General = new ESubPlatform(8, 301, "ESP_Iphone_General");
      ESP_Ipad = new ESubPlatform(9, 302, "ESP_Ipad");
      ESP_Ipod = new ESubPlatform(10, 303, "ESP_Ipod");
      ESP_Kjava_General = new ESubPlatform(11, 401, "ESP_Kjava_General");
      ESP_NK_Kjava_General = new ESubPlatform(12, 402, "ESP_NK_Kjava_General");
      ESP_Server_General = new ESubPlatform(13, 501, "ESP_Server_General");
      ESP_WinPhone_General = new ESubPlatform(14, 601, "ESP_WinPhone_General");
      ESP_WinPhone_Tablet = new ESubPlatform(15, 602, "ESP_WinPhone_Tablet");
      ESP_MTK_General = new ESubPlatform(16, 701, "ESP_MTK_General");
      ESP_BB_General = new ESubPlatform(17, 801, "ESP_BB_General");
      ESP_PC_WindowsGeneral = new ESubPlatform(18, 901, "ESP_PC_WindowsGeneral");
      ESP_END = new ESubPlatform(19, 902, "ESP_END");
      return;
    }
  }

  private ESubPlatform(int paramInt1, int paramInt2, String paramString)
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
 * Qualified Name:     QQPIM.ESubPlatform
 * JD-Core Version:    0.6.2
 */