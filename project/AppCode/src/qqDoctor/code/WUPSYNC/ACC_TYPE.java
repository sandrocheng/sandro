package WUPSYNC;

public final class ACC_TYPE
{
  public static final ACC_TYPE ACC_EMAIL;
  public static final ACC_TYPE ACC_MOBILE;
  public static final ACC_TYPE ACC_UIN;
  public static final int _ACC_EMAIL = 3;
  public static final int _ACC_MOBILE = 2;
  public static final int _ACC_UIN = 1;
  private static ACC_TYPE[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!ACC_TYPE.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new ACC_TYPE[3];
      ACC_UIN = new ACC_TYPE(0, 1, "ACC_UIN");
      ACC_MOBILE = new ACC_TYPE(1, 2, "ACC_MOBILE");
      ACC_EMAIL = new ACC_TYPE(2, 3, "ACC_EMAIL");
      return;
    }
  }

  private ACC_TYPE(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static ACC_TYPE convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (ACC_TYPE localACC_TYPE = __values[i]; ; localACC_TYPE = null)
    {
      return localACC_TYPE;
      i++;
      break;
    }
  }

  public static ACC_TYPE convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (ACC_TYPE localACC_TYPE = __values[i]; ; localACC_TYPE = null)
    {
      return localACC_TYPE;
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
 * Qualified Name:     WUPSYNC.ACC_TYPE
 * JD-Core Version:    0.6.2
 */