package com.tencent.qqpimsecure.uilib.model;

public class ButtonAdapterModel
{
  private boolean disable;
  private int icon;
  private int key;
  private String summry;
  private String title;

  public int getIcon()
  {
    return this.icon;
  }

  public int getKey()
  {
    return this.key;
  }

  public String getSummry()
  {
    return this.summry;
  }

  public String getTitle()
  {
    return this.title;
  }

  public boolean isDisable()
  {
    return this.disable;
  }

  public void setDisable(boolean paramBoolean)
  {
    this.disable = paramBoolean;
  }

  public void setIcon(int paramInt)
  {
    this.icon = paramInt;
  }

  public void setKey(int paramInt)
  {
    this.key = paramInt;
  }

  public void setSummry(String paramString)
  {
    this.summry = paramString;
  }

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.model.ButtonAdapterModel
 * JD-Core Version:    0.6.2
 */