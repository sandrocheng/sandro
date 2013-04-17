package QQPIM;

public final class EUrlType
{
  public static final EUrlType EUT_Page;
  public static final EUrlType EUT_Pkg;
  public static final int _EUT_Page = 1;
  public static final int _EUT_Pkg;
  private static EUrlType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EUrlType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EUrlType[2];
      EUT_Pkg = new EUrlType(0, 0, "EUT_Pkg");
      EUT_Page = new EUrlType(1, 1, "EUT_Page");
      return;
    }
  }

  private EUrlType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EUrlType convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EUrlType localEUrlType = __values[i]; ; localEUrlType = null)
    {
      return localEUrlType;
      i++;
      break;
    }
  }

  public static EUrlType convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EUrlType localEUrlType = __values[i]; ; localEUrlType = null)
    {
      return localEUrlType;
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
 * Qualified Name:     QQPIM.EUrlType
 * JD-Core Version:    0.6.2
 */