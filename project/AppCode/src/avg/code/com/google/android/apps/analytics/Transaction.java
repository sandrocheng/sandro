package com.google.android.apps.analytics;

public class Transaction
{
  private final String orderId;
  private final double shippingCost;
  private final String storeName;
  private final double totalCost;
  private final double totalTax;

  private Transaction(Transaction.Builder paramBuilder)
  {
    this.orderId = Transaction.Builder.access$000(paramBuilder);
    this.totalCost = Transaction.Builder.access$100(paramBuilder);
    this.storeName = Transaction.Builder.access$200(paramBuilder);
    this.totalTax = Transaction.Builder.access$300(paramBuilder);
    this.shippingCost = Transaction.Builder.access$400(paramBuilder);
  }

  String getOrderId()
  {
    return this.orderId;
  }

  double getShippingCost()
  {
    return this.shippingCost;
  }

  String getStoreName()
  {
    return this.storeName;
  }

  double getTotalCost()
  {
    return this.totalCost;
  }

  double getTotalTax()
  {
    return this.totalTax;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.android.apps.analytics.Transaction
 * JD-Core Version:    0.6.2
 */