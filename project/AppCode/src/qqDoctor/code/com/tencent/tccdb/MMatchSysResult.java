package com.tencent.tccdb;

public class MMatchSysResult
{
  public static final int EM_FINAL_ACTION_DOUBT = 3;
  public static final int EM_FINAL_ACTION_INTERCEPT = 2;
  public static final int EM_FINAL_ACTION_NEXT_STEP = 4;
  public static final int EM_FINAL_ACTION_PASS = 1;
  public int actionReason;
  public int contentType;
  public int finalAction;
  public int matchCnt;
  public int minusMark;
  public MRuleTypeID[] ruleTypeID;

  public MMatchSysResult(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, MRuleTypeID[] paramArrayOfMRuleTypeID)
  {
    this.finalAction = paramInt1;
    this.contentType = paramInt2;
    this.matchCnt = paramInt3;
    this.minusMark = paramInt4;
    this.actionReason = paramInt5;
    this.ruleTypeID = paramArrayOfMRuleTypeID;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tccdb.MMatchSysResult
 * JD-Core Version:    0.6.2
 */