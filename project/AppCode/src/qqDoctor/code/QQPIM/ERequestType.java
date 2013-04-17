package QQPIM;

public final class ERequestType
{
  public static final ERequestType ERT_CloudCheck;
  public static final ERequestType ERT_GetSoftInfo;
  public static final ERequestType ERT_GetSoftInfoNoDesc;
  public static final ERequestType ERT_ReportAllSoft;
  public static final ERequestType ERT_ReportFeature;
  public static final ERequestType ERT_Report_Cloud_Get;
  public static final int _ERT_CloudCheck = 1;
  public static final int _ERT_GetSoftInfo = 2;
  public static final int _ERT_GetSoftInfoNoDesc = 4;
  public static final int _ERT_ReportAllSoft = 5;
  public static final int _ERT_ReportFeature = 0;
  public static final int _ERT_Report_Cloud_Get = 3;
  private static ERequestType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!ERequestType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new ERequestType[6];
      ERT_ReportFeature = new ERequestType(0, 0, "ERT_ReportFeature");
      ERT_CloudCheck = new ERequestType(1, 1, "ERT_CloudCheck");
      ERT_GetSoftInfo = new ERequestType(2, 2, "ERT_GetSoftInfo");
      ERT_Report_Cloud_Get = new ERequestType(3, 3, "ERT_Report_Cloud_Get");
      ERT_GetSoftInfoNoDesc = new ERequestType(4, 4, "ERT_GetSoftInfoNoDesc");
      ERT_ReportAllSoft = new ERequestType(5, 5, "ERT_ReportAllSoft");
      return;
    }
  }

  private ERequestType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static ERequestType convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (ERequestType localERequestType = __values[i]; ; localERequestType = null)
    {
      return localERequestType;
      i++;
      break;
    }
  }

  public static ERequestType convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (ERequestType localERequestType = __values[i]; ; localERequestType = null)
    {
      return localERequestType;
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
 * Qualified Name:     QQPIM.ERequestType
 * JD-Core Version:    0.6.2
 */