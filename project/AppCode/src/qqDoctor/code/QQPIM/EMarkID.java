package QQPIM;

public final class EMarkID
{
  public static final EMarkID EM_2D;
  public static final EMarkID EM_3D;
  public static final EMarkID EM_CPU;
  public static final EMarkID EM_End;
  public static final EMarkID EM_IO;
  public static final EMarkID EM_None;
  public static final EMarkID EM_RAM;
  public static final EMarkID EM_SDCARD;
  public static final EMarkID EM_TOTAL;
  public static final int _EM_2D = 6;
  public static final int _EM_3D = 7;
  public static final int _EM_CPU = 2;
  public static final int _EM_End = 8;
  public static final int _EM_IO = 5;
  public static final int _EM_None = 0;
  public static final int _EM_RAM = 3;
  public static final int _EM_SDCARD = 4;
  public static final int _EM_TOTAL = 1;
  private static EMarkID[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EMarkID.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EMarkID[9];
      EM_None = new EMarkID(0, 0, "EM_None");
      EM_TOTAL = new EMarkID(1, 1, "EM_TOTAL");
      EM_CPU = new EMarkID(2, 2, "EM_CPU");
      EM_RAM = new EMarkID(3, 3, "EM_RAM");
      EM_SDCARD = new EMarkID(4, 4, "EM_SDCARD");
      EM_IO = new EMarkID(5, 5, "EM_IO");
      EM_2D = new EMarkID(6, 6, "EM_2D");
      EM_3D = new EMarkID(7, 7, "EM_3D");
      EM_End = new EMarkID(8, 8, "EM_End");
      return;
    }
  }

  private EMarkID(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EMarkID convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EMarkID localEMarkID = __values[i]; ; localEMarkID = null)
    {
      return localEMarkID;
      i++;
      break;
    }
  }

  public static EMarkID convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EMarkID localEMarkID = __values[i]; ; localEMarkID = null)
    {
      return localEMarkID;
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
 * Qualified Name:     QQPIM.EMarkID
 * JD-Core Version:    0.6.2
 */