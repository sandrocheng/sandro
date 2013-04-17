package QQPIM;

public final class ESmsContentType
{
  public static final ESmsContentType EMSCT_12590;
  public static final ESmsContentType EMSCT_ADS;
  public static final ESmsContentType EMSCT_CHARGE;
  public static final ESmsContentType EMSCT_FRAUD;
  public static final ESmsContentType EMSCT_MAX;
  public static final ESmsContentType EMSCT_MIN;
  public static final ESmsContentType EMSCT_NORMAL;
  public static final ESmsContentType EMSCT_OPERATOR_INFO;
  public static final ESmsContentType EMSCT_SEX;
  public static final ESmsContentType EMSCT_TEL_95013;
  public static final ESmsContentType EMSCT_TEL_ADS;
  public static final ESmsContentType EMSCT_TEL_BANK;
  public static final ESmsContentType EMSCT_TEL_CREDIT_CARD;
  public static final ESmsContentType EMSCT_TEL_ESTATE;
  public static final ESmsContentType EMSCT_TEL_FRAUD;
  public static final ESmsContentType EMSCT_TEL_INSURANCE;
  public static final ESmsContentType EMSCT_TEL_MEETING;
  public static final ESmsContentType EMSCT_TEL_NET_TEL;
  public static final ESmsContentType EMSCT_TEL_OTHER;
  public static final ESmsContentType EMSCT_TEL_TRAIN;
  public static final ESmsContentType EMSCT_UNKNOWN;
  public static final int _EMSCT_12590 = 5;
  public static final int _EMSCT_ADS = 3;
  public static final int _EMSCT_CHARGE = 8;
  public static final int _EMSCT_FRAUD = 4;
  public static final int _EMSCT_MAX = 51;
  public static final int _EMSCT_MIN = 0;
  public static final int _EMSCT_NORMAL = 2;
  public static final int _EMSCT_OPERATOR_INFO = 7;
  public static final int _EMSCT_SEX = 6;
  public static final int _EMSCT_TEL_95013 = 49;
  public static final int _EMSCT_TEL_ADS = 40;
  public static final int _EMSCT_TEL_BANK = 42;
  public static final int _EMSCT_TEL_CREDIT_CARD = 43;
  public static final int _EMSCT_TEL_ESTATE = 45;
  public static final int _EMSCT_TEL_FRAUD = 41;
  public static final int _EMSCT_TEL_INSURANCE = 44;
  public static final int _EMSCT_TEL_MEETING = 47;
  public static final int _EMSCT_TEL_NET_TEL = 48;
  public static final int _EMSCT_TEL_OTHER = 50;
  public static final int _EMSCT_TEL_TRAIN = 46;
  public static final int _EMSCT_UNKNOWN = 1;
  private static ESmsContentType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!ESmsContentType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new ESmsContentType[21];
      EMSCT_MIN = new ESmsContentType(0, 0, "EMSCT_MIN");
      EMSCT_UNKNOWN = new ESmsContentType(1, 1, "EMSCT_UNKNOWN");
      EMSCT_NORMAL = new ESmsContentType(2, 2, "EMSCT_NORMAL");
      EMSCT_ADS = new ESmsContentType(3, 3, "EMSCT_ADS");
      EMSCT_FRAUD = new ESmsContentType(4, 4, "EMSCT_FRAUD");
      EMSCT_12590 = new ESmsContentType(5, 5, "EMSCT_12590");
      EMSCT_SEX = new ESmsContentType(6, 6, "EMSCT_SEX");
      EMSCT_OPERATOR_INFO = new ESmsContentType(7, 7, "EMSCT_OPERATOR_INFO");
      EMSCT_CHARGE = new ESmsContentType(8, 8, "EMSCT_CHARGE");
      EMSCT_TEL_ADS = new ESmsContentType(9, 40, "EMSCT_TEL_ADS");
      EMSCT_TEL_FRAUD = new ESmsContentType(10, 41, "EMSCT_TEL_FRAUD");
      EMSCT_TEL_BANK = new ESmsContentType(11, 42, "EMSCT_TEL_BANK");
      EMSCT_TEL_CREDIT_CARD = new ESmsContentType(12, 43, "EMSCT_TEL_CREDIT_CARD");
      EMSCT_TEL_INSURANCE = new ESmsContentType(13, 44, "EMSCT_TEL_INSURANCE");
      EMSCT_TEL_ESTATE = new ESmsContentType(14, 45, "EMSCT_TEL_ESTATE");
      EMSCT_TEL_TRAIN = new ESmsContentType(15, 46, "EMSCT_TEL_TRAIN");
      EMSCT_TEL_MEETING = new ESmsContentType(16, 47, "EMSCT_TEL_MEETING");
      EMSCT_TEL_NET_TEL = new ESmsContentType(17, 48, "EMSCT_TEL_NET_TEL");
      EMSCT_TEL_95013 = new ESmsContentType(18, 49, "EMSCT_TEL_95013");
      EMSCT_TEL_OTHER = new ESmsContentType(19, 50, "EMSCT_TEL_OTHER");
      EMSCT_MAX = new ESmsContentType(20, 51, "EMSCT_MAX");
      return;
    }
  }

  private ESmsContentType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static ESmsContentType convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (ESmsContentType localESmsContentType = __values[i]; ; localESmsContentType = null)
    {
      return localESmsContentType;
      i++;
      break;
    }
  }

  public static ESmsContentType convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (ESmsContentType localESmsContentType = __values[i]; ; localESmsContentType = null)
    {
      return localESmsContentType;
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
 * Qualified Name:     QQPIM.ESmsContentType
 * JD-Core Version:    0.6.2
 */