package QQPIM;

public final class FBIReportType
{
  public static final FBIReportType FBI_FEEDBACK;
  public static final FBIReportType FBI_REPORT;
  public static final int _FBI_FEEDBACK = 1;
  public static final int _FBI_REPORT;
  private static FBIReportType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!FBIReportType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new FBIReportType[2];
      FBI_REPORT = new FBIReportType(0, 0, "FBI_REPORT");
      FBI_FEEDBACK = new FBIReportType(1, 1, "FBI_FEEDBACK");
      return;
    }
  }

  private FBIReportType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static FBIReportType convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (FBIReportType localFBIReportType = __values[i]; ; localFBIReportType = null)
    {
      return localFBIReportType;
      i++;
      break;
    }
  }

  public static FBIReportType convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (FBIReportType localFBIReportType = __values[i]; ; localFBIReportType = null)
    {
      return localFBIReportType;
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
 * Qualified Name:     QQPIM.FBIReportType
 * JD-Core Version:    0.6.2
 */