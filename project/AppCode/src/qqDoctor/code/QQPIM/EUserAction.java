package QQPIM;

public final class EUserAction
{
  public static final EUserAction EMUA_ADD_TO_WHITE;
  public static final EUserAction EMUA_AUTO_RECOVER;
  public static final EUserAction EMUA_AUTO_RECOVER2;
  public static final EUserAction EMUA_AUTO_RECOVER3;
  public static final EUserAction EMUA_DOUBT_SENDER2BLACK;
  public static final EUserAction EMUA_DOUBT_SENDER2CONTACT;
  public static final EUserAction EMUA_DOUBT_SENDER2WHITE;
  public static final EUserAction EMUA_IMPEACH;
  public static final EUserAction EMUA_IMPEACH_AUTO_PROMPT;
  public static final EUserAction EMUA_IMPEACH_SYSTEM;
  public static final EUserAction EMUA_INTERCEPT2RECOVER;
  public static final EUserAction EMUA_INTERCEPT_SENDER2BLACK;
  public static final EUserAction EMUA_INTERCEPT_SENDER2CONTACT;
  public static final EUserAction EMUA_INTERCEPT_SENDER2WHITE;
  public static final EUserAction EMUA_MAX;
  public static final EUserAction EMUA_MIN;
  public static final EUserAction EMUA_MOVE2FOLDER;
  public static final EUserAction EMUA_NOCHARGE_SENDER;
  public static final EUserAction EMUA_NOCHARGE_SMS;
  public static final EUserAction EMUA_PASS_SENDER2BLACK;
  public static final EUserAction EMUA_PHONE_DEL;
  public static final EUserAction EMUA_SENDER2BLACK;
  public static final EUserAction EMUA_SENDER2CONTACT;
  public static final EUserAction EMUA_USER_REPORT_TELTAG;
  public static final EUserAction EMUA_WEB_DEL;
  public static final int _EMUA_ADD_TO_WHITE = 15;
  public static final int _EMUA_AUTO_RECOVER = 18;
  public static final int _EMUA_AUTO_RECOVER2 = 21;
  public static final int _EMUA_AUTO_RECOVER3 = 22;
  public static final int _EMUA_DOUBT_SENDER2BLACK = 5;
  public static final int _EMUA_DOUBT_SENDER2CONTACT = 6;
  public static final int _EMUA_DOUBT_SENDER2WHITE = 7;
  public static final int _EMUA_IMPEACH = 11;
  public static final int _EMUA_IMPEACH_AUTO_PROMPT = 20;
  public static final int _EMUA_IMPEACH_SYSTEM = 19;
  public static final int _EMUA_INTERCEPT2RECOVER = 12;
  public static final int _EMUA_INTERCEPT_SENDER2BLACK = 10;
  public static final int _EMUA_INTERCEPT_SENDER2CONTACT = 8;
  public static final int _EMUA_INTERCEPT_SENDER2WHITE = 9;
  public static final int _EMUA_MAX = 24;
  public static final int _EMUA_MIN = 0;
  public static final int _EMUA_MOVE2FOLDER = 3;
  public static final int _EMUA_NOCHARGE_SENDER = 17;
  public static final int _EMUA_NOCHARGE_SMS = 16;
  public static final int _EMUA_PASS_SENDER2BLACK = 4;
  public static final int _EMUA_PHONE_DEL = 1;
  public static final int _EMUA_SENDER2BLACK = 13;
  public static final int _EMUA_SENDER2CONTACT = 14;
  public static final int _EMUA_USER_REPORT_TELTAG = 23;
  public static final int _EMUA_WEB_DEL = 2;
  private static EUserAction[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EUserAction.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EUserAction[25];
      EMUA_MIN = new EUserAction(0, 0, "EMUA_MIN");
      EMUA_PHONE_DEL = new EUserAction(1, 1, "EMUA_PHONE_DEL");
      EMUA_WEB_DEL = new EUserAction(2, 2, "EMUA_WEB_DEL");
      EMUA_MOVE2FOLDER = new EUserAction(3, 3, "EMUA_MOVE2FOLDER");
      EMUA_PASS_SENDER2BLACK = new EUserAction(4, 4, "EMUA_PASS_SENDER2BLACK");
      EMUA_DOUBT_SENDER2BLACK = new EUserAction(5, 5, "EMUA_DOUBT_SENDER2BLACK");
      EMUA_DOUBT_SENDER2CONTACT = new EUserAction(6, 6, "EMUA_DOUBT_SENDER2CONTACT");
      EMUA_DOUBT_SENDER2WHITE = new EUserAction(7, 7, "EMUA_DOUBT_SENDER2WHITE");
      EMUA_INTERCEPT_SENDER2CONTACT = new EUserAction(8, 8, "EMUA_INTERCEPT_SENDER2CONTACT");
      EMUA_INTERCEPT_SENDER2WHITE = new EUserAction(9, 9, "EMUA_INTERCEPT_SENDER2WHITE");
      EMUA_INTERCEPT_SENDER2BLACK = new EUserAction(10, 10, "EMUA_INTERCEPT_SENDER2BLACK");
      EMUA_IMPEACH = new EUserAction(11, 11, "EMUA_IMPEACH");
      EMUA_INTERCEPT2RECOVER = new EUserAction(12, 12, "EMUA_INTERCEPT2RECOVER");
      EMUA_SENDER2BLACK = new EUserAction(13, 13, "EMUA_SENDER2BLACK");
      EMUA_SENDER2CONTACT = new EUserAction(14, 14, "EMUA_SENDER2CONTACT");
      EMUA_ADD_TO_WHITE = new EUserAction(15, 15, "EMUA_ADD_TO_WHITE");
      EMUA_NOCHARGE_SMS = new EUserAction(16, 16, "EMUA_NOCHARGE_SMS");
      EMUA_NOCHARGE_SENDER = new EUserAction(17, 17, "EMUA_NOCHARGE_SENDER");
      EMUA_AUTO_RECOVER = new EUserAction(18, 18, "EMUA_AUTO_RECOVER");
      EMUA_IMPEACH_SYSTEM = new EUserAction(19, 19, "EMUA_IMPEACH_SYSTEM");
      EMUA_IMPEACH_AUTO_PROMPT = new EUserAction(20, 20, "EMUA_IMPEACH_AUTO_PROMPT");
      EMUA_AUTO_RECOVER2 = new EUserAction(21, 21, "EMUA_AUTO_RECOVER2");
      EMUA_AUTO_RECOVER3 = new EUserAction(22, 22, "EMUA_AUTO_RECOVER3");
      EMUA_USER_REPORT_TELTAG = new EUserAction(23, 23, "EMUA_USER_REPORT_TELTAG");
      EMUA_MAX = new EUserAction(24, 24, "EMUA_MAX");
      return;
    }
  }

  private EUserAction(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EUserAction convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EUserAction localEUserAction = __values[i]; ; localEUserAction = null)
    {
      return localEUserAction;
      i++;
      break;
    }
  }

  public static EUserAction convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EUserAction localEUserAction = __values[i]; ; localEUserAction = null)
    {
      return localEUserAction;
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
 * Qualified Name:     QQPIM.EUserAction
 * JD-Core Version:    0.6.2
 */