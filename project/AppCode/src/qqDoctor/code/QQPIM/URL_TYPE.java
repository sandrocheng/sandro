package QQPIM;

public final class URL_TYPE
{
  public static final URL_TYPE E_URL_BLACK_LIST;
  public static final URL_TYPE E_URL_MAX;
  public static final URL_TYPE E_URL_REGULAR;
  public static final URL_TYPE E_URL_SHADINESS;
  public static final URL_TYPE E_URL_WHITE_LIST;
  public static final int _E_URL_BLACK_LIST = 3;
  public static final int _E_URL_MAX = 4;
  public static final int _E_URL_REGULAR = 0;
  public static final int _E_URL_SHADINESS = 2;
  public static final int _E_URL_WHITE_LIST = 1;
  private static URL_TYPE[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!URL_TYPE.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new URL_TYPE[5];
      E_URL_REGULAR = new URL_TYPE(0, 0, "E_URL_REGULAR");
      E_URL_WHITE_LIST = new URL_TYPE(1, 1, "E_URL_WHITE_LIST");
      E_URL_SHADINESS = new URL_TYPE(2, 2, "E_URL_SHADINESS");
      E_URL_BLACK_LIST = new URL_TYPE(3, 3, "E_URL_BLACK_LIST");
      E_URL_MAX = new URL_TYPE(4, 4, "E_URL_MAX");
      return;
    }
  }

  private URL_TYPE(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static URL_TYPE convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (URL_TYPE localURL_TYPE = __values[i]; ; localURL_TYPE = null)
    {
      return localURL_TYPE;
      i++;
      break;
    }
  }

  public static URL_TYPE convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (URL_TYPE localURL_TYPE = __values[i]; ; localURL_TYPE = null)
    {
      return localURL_TYPE;
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
 * Qualified Name:     QQPIM.URL_TYPE
 * JD-Core Version:    0.6.2
 */