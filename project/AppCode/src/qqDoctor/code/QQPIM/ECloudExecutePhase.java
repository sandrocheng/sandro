package QQPIM;

public final class ECloudExecutePhase
{
  public static final ECloudExecutePhase ECEP_Phase_Execute;
  public static final ECloudExecutePhase ECEP_Phase_None;
  public static final ECloudExecutePhase ECEP_Phase_Show;
  public static final ECloudExecutePhase ECEP_Phase_User_Confirm;
  public static final int _ECEP_Phase_Execute = 3;
  public static final int _ECEP_Phase_None = 0;
  public static final int _ECEP_Phase_Show = 1;
  public static final int _ECEP_Phase_User_Confirm = 2;
  private static ECloudExecutePhase[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!ECloudExecutePhase.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new ECloudExecutePhase[4];
      ECEP_Phase_None = new ECloudExecutePhase(0, 0, "ECEP_Phase_None");
      ECEP_Phase_Show = new ECloudExecutePhase(1, 1, "ECEP_Phase_Show");
      ECEP_Phase_User_Confirm = new ECloudExecutePhase(2, 2, "ECEP_Phase_User_Confirm");
      ECEP_Phase_Execute = new ECloudExecutePhase(3, 3, "ECEP_Phase_Execute");
      return;
    }
  }

  private ECloudExecutePhase(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static ECloudExecutePhase convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (ECloudExecutePhase localECloudExecutePhase = __values[i]; ; localECloudExecutePhase = null)
    {
      return localECloudExecutePhase;
      i++;
      break;
    }
  }

  public static ECloudExecutePhase convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (ECloudExecutePhase localECloudExecutePhase = __values[i]; ; localECloudExecutePhase = null)
    {
      return localECloudExecutePhase;
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
 * Qualified Name:     QQPIM.ECloudExecutePhase
 * JD-Core Version:    0.6.2
 */