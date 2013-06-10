package com.google.android.apps.analytics;

public class Item$Builder
{
  private String itemCategory = null;
  private final long itemCount;
  private String itemName = null;
  private final double itemPrice;
  private final String itemSKU;
  private final String orderId;

  public Item$Builder(String paramString1, String paramString2, double paramDouble, long paramLong)
  {
    if ((paramString1 == null) || (paramString1.trim().length() == 0))
      throw new IllegalArgumentException("orderId must not be empty or null");
    if ((paramString2 == null) || (paramString2.trim().length() == 0))
      throw new IllegalArgumentException("itemSKU must not be empty or null");
    this.orderId = paramString1;
    this.itemSKU = paramString2;
    this.itemPrice = paramDouble;
    this.itemCount = paramLong;
  }

  public Item build()
  {
    return new Item(this, null);
  }

  public Builder setItemCategory(String paramString)
  {
    this.itemCategory = paramString;
    return this;
  }

  public Builder setItemName(String paramString)
  {
    this.itemName = paramString;
    return this;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.android.apps.analytics.Item.Builder
 * JD-Core Version:    0.6.2
 */