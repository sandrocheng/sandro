package QQPIM;

public final class EHandleAdvice
{
  public static final EHandleAdvice HA_Check_Page;
  public static final EHandleAdvice HA_Check_Page_Update;
  public static final EHandleAdvice HA_Clear;
  public static final EHandleAdvice HA_Clear_Update;
  public static final EHandleAdvice HA_Down_Tool;
  public static final EHandleAdvice HA_Down_Tool_Update;
  public static final EHandleAdvice HA_None;
  public static final EHandleAdvice HA_Update;
  public static final int _HA_Check_Page = 4;
  public static final int _HA_Check_Page_Update = 5;
  public static final int _HA_Clear = 1;
  public static final int _HA_Clear_Update = 3;
  public static final int _HA_Down_Tool = 6;
  public static final int _HA_Down_Tool_Update = 7;
  public static final int _HA_None = 0;
  public static final int _HA_Update = 2;
  private static EHandleAdvice[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EHandleAdvice.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EHandleAdvice[8];
      HA_None = new EHandleAdvice(0, 0, "HA_None");
      HA_Clear = new EHandleAdvice(1, 1, "HA_Clear");
      HA_Update = new EHandleAdvice(2, 2, "HA_Update");
      HA_Clear_Update = new EHandleAdvice(3, 3, "HA_Clear_Update");
      HA_Check_Page = new EHandleAdvice(4, 4, "HA_Check_Page");
      HA_Check_Page_Update = new EHandleAdvice(5, 5, "HA_Check_Page_Update");
      HA_Down_Tool = new EHandleAdvice(6, 6, "HA_Down_Tool");
      HA_Down_Tool_Update = new EHandleAdvice(7, 7, "HA_Down_Tool_Update");
      return;
    }
  }

  private EHandleAdvice(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EHandleAdvice convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EHandleAdvice localEHandleAdvice = __values[i]; ; localEHandleAdvice = null)
    {
      return localEHandleAdvice;
      i++;
      break;
    }
  }

  public static EHandleAdvice convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EHandleAdvice localEHandleAdvice = __values[i]; ; localEHandleAdvice = null)
    {
      return localEHandleAdvice;
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
 * Qualified Name:     QQPIM.EHandleAdvice
 * JD-Core Version:    0.6.2
 */