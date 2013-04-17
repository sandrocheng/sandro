package QQPIM;

public final class EUserDefineRuleType
{
  public static final EUserDefineRuleType EMUDRT_BLACK;
  public static final EUserDefineRuleType EMUDRT_MAX;
  public static final EUserDefineRuleType EMUDRT_MIN;
  public static final EUserDefineRuleType EMUDRT_WHITE;
  public static final int _EMUDRT_BLACK = 2;
  public static final int _EMUDRT_MAX = 3;
  public static final int _EMUDRT_MIN = 0;
  public static final int _EMUDRT_WHITE = 1;
  private static EUserDefineRuleType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EUserDefineRuleType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EUserDefineRuleType[4];
      EMUDRT_MIN = new EUserDefineRuleType(0, 0, "EMUDRT_MIN");
      EMUDRT_WHITE = new EUserDefineRuleType(1, 1, "EMUDRT_WHITE");
      EMUDRT_BLACK = new EUserDefineRuleType(2, 2, "EMUDRT_BLACK");
      EMUDRT_MAX = new EUserDefineRuleType(3, 3, "EMUDRT_MAX");
      return;
    }
  }

  private EUserDefineRuleType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EUserDefineRuleType convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EUserDefineRuleType localEUserDefineRuleType = __values[i]; ; localEUserDefineRuleType = null)
    {
      return localEUserDefineRuleType;
      i++;
      break;
    }
  }

  public static EUserDefineRuleType convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EUserDefineRuleType localEUserDefineRuleType = __values[i]; ; localEUserDefineRuleType = null)
    {
      return localEUserDefineRuleType;
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
 * Qualified Name:     QQPIM.EUserDefineRuleType
 * JD-Core Version:    0.6.2
 */