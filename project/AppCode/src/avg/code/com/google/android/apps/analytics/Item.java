package com.google.android.apps.analytics;

public class Item
{
  private final String itemCategory;
  private final long itemCount;
  private final String itemName;
  private final double itemPrice;
  private final String itemSKU;
  private final String orderId;

  private Item(Item.Builder paramBuilder)
  {
    this.orderId = Item.Builder.access$000(paramBuilder);
    this.itemSKU = Item.Builder.access$100(paramBuilder);
    this.itemPrice = Item.Builder.access$200(paramBuilder);
    this.itemCount = Item.Builder.access$300(paramBuilder);
    this.itemName = Item.Builder.access$400(paramBuilder);
    this.itemCategory = Item.Builder.access$500(paramBuilder);
  }

  String getItemCategory()
  {
    return this.itemCategory;
  }

  long getItemCount()
  {
    return this.itemCount;
  }

  String getItemName()
  {
    return this.itemName;
  }

  double getItemPrice()
  {
    return this.itemPrice;
  }

  String getItemSKU()
  {
    return this.itemSKU;
  }

  String getOrderId()
  {
    return this.orderId;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.android.apps.analytics.Item
 * JD-Core Version:    0.6.2
 */