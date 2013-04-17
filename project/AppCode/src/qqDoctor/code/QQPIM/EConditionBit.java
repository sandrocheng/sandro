package QQPIM;

public final class EConditionBit
{
  public static final EConditionBit ECB_End;
  public static final EConditionBit ECB_IsBindQQ;
  public static final EConditionBit ECB_IsQxinOpen;
  public static final EConditionBit ECB_IsSetEntrance;
  public static final EConditionBit ECB_None;
  public static final int _ECB_End = 33;
  public static final int _ECB_IsBindQQ = 2;
  public static final int _ECB_IsQxinOpen = 1;
  public static final int _ECB_IsSetEntrance = 3;
  public static final int _ECB_None;
  private static EConditionBit[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EConditionBit.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EConditionBit[5];
      ECB_None = new EConditionBit(0, 0, "ECB_None");
      ECB_IsQxinOpen = new EConditionBit(1, 1, "ECB_IsQxinOpen");
      ECB_IsBindQQ = new EConditionBit(2, 2, "ECB_IsBindQQ");
      ECB_IsSetEntrance = new EConditionBit(3, 3, "ECB_IsSetEntrance");
      ECB_End = new EConditionBit(4, 33, "ECB_End");
      return;
    }
  }

  private EConditionBit(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EConditionBit convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EConditionBit localEConditionBit = __values[i]; ; localEConditionBit = null)
    {
      return localEConditionBit;
      i++;
      break;
    }
  }

  public static EConditionBit convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EConditionBit localEConditionBit = __values[i]; ; localEConditionBit = null)
    {
      return localEConditionBit;
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
 * Qualified Name:     QQPIM.EConditionBit
 * JD-Core Version:    0.6.2
 */