package com.tencent.qqpimsecure.uilib.model;

import android.graphics.drawable.Drawable;

public class SoftResultModel extends ResultModel
{
  public static final int TYPE_ID = 1;
  public static final int TYPE_NAME = 2;
  public static final int TYPE_NULL = 0;
  public static final int TYPE_PATH = 3;
  private int mType;
  private String mValue;

  public SoftResultModel(int paramInt1, Drawable paramDrawable, int paramInt2, String paramString1, String paramString2, int paramInt3)
  {
    super(paramInt1, paramDrawable, paramString2, paramInt3);
    this.mType = paramInt2;
    this.mValue = paramString1;
  }

  public SoftResultModel(int paramInt1, Drawable paramDrawable, int paramInt2, String paramString1, String paramString2, int paramInt3, int paramInt4)
  {
    super(paramInt1, paramDrawable, paramString2, paramInt3, paramInt4);
    this.mType = paramInt2;
    this.mValue = paramString1;
  }

  public SoftResultModel(int paramInt1, Drawable paramDrawable, int paramInt2, String paramString1, String paramString2, long paramLong)
  {
    super(paramInt1, paramDrawable, paramString2, paramLong);
    this.mType = paramInt2;
    this.mValue = paramString1;
  }

  public SoftResultModel(int paramInt1, Drawable paramDrawable, int paramInt2, String paramString1, String paramString2, long paramLong, String paramString3)
  {
    super(paramInt1, paramDrawable, paramString2, paramLong, paramString3);
    this.mType = paramInt2;
    this.mValue = paramString1;
  }

  public SoftResultModel(int paramInt1, Drawable paramDrawable, int paramInt2, String paramString1, String paramString2, String paramString3)
  {
    super(paramInt1, paramDrawable, paramString2, paramString3);
    this.mType = paramInt2;
    this.mValue = paramString1;
  }

  public int getDrawableType()
  {
    return this.mType;
  }

  public String getDrawableValue()
  {
    return this.mValue;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.model.SoftResultModel
 * JD-Core Version:    0.6.2
 */