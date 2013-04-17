package com.tencent.tccdb;

public class RuleFileHeader
{
  public String md5str;
  public int time;
  public int version;

  public RuleFileHeader(int paramInt1, int paramInt2, String paramString)
  {
    this.version = paramInt1;
    this.time = paramInt2;
    this.md5str = paramString;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.tccdb.RuleFileHeader
 * JD-Core Version:    0.6.2
 */