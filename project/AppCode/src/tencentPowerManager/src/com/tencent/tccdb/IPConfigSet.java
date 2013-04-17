package com.tencent.tccdb;

public class IPConfigSet
{
  public String iDefaultIPNums;
  public String iIPnum;
  public String iMSelfdefIPNum;
  public String iMyNumLocation;
  public String iNotUseIPAreas;
  public String iNotUseIPNums;
  public String iSelfdefIPNum;
  public int iUseIPnumStyle;

  public IPConfigSet(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    this.iUseIPnumStyle = paramInt;
    this.iIPnum = paramString1;
    this.iMyNumLocation = paramString2;
    this.iNotUseIPAreas = paramString3;
    this.iNotUseIPNums = paramString4;
    this.iDefaultIPNums = paramString5;
    this.iSelfdefIPNum = paramString6;
    this.iMSelfdefIPNum = paramString7;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.tccdb.IPConfigSet
 * JD-Core Version:    0.6.2
 */