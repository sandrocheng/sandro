package LBSAPIProtocol;

public final class POITYPE
{
  public static final POITYPE POI_BANK;
  public static final POITYPE POI_BEAUTY;
  public static final POITYPE POI_CAR;
  public static final POITYPE POI_COM;
  public static final POITYPE POI_CULTURE;
  public static final POITYPE POI_ENTM;
  public static final POITYPE POI_ESTATE;
  public static final POITYPE POI_FOOD;
  public static final POITYPE POI_HEALTH;
  public static final POITYPE POI_HOTEL;
  public static final POITYPE POI_INFRA;
  public static final POITYPE POI_ORG;
  public static final POITYPE POI_PLACE;
  public static final POITYPE POI_SCHOOL;
  public static final POITYPE POI_SERVICE;
  public static final POITYPE POI_SHOPPING;
  public static final POITYPE POI_SPORT;
  public static final POITYPE POI_TOUR;
  public static final int _POI_BANK = 250000;
  public static final int _POI_BEAUTY = 170000;
  public static final int _POI_CAR = 190000;
  public static final int _POI_COM = 110000;
  public static final int _POI_CULTURE = 230000;
  public static final int _POI_ENTM = 160000;
  public static final int _POI_ESTATE = 280000;
  public static final int _POI_FOOD = 100000;
  public static final int _POI_HEALTH = 200000;
  public static final int _POI_HOTEL = 210000;
  public static final int _POI_INFRA = 270000;
  public static final int _POI_ORG = 120000;
  public static final int _POI_PLACE = 260000;
  public static final int _POI_SCHOOL = 240000;
  public static final int _POI_SERVICE = 140000;
  public static final int _POI_SHOPPING = 130000;
  public static final int _POI_SPORT = 180000;
  public static final int _POI_TOUR = 220000;
  private static POITYPE[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!POITYPE.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new POITYPE[18];
      POI_FOOD = new POITYPE(0, 100000, "POI_FOOD");
      POI_COM = new POITYPE(1, 110000, "POI_COM");
      POI_ORG = new POITYPE(2, 120000, "POI_ORG");
      POI_SHOPPING = new POITYPE(3, 130000, "POI_SHOPPING");
      POI_SERVICE = new POITYPE(4, 140000, "POI_SERVICE");
      POI_ENTM = new POITYPE(5, 160000, "POI_ENTM");
      POI_BEAUTY = new POITYPE(6, 170000, "POI_BEAUTY");
      POI_SPORT = new POITYPE(7, 180000, "POI_SPORT");
      POI_CAR = new POITYPE(8, 190000, "POI_CAR");
      POI_HEALTH = new POITYPE(9, 200000, "POI_HEALTH");
      POI_HOTEL = new POITYPE(10, 210000, "POI_HOTEL");
      POI_TOUR = new POITYPE(11, 220000, "POI_TOUR");
      POI_CULTURE = new POITYPE(12, 230000, "POI_CULTURE");
      POI_SCHOOL = new POITYPE(13, 240000, "POI_SCHOOL");
      POI_BANK = new POITYPE(14, 250000, "POI_BANK");
      POI_PLACE = new POITYPE(15, 260000, "POI_PLACE");
      POI_INFRA = new POITYPE(16, 270000, "POI_INFRA");
      POI_ESTATE = new POITYPE(17, 280000, "POI_ESTATE");
      return;
    }
  }

  private POITYPE(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static POITYPE convert(int paramInt)
  {
    int i = 0;
    if (i < __values.length)
      if (__values[i].value() != paramInt);
    for (POITYPE localPOITYPE = __values[i]; ; localPOITYPE = null)
    {
      return localPOITYPE;
      i++;
      break;
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
  }

  public static POITYPE convert(String paramString)
  {
    int i = 0;
    if (i < __values.length)
      if (!__values[i].toString().equals(paramString));
    for (POITYPE localPOITYPE = __values[i]; ; localPOITYPE = null)
    {
      return localPOITYPE;
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
 * Qualified Name:     LBSAPIProtocol.POITYPE
 * JD-Core Version:    0.6.2
 */