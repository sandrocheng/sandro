package LBSAPIProtocol;

public final class GPSTYPE
{
  public static final GPSTYPE GPS_MARS;
  public static final GPSTYPE GPS_MARS_VIRTUAL;
  public static final GPSTYPE GPS_WGS84;
  public static final GPSTYPE GPS_WGS84_VIRTUAL;
  public static final GPSTYPE GPS_WGS_REAL;
  public static final int _GPS_MARS = 1;
  public static final int _GPS_MARS_VIRTUAL = 4;
  public static final int _GPS_WGS84 = 0;
  public static final int _GPS_WGS84_VIRTUAL = 3;
  public static final int _GPS_WGS_REAL = 2;
  private static GPSTYPE[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!GPSTYPE.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new GPSTYPE[5];
      GPS_WGS84 = new GPSTYPE(0, 0, "GPS_WGS84");
      GPS_MARS = new GPSTYPE(1, 1, "GPS_MARS");
      GPS_WGS_REAL = new GPSTYPE(2, 2, "GPS_WGS_REAL");
      GPS_WGS84_VIRTUAL = new GPSTYPE(3, 3, "GPS_WGS84_VIRTUAL");
      GPS_MARS_VIRTUAL = new GPSTYPE(4, 4, "GPS_MARS_VIRTUAL");
      return;
    }
  }

  private GPSTYPE(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static GPSTYPE convert(int paramInt)
  {
    int i = 0;
    if (i < __values.length)
      if (__values[i].value() != paramInt);
    for (GPSTYPE localGPSTYPE = __values[i]; ; localGPSTYPE = null)
    {
      return localGPSTYPE;
      i++;
      break;
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
  }

  public static GPSTYPE convert(String paramString)
  {
    int i = 0;
    if (i < __values.length)
      if (!__values[i].toString().equals(paramString));
    for (GPSTYPE localGPSTYPE = __values[i]; ; localGPSTYPE = null)
    {
      return localGPSTYPE;
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
 * Qualified Name:     LBSAPIProtocol.GPSTYPE
 * JD-Core Version:    0.6.2
 */