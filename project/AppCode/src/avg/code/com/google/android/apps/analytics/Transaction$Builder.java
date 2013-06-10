package com.google.android.apps.analytics;

public class Transaction$Builder
{
  private final String orderId;
  private double shippingCost = 0.0D;
  private String storeName = null;
  private final double totalCost;
  private double totalTax = 0.0D;

  public Transaction$Builder(String paramString, double paramDouble)
  {
    if ((paramString == null) || (paramString.trim().length() == 0))
      throw new IllegalArgumentException("orderId must not be empty or null");
    this.orderId = paramString;
    this.totalCost = paramDouble;
  }

  public Transaction build()
  {
    return new Transaction(this, null);
  }

  public Builder setShippingCost(double paramDouble)
  {
    this.shippingCost = paramDouble;
    return this;
  }

  public Builder setStoreName(String paramString)
  {
    this.storeName = paramString;
    return this;
  }

  public Builder setTotalTax(double paramDouble)
  {
    this.totalTax = paramDouble;
    return this;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.android.apps.analytics.Transaction.Builder
 * JD-Core Version:    0.6.2
 */