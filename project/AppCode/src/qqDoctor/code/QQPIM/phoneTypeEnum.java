package QQPIM;

public final class phoneTypeEnum
{
  public static final phoneTypeEnum PHONE_Android;
  public static final phoneTypeEnum PHONE_Iphone;
  public static final phoneTypeEnum PHONE_NONE;
  public static final phoneTypeEnum PHONE_Symbian;
  public static final int _PHONE_Android = 2;
  public static final int _PHONE_Iphone = 3;
  public static final int _PHONE_NONE = 0;
  public static final int _PHONE_Symbian = 1;
  private static phoneTypeEnum[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!phoneTypeEnum.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new phoneTypeEnum[4];
      PHONE_NONE = new phoneTypeEnum(0, 0, "PHONE_NONE");
      PHONE_Symbian = new phoneTypeEnum(1, 1, "PHONE_Symbian");
      PHONE_Android = new phoneTypeEnum(2, 2, "PHONE_Android");
      PHONE_Iphone = new phoneTypeEnum(3, 3, "PHONE_Iphone");
      return;
    }
  }

  private phoneTypeEnum(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static phoneTypeEnum convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (phoneTypeEnum localphoneTypeEnum = __values[i]; ; localphoneTypeEnum = null)
    {
      return localphoneTypeEnum;
      i++;
      break;
    }
  }

  public static phoneTypeEnum convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (phoneTypeEnum localphoneTypeEnum = __values[i]; ; localphoneTypeEnum = null)
    {
      return localphoneTypeEnum;
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
 * Qualified Name:     QQPIM.phoneTypeEnum
 * JD-Core Version:    0.6.2
 */