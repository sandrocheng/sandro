package QQPIM;

public final class ESoftClass
{
  public static final ESoftClass ESC_Dangerous;
  public static final ESoftClass ESC_NONE;
  public static final ESoftClass ESC_Rogue;
  public static final ESoftClass ESC_System_Cannot_Delete;
  public static final ESoftClass ESC_Trust;
  public static final ESoftClass ESC_Virus;
  public static final int _ESC_Dangerous = 4;
  public static final int _ESC_NONE = 0;
  public static final int _ESC_Rogue = 2;
  public static final int _ESC_System_Cannot_Delete = 5;
  public static final int _ESC_Trust = 1;
  public static final int _ESC_Virus = 3;
  private static ESoftClass[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!ESoftClass.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new ESoftClass[6];
      ESC_NONE = new ESoftClass(0, 0, "ESC_NONE");
      ESC_Trust = new ESoftClass(1, 1, "ESC_Trust");
      ESC_Rogue = new ESoftClass(2, 2, "ESC_Rogue");
      ESC_Virus = new ESoftClass(3, 3, "ESC_Virus");
      ESC_Dangerous = new ESoftClass(4, 4, "ESC_Dangerous");
      ESC_System_Cannot_Delete = new ESoftClass(5, 5, "ESC_System_Cannot_Delete");
      return;
    }
  }

  private ESoftClass(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static ESoftClass convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (ESoftClass localESoftClass = __values[i]; ; localESoftClass = null)
    {
      return localESoftClass;
      i++;
      break;
    }
  }

  public static ESoftClass convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (ESoftClass localESoftClass = __values[i]; ; localESoftClass = null)
    {
      return localESoftClass;
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
 * Qualified Name:     QQPIM.ESoftClass
 * JD-Core Version:    0.6.2
 */