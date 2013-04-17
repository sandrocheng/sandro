package QQPIM;

public final class ETrafficTemplateType
{
  public static final ETrafficTemplateType E_TRAFFIC_TEMPLATE_TYPE_BALANCE_BEGIN;
  public static final ETrafficTemplateType E_TRAFFIC_TEMPLATE_TYPE_BALANCE_END;
  public static final ETrafficTemplateType E_TRAFFIC_TEMPLATE_TYPE_EXCESS;
  public static final ETrafficTemplateType E_TRAFFIC_TEMPLATE_TYPE_LEFT;
  public static final ETrafficTemplateType E_TRAFFIC_TEMPLATE_TYPE_MAX;
  public static final ETrafficTemplateType E_TRAFFIC_TEMPLATE_TYPE_MIN;
  public static final ETrafficTemplateType E_TRAFFIC_TEMPLATE_TYPE_PACKAGE;
  public static final ETrafficTemplateType E_TRAFFIC_TEMPLATE_TYPE_USE;
  public static final int _E_TRAFFIC_TEMPLATE_TYPE_BALANCE_BEGIN = 5;
  public static final int _E_TRAFFIC_TEMPLATE_TYPE_BALANCE_END = 6;
  public static final int _E_TRAFFIC_TEMPLATE_TYPE_EXCESS = 3;
  public static final int _E_TRAFFIC_TEMPLATE_TYPE_LEFT = 1;
  public static final int _E_TRAFFIC_TEMPLATE_TYPE_MAX = 7;
  public static final int _E_TRAFFIC_TEMPLATE_TYPE_MIN = 0;
  public static final int _E_TRAFFIC_TEMPLATE_TYPE_PACKAGE = 4;
  public static final int _E_TRAFFIC_TEMPLATE_TYPE_USE = 2;
  private static ETrafficTemplateType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!ETrafficTemplateType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new ETrafficTemplateType[8];
      E_TRAFFIC_TEMPLATE_TYPE_MIN = new ETrafficTemplateType(0, 0, "E_TRAFFIC_TEMPLATE_TYPE_MIN");
      E_TRAFFIC_TEMPLATE_TYPE_LEFT = new ETrafficTemplateType(1, 1, "E_TRAFFIC_TEMPLATE_TYPE_LEFT");
      E_TRAFFIC_TEMPLATE_TYPE_USE = new ETrafficTemplateType(2, 2, "E_TRAFFIC_TEMPLATE_TYPE_USE");
      E_TRAFFIC_TEMPLATE_TYPE_EXCESS = new ETrafficTemplateType(3, 3, "E_TRAFFIC_TEMPLATE_TYPE_EXCESS");
      E_TRAFFIC_TEMPLATE_TYPE_PACKAGE = new ETrafficTemplateType(4, 4, "E_TRAFFIC_TEMPLATE_TYPE_PACKAGE");
      E_TRAFFIC_TEMPLATE_TYPE_BALANCE_BEGIN = new ETrafficTemplateType(5, 5, "E_TRAFFIC_TEMPLATE_TYPE_BALANCE_BEGIN");
      E_TRAFFIC_TEMPLATE_TYPE_BALANCE_END = new ETrafficTemplateType(6, 6, "E_TRAFFIC_TEMPLATE_TYPE_BALANCE_END");
      E_TRAFFIC_TEMPLATE_TYPE_MAX = new ETrafficTemplateType(7, 7, "E_TRAFFIC_TEMPLATE_TYPE_MAX");
      return;
    }
  }

  private ETrafficTemplateType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static ETrafficTemplateType convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (ETrafficTemplateType localETrafficTemplateType = __values[i]; ; localETrafficTemplateType = null)
    {
      return localETrafficTemplateType;
      i++;
      break;
    }
  }

  public static ETrafficTemplateType convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (ETrafficTemplateType localETrafficTemplateType = __values[i]; ; localETrafficTemplateType = null)
    {
      return localETrafficTemplateType;
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
 * Qualified Name:     QQPIM.ETrafficTemplateType
 * JD-Core Version:    0.6.2
 */