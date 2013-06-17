package com.google.zxing.client.result;

public final class ProductParsedResult extends ParsedResult
{
  private final String normalizedProductID;
  private final String productID;

  ProductParsedResult(String paramString)
  {
    this(paramString, paramString);
  }

  ProductParsedResult(String paramString1, String paramString2)
  {
    super(ParsedResultType.PRODUCT);
    this.productID = paramString1;
    this.normalizedProductID = paramString2;
  }

  public String getDisplayResult()
  {
    return this.productID;
  }

  public String getNormalizedProductID()
  {
    return this.normalizedProductID;
  }

  public String getProductID()
  {
    return this.productID;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.ProductParsedResult
 * JD-Core Version:    0.6.2
 */