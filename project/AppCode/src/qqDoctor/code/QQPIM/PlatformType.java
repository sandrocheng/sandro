package QQPIM;

public final class PlatformType
{
  public static final PlatformType PHONE_android;
  public static final PlatformType PHONE_iphone;
  public static final PlatformType PHONE_none;
  public static final PlatformType PHONE_symbian;
  public static final int _PHONE_android = 2;
  public static final int _PHONE_iphone = 3;
  public static final int _PHONE_none = 0;
  public static final int _PHONE_symbian = 1;
  private static PlatformType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!PlatformType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new PlatformType[4];
      PHONE_none = new PlatformType(0, 0, "PHONE_none");
      PHONE_symbian = new PlatformType(1, 1, "PHONE_symbian");
      PHONE_android = new PlatformType(2, 2, "PHONE_android");
      PHONE_iphone = new PlatformType(3, 3, "PHONE_iphone");
      return;
    }
  }

  private PlatformType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static PlatformType convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (PlatformType localPlatformType = __values[i]; ; localPlatformType = null)
    {
      return localPlatformType;
      i++;
      break;
    }
  }

  public static PlatformType convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (PlatformType localPlatformType = __values[i]; ; localPlatformType = null)
    {
      return localPlatformType;
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
 * Qualified Name:     QQPIM.PlatformType
 * JD-Core Version:    0.6.2
 */