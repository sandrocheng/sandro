package QQPIM;

public final class EInfoID
{
  public static final EInfoID EI_CPU;
  public static final EInfoID EI_DEVICE;
  public static final EInfoID EI_End;
  public static final EInfoID EI_GPU;
  public static final EInfoID EI_MOBILE;
  public static final EInfoID EI_None;
  public static final EInfoID EI_SCREEN;
  public static final EInfoID EI_STORAGE;
  public static final int _EI_CPU = 2;
  public static final int _EI_DEVICE = 6;
  public static final int _EI_End = 7;
  public static final int _EI_GPU = 4;
  public static final int _EI_MOBILE = 1;
  public static final int _EI_None = 0;
  public static final int _EI_SCREEN = 3;
  public static final int _EI_STORAGE = 5;
  private static EInfoID[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EInfoID.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EInfoID[8];
      EI_None = new EInfoID(0, 0, "EI_None");
      EI_MOBILE = new EInfoID(1, 1, "EI_MOBILE");
      EI_CPU = new EInfoID(2, 2, "EI_CPU");
      EI_SCREEN = new EInfoID(3, 3, "EI_SCREEN");
      EI_GPU = new EInfoID(4, 4, "EI_GPU");
      EI_STORAGE = new EInfoID(5, 5, "EI_STORAGE");
      EI_DEVICE = new EInfoID(6, 6, "EI_DEVICE");
      EI_End = new EInfoID(7, 7, "EI_End");
      return;
    }
  }

  private EInfoID(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EInfoID convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EInfoID localEInfoID = __values[i]; ; localEInfoID = null)
    {
      return localEInfoID;
      i++;
      break;
    }
  }

  public static EInfoID convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EInfoID localEInfoID = __values[i]; ; localEInfoID = null)
    {
      return localEInfoID;
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
 * Qualified Name:     QQPIM.EInfoID
 * JD-Core Version:    0.6.2
 */