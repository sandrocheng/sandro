package QQPIM;

public final class EAskType
{
  public static final EAskType EAT_END;
  public static final EAskType EAT_None;
  public static final EAskType EAT_OK_Cancel;
  public static final EAskType EAT_Only_OK;
  public static final int _EAT_END = 3;
  public static final int _EAT_None = 0;
  public static final int _EAT_OK_Cancel = 2;
  public static final int _EAT_Only_OK = 1;
  private static EAskType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EAskType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EAskType[4];
      EAT_None = new EAskType(0, 0, "EAT_None");
      EAT_Only_OK = new EAskType(1, 1, "EAT_Only_OK");
      EAT_OK_Cancel = new EAskType(2, 2, "EAT_OK_Cancel");
      EAT_END = new EAskType(3, 3, "EAT_END");
      return;
    }
  }

  private EAskType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EAskType convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EAskType localEAskType = __values[i]; ; localEAskType = null)
    {
      return localEAskType;
      i++;
      break;
    }
  }

  public static EAskType convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EAskType localEAskType = __values[i]; ; localEAskType = null)
    {
      return localEAskType;
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
 * Qualified Name:     QQPIM.EAskType
 * JD-Core Version:    0.6.2
 */