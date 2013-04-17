package QQPIM;

public final class EMobileOperator
{
  public static final EMobileOperator EMOP_End;
  public static final EMobileOperator EMOP_Mobile;
  public static final EMobileOperator EMOP_None;
  public static final EMobileOperator EMOP_Telecom;
  public static final EMobileOperator EMOP_Unicom;
  public static final int _EMOP_End = 4;
  public static final int _EMOP_Mobile = 2;
  public static final int _EMOP_None = 0;
  public static final int _EMOP_Telecom = 3;
  public static final int _EMOP_Unicom = 1;
  private static EMobileOperator[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EMobileOperator.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EMobileOperator[5];
      EMOP_None = new EMobileOperator(0, 0, "EMOP_None");
      EMOP_Unicom = new EMobileOperator(1, 1, "EMOP_Unicom");
      EMOP_Mobile = new EMobileOperator(2, 2, "EMOP_Mobile");
      EMOP_Telecom = new EMobileOperator(3, 3, "EMOP_Telecom");
      EMOP_End = new EMobileOperator(4, 4, "EMOP_End");
      return;
    }
  }

  private EMobileOperator(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EMobileOperator convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EMobileOperator localEMobileOperator = __values[i]; ; localEMobileOperator = null)
    {
      return localEMobileOperator;
      i++;
      break;
    }
  }

  public static EMobileOperator convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EMobileOperator localEMobileOperator = __values[i]; ; localEMobileOperator = null)
    {
      return localEMobileOperator;
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
 * Qualified Name:     QQPIM.EMobileOperator
 * JD-Core Version:    0.6.2
 */