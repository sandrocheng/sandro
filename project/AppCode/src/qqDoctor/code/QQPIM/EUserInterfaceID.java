package QQPIM;

public final class EUserInterfaceID
{
  public static final EUserInterfaceID EUIID_PBJB_Iphone_Call_Skin_List;
  public static final EUserInterfaceID EUIID_PBJB_Iphone_Soft_Skin_List;
  public static final EUserInterfaceID EUIID_PB_Android_Private_Entry;
  public static final EUserInterfaceID EUIID_PB_Iphone_Call_Skin_List;
  public static final EUserInterfaceID EUIID_SecJB_Iphone_About_Entry;
  public static final EUserInterfaceID EUIID_Sec_Android_Harass_Entry;
  public static final EUserInterfaceID EUIID_Sec_Android_SoftGame_Main;
  public static final EUserInterfaceID EUIID_Sec_Android_VirusChk_Main;
  public static final EUserInterfaceID EUIID_Sec_Android_VirusChk_Tool;
  public static final EUserInterfaceID EUIID_Sec_Iphone_About;
  public static final EUserInterfaceID EUIID_Sec_Iphone_About_Entry;
  public static final EUserInterfaceID EUIID_Sec_Iphone_Day_Promote;
  public static final EUserInterfaceID EUIID_Sec_Iphone_Hot_Theme;
  public static final EUserInterfaceID EUIID_Sec_Iphone_Limit_Free;
  public static final int _EUIID_PBJB_Iphone_Call_Skin_List = 203010101;
  public static final int _EUIID_PBJB_Iphone_Soft_Skin_List = 203010201;
  public static final int _EUIID_PB_Android_Private_Entry = 42010300;
  public static final int _EUIID_PB_Iphone_Call_Skin_List = 43010100;
  public static final int _EUIID_SecJB_Iphone_About_Entry = 163010101;
  public static final int _EUIID_Sec_Android_Harass_Entry = 12010300;
  public static final int _EUIID_Sec_Android_SoftGame_Main = 12010100;
  public static final int _EUIID_Sec_Android_VirusChk_Main = 12010200;
  public static final int _EUIID_Sec_Android_VirusChk_Tool = 12010201;
  public static final int _EUIID_Sec_Iphone_About = 13010100;
  public static final int _EUIID_Sec_Iphone_About_Entry = 13010101;
  public static final int _EUIID_Sec_Iphone_Day_Promote = 13010201;
  public static final int _EUIID_Sec_Iphone_Hot_Theme = 13010203;
  public static final int _EUIID_Sec_Iphone_Limit_Free = 13010202;
  private static EUserInterfaceID[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EUserInterfaceID.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EUserInterfaceID[14];
      EUIID_Sec_Android_SoftGame_Main = new EUserInterfaceID(0, 12010100, "EUIID_Sec_Android_SoftGame_Main");
      EUIID_Sec_Android_VirusChk_Main = new EUserInterfaceID(1, 12010200, "EUIID_Sec_Android_VirusChk_Main");
      EUIID_Sec_Android_VirusChk_Tool = new EUserInterfaceID(2, 12010201, "EUIID_Sec_Android_VirusChk_Tool");
      EUIID_Sec_Android_Harass_Entry = new EUserInterfaceID(3, 12010300, "EUIID_Sec_Android_Harass_Entry");
      EUIID_Sec_Iphone_About = new EUserInterfaceID(4, 13010100, "EUIID_Sec_Iphone_About");
      EUIID_Sec_Iphone_About_Entry = new EUserInterfaceID(5, 13010101, "EUIID_Sec_Iphone_About_Entry");
      EUIID_Sec_Iphone_Day_Promote = new EUserInterfaceID(6, 13010201, "EUIID_Sec_Iphone_Day_Promote");
      EUIID_Sec_Iphone_Limit_Free = new EUserInterfaceID(7, 13010202, "EUIID_Sec_Iphone_Limit_Free");
      EUIID_Sec_Iphone_Hot_Theme = new EUserInterfaceID(8, 13010203, "EUIID_Sec_Iphone_Hot_Theme");
      EUIID_PB_Android_Private_Entry = new EUserInterfaceID(9, 42010300, "EUIID_PB_Android_Private_Entry");
      EUIID_PB_Iphone_Call_Skin_List = new EUserInterfaceID(10, 43010100, "EUIID_PB_Iphone_Call_Skin_List");
      EUIID_SecJB_Iphone_About_Entry = new EUserInterfaceID(11, 163010101, "EUIID_SecJB_Iphone_About_Entry");
      EUIID_PBJB_Iphone_Call_Skin_List = new EUserInterfaceID(12, 203010101, "EUIID_PBJB_Iphone_Call_Skin_List");
      EUIID_PBJB_Iphone_Soft_Skin_List = new EUserInterfaceID(13, 203010201, "EUIID_PBJB_Iphone_Soft_Skin_List");
      return;
    }
  }

  private EUserInterfaceID(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EUserInterfaceID convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EUserInterfaceID localEUserInterfaceID = __values[i]; ; localEUserInterfaceID = null)
    {
      return localEUserInterfaceID;
      i++;
      break;
    }
  }

  public static EUserInterfaceID convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EUserInterfaceID localEUserInterfaceID = __values[i]; ; localEUserInterfaceID = null)
    {
      return localEUserInterfaceID;
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
 * Qualified Name:     QQPIM.EUserInterfaceID
 * JD-Core Version:    0.6.2
 */