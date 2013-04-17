package com.tencent.qqpimsecure.uilib.model;

import android.content.Context;
import com.tencent.qqpimsecure.service.QQPimApplication;

public class OperatingModel
{
  public static final int BUTTON_STYLE_CHECK_BOX = 2;
  public static final int BUTTON_STYLE_GREEN = 1;
  public static final int BUTTON_STYLE_WHITE;
  private boolean mAction = false;
  private int mButtonIconid;
  private boolean mCheck = false;
  private boolean mEnable = true;
  private int mID;
  private int mNumber;
  private int mStyle;
  private String mText;
  private int mTextSize;
  private int mVisible = 0;

  public OperatingModel(int paramInt1, int paramInt2)
  {
    this.mID = paramInt1;
    this.mText = QQPimApplication.a().getString(paramInt2);
    this.mStyle = 1;
  }

  public OperatingModel(int paramInt1, int paramInt2, int paramInt3)
  {
    this.mID = paramInt1;
    this.mText = QQPimApplication.a().getString(paramInt2);
    this.mStyle = paramInt3;
  }

  public OperatingModel(int paramInt, String paramString)
  {
    this.mID = paramInt;
    this.mText = paramString;
    this.mStyle = 1;
  }

  public int getButtonIconid()
  {
    return this.mButtonIconid;
  }

  public int getID()
  {
    return this.mID;
  }

  public int getNumber()
  {
    return this.mNumber;
  }

  public int getStyle()
  {
    return this.mStyle;
  }

  public String getText()
  {
    return this.mText;
  }

  public int getTextSize()
  {
    return this.mTextSize;
  }

  public int getVisible()
  {
    return this.mVisible;
  }

  public boolean isAction()
  {
    return this.mAction;
  }

  public boolean isCheck()
  {
    return this.mCheck;
  }

  public boolean isEnable()
  {
    return this.mEnable;
  }

  public void setAction(boolean paramBoolean)
  {
    this.mAction = paramBoolean;
  }

  public void setButtonIconid(int paramInt)
  {
    this.mButtonIconid = paramInt;
  }

  public void setCheck(boolean paramBoolean)
  {
    this.mCheck = paramBoolean;
  }

  public void setEnable(boolean paramBoolean)
  {
    this.mEnable = paramBoolean;
  }

  public void setID(int paramInt)
  {
    this.mID = paramInt;
  }

  public void setNumber(int paramInt)
  {
    this.mNumber = paramInt;
  }

  public void setStyle(int paramInt)
  {
    this.mStyle = paramInt;
  }

  public void setText(String paramString)
  {
    this.mText = paramString;
  }

  public void setTextSize(int paramInt)
  {
    this.mTextSize = paramInt;
  }

  public void setVisible(int paramInt)
  {
    this.mVisible = paramInt;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.model.OperatingModel
 * JD-Core Version:    0.6.2
 */