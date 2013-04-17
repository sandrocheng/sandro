package com.tencent.tccdb;

public class MatchRule
{
  public String postfix;
  public String prefix;
  public int type;
  public int unit;

  public MatchRule(int paramInt1, int paramInt2, String paramString1, String paramString2)
  {
    this.unit = paramInt1;
    this.type = paramInt2;
    this.prefix = paramString1;
    this.postfix = paramString2;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.tccdb.MatchRule
 * JD-Core Version:    0.6.2
 */