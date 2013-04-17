package WUPSYNC;

public final class ACTION_TYPE
{
  public static final ACTION_TYPE ACTION_ADD;
  public static final ACTION_TYPE ACTION_DEL;
  public static final ACTION_TYPE ACTION_MDF;
  public static final int _ACTION_ADD = 1;
  public static final int _ACTION_DEL = 2;
  public static final int _ACTION_MDF = 3;
  private static ACTION_TYPE[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!ACTION_TYPE.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new ACTION_TYPE[3];
      ACTION_ADD = new ACTION_TYPE(0, 1, "ACTION_ADD");
      ACTION_DEL = new ACTION_TYPE(1, 2, "ACTION_DEL");
      ACTION_MDF = new ACTION_TYPE(2, 3, "ACTION_MDF");
      return;
    }
  }

  private ACTION_TYPE(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static ACTION_TYPE convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (ACTION_TYPE localACTION_TYPE = __values[i]; ; localACTION_TYPE = null)
    {
      return localACTION_TYPE;
      i++;
      break;
    }
  }

  public static ACTION_TYPE convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (ACTION_TYPE localACTION_TYPE = __values[i]; ; localACTION_TYPE = null)
    {
      return localACTION_TYPE;
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
 * Qualified Name:     WUPSYNC.ACTION_TYPE
 * JD-Core Version:    0.6.2
 */