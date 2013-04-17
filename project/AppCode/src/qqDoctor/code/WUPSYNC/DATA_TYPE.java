package WUPSYNC;

public final class DATA_TYPE
{
  public static final DATA_TYPE DATA_BOOKMARK;
  public static final DATA_TYPE DATA_CALENDAR;
  public static final DATA_TYPE DATA_CALLLOG;
  public static final DATA_TYPE DATA_CONTACT;
  public static final DATA_TYPE DATA_QQBOOK;
  public static final DATA_TYPE DATA_SECSMS;
  public static final DATA_TYPE DATA_SMS;
  public static final DATA_TYPE DATA_TCNOTE;
  public static final DATA_TYPE DATA_WBLIST;
  public static final int _DATA_BOOKMARK = 4;
  public static final int _DATA_CALENDAR = 2;
  public static final int _DATA_CALLLOG = 5;
  public static final int _DATA_CONTACT = 1;
  public static final int _DATA_QQBOOK = 9;
  public static final int _DATA_SECSMS = 7;
  public static final int _DATA_SMS = 3;
  public static final int _DATA_TCNOTE = 6;
  public static final int _DATA_WBLIST = 8;
  private static DATA_TYPE[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!DATA_TYPE.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new DATA_TYPE[9];
      DATA_CONTACT = new DATA_TYPE(0, 1, "DATA_CONTACT");
      DATA_CALENDAR = new DATA_TYPE(1, 2, "DATA_CALENDAR");
      DATA_SMS = new DATA_TYPE(2, 3, "DATA_SMS");
      DATA_BOOKMARK = new DATA_TYPE(3, 4, "DATA_BOOKMARK");
      DATA_CALLLOG = new DATA_TYPE(4, 5, "DATA_CALLLOG");
      DATA_TCNOTE = new DATA_TYPE(5, 6, "DATA_TCNOTE");
      DATA_SECSMS = new DATA_TYPE(6, 7, "DATA_SECSMS");
      DATA_WBLIST = new DATA_TYPE(7, 8, "DATA_WBLIST");
      DATA_QQBOOK = new DATA_TYPE(8, 9, "DATA_QQBOOK");
      return;
    }
  }

  private DATA_TYPE(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static DATA_TYPE convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (DATA_TYPE localDATA_TYPE = __values[i]; ; localDATA_TYPE = null)
    {
      return localDATA_TYPE;
      i++;
      break;
    }
  }

  public static DATA_TYPE convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (DATA_TYPE localDATA_TYPE = __values[i]; ; localDATA_TYPE = null)
    {
      return localDATA_TYPE;
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
 * Qualified Name:     WUPSYNC.DATA_TYPE
 * JD-Core Version:    0.6.2
 */