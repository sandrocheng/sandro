package QQPIM;

public final class Act
{
  public static final Act E_ACT_CHANGE_CODE;
  public static final Act E_ACT_CHANGE_PORT;
  public static final Act E_ACT_CHANGE_TIME;
  public static final Act E_ACT_CHANGE_TIMEOUT;
  public static final Act E_ACT_CLOSE;
  public static final Act E_ACT_CODE_AGAIN;
  public static final Act E_ACT_FREQUNCY;
  public static final Act E_ACT_MAX;
  public static final Act E_ACT_MIN;
  public static final Act E_ACT_NOTHING;
  public static final Act E_ACT_REGET_TEMPLATE;
  public static final Act E_ACT_REVISE_IMMEDI;
  public static final Act E_ACT_UPDATE_CODE;
  public static final int _E_ACT_CHANGE_CODE = 4;
  public static final int _E_ACT_CHANGE_PORT = 9;
  public static final int _E_ACT_CHANGE_TIME = 7;
  public static final int _E_ACT_CHANGE_TIMEOUT = 8;
  public static final int _E_ACT_CLOSE = 5;
  public static final int _E_ACT_CODE_AGAIN = 10;
  public static final int _E_ACT_FREQUNCY = 2;
  public static final int _E_ACT_MAX = 12;
  public static final int _E_ACT_MIN = 0;
  public static final int _E_ACT_NOTHING = 1;
  public static final int _E_ACT_REGET_TEMPLATE = 11;
  public static final int _E_ACT_REVISE_IMMEDI = 6;
  public static final int _E_ACT_UPDATE_CODE = 3;
  private static Act[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!Act.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new Act[13];
      E_ACT_MIN = new Act(0, 0, "E_ACT_MIN");
      E_ACT_NOTHING = new Act(1, 1, "E_ACT_NOTHING");
      E_ACT_FREQUNCY = new Act(2, 2, "E_ACT_FREQUNCY");
      E_ACT_UPDATE_CODE = new Act(3, 3, "E_ACT_UPDATE_CODE");
      E_ACT_CHANGE_CODE = new Act(4, 4, "E_ACT_CHANGE_CODE");
      E_ACT_CLOSE = new Act(5, 5, "E_ACT_CLOSE");
      E_ACT_REVISE_IMMEDI = new Act(6, 6, "E_ACT_REVISE_IMMEDI");
      E_ACT_CHANGE_TIME = new Act(7, 7, "E_ACT_CHANGE_TIME");
      E_ACT_CHANGE_TIMEOUT = new Act(8, 8, "E_ACT_CHANGE_TIMEOUT");
      E_ACT_CHANGE_PORT = new Act(9, 9, "E_ACT_CHANGE_PORT");
      E_ACT_CODE_AGAIN = new Act(10, 10, "E_ACT_CODE_AGAIN");
      E_ACT_REGET_TEMPLATE = new Act(11, 11, "E_ACT_REGET_TEMPLATE");
      E_ACT_MAX = new Act(12, 12, "E_ACT_MAX");
      return;
    }
  }

  private Act(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static Act convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (Act localAct = __values[i]; ; localAct = null)
    {
      return localAct;
      i++;
      break;
    }
  }

  public static Act convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (Act localAct = __values[i]; ; localAct = null)
    {
      return localAct;
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
 * Qualified Name:     QQPIM.Act
 * JD-Core Version:    0.6.2
 */