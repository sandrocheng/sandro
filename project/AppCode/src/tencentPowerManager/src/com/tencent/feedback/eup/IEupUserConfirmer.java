package com.tencent.feedback.eup;

import android.view.View;

public abstract interface IEupUserConfirmer
{
  public abstract View getContentView();

  public abstract View getDoCancelClicker();

  public abstract View getDoUploadClicker();

  public abstract String getUploadContent();
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.feedback.eup.IEupUserConfirmer
 * JD-Core Version:    0.6.2
 */