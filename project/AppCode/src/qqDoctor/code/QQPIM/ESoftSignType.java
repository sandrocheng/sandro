package QQPIM;

public final class ESoftSignType
{
  public static final ESoftSignType SIGN_FIRST;
  public static final ESoftSignType SIGN_HOT;
  public static final ESoftSignType SIGN_NEW;
  public static final ESoftSignType SIGN_NONE;
  public static final ESoftSignType SIGN_REC;
  public static final int _SIGN_FIRST = 4;
  public static final int _SIGN_HOT = 3;
  public static final int _SIGN_NEW = 1;
  public static final int _SIGN_NONE = 0;
  public static final int _SIGN_REC = 2;
  private static ESoftSignType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!ESoftSignType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new ESoftSignType[5];
      SIGN_NONE = new ESoftSignType(0, 0, "SIGN_NONE");
      SIGN_NEW = new ESoftSignType(1, 1, "SIGN_NEW");
      SIGN_REC = new ESoftSignType(2, 2, "SIGN_REC");
      SIGN_HOT = new ESoftSignType(3, 3, "SIGN_HOT");
      SIGN_FIRST = new ESoftSignType(4, 4, "SIGN_FIRST");
      return;
    }
  }

  private ESoftSignType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static ESoftSignType convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (ESoftSignType localESoftSignType = __values[i]; ; localESoftSignType = null)
    {
      return localESoftSignType;
      i++;
      break;
    }
  }

  public static ESoftSignType convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (ESoftSignType localESoftSignType = __values[i]; ; localESoftSignType = null)
    {
      return localESoftSignType;
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
 * Qualified Name:     QQPIM.ESoftSignType
 * JD-Core Version:    0.6.2
 */