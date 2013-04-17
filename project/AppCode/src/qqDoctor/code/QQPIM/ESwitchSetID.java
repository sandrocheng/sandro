package QQPIM;

public final class ESwitchSetID
{
  public static final ESwitchSetID ESSID_Cloud_Update;
  public static final ESwitchSetID ESSID_Connect_Debug_Server;
  public static final ESwitchSetID ESSID_Crash_Report;
  public static final ESwitchSetID ESSID_END;
  public static final ESwitchSetID ESSID_Flow_Dial;
  public static final ESwitchSetID ESSID_Module_Advance_Defence;
  public static final ESwitchSetID ESSID_None;
  public static final ESwitchSetID ESSID_Notify_iCloudSrc_Conflict;
  public static final ESwitchSetID ESSID_Recommend_Soft;
  public static final ESwitchSetID ESSID_Report_Soft_List;
  public static final int _ESSID_Cloud_Update = 5;
  public static final int _ESSID_Connect_Debug_Server = 4;
  public static final int _ESSID_Crash_Report = 1;
  public static final int _ESSID_END = 9;
  public static final int _ESSID_Flow_Dial = 3;
  public static final int _ESSID_Module_Advance_Defence = 2;
  public static final int _ESSID_None = 0;
  public static final int _ESSID_Notify_iCloudSrc_Conflict = 8;
  public static final int _ESSID_Recommend_Soft = 6;
  public static final int _ESSID_Report_Soft_List = 7;
  private static ESwitchSetID[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!ESwitchSetID.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new ESwitchSetID[10];
      ESSID_None = new ESwitchSetID(0, 0, "ESSID_None");
      ESSID_Crash_Report = new ESwitchSetID(1, 1, "ESSID_Crash_Report");
      ESSID_Module_Advance_Defence = new ESwitchSetID(2, 2, "ESSID_Module_Advance_Defence");
      ESSID_Flow_Dial = new ESwitchSetID(3, 3, "ESSID_Flow_Dial");
      ESSID_Connect_Debug_Server = new ESwitchSetID(4, 4, "ESSID_Connect_Debug_Server");
      ESSID_Cloud_Update = new ESwitchSetID(5, 5, "ESSID_Cloud_Update");
      ESSID_Recommend_Soft = new ESwitchSetID(6, 6, "ESSID_Recommend_Soft");
      ESSID_Report_Soft_List = new ESwitchSetID(7, 7, "ESSID_Report_Soft_List");
      ESSID_Notify_iCloudSrc_Conflict = new ESwitchSetID(8, 8, "ESSID_Notify_iCloudSrc_Conflict");
      ESSID_END = new ESwitchSetID(9, 9, "ESSID_END");
      return;
    }
  }

  private ESwitchSetID(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static ESwitchSetID convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (ESwitchSetID localESwitchSetID = __values[i]; ; localESwitchSetID = null)
    {
      return localESwitchSetID;
      i++;
      break;
    }
  }

  public static ESwitchSetID convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (ESwitchSetID localESwitchSetID = __values[i]; ; localESwitchSetID = null)
    {
      return localESwitchSetID;
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
 * Qualified Name:     QQPIM.ESwitchSetID
 * JD-Core Version:    0.6.2
 */