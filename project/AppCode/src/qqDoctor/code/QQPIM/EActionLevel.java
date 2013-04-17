package QQPIM;

public final class EActionLevel
{
  public static final EActionLevel EAL_Common;
  public static final EActionLevel EAL_Detail;
  public static final EActionLevel EAL_None;
  public static final EActionLevel EAL_Simple;
  public static final int _EAL_Common = 2;
  public static final int _EAL_Detail = 3;
  public static final int _EAL_None = 0;
  public static final int _EAL_Simple = 1;
  private static EActionLevel[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EActionLevel.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EActionLevel[4];
      EAL_None = new EActionLevel(0, 0, "EAL_None");
      EAL_Simple = new EActionLevel(1, 1, "EAL_Simple");
      EAL_Common = new EActionLevel(2, 2, "EAL_Common");
      EAL_Detail = new EActionLevel(3, 3, "EAL_Detail");
      return;
    }
  }

  private EActionLevel(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EActionLevel convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EActionLevel localEActionLevel = __values[i]; ; localEActionLevel = null)
    {
      return localEActionLevel;
      i++;
      break;
    }
  }

  public static EActionLevel convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EActionLevel localEActionLevel = __values[i]; ; localEActionLevel = null)
    {
      return localEActionLevel;
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
 * Qualified Name:     QQPIM.EActionLevel
 * JD-Core Version:    0.6.2
 */