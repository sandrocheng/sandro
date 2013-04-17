package QQPIM;

public final class EModleMarkID
{
  public static final EModleMarkID EMM_Around;
  public static final EModleMarkID EMM_CPU;
  public static final EModleMarkID EMM_End;
  public static final EModleMarkID EMM_Media;
  public static final EModleMarkID EMM_Memory;
  public static final EModleMarkID EMM_ModelTop;
  public static final EModleMarkID EMM_None;
  public static final EModleMarkID EMM_TOTAL;
  public static final int _EMM_Around = 6;
  public static final int _EMM_CPU = 2;
  public static final int _EMM_End = 7;
  public static final int _EMM_Media = 3;
  public static final int _EMM_Memory = 4;
  public static final int _EMM_ModelTop = 5;
  public static final int _EMM_None = 0;
  public static final int _EMM_TOTAL = 1;
  private static EModleMarkID[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EModleMarkID.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EModleMarkID[8];
      EMM_None = new EModleMarkID(0, 0, "EMM_None");
      EMM_TOTAL = new EModleMarkID(1, 1, "EMM_TOTAL");
      EMM_CPU = new EModleMarkID(2, 2, "EMM_CPU");
      EMM_Media = new EModleMarkID(3, 3, "EMM_Media");
      EMM_Memory = new EModleMarkID(4, 4, "EMM_Memory");
      EMM_ModelTop = new EModleMarkID(5, 5, "EMM_ModelTop");
      EMM_Around = new EModleMarkID(6, 6, "EMM_Around");
      EMM_End = new EModleMarkID(7, 7, "EMM_End");
      return;
    }
  }

  private EModleMarkID(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EModleMarkID convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EModleMarkID localEModleMarkID = __values[i]; ; localEModleMarkID = null)
    {
      return localEModleMarkID;
      i++;
      break;
    }
  }

  public static EModleMarkID convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EModleMarkID localEModleMarkID = __values[i]; ; localEModleMarkID = null)
    {
      return localEModleMarkID;
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
 * Qualified Name:     QQPIM.EModleMarkID
 * JD-Core Version:    0.6.2
 */