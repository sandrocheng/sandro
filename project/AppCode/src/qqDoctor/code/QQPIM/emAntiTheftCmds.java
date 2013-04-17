package QQPIM;

public final class emAntiTheftCmds
{
  public static final emAntiTheftCmds EM_ATC_CMD_MAX;
  public static final emAntiTheftCmds EM_ATC_CMD_MIN;
  public static final emAntiTheftCmds EM_ATC_CMD_QQChangeSIM;
  public static final emAntiTheftCmds EM_ATC_CMD_QQDeleteAll;
  public static final emAntiTheftCmds EM_ATC_CMD_QQDeletePart;
  public static final emAntiTheftCmds EM_ATC_CMD_QQLocate;
  public static final emAntiTheftCmds EM_ATC_CMD_QQLock;
  public static final emAntiTheftCmds EM_ATC_CMD_QQRing;
  public static final int _EM_ATC_CMD_MAX = 7;
  public static final int _EM_ATC_CMD_MIN = 0;
  public static final int _EM_ATC_CMD_QQChangeSIM = 5;
  public static final int _EM_ATC_CMD_QQDeleteAll = 1;
  public static final int _EM_ATC_CMD_QQDeletePart = 6;
  public static final int _EM_ATC_CMD_QQLocate = 3;
  public static final int _EM_ATC_CMD_QQLock = 2;
  public static final int _EM_ATC_CMD_QQRing = 4;
  private static emAntiTheftCmds[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!emAntiTheftCmds.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new emAntiTheftCmds[8];
      EM_ATC_CMD_MIN = new emAntiTheftCmds(0, 0, "EM_ATC_CMD_MIN");
      EM_ATC_CMD_QQDeleteAll = new emAntiTheftCmds(1, 1, "EM_ATC_CMD_QQDeleteAll");
      EM_ATC_CMD_QQLock = new emAntiTheftCmds(2, 2, "EM_ATC_CMD_QQLock");
      EM_ATC_CMD_QQLocate = new emAntiTheftCmds(3, 3, "EM_ATC_CMD_QQLocate");
      EM_ATC_CMD_QQRing = new emAntiTheftCmds(4, 4, "EM_ATC_CMD_QQRing");
      EM_ATC_CMD_QQChangeSIM = new emAntiTheftCmds(5, 5, "EM_ATC_CMD_QQChangeSIM");
      EM_ATC_CMD_QQDeletePart = new emAntiTheftCmds(6, 6, "EM_ATC_CMD_QQDeletePart");
      EM_ATC_CMD_MAX = new emAntiTheftCmds(7, 7, "EM_ATC_CMD_MAX");
      return;
    }
  }

  private emAntiTheftCmds(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static emAntiTheftCmds convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (emAntiTheftCmds localemAntiTheftCmds = __values[i]; ; localemAntiTheftCmds = null)
    {
      return localemAntiTheftCmds;
      i++;
      break;
    }
  }

  public static emAntiTheftCmds convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (emAntiTheftCmds localemAntiTheftCmds = __values[i]; ; localemAntiTheftCmds = null)
    {
      return localemAntiTheftCmds;
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
 * Qualified Name:     QQPIM.emAntiTheftCmds
 * JD-Core Version:    0.6.2
 */