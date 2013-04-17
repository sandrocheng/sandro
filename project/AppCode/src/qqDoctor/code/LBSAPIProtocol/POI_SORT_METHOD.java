package LBSAPIProtocol;

public final class POI_SORT_METHOD
{
  public static final POI_SORT_METHOD SORT_BY_DISTANCE;
  public static final POI_SORT_METHOD SORT_BY_HOT;
  public static final int _SORT_BY_DISTANCE = 0;
  public static final int _SORT_BY_HOT = 1;
  private static POI_SORT_METHOD[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!POI_SORT_METHOD.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new POI_SORT_METHOD[2];
      SORT_BY_DISTANCE = new POI_SORT_METHOD(0, 0, "SORT_BY_DISTANCE");
      SORT_BY_HOT = new POI_SORT_METHOD(1, 1, "SORT_BY_HOT");
      return;
    }
  }

  private POI_SORT_METHOD(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static POI_SORT_METHOD convert(int paramInt)
  {
    int i = 0;
    if (i < __values.length)
      if (__values[i].value() != paramInt);
    for (POI_SORT_METHOD localPOI_SORT_METHOD = __values[i]; ; localPOI_SORT_METHOD = null)
    {
      return localPOI_SORT_METHOD;
      i++;
      break;
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
  }

  public static POI_SORT_METHOD convert(String paramString)
  {
    int i = 0;
    if (i < __values.length)
      if (!__values[i].toString().equals(paramString));
    for (POI_SORT_METHOD localPOI_SORT_METHOD = __values[i]; ; localPOI_SORT_METHOD = null)
    {
      return localPOI_SORT_METHOD;
      i++;
      break;
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
  }

  public String toString()
  {
    return this.__T;
  }

  public int value()
  {
    return this.__value;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     LBSAPIProtocol.POI_SORT_METHOD
 * JD-Core Version:    0.6.2
 */