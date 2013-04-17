package QQPIM;

public final class ETagedTelType
{
  public static final ETagedTelType ETAG_TYPE_CHEAT;
  public static final ETagedTelType ETAG_TYPE_HOUSE_AGT;
  public static final ETagedTelType ETAG_TYPE_INSURANCE;
  public static final ETagedTelType ETAG_TYPE_MAX;
  public static final ETagedTelType ETAG_TYPE_NONE;
  public static final ETagedTelType ETAG_TYPE_OTHER;
  public static final ETagedTelType ETAG_TYPE_SALES;
  public static final int _ETAG_TYPE_CHEAT = 54;
  public static final int _ETAG_TYPE_HOUSE_AGT = 51;
  public static final int _ETAG_TYPE_INSURANCE = 52;
  public static final int _ETAG_TYPE_MAX = 55;
  public static final int _ETAG_TYPE_NONE = 0;
  public static final int _ETAG_TYPE_OTHER = 50;
  public static final int _ETAG_TYPE_SALES = 53;
  private static ETagedTelType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!ETagedTelType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new ETagedTelType[7];
      ETAG_TYPE_NONE = new ETagedTelType(0, 0, "ETAG_TYPE_NONE");
      ETAG_TYPE_OTHER = new ETagedTelType(1, 50, "ETAG_TYPE_OTHER");
      ETAG_TYPE_HOUSE_AGT = new ETagedTelType(2, 51, "ETAG_TYPE_HOUSE_AGT");
      ETAG_TYPE_INSURANCE = new ETagedTelType(3, 52, "ETAG_TYPE_INSURANCE");
      ETAG_TYPE_SALES = new ETagedTelType(4, 53, "ETAG_TYPE_SALES");
      ETAG_TYPE_CHEAT = new ETagedTelType(5, 54, "ETAG_TYPE_CHEAT");
      ETAG_TYPE_MAX = new ETagedTelType(6, 55, "ETAG_TYPE_MAX");
      return;
    }
  }

  private ETagedTelType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static ETagedTelType convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (ETagedTelType localETagedTelType = __values[i]; ; localETagedTelType = null)
    {
      return localETagedTelType;
      i++;
      break;
    }
  }

  public static ETagedTelType convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (ETagedTelType localETagedTelType = __values[i]; ; localETagedTelType = null)
    {
      return localETagedTelType;
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
 * Qualified Name:     QQPIM.ETagedTelType
 * JD-Core Version:    0.6.2
 */