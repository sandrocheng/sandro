package com.tencent.qqpimsecure.uilib.model;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import com.tencent.qqpimsecure.service.QQPimApplication;

public class ResultModel
{
  public static final int RESULT_TYPE_GROUP = 0;
  public static final int RESULT_TYPE_ITEM = 1;
  public static final int STATE_OPTIMIZATION = 2130837904;
  public static final int STATE_RISK = 2130837906;
  public static final int STATE_SAFETY = 2130837907;
  public static final int TEXT_COLOR_GREEN = 3;
  public static final int TEXT_COLOR_RED = 1;
  public static final int TEXT_COLOR_YRLLOW = 2;
  private long mCount;
  private Drawable mIcon;
  private String mMessage;
  private int mResultType;
  private int mState = -1;
  private String mTitle;
  private int mTitleColor = -1;

  public ResultModel(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.mResultType = paramInt1;
    this.mIcon = QQPimApplication.a().getResources().getDrawable(paramInt2);
    this.mTitle = QQPimApplication.a().getString(paramInt3);
    this.mMessage = QQPimApplication.a().getString(paramInt4);
  }

  public ResultModel(int paramInt1, int paramInt2, int paramInt3, long paramLong)
  {
    this.mResultType = paramInt1;
    this.mIcon = QQPimApplication.a().getResources().getDrawable(paramInt2);
    this.mTitle = QQPimApplication.a().getString(paramInt3);
    this.mCount = paramLong;
  }

  public ResultModel(int paramInt1, Drawable paramDrawable, String paramString, int paramInt2)
  {
    this.mResultType = paramInt1;
    this.mIcon = paramDrawable;
    this.mTitle = paramString;
    this.mState = paramInt2;
  }

  public ResultModel(int paramInt1, Drawable paramDrawable, String paramString, int paramInt2, int paramInt3)
  {
    this.mResultType = paramInt1;
    this.mIcon = paramDrawable;
    this.mTitle = paramString;
    this.mTitleColor = paramInt2;
    this.mState = paramInt3;
  }

  public ResultModel(int paramInt, Drawable paramDrawable, String paramString, long paramLong)
  {
    this.mResultType = paramInt;
    this.mIcon = paramDrawable;
    this.mTitle = paramString;
    this.mCount = paramLong;
  }

  public ResultModel(int paramInt, Drawable paramDrawable, String paramString1, long paramLong, String paramString2)
  {
    this.mResultType = paramInt;
    this.mIcon = paramDrawable;
    this.mTitle = paramString1;
    this.mCount = paramLong;
    this.mMessage = paramString2;
  }

  public ResultModel(int paramInt, Drawable paramDrawable, String paramString1, String paramString2)
  {
    this.mResultType = paramInt;
    this.mIcon = paramDrawable;
    this.mTitle = paramString1;
    this.mMessage = paramString2;
  }

  public long getCount()
  {
    return this.mCount;
  }

  public Drawable getIcon()
  {
    return this.mIcon;
  }

  public String getMessage()
  {
    return this.mMessage;
  }

  public int getResultType()
  {
    return this.mResultType;
  }

  public int getState()
  {
    return this.mState;
  }

  public String getTitle()
  {
    return this.mTitle;
  }

  public int getTitleColor()
  {
    return this.mTitleColor;
  }

  public void setCount(int paramInt)
  {
    this.mCount = paramInt;
  }

  public void setIcon(Drawable paramDrawable)
  {
    this.mIcon = paramDrawable;
  }

  public void setMessage(String paramString)
  {
    this.mMessage = paramString;
  }

  public void setResultType(int paramInt)
  {
    this.mResultType = paramInt;
  }

  public void setState(int paramInt)
  {
    this.mState = paramInt;
  }

  public void setTitle(String paramString)
  {
    this.mTitle = paramString;
  }

  public void setTitleColor(int paramInt)
  {
    this.mTitleColor = paramInt;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.model.ResultModel
 * JD-Core Version:    0.6.2
 */