package QQPIM;

public final class ECategoryPushType
{
  public static final ECategoryPushType CPUSH_HIS;
  public static final ECategoryPushType CPUSH_NONE;
  public static final ECategoryPushType CPUSH_PUSH;
  public static final int _CPUSH_HIS = 2;
  public static final int _CPUSH_NONE = 0;
  public static final int _CPUSH_PUSH = 1;
  private static ECategoryPushType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!ECategoryPushType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new ECategoryPushType[3];
      CPUSH_NONE = new ECategoryPushType(0, 0, "CPUSH_NONE");
      CPUSH_PUSH = new ECategoryPushType(1, 1, "CPUSH_PUSH");
      CPUSH_HIS = new ECategoryPushType(2, 2, "CPUSH_HIS");
      return;
    }
  }

  private ECategoryPushType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static ECategoryPushType convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (ECategoryPushType localECategoryPushType = __values[i]; ; localECategoryPushType = null)
    {
      return localECategoryPushType;
      i++;
      break;
    }
  }

  public static ECategoryPushType convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (ECategoryPushType localECategoryPushType = __values[i]; ; localECategoryPushType = null)
    {
      return localECategoryPushType;
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
 * Qualified Name:     QQPIM.ECategoryPushType
 * JD-Core Version:    0.6.2
 */