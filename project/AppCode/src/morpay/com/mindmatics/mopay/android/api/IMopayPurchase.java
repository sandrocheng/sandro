package com.mindmatics.mopay.android.api;

import java.util.Set;

public abstract interface IMopayPurchase
{
  public abstract void putParam(PurchaseParam paramPurchaseParam, String paramString);

  public abstract String getParamValue(Object paramObject);

  public abstract Set<PurchaseParam> getParams();

  public abstract int size();

  public abstract String getSecret();

  public abstract int getType();
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.api.IMopayPurchase
 * JD-Core Version:    0.6.2
 */