package WUPSYNC;

public final class RESULT_TYPE
{
  public static final RESULT_TYPE RESULT_LOGINKEY_EXPIRED;
  public static final RESULT_TYPE RESULT_PIMPWD_NEEDED;
  public static final RESULT_TYPE RESULT_PIMPWD_NOT_SET;
  public static final RESULT_TYPE RESULT_PIMPWD_PASSWORD;
  public static final RESULT_TYPE RESULT_PIMPWD_SAME_QQPWD;
  public static final RESULT_TYPE RESULT_PIMPWD_STATUS;
  public static final RESULT_TYPE RESULT_SERVER_ERROR;
  public static final RESULT_TYPE RESULT_SID_EXPIRED;
  public static final RESULT_TYPE RESULT_SUCC;
  public static final int _RESULT_LOGINKEY_EXPIRED = 2;
  public static final int _RESULT_PIMPWD_NEEDED = 102;
  public static final int _RESULT_PIMPWD_NOT_SET = 103;
  public static final int _RESULT_PIMPWD_PASSWORD = 107;
  public static final int _RESULT_PIMPWD_SAME_QQPWD = 110;
  public static final int _RESULT_PIMPWD_STATUS = 105;
  public static final int _RESULT_SERVER_ERROR = 200;
  public static final int _RESULT_SID_EXPIRED = 1;
  public static final int _RESULT_SUCC;
  private static RESULT_TYPE[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!RESULT_TYPE.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new RESULT_TYPE[9];
      RESULT_SUCC = new RESULT_TYPE(0, 0, "RESULT_SUCC");
      RESULT_SID_EXPIRED = new RESULT_TYPE(1, 1, "RESULT_SID_EXPIRED");
      RESULT_LOGINKEY_EXPIRED = new RESULT_TYPE(2, 2, "RESULT_LOGINKEY_EXPIRED");
      RESULT_PIMPWD_NEEDED = new RESULT_TYPE(3, 102, "RESULT_PIMPWD_NEEDED");
      RESULT_PIMPWD_NOT_SET = new RESULT_TYPE(4, 103, "RESULT_PIMPWD_NOT_SET");
      RESULT_PIMPWD_STATUS = new RESULT_TYPE(5, 105, "RESULT_PIMPWD_STATUS");
      RESULT_PIMPWD_PASSWORD = new RESULT_TYPE(6, 107, "RESULT_PIMPWD_PASSWORD");
      RESULT_PIMPWD_SAME_QQPWD = new RESULT_TYPE(7, 110, "RESULT_PIMPWD_SAME_QQPWD");
      RESULT_SERVER_ERROR = new RESULT_TYPE(8, 200, "RESULT_SERVER_ERROR");
      return;
    }
  }

  private RESULT_TYPE(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static RESULT_TYPE convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (RESULT_TYPE localRESULT_TYPE = __values[i]; ; localRESULT_TYPE = null)
    {
      return localRESULT_TYPE;
      i++;
      break;
    }
  }

  public static RESULT_TYPE convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (RESULT_TYPE localRESULT_TYPE = __values[i]; ; localRESULT_TYPE = null)
    {
      return localRESULT_TYPE;
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
 * Qualified Name:     WUPSYNC.RESULT_TYPE
 * JD-Core Version:    0.6.2
 */