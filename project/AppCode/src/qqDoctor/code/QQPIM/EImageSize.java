package QQPIM;

public final class EImageSize
{
  public static final EImageSize EIS_Big;
  public static final EImageSize EIS_End;
  public static final EImageSize EIS_Medium;
  public static final EImageSize EIS_None;
  public static final EImageSize EIS_Small;
  public static final EImageSize EIS_Thumbnail;
  public static final int _EIS_Big = 3;
  public static final int _EIS_End = 5;
  public static final int _EIS_Medium = 2;
  public static final int _EIS_None = 0;
  public static final int _EIS_Small = 1;
  public static final int _EIS_Thumbnail = 4;
  private static EImageSize[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EImageSize.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EImageSize[6];
      EIS_None = new EImageSize(0, 0, "EIS_None");
      EIS_Small = new EImageSize(1, 1, "EIS_Small");
      EIS_Medium = new EImageSize(2, 2, "EIS_Medium");
      EIS_Big = new EImageSize(3, 3, "EIS_Big");
      EIS_Thumbnail = new EImageSize(4, 4, "EIS_Thumbnail");
      EIS_End = new EImageSize(5, 5, "EIS_End");
      return;
    }
  }

  private EImageSize(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EImageSize convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EImageSize localEImageSize = __values[i]; ; localEImageSize = null)
    {
      return localEImageSize;
      i++;
      break;
    }
  }

  public static EImageSize convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EImageSize localEImageSize = __values[i]; ; localEImageSize = null)
    {
      return localEImageSize;
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
 * Qualified Name:     QQPIM.EImageSize
 * JD-Core Version:    0.6.2
 */