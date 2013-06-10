package org.antivirus.ui;

public class BaseListAdapter$BaseListAdapterItem
{
  private boolean a;
  private int b;
  public boolean mCheck;
  public int mImage;
  public boolean mSpannable;
  public String mSummary;
  public int mTextColor;
  public String mTitle;

  public BaseListAdapter$BaseListAdapterItem(String paramString1, int paramInt1, String paramString2, boolean paramBoolean, int paramInt2)
  {
    this.mTitle = paramString1;
    this.mSummary = paramString2;
    this.mImage = paramInt2;
    this.b = -1;
    this.mTextColor = paramInt1;
    this.mSpannable = paramBoolean;
  }

  public BaseListAdapter$BaseListAdapterItem(String paramString1, String paramString2, int paramInt)
  {
    this.mTitle = paramString1;
    this.mSummary = paramString2;
    this.mImage = paramInt;
    this.b = -1;
    this.mTextColor = -1;
    this.mSpannable = false;
  }

  public BaseListAdapter$BaseListAdapterItem(String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    this.mTitle = paramString1;
    this.mSummary = paramString2;
    this.mImage = paramInt1;
    this.b = paramInt2;
    this.mTextColor = -1;
    this.mSpannable = false;
  }

  public BaseListAdapter$BaseListAdapterItem(String paramString1, String paramString2, int paramInt, boolean paramBoolean)
  {
    this.mTitle = paramString1;
    this.mSummary = paramString2;
    this.mImage = paramInt;
    this.mCheck = paramBoolean;
    this.a = true;
    this.b = -1;
    this.mTextColor = -1;
    this.mSpannable = false;
  }

  public void setSummary(String paramString)
  {
    this.mSummary = paramString;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.BaseListAdapter.BaseListAdapterItem
 * JD-Core Version:    0.6.2
 */