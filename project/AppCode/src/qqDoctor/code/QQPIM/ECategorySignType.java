package QQPIM;

public final class ECategorySignType
{
  public static final ECategorySignType CSIGN_HOT;
  public static final ECategorySignType CSIGN_NEW;
  public static final ECategorySignType CSIGN_NONE;
  public static final ECategorySignType CSIGN_REC;
  public static final int _CSIGN_HOT = 3;
  public static final int _CSIGN_NEW = 1;
  public static final int _CSIGN_NONE = 0;
  public static final int _CSIGN_REC = 2;
  private static ECategorySignType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!ECategorySignType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new ECategorySignType[4];
      CSIGN_NONE = new ECategorySignType(0, 0, "CSIGN_NONE");
      CSIGN_NEW = new ECategorySignType(1, 1, "CSIGN_NEW");
      CSIGN_REC = new ECategorySignType(2, 2, "CSIGN_REC");
      CSIGN_HOT = new ECategorySignType(3, 3, "CSIGN_HOT");
      return;
    }
  }

  private ECategorySignType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static ECategorySignType convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (ECategorySignType localECategorySignType = __values[i]; ; localECategorySignType = null)
    {
      return localECategorySignType;
      i++;
      break;
    }
  }

  public static ECategorySignType convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (ECategorySignType localECategorySignType = __values[i]; ; localECategorySignType = null)
    {
      return localECategorySignType;
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
 * Qualified Name:     QQPIM.ECategorySignType
 * JD-Core Version:    0.6.2
 */