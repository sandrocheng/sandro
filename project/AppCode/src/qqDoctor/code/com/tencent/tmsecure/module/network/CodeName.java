package com.tencent.tmsecure.module.network;

public final class CodeName
{
  public String mCode;
  public String mName;

  public CodeName()
  {
    this.mCode = "";
    this.mName = "";
  }

  public CodeName(CodeName paramCodeName)
  {
    this.mCode = paramCodeName.mCode;
    this.mName = paramCodeName.mName;
  }

  public CodeName(String paramString1, String paramString2)
  {
    this.mCode = paramString1;
    this.mName = paramString2;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.network.CodeName
 * JD-Core Version:    0.6.2
 */