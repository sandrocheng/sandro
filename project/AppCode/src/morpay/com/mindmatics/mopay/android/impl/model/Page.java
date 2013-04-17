package com.mindmatics.mopay.android.impl.model;

public abstract interface Page
{
  public abstract int getStepNumber();

  public abstract boolean isCancelAllowed();

  public abstract boolean isRefreshDisclaimer();

  public abstract boolean isShowHelp();

  public abstract String getPageName();

  public abstract boolean isExitPoint();

  public abstract boolean isShowVoucherLink();
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.model.Page
 * JD-Core Version:    0.6.2
 */