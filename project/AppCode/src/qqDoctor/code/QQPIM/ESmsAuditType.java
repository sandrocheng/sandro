package QQPIM;

public final class ESmsAuditType
{
  public static final ESmsAuditType EMSAT_BLACK;
  public static final ESmsAuditType EMSAT_CHARGE_INTERCEPT;
  public static final ESmsAuditType EMSAT_CONTENT_TOO_SHORT;
  public static final ESmsAuditType EMSAT_DOUBT;
  public static final ESmsAuditType EMSAT_DOUBT_INTERCEPT;
  public static final ESmsAuditType EMSAT_MAX;
  public static final ESmsAuditType EMSAT_NORMAL;
  public static final ESmsAuditType EMSAT_UNKNOWN;
  public static final ESmsAuditType EMSAT_WHITE;
  public static final ESmsAuditType MSAT_MIN;
  public static final int _EMSAT_BLACK = 3;
  public static final int _EMSAT_CHARGE_INTERCEPT = 8;
  public static final int _EMSAT_CONTENT_TOO_SHORT = 7;
  public static final int _EMSAT_DOUBT = 4;
  public static final int _EMSAT_DOUBT_INTERCEPT = 6;
  public static final int _EMSAT_MAX = 9;
  public static final int _EMSAT_NORMAL = 1;
  public static final int _EMSAT_UNKNOWN = 5;
  public static final int _EMSAT_WHITE = 2;
  public static final int _MSAT_MIN;
  private static ESmsAuditType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!ESmsAuditType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new ESmsAuditType[10];
      MSAT_MIN = new ESmsAuditType(0, 0, "MSAT_MIN");
      EMSAT_NORMAL = new ESmsAuditType(1, 1, "EMSAT_NORMAL");
      EMSAT_WHITE = new ESmsAuditType(2, 2, "EMSAT_WHITE");
      EMSAT_BLACK = new ESmsAuditType(3, 3, "EMSAT_BLACK");
      EMSAT_DOUBT = new ESmsAuditType(4, 4, "EMSAT_DOUBT");
      EMSAT_UNKNOWN = new ESmsAuditType(5, 5, "EMSAT_UNKNOWN");
      EMSAT_DOUBT_INTERCEPT = new ESmsAuditType(6, 6, "EMSAT_DOUBT_INTERCEPT");
      EMSAT_CONTENT_TOO_SHORT = new ESmsAuditType(7, 7, "EMSAT_CONTENT_TOO_SHORT");
      EMSAT_CHARGE_INTERCEPT = new ESmsAuditType(8, 8, "EMSAT_CHARGE_INTERCEPT");
      EMSAT_MAX = new ESmsAuditType(9, 9, "EMSAT_MAX");
      return;
    }
  }

  private ESmsAuditType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static ESmsAuditType convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (ESmsAuditType localESmsAuditType = __values[i]; ; localESmsAuditType = null)
    {
      return localESmsAuditType;
      i++;
      break;
    }
  }

  public static ESmsAuditType convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (ESmsAuditType localESmsAuditType = __values[i]; ; localESmsAuditType = null)
    {
      return localESmsAuditType;
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
 * Qualified Name:     QQPIM.ESmsAuditType
 * JD-Core Version:    0.6.2
 */