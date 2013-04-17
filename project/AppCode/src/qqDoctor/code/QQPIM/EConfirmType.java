package QQPIM;

public final class EConfirmType
{
  public static final EConfirmType ECT_Confirm_Type_End;
  public static final EConfirmType ECT_Confirm_Type_None;
  public static final EConfirmType ECT_Confirm_Type_SecondChk;
  public static final int _ECT_Confirm_Type_End = 2;
  public static final int _ECT_Confirm_Type_None = 0;
  public static final int _ECT_Confirm_Type_SecondChk = 1;
  private static EConfirmType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EConfirmType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EConfirmType[3];
      ECT_Confirm_Type_None = new EConfirmType(0, 0, "ECT_Confirm_Type_None");
      ECT_Confirm_Type_SecondChk = new EConfirmType(1, 1, "ECT_Confirm_Type_SecondChk");
      ECT_Confirm_Type_End = new EConfirmType(2, 2, "ECT_Confirm_Type_End");
      return;
    }
  }

  private EConfirmType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EConfirmType convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EConfirmType localEConfirmType = __values[i]; ; localEConfirmType = null)
    {
      return localEConfirmType;
      i++;
      break;
    }
  }

  public static EConfirmType convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EConfirmType localEConfirmType = __values[i]; ; localEConfirmType = null)
    {
      return localEConfirmType;
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
 * Qualified Name:     QQPIM.EConfirmType
 * JD-Core Version:    0.6.2
 */