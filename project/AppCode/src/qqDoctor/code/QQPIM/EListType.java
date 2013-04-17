package QQPIM;

public final class EListType
{
  public static final EListType ELT_Black;
  public static final EListType ELT_White;
  public static final int _ELT_Black = 0;
  public static final int _ELT_White = 1;
  private static EListType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EListType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EListType[2];
      ELT_Black = new EListType(0, 0, "ELT_Black");
      ELT_White = new EListType(1, 1, "ELT_White");
      return;
    }
  }

  private EListType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EListType convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EListType localEListType = __values[i]; ; localEListType = null)
    {
      return localEListType;
      i++;
      break;
    }
  }

  public static EListType convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EListType localEListType = __values[i]; ; localEListType = null)
    {
      return localEListType;
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
 * Qualified Name:     QQPIM.EListType
 * JD-Core Version:    0.6.2
 */