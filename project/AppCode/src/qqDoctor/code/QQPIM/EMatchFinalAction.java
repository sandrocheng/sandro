package QQPIM;

public final class EMatchFinalAction
{
  public static final EMatchFinalAction EM_FINAL_ACTION_DOUBT;
  public static final EMatchFinalAction EM_FINAL_ACTION_INTERCEPT;
  public static final EMatchFinalAction EM_FINAL_ACTION_MAX;
  public static final EMatchFinalAction EM_FINAL_ACTION_MIN;
  public static final EMatchFinalAction EM_FINAL_ACTION_PASS;
  public static final int _EM_FINAL_ACTION_DOUBT = 3;
  public static final int _EM_FINAL_ACTION_INTERCEPT = 2;
  public static final int _EM_FINAL_ACTION_MAX = 4;
  public static final int _EM_FINAL_ACTION_MIN = 0;
  public static final int _EM_FINAL_ACTION_PASS = 1;
  private static EMatchFinalAction[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EMatchFinalAction.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EMatchFinalAction[5];
      EM_FINAL_ACTION_MIN = new EMatchFinalAction(0, 0, "EM_FINAL_ACTION_MIN");
      EM_FINAL_ACTION_PASS = new EMatchFinalAction(1, 1, "EM_FINAL_ACTION_PASS");
      EM_FINAL_ACTION_INTERCEPT = new EMatchFinalAction(2, 2, "EM_FINAL_ACTION_INTERCEPT");
      EM_FINAL_ACTION_DOUBT = new EMatchFinalAction(3, 3, "EM_FINAL_ACTION_DOUBT");
      EM_FINAL_ACTION_MAX = new EMatchFinalAction(4, 4, "EM_FINAL_ACTION_MAX");
      return;
    }
  }

  private EMatchFinalAction(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EMatchFinalAction convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EMatchFinalAction localEMatchFinalAction = __values[i]; ; localEMatchFinalAction = null)
    {
      return localEMatchFinalAction;
      i++;
      break;
    }
  }

  public static EMatchFinalAction convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EMatchFinalAction localEMatchFinalAction = __values[i]; ; localEMatchFinalAction = null)
    {
      return localEMatchFinalAction;
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
 * Qualified Name:     QQPIM.EMatchFinalAction
 * JD-Core Version:    0.6.2
 */