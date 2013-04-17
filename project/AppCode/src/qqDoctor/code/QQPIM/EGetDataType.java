package QQPIM;

public final class EGetDataType
{
  public static final EGetDataType MGDT_BData;
  public static final EGetDataType MGDT_Url;
  public static final int _MGDT_BData = 1;
  public static final int _MGDT_Url;
  private static EGetDataType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EGetDataType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EGetDataType[2];
      MGDT_Url = new EGetDataType(0, 0, "MGDT_Url");
      MGDT_BData = new EGetDataType(1, 1, "MGDT_BData");
      return;
    }
  }

  private EGetDataType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EGetDataType convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EGetDataType localEGetDataType = __values[i]; ; localEGetDataType = null)
    {
      return localEGetDataType;
      i++;
      break;
    }
  }

  public static EGetDataType convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EGetDataType localEGetDataType = __values[i]; ; localEGetDataType = null)
    {
      return localEGetDataType;
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
 * Qualified Name:     QQPIM.EGetDataType
 * JD-Core Version:    0.6.2
 */