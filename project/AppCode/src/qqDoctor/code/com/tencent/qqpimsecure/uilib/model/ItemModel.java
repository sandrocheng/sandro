package com.tencent.qqpimsecure.uilib.model;

public class ItemModel
{
  public static final int ITEM_STYLE_HEADER = 0;
  public static final int ITEM_STYLE_MIDDLE = 1;
  private String mHeaderLabel = null;
  private int mItemStyle = 1;

  public String getHeaderLabel()
  {
    return this.mHeaderLabel;
  }

  public int getItemStyle()
  {
    return this.mItemStyle;
  }

  public void setHeaderLabel(String paramString)
  {
    this.mHeaderLabel = paramString;
  }

  public void setItemStyle(int paramInt)
  {
    this.mItemStyle = paramInt;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.model.ItemModel
 * JD-Core Version:    0.6.2
 */