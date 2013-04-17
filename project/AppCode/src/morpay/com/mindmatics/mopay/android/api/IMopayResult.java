package com.mindmatics.mopay.android.api;

public abstract interface IMopayResult
{
  public abstract String getGuid();

  public abstract MopayStatus getStatus();

  public abstract long getErrorCode();

  public abstract int getErrorDetail();

  public abstract String getErrorMessage();

  public abstract String getCurrency();

  public abstract Double getAmount();

  public abstract String getCountry();

  public abstract String getMsisdn();
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.api.IMopayResult
 * JD-Core Version:    0.6.2
 */