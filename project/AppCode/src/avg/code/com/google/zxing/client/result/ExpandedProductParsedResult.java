package com.google.zxing.client.result;

import java.util.Map;

public final class ExpandedProductParsedResult extends ParsedResult
{
  public static final String KILOGRAM = "KG";
  public static final String POUND = "LB";
  private final String bestBeforeDate;
  private final String expirationDate;
  private final String lotNumber;
  private final String packagingDate;
  private final String price;
  private final String priceCurrency;
  private final String priceIncrement;
  private final String productID;
  private final String productionDate;
  private final String sscc;
  private final Map uncommonAIs;
  private final String weight;
  private final String weightIncrement;
  private final String weightType;

  public ExpandedProductParsedResult(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10, String paramString11, String paramString12, String paramString13, Map paramMap)
  {
    super(ParsedResultType.PRODUCT);
    this.productID = paramString1;
    this.sscc = paramString2;
    this.lotNumber = paramString3;
    this.productionDate = paramString4;
    this.packagingDate = paramString5;
    this.bestBeforeDate = paramString6;
    this.expirationDate = paramString7;
    this.weight = paramString8;
    this.weightType = paramString9;
    this.weightIncrement = paramString10;
    this.price = paramString11;
    this.priceIncrement = paramString12;
    this.priceCurrency = paramString13;
    this.uncommonAIs = paramMap;
  }

  private static boolean equalsOrNull(Object paramObject1, Object paramObject2)
  {
    boolean bool;
    if (paramObject1 == null)
      if (paramObject2 == null)
        bool = true;
    while (true)
    {
      return bool;
      bool = false;
      continue;
      bool = paramObject1.equals(paramObject2);
    }
  }

  private static int hashNotNull(Object paramObject)
  {
    if (paramObject == null);
    for (int i = 0; ; i = paramObject.hashCode())
      return i;
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof ExpandedProductParsedResult;
    boolean bool2 = false;
    if (!bool1);
    while (true)
    {
      return bool2;
      ExpandedProductParsedResult localExpandedProductParsedResult = (ExpandedProductParsedResult)paramObject;
      boolean bool3 = equalsOrNull(this.productID, localExpandedProductParsedResult.productID);
      bool2 = false;
      if (bool3)
      {
        boolean bool4 = equalsOrNull(this.sscc, localExpandedProductParsedResult.sscc);
        bool2 = false;
        if (bool4)
        {
          boolean bool5 = equalsOrNull(this.lotNumber, localExpandedProductParsedResult.lotNumber);
          bool2 = false;
          if (bool5)
          {
            boolean bool6 = equalsOrNull(this.productionDate, localExpandedProductParsedResult.productionDate);
            bool2 = false;
            if (bool6)
            {
              boolean bool7 = equalsOrNull(this.bestBeforeDate, localExpandedProductParsedResult.bestBeforeDate);
              bool2 = false;
              if (bool7)
              {
                boolean bool8 = equalsOrNull(this.expirationDate, localExpandedProductParsedResult.expirationDate);
                bool2 = false;
                if (bool8)
                {
                  boolean bool9 = equalsOrNull(this.weight, localExpandedProductParsedResult.weight);
                  bool2 = false;
                  if (bool9)
                  {
                    boolean bool10 = equalsOrNull(this.weightType, localExpandedProductParsedResult.weightType);
                    bool2 = false;
                    if (bool10)
                    {
                      boolean bool11 = equalsOrNull(this.weightIncrement, localExpandedProductParsedResult.weightIncrement);
                      bool2 = false;
                      if (bool11)
                      {
                        boolean bool12 = equalsOrNull(this.price, localExpandedProductParsedResult.price);
                        bool2 = false;
                        if (bool12)
                        {
                          boolean bool13 = equalsOrNull(this.priceIncrement, localExpandedProductParsedResult.priceIncrement);
                          bool2 = false;
                          if (bool13)
                          {
                            boolean bool14 = equalsOrNull(this.priceCurrency, localExpandedProductParsedResult.priceCurrency);
                            bool2 = false;
                            if (bool14)
                            {
                              boolean bool15 = equalsOrNull(this.uncommonAIs, localExpandedProductParsedResult.uncommonAIs);
                              bool2 = false;
                              if (bool15)
                                bool2 = true;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  public final String getBestBeforeDate()
  {
    return this.bestBeforeDate;
  }

  public final String getDisplayResult()
  {
    return String.valueOf(this.productID);
  }

  public final String getExpirationDate()
  {
    return this.expirationDate;
  }

  public final String getLotNumber()
  {
    return this.lotNumber;
  }

  public final String getPackagingDate()
  {
    return this.packagingDate;
  }

  public final String getPrice()
  {
    return this.price;
  }

  public final String getPriceCurrency()
  {
    return this.priceCurrency;
  }

  public final String getPriceIncrement()
  {
    return this.priceIncrement;
  }

  public final String getProductID()
  {
    return this.productID;
  }

  public final String getProductionDate()
  {
    return this.productionDate;
  }

  public final String getSscc()
  {
    return this.sscc;
  }

  public final Map getUncommonAIs()
  {
    return this.uncommonAIs;
  }

  public final String getWeight()
  {
    return this.weight;
  }

  public final String getWeightIncrement()
  {
    return this.weightIncrement;
  }

  public final String getWeightType()
  {
    return this.weightType;
  }

  public final int hashCode()
  {
    return 0x0 ^ hashNotNull(this.productID) ^ hashNotNull(this.sscc) ^ hashNotNull(this.lotNumber) ^ hashNotNull(this.productionDate) ^ hashNotNull(this.bestBeforeDate) ^ hashNotNull(this.expirationDate) ^ hashNotNull(this.weight) ^ hashNotNull(this.weightType) ^ hashNotNull(this.weightIncrement) ^ hashNotNull(this.price) ^ hashNotNull(this.priceIncrement) ^ hashNotNull(this.priceCurrency) ^ hashNotNull(this.uncommonAIs);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.ExpandedProductParsedResult
 * JD-Core Version:    0.6.2
 */