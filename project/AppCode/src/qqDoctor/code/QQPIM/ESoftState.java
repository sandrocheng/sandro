package QQPIM;

public final class ESoftState
{
  public static final ESoftState ESS_None;
  public static final ESoftState ESS_Offshelf;
  public static final int _ESS_None = 0;
  public static final int _ESS_Offshelf = 1;
  private static ESoftState[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!ESoftState.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new ESoftState[2];
      ESS_None = new ESoftState(0, 0, "ESS_None");
      ESS_Offshelf = new ESoftState(1, 1, "ESS_Offshelf");
      return;
    }
  }

  private ESoftState(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static ESoftState convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (ESoftState localESoftState = __values[i]; ; localESoftState = null)
    {
      return localESoftState;
      i++;
      break;
    }
  }

  public static ESoftState convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (ESoftState localESoftState = __values[i]; ; localESoftState = null)
    {
      return localESoftState;
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
 * Qualified Name:     QQPIM.ESoftState
 * JD-Core Version:    0.6.2
 */