package QQPIM;

public final class ETipsUserAction
{
  public static final ETipsUserAction ETT_Reject;
  public static final ETipsUserAction ETUA_Accept;
  public static final int _ETT_Reject = 2;
  public static final int _ETUA_Accept = 1;
  private static ETipsUserAction[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!ETipsUserAction.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new ETipsUserAction[2];
      ETUA_Accept = new ETipsUserAction(0, 1, "ETUA_Accept");
      ETT_Reject = new ETipsUserAction(1, 2, "ETT_Reject");
      return;
    }
  }

  private ETipsUserAction(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static ETipsUserAction convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (ETipsUserAction localETipsUserAction = __values[i]; ; localETipsUserAction = null)
    {
      return localETipsUserAction;
      i++;
      break;
    }
  }

  public static ETipsUserAction convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (ETipsUserAction localETipsUserAction = __values[i]; ; localETipsUserAction = null)
    {
      return localETipsUserAction;
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
 * Qualified Name:     QQPIM.ETipsUserAction
 * JD-Core Version:    0.6.2
 */