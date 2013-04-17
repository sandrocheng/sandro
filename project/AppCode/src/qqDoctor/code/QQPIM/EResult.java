package QQPIM;

public final class EResult
{
  public static final EResult ER_Fail;
  public static final EResult ER_Invalid;
  public static final EResult ER_Success;
  public static final int _ER_Fail = 0;
  public static final int _ER_Invalid = 2;
  public static final int _ER_Success = 1;
  private static EResult[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EResult.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EResult[3];
      ER_Fail = new EResult(0, 0, "ER_Fail");
      ER_Success = new EResult(1, 1, "ER_Success");
      ER_Invalid = new EResult(2, 2, "ER_Invalid");
      return;
    }
  }

  private EResult(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EResult convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EResult localEResult = __values[i]; ; localEResult = null)
    {
      return localEResult;
      i++;
      break;
    }
  }

  public static EResult convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EResult localEResult = __values[i]; ; localEResult = null)
    {
      return localEResult;
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
 * Qualified Name:     QQPIM.EResult
 * JD-Core Version:    0.6.2
 */