package LBSAPIProtocol;

public final class RESULTCODE
{
  public static final RESULTCODE RESULT_AUTH_FAIL;
  public static final RESULTCODE RESULT_BACK_TIME_OUT;
  public static final RESULTCODE RESULT_EXCEPTION;
  public static final RESULTCODE RESULT_INPUT_ERROR;
  public static final RESULTCODE RESULT_POSITION_FAIL;
  public static final RESULTCODE RESULT_SUCC;
  public static final int _RESULT_AUTH_FAIL = 201;
  public static final int _RESULT_BACK_TIME_OUT = 301;
  public static final int _RESULT_EXCEPTION = 101;
  public static final int _RESULT_INPUT_ERROR = 202;
  public static final int _RESULT_POSITION_FAIL = 102;
  public static final int _RESULT_SUCC;
  private static RESULTCODE[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!RESULTCODE.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new RESULTCODE[6];
      RESULT_SUCC = new RESULTCODE(0, 0, "RESULT_SUCC");
      RESULT_EXCEPTION = new RESULTCODE(1, 101, "RESULT_EXCEPTION");
      RESULT_POSITION_FAIL = new RESULTCODE(2, 102, "RESULT_POSITION_FAIL");
      RESULT_AUTH_FAIL = new RESULTCODE(3, 201, "RESULT_AUTH_FAIL");
      RESULT_INPUT_ERROR = new RESULTCODE(4, 202, "RESULT_INPUT_ERROR");
      RESULT_BACK_TIME_OUT = new RESULTCODE(5, 301, "RESULT_BACK_TIME_OUT");
      return;
    }
  }

  private RESULTCODE(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static RESULTCODE convert(int paramInt)
  {
    int i = 0;
    if (i < __values.length)
      if (__values[i].value() != paramInt);
    for (RESULTCODE localRESULTCODE = __values[i]; ; localRESULTCODE = null)
    {
      return localRESULTCODE;
      i++;
      break;
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
  }

  public static RESULTCODE convert(String paramString)
  {
    int i = 0;
    if (i < __values.length)
      if (!__values[i].toString().equals(paramString));
    for (RESULTCODE localRESULTCODE = __values[i]; ; localRESULTCODE = null)
    {
      return localRESULTCODE;
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
 * Qualified Name:     LBSAPIProtocol.RESULTCODE
 * JD-Core Version:    0.6.2
 */