package QQPIM;

public final class EDataUnit
{
  public static final EDataUnit E_DATA_UNIT_BYTE;
  public static final EDataUnit E_DATA_UNIT_DATE;
  public static final EDataUnit E_DATA_UNIT_GB;
  public static final EDataUnit E_DATA_UNIT_KB;
  public static final EDataUnit E_DATA_UNIT_MAX;
  public static final EDataUnit E_DATA_UNIT_MB;
  public static final EDataUnit E_DATA_UNIT_MIN;
  public static final EDataUnit E_DATA_UNIT_YUAN;
  public static final int _E_DATA_UNIT_BYTE = 6;
  public static final int _E_DATA_UNIT_DATE = 5;
  public static final int _E_DATA_UNIT_GB = 4;
  public static final int _E_DATA_UNIT_KB = 2;
  public static final int _E_DATA_UNIT_MAX = 7;
  public static final int _E_DATA_UNIT_MB = 3;
  public static final int _E_DATA_UNIT_MIN = 0;
  public static final int _E_DATA_UNIT_YUAN = 1;
  private static EDataUnit[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EDataUnit.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EDataUnit[8];
      E_DATA_UNIT_MIN = new EDataUnit(0, 0, "E_DATA_UNIT_MIN");
      E_DATA_UNIT_YUAN = new EDataUnit(1, 1, "E_DATA_UNIT_YUAN");
      E_DATA_UNIT_KB = new EDataUnit(2, 2, "E_DATA_UNIT_KB");
      E_DATA_UNIT_MB = new EDataUnit(3, 3, "E_DATA_UNIT_MB");
      E_DATA_UNIT_GB = new EDataUnit(4, 4, "E_DATA_UNIT_GB");
      E_DATA_UNIT_DATE = new EDataUnit(5, 5, "E_DATA_UNIT_DATE");
      E_DATA_UNIT_BYTE = new EDataUnit(6, 6, "E_DATA_UNIT_BYTE");
      E_DATA_UNIT_MAX = new EDataUnit(7, 7, "E_DATA_UNIT_MAX");
      return;
    }
  }

  private EDataUnit(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EDataUnit convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EDataUnit localEDataUnit = __values[i]; ; localEDataUnit = null)
    {
      return localEDataUnit;
      i++;
      break;
    }
  }

  public static EDataUnit convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EDataUnit localEDataUnit = __values[i]; ; localEDataUnit = null)
    {
      return localEDataUnit;
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
 * Qualified Name:     QQPIM.EDataUnit
 * JD-Core Version:    0.6.2
 */