package QQPIM;

public final class UrlCheckType
{
  public static final UrlCheckType CHECK_COCKHORSE;
  public static final UrlCheckType CHECK_DEFAULT_CHEAT;
  public static final UrlCheckType CHECK_GAMES_HANG;
  public static final UrlCheckType CHECK_MAKE_MONEY;
  public static final UrlCheckType CHECK_MAX;
  public static final UrlCheckType CHECK_MONEY_CHEAT;
  public static final UrlCheckType CHECK_MSG_BLOG;
  public static final UrlCheckType CHECK_MSG_REACTIONARY;
  public static final UrlCheckType CHECK_MSG_SHADINESS;
  public static final UrlCheckType CHECK_MSG_WHITE;
  public static final UrlCheckType CHECK_PRIVATE_SERVER;
  public static final UrlCheckType CHECK_REGULAR;
  public static final UrlCheckType CHECK_SEX;
  public static final UrlCheckType CHECK_SP_SERVICE;
  public static final UrlCheckType CHECK_STEAL_ACCOUNT;
  public static final UrlCheckType CHECK_TIPS_CHEAT;
  public static final UrlCheckType CHECK_TIPS_DEFAULT;
  public static final int _CHECK_COCKHORSE = 1;
  public static final int _CHECK_DEFAULT_CHEAT = 2;
  public static final int _CHECK_GAMES_HANG = 8;
  public static final int _CHECK_MAKE_MONEY = 9;
  public static final int _CHECK_MAX = 20;
  public static final int _CHECK_MONEY_CHEAT = 3;
  public static final int _CHECK_MSG_BLOG = 19;
  public static final int _CHECK_MSG_REACTIONARY = 12;
  public static final int _CHECK_MSG_SHADINESS = 18;
  public static final int _CHECK_MSG_WHITE = 13;
  public static final int _CHECK_PRIVATE_SERVER = 11;
  public static final int _CHECK_REGULAR = 0;
  public static final int _CHECK_SEX = 10;
  public static final int _CHECK_SP_SERVICE = 4;
  public static final int _CHECK_STEAL_ACCOUNT = 5;
  public static final int _CHECK_TIPS_CHEAT = 6;
  public static final int _CHECK_TIPS_DEFAULT = 7;
  private static UrlCheckType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!UrlCheckType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new UrlCheckType[17];
      CHECK_REGULAR = new UrlCheckType(0, 0, "CHECK_REGULAR");
      CHECK_COCKHORSE = new UrlCheckType(1, 1, "CHECK_COCKHORSE");
      CHECK_DEFAULT_CHEAT = new UrlCheckType(2, 2, "CHECK_DEFAULT_CHEAT");
      CHECK_MONEY_CHEAT = new UrlCheckType(3, 3, "CHECK_MONEY_CHEAT");
      CHECK_SP_SERVICE = new UrlCheckType(4, 4, "CHECK_SP_SERVICE");
      CHECK_STEAL_ACCOUNT = new UrlCheckType(5, 5, "CHECK_STEAL_ACCOUNT");
      CHECK_TIPS_CHEAT = new UrlCheckType(6, 6, "CHECK_TIPS_CHEAT");
      CHECK_TIPS_DEFAULT = new UrlCheckType(7, 7, "CHECK_TIPS_DEFAULT");
      CHECK_GAMES_HANG = new UrlCheckType(8, 8, "CHECK_GAMES_HANG");
      CHECK_MAKE_MONEY = new UrlCheckType(9, 9, "CHECK_MAKE_MONEY");
      CHECK_SEX = new UrlCheckType(10, 10, "CHECK_SEX");
      CHECK_PRIVATE_SERVER = new UrlCheckType(11, 11, "CHECK_PRIVATE_SERVER");
      CHECK_MSG_REACTIONARY = new UrlCheckType(12, 12, "CHECK_MSG_REACTIONARY");
      CHECK_MSG_WHITE = new UrlCheckType(13, 13, "CHECK_MSG_WHITE");
      CHECK_MSG_SHADINESS = new UrlCheckType(14, 18, "CHECK_MSG_SHADINESS");
      CHECK_MSG_BLOG = new UrlCheckType(15, 19, "CHECK_MSG_BLOG");
      CHECK_MAX = new UrlCheckType(16, 20, "CHECK_MAX");
      return;
    }
  }

  private UrlCheckType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static UrlCheckType convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (UrlCheckType localUrlCheckType = __values[i]; ; localUrlCheckType = null)
    {
      return localUrlCheckType;
      i++;
      break;
    }
  }

  public static UrlCheckType convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (UrlCheckType localUrlCheckType = __values[i]; ; localUrlCheckType = null)
    {
      return localUrlCheckType;
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
 * Qualified Name:     QQPIM.UrlCheckType
 * JD-Core Version:    0.6.2
 */