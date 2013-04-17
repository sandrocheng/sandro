package QQPIM;

public final class EOfficialType
{
  public static final EOfficialType OFFICIAL_NONE;
  public static final EOfficialType OFFICIAL_NOT;
  public static final EOfficialType OFFICIAL_YES;
  public static final int _OFFICIAL_NONE = 0;
  public static final int _OFFICIAL_NOT = 1;
  public static final int _OFFICIAL_YES = 2;
  private static EOfficialType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EOfficialType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EOfficialType[3];
      OFFICIAL_NONE = new EOfficialType(0, 0, "OFFICIAL_NONE");
      OFFICIAL_NOT = new EOfficialType(1, 1, "OFFICIAL_NOT");
      OFFICIAL_YES = new EOfficialType(2, 2, "OFFICIAL_YES");
      return;
    }
  }

  private EOfficialType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EOfficialType convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EOfficialType localEOfficialType = __values[i]; ; localEOfficialType = null)
    {
      return localEOfficialType;
      i++;
      break;
    }
  }

  public static EOfficialType convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EOfficialType localEOfficialType = __values[i]; ; localEOfficialType = null)
    {
      return localEOfficialType;
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
 * Qualified Name:     QQPIM.EOfficialType
 * JD-Core Version:    0.6.2
 */