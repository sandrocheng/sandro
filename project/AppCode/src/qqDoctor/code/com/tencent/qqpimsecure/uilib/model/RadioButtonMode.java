package com.tencent.qqpimsecure.uilib.model;

public class RadioButtonMode
{
  private boolean isSelected;
  private int radioButtonImageId;
  private String radioButtonName;
  private String radioEventCode;

  public int getRadioButtonImageId()
  {
    return this.radioButtonImageId;
  }

  public String getRadioButtonName()
  {
    return this.radioButtonName;
  }

  public String getRadioEventCode()
  {
    return this.radioEventCode;
  }

  public boolean isSelected()
  {
    return this.isSelected;
  }

  public void setRadioButtonImageId(int paramInt)
  {
    this.radioButtonImageId = paramInt;
  }

  public void setRadioButtonName(String paramString)
  {
    this.radioButtonName = paramString;
  }

  public void setRadioEventCode(String paramString)
  {
    this.radioEventCode = paramString;
  }

  public void setSelected(boolean paramBoolean)
  {
    this.isSelected = paramBoolean;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.model.RadioButtonMode
 * JD-Core Version:    0.6.2
 */