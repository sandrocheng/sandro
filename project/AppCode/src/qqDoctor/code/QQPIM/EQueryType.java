package QQPIM;

public final class EQueryType
{
  public static final EQueryType E_QUERY_ALL;
  public static final EQueryType E_QUERY_MAX;
  public static final EQueryType E_QUERY_MIN;
  public static final EQueryType E_QUERY_MONEY;
  public static final EQueryType E_QUERY_TRAFFIC;
  public static final int _E_QUERY_ALL = 1;
  public static final int _E_QUERY_MAX = 4;
  public static final int _E_QUERY_MIN = 0;
  public static final int _E_QUERY_MONEY = 3;
  public static final int _E_QUERY_TRAFFIC = 2;
  private static EQueryType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EQueryType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EQueryType[5];
      E_QUERY_MIN = new EQueryType(0, 0, "E_QUERY_MIN");
      E_QUERY_ALL = new EQueryType(1, 1, "E_QUERY_ALL");
      E_QUERY_TRAFFIC = new EQueryType(2, 2, "E_QUERY_TRAFFIC");
      E_QUERY_MONEY = new EQueryType(3, 3, "E_QUERY_MONEY");
      E_QUERY_MAX = new EQueryType(4, 4, "E_QUERY_MAX");
      return;
    }
  }

  private EQueryType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EQueryType convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EQueryType localEQueryType = __values[i]; ; localEQueryType = null)
    {
      return localEQueryType;
      i++;
      break;
    }
  }

  public static EQueryType convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EQueryType localEQueryType = __values[i]; ; localEQueryType = null)
    {
      return localEQueryType;
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
 * Qualified Name:     QQPIM.EQueryType
 * JD-Core Version:    0.6.2
 */