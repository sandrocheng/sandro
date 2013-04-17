package QQPIM;

public final class EOperationType
{
  public static final EOperationType OT_Add;
  public static final EOperationType OT_Del;
  public static final EOperationType OT_NONE;
  public static final int _OT_Add = 1;
  public static final int _OT_Del = 2;
  public static final int _OT_NONE;
  private static EOperationType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EOperationType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EOperationType[3];
      OT_NONE = new EOperationType(0, 0, "OT_NONE");
      OT_Add = new EOperationType(1, 1, "OT_Add");
      OT_Del = new EOperationType(2, 2, "OT_Del");
      return;
    }
  }

  private EOperationType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EOperationType convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EOperationType localEOperationType = __values[i]; ; localEOperationType = null)
    {
      return localEOperationType;
      i++;
      break;
    }
  }

  public static EOperationType convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EOperationType localEOperationType = __values[i]; ; localEOperationType = null)
    {
      return localEOperationType;
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
 * Qualified Name:     QQPIM.EOperationType
 * JD-Core Version:    0.6.2
 */