package com.tencent.qqpimsecure.uilib.model;

public class TipsModel
{
  private int actionType;
  private int closeTime;
  private int icon;
  private int iconType;
  private String message = "";
  private boolean showCloseIcon;
  private boolean single;
  private String url = "";

  public boolean equals(Object paramObject)
  {
    TipsModel localTipsModel = (TipsModel)paramObject;
    if ((localTipsModel.getMessage().equals(this.message)) && (localTipsModel.getUrl().equals(this.url)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public int getActionType()
  {
    return this.actionType;
  }

  public int getCloseTime()
  {
    return this.closeTime;
  }

  public int getIcon()
  {
    return this.icon;
  }

  public int getIconType()
  {
    return this.iconType;
  }

  public String getMessage()
  {
    return this.message;
  }

  public String getUrl()
  {
    return this.url;
  }

  public boolean isShowCloseIcon()
  {
    return this.showCloseIcon;
  }

  public boolean isSingle()
  {
    return this.single;
  }

  public void setActionType(int paramInt)
  {
    this.actionType = paramInt;
  }

  public void setCloseTime(int paramInt)
  {
    this.closeTime = paramInt;
  }

  public void setIcon(int paramInt)
  {
    this.icon = paramInt;
  }

  public void setIconType(int paramInt)
  {
    this.iconType = paramInt;
  }

  public void setMessage(String paramString)
  {
    this.message = paramString;
  }

  public void setShowCloseIcon(boolean paramBoolean)
  {
    this.showCloseIcon = paramBoolean;
  }

  public void setSingle(boolean paramBoolean)
  {
    this.single = paramBoolean;
  }

  public void setUrl(String paramString)
  {
    this.url = paramString;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.model.TipsModel
 * JD-Core Version:    0.6.2
 */