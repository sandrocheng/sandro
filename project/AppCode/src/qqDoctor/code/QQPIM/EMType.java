package QQPIM;

public final class EMType
{
  public static final EMType MT_AreaCode;
  public static final EMType MT_CountryCode;
  public static final EMType MT_Mobile;
  public static final int _MT_AreaCode = 1;
  public static final int _MT_CountryCode = 2;
  public static final int _MT_Mobile;
  private static EMType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EMType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EMType[3];
      MT_Mobile = new EMType(0, 0, "MT_Mobile");
      MT_AreaCode = new EMType(1, 1, "MT_AreaCode");
      MT_CountryCode = new EMType(2, 2, "MT_CountryCode");
      return;
    }
  }

  private EMType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EMType convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EMType localEMType = __values[i]; ; localEMType = null)
    {
      return localEMType;
      i++;
      break;
    }
  }

  public static EMType convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EMType localEMType = __values[i]; ; localEMType = null)
    {
      return localEMType;
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
 * Qualified Name:     QQPIM.EMType
 * JD-Core Version:    0.6.2
 */