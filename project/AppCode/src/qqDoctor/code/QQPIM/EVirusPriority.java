package QQPIM;

public final class EVirusPriority
{
  public static final EVirusPriority VP_High;
  public static final EVirusPriority VP_Low;
  public static final EVirusPriority VP_Mid;
  public static final int _VP_High = 2;
  public static final int _VP_Low = 0;
  public static final int _VP_Mid = 1;
  private static EVirusPriority[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EVirusPriority.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EVirusPriority[3];
      VP_Low = new EVirusPriority(0, 0, "VP_Low");
      VP_Mid = new EVirusPriority(1, 1, "VP_Mid");
      VP_High = new EVirusPriority(2, 2, "VP_High");
      return;
    }
  }

  private EVirusPriority(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EVirusPriority convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EVirusPriority localEVirusPriority = __values[i]; ; localEVirusPriority = null)
    {
      return localEVirusPriority;
      i++;
      break;
    }
  }

  public static EVirusPriority convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EVirusPriority localEVirusPriority = __values[i]; ; localEVirusPriority = null)
    {
      return localEVirusPriority;
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
 * Qualified Name:     QQPIM.EVirusPriority
 * JD-Core Version:    0.6.2
 */