package QQPIM;

public final class REACT
{
  public static final REACT E_REACT_MAX;
  public static final REACT E_REACT_MIN;
  public static final REACT E_REACT_NO;
  public static final REACT E_REACT_YES;
  public static final int _E_REACT_MAX = 3;
  public static final int _E_REACT_MIN = 0;
  public static final int _E_REACT_NO = 2;
  public static final int _E_REACT_YES = 1;
  private static REACT[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!REACT.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new REACT[4];
      E_REACT_MIN = new REACT(0, 0, "E_REACT_MIN");
      E_REACT_YES = new REACT(1, 1, "E_REACT_YES");
      E_REACT_NO = new REACT(2, 2, "E_REACT_NO");
      E_REACT_MAX = new REACT(3, 3, "E_REACT_MAX");
      return;
    }
  }

  private REACT(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static REACT convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (REACT localREACT = __values[i]; ; localREACT = null)
    {
      return localREACT;
      i++;
      break;
    }
  }

  public static REACT convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (REACT localREACT = __values[i]; ; localREACT = null)
    {
      return localREACT;
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
 * Qualified Name:     QQPIM.REACT
 * JD-Core Version:    0.6.2
 */