package QQPIM;

public final class ECloudCmdUserAction
{
  public static final ECloudCmdUserAction EUA_Accept;
  public static final ECloudCmdUserAction EUA_None;
  public static final ECloudCmdUserAction EUA_Reject;
  public static final int _EUA_Accept = 1;
  public static final int _EUA_None = 0;
  public static final int _EUA_Reject = 2;
  private static ECloudCmdUserAction[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!ECloudCmdUserAction.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new ECloudCmdUserAction[3];
      EUA_None = new ECloudCmdUserAction(0, 0, "EUA_None");
      EUA_Accept = new ECloudCmdUserAction(1, 1, "EUA_Accept");
      EUA_Reject = new ECloudCmdUserAction(2, 2, "EUA_Reject");
      return;
    }
  }

  private ECloudCmdUserAction(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static ECloudCmdUserAction convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (ECloudCmdUserAction localECloudCmdUserAction = __values[i]; ; localECloudCmdUserAction = null)
    {
      return localECloudCmdUserAction;
      i++;
      break;
    }
  }

  public static ECloudCmdUserAction convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (ECloudCmdUserAction localECloudCmdUserAction = __values[i]; ; localECloudCmdUserAction = null)
    {
      return localECloudCmdUserAction;
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
 * Qualified Name:     QQPIM.ECloudCmdUserAction
 * JD-Core Version:    0.6.2
 */