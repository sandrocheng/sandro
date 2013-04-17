package QQPIM;

public final class ENotifyReportType
{
  public static final ENotifyReportType ERT_Auto;
  public static final ENotifyReportType ERT_Manual;
  public static final ENotifyReportType ERT_None;
  public static final int _ERT_Auto = 1;
  public static final int _ERT_Manual = 2;
  public static final int _ERT_None;
  private static ENotifyReportType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!ENotifyReportType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new ENotifyReportType[3];
      ERT_None = new ENotifyReportType(0, 0, "ERT_None");
      ERT_Auto = new ENotifyReportType(1, 1, "ERT_Auto");
      ERT_Manual = new ENotifyReportType(2, 2, "ERT_Manual");
      return;
    }
  }

  private ENotifyReportType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static ENotifyReportType convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (ENotifyReportType localENotifyReportType = __values[i]; ; localENotifyReportType = null)
    {
      return localENotifyReportType;
      i++;
      break;
    }
  }

  public static ENotifyReportType convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (ENotifyReportType localENotifyReportType = __values[i]; ; localENotifyReportType = null)
    {
      return localENotifyReportType;
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
 * Qualified Name:     QQPIM.ENotifyReportType
 * JD-Core Version:    0.6.2
 */