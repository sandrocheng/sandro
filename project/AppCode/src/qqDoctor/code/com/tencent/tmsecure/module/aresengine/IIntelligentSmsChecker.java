package com.tencent.tmsecure.module.aresengine;

import com.tencent.tccdb.MMatchSysResult;

public abstract interface IIntelligentSmsChecker
{
  public abstract CheckResult check(SmsEntity paramSmsEntity);

  public abstract boolean isChartSms(SmsEntity paramSmsEntity);

  public static final class CheckResult
  {
    public static final int SUGGESTION_DOUBT = 3;
    public static final int SUGGESTION_ERROR = -1;
    public static final int SUGGESTION_INTERCEPT = 2;
    public static final int SUGGESTION_PASS = 1;
    public static final int SUGGESTION_UNKNOWN = 4;
    public static final int TYPE_12590 = 5;
    public static final int TYPE_ADS = 3;
    public static final int TYPE_EVIL_SOFT = 10;
    public static final int TYPE_FRAUD = 4;
    public static final int TYPE_INIT_ERROR = 0;
    public static final int TYPE_LEGAL_ORGANIZATION = 7;
    public static final int TYPE_MO_CHARGE = 8;
    public static final int TYPE_MT_CHARGE = 9;
    public static final int TYPE_NORMAL = 2;
    public static final int TYPE_SEX = 6;
    public static final int TYPE_UNKOWN = 1;
    public int mContentType;
    public MMatchSysResult mInnterResult;
    public int mSuggestion;

    public static boolean shouldBeBlockedOrNot(CheckResult paramCheckResult)
    {
      if ((paramCheckResult != null) && ((paramCheckResult.mSuggestion == 3) || (paramCheckResult.mSuggestion == 2)));
      for (boolean bool = true; ; bool = false)
        return bool;
    }

    public final int contentType()
    {
      return this.mContentType % 127;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.IIntelligentSmsChecker
 * JD-Core Version:    0.6.2
 */