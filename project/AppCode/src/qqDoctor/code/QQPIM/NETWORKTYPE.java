package QQPIM;

public final class NETWORKTYPE
{
  public static final NETWORKTYPE NETWORK_Gps;
  public static final NETWORKTYPE NETWORK_NONE;
  public static final NETWORKTYPE NETWORK_Wif;
  public static final int _NETWORK_Gps = 1;
  public static final int _NETWORK_NONE = 2;
  public static final int _NETWORK_Wif;
  private static NETWORKTYPE[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!NETWORKTYPE.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new NETWORKTYPE[3];
      NETWORK_Wif = new NETWORKTYPE(0, 0, "NETWORK_Wif");
      NETWORK_Gps = new NETWORKTYPE(1, 1, "NETWORK_Gps");
      NETWORK_NONE = new NETWORKTYPE(2, 2, "NETWORK_NONE");
      return;
    }
  }

  private NETWORKTYPE(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static NETWORKTYPE convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (NETWORKTYPE localNETWORKTYPE = __values[i]; ; localNETWORKTYPE = null)
    {
      return localNETWORKTYPE;
      i++;
      break;
    }
  }

  public static NETWORKTYPE convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (NETWORKTYPE localNETWORKTYPE = __values[i]; ; localNETWORKTYPE = null)
    {
      return localNETWORKTYPE;
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
 * Qualified Name:     QQPIM.NETWORKTYPE
 * JD-Core Version:    0.6.2
 */