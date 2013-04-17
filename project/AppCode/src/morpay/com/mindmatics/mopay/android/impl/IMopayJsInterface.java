package com.mindmatics.mopay.android.impl;

public abstract interface IMopayJsInterface
{
  public abstract void sendSms(String paramString);

  public abstract void executeYesNoDialog(String paramString);

  public abstract String getTelephoneNumber(String paramString);

  public abstract void buildResult(String paramString);

  public abstract void openUrl(String paramString);

  public abstract void log(String paramString);

  public abstract void initApp(String paramString);

  public abstract void executeSendSmsDoubleConfirm(String paramString);

  public abstract void awaitTanSms(String paramString);

  public abstract void dismissDialog();

  public abstract void awaitHandshakeSms(String paramString);

  public abstract void submitHandshakeDetails(String paramString);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.IMopayJsInterface
 * JD-Core Version:    0.6.2
 */