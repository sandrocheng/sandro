package LBSAPIProtocol;

public final class UINTYPE
{
  public static final UINTYPE UIN_EMAIL;
  public static final UINTYPE UIN_IMEI;
  public static final UINTYPE UIN_MOBILE;
  public static final UINTYPE UIN_QQ;
  public static final int _UIN_EMAIL = 1;
  public static final int _UIN_IMEI = 3;
  public static final int _UIN_MOBILE = 2;
  public static final int _UIN_QQ;
  private static UINTYPE[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!UINTYPE.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new UINTYPE[4];
      UIN_QQ = new UINTYPE(0, 0, "UIN_QQ");
      UIN_EMAIL = new UINTYPE(1, 1, "UIN_EMAIL");
      UIN_MOBILE = new UINTYPE(2, 2, "UIN_MOBILE");
      UIN_IMEI = new UINTYPE(3, 3, "UIN_IMEI");
      return;
    }
  }

  private UINTYPE(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static UINTYPE convert(int paramInt)
  {
    int i = 0;
    if (i < __values.length)
      if (__values[i].value() != paramInt);
    for (UINTYPE localUINTYPE = __values[i]; ; localUINTYPE = null)
    {
      return localUINTYPE;
      i++;
      break;
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
  }

  public static UINTYPE convert(String paramString)
  {
    int i = 0;
    if (i < __values.length)
      if (!__values[i].toString().equals(paramString));
    for (UINTYPE localUINTYPE = __values[i]; ; localUINTYPE = null)
    {
      return localUINTYPE;
      i++;
      break;
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
  }

  public String toString()
  {
    return this.__T;
  }

  public int value()
  {
    return this.__value;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     LBSAPIProtocol.UINTYPE
 * JD-Core Version:    0.6.2
 */