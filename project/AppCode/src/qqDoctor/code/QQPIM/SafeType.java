package QQPIM;

public final class SafeType
{
  public static final SafeType C_AD_BLOCK;
  public static final SafeType C_LOW_RISK;
  public static final SafeType C_MIDDLE_RISK;
  public static final SafeType C_NOT_HIT;
  public static final SafeType C_NOT_Official;
  public static final SafeType C_RISK;
  public static final SafeType C_SAFE;
  public static final SafeType C_UNKNOWN;
  public static final SafeType C_VIRUS;
  public static final int _C_AD_BLOCK = 7;
  public static final int _C_LOW_RISK = 4;
  public static final int _C_MIDDLE_RISK = 5;
  public static final int _C_NOT_HIT = 6;
  public static final int _C_NOT_Official = 8;
  public static final int _C_RISK = 2;
  public static final int _C_SAFE = 1;
  public static final int _C_UNKNOWN = 0;
  public static final int _C_VIRUS = 3;
  private static SafeType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!SafeType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new SafeType[9];
      C_UNKNOWN = new SafeType(0, 0, "C_UNKNOWN");
      C_SAFE = new SafeType(1, 1, "C_SAFE");
      C_RISK = new SafeType(2, 2, "C_RISK");
      C_VIRUS = new SafeType(3, 3, "C_VIRUS");
      C_LOW_RISK = new SafeType(4, 4, "C_LOW_RISK");
      C_MIDDLE_RISK = new SafeType(5, 5, "C_MIDDLE_RISK");
      C_NOT_HIT = new SafeType(6, 6, "C_NOT_HIT");
      C_AD_BLOCK = new SafeType(7, 7, "C_AD_BLOCK");
      C_NOT_Official = new SafeType(8, 8, "C_NOT_Official");
      return;
    }
  }

  private SafeType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static SafeType convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (SafeType localSafeType = __values[i]; ; localSafeType = null)
    {
      return localSafeType;
      i++;
      break;
    }
  }

  public static SafeType convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (SafeType localSafeType = __values[i]; ; localSafeType = null)
    {
      return localSafeType;
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
 * Qualified Name:     QQPIM.SafeType
 * JD-Core Version:    0.6.2
 */