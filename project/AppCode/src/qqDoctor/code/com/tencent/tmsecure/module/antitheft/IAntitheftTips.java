package com.tencent.tmsecure.module.antitheft;

import android.content.Intent;

public abstract interface IAntitheftTips
{
  public abstract Intent getLockPhoneIntent();

  public abstract String tips4DeleteDataSuccess();

  public abstract String tips4DeletingData();

  public abstract String tips4GetPasswordFailed();

  public abstract String tips4GetPasswordSuccess();

  public abstract String tips4LocateFaild();

  public abstract String tips4LocateSuccess();

  public abstract String tips4Locating();

  public abstract String tips4LockPhoneSuccess();

  public abstract String tips4PasswordError();
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.antitheft.IAntitheftTips
 * JD-Core Version:    0.6.2
 */