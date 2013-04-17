package com.tencent.qqpimsecure.uilib.model;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import com.tencent.tmsecure.common.TMSApplication;

public class TabModel
{
  public static final int STYLE_MULTI_TAB_TAB = 1;
  public static final int STYLE_MULTI_TAB_TITLE;
  private boolean isShowFooterLine = true;
  private boolean mClickable = true;
  private CharSequence mContent;
  private Context mContext = TMSApplication.getApplicaionContext();
  private Drawable mFocusIcon;
  private int mID;
  private Drawable mIcon;
  private int mMessageNum;
  private int mMultiStyle = 1;
  private Drawable mTagImage;
  private String mTitle;

  public TabModel()
  {
  }

  public TabModel(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.mID = paramInt1;
    this.mIcon = this.mContext.getResources().getDrawable(paramInt2);
    this.mTitle = this.mContext.getResources().getString(paramInt3);
    this.mContent = this.mContext.getResources().getString(paramInt4);
  }

  public TabModel(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    this.mID = paramInt1;
    this.mIcon = this.mContext.getResources().getDrawable(paramInt2);
    this.mFocusIcon = this.mContext.getResources().getDrawable(paramInt3);
    this.mTitle = this.mContext.getResources().getString(paramInt4);
    this.mMessageNum = paramInt5;
  }

  public TabModel(int paramInt1, int paramInt2, int paramInt3, int paramInt4, Drawable paramDrawable)
  {
    this.mID = paramInt1;
    this.mIcon = this.mContext.getResources().getDrawable(paramInt2);
    this.mTitle = this.mContext.getResources().getString(paramInt3);
    this.mContent = this.mContext.getResources().getString(paramInt4);
    this.mTagImage = paramDrawable;
  }

  public TabModel(int paramInt1, int paramInt2, int paramInt3, String paramString)
  {
    this.mID = paramInt1;
    this.mIcon = this.mContext.getResources().getDrawable(paramInt2);
    this.mTitle = this.mContext.getResources().getString(paramInt3);
    this.mContent = paramString;
  }

  public TabModel(int paramInt1, int paramInt2, Drawable paramDrawable1, Drawable paramDrawable2, String paramString)
  {
    this.mID = paramInt1;
    this.mMessageNum = paramInt2;
    this.mIcon = paramDrawable1;
    this.mFocusIcon = paramDrawable2;
    this.mTitle = paramString;
  }

  public TabModel(int paramInt1, int paramInt2, String paramString1, String paramString2)
  {
    this.mID = paramInt1;
    this.mIcon = this.mContext.getResources().getDrawable(paramInt2);
    this.mTitle = paramString1;
    this.mContent = paramString2;
  }

  public boolean equals(Object paramObject)
  {
    if (((TabModel)paramObject).mID == this.mID);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean getClickable()
  {
    return this.mClickable;
  }

  public CharSequence getContent()
  {
    return this.mContent;
  }

  public Drawable getFocusIcon()
  {
    return this.mFocusIcon;
  }

  public int getID()
  {
    return this.mID;
  }

  public Drawable getIcon()
  {
    return this.mIcon;
  }

  public int getMessageNum()
  {
    return this.mMessageNum;
  }

  public int getMultiStyle()
  {
    return this.mMultiStyle;
  }

  public String getTitle()
  {
    return this.mTitle;
  }

  public Drawable getmTagImage()
  {
    return this.mTagImage;
  }

  public boolean isShowFooterLine()
  {
    return this.isShowFooterLine;
  }

  public void setClickable(boolean paramBoolean)
  {
    this.mClickable = paramBoolean;
  }

  public void setContent(CharSequence paramCharSequence)
  {
    this.mContent = paramCharSequence;
  }

  public void setFocusIcon(Drawable paramDrawable)
  {
    this.mFocusIcon = paramDrawable;
  }

  public void setID(int paramInt)
  {
    this.mID = paramInt;
  }

  public void setIcon(Drawable paramDrawable)
  {
    this.mIcon = paramDrawable;
  }

  public void setMessageNum(int paramInt)
  {
    this.mMessageNum = paramInt;
  }

  public void setMultiStyle(int paramInt)
  {
    this.mMultiStyle = paramInt;
  }

  public void setShowFooterLine(boolean paramBoolean)
  {
    this.isShowFooterLine = paramBoolean;
  }

  public void setTitle(String paramString)
  {
    this.mTitle = paramString;
  }

  public void setmTagImage(Drawable paramDrawable)
  {
    this.mTagImage = paramDrawable;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.model.TabModel
 * JD-Core Version:    0.6.2
 */