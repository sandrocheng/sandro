package com.tencent.qqpimsecure.uilib.model;

import android.widget.Button;

public class SimpleAdapterModel
{
  private String content;
  private Button leftButton;
  private Button rightButton;
  private String title;

  public String getContent()
  {
    return this.content;
  }

  public String getLeftButtonText()
  {
    if (this.leftButton == null);
    for (String str = ""; ; str = this.leftButton.toString())
      return str;
  }

  public String getRightButtonText()
  {
    if (this.rightButton == null);
    for (String str = ""; ; str = this.rightButton.toString())
      return str;
  }

  public String getTitle()
  {
    return this.title;
  }

  public void setContent(String paramString)
  {
    this.content = paramString;
  }

  public void setLeftButtonText(String paramString)
  {
    this.leftButton.setText(paramString);
  }

  public void setLeftButtonVisibility(int paramInt)
  {
    this.leftButton.setVisibility(paramInt);
  }

  public void setRightButtonVisibility(int paramInt)
  {
    this.rightButton.setVisibility(paramInt);
  }

  public void setRighttButtonText(String paramString)
  {
    this.rightButton.setText(paramString);
  }

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.model.SimpleAdapterModel
 * JD-Core Version:    0.6.2
 */