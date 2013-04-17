package com.tencent.tccdb;

import android.text.TextUtils;

public class MCheckInput
{
  public static final int CHECK_INPUT_SENDER = 1;
  public static final int CHECK_INPUT_SMS = 2;
  public static final int SMS_IN = 0;
  public static final int SMS_OUT = 1;
  public static final int SMS_TYPE_COLOR = 1;
  public static final int SMS_TYPE_COMMON = 0;
  public static final int SMS_TYPE_WAP_PUSH = 2;
  public int checkFlag;
  public String sender;
  public String sms;
  public int smsInOut;
  public int smsType;

  public MCheckInput(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3)
  {
    if (TextUtils.isEmpty(paramString1))
      paramString1 = "";
    this.sender = paramString1;
    if (TextUtils.isEmpty(paramString2))
      paramString2 = "";
    this.sms = paramString2;
    this.checkFlag = paramInt1;
    this.smsType = paramInt2;
    this.smsInOut = paramInt3;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.tccdb.MCheckInput
 * JD-Core Version:    0.6.2
 */