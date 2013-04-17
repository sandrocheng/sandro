package com.tencent.qqpimsecure.ui.activity.filesafe;

import atm;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;

public class FileSafePrivacySafeActivity extends BaseUIActivity
{
  public BaseView getView()
  {
    return new atm(this, "module_file_safe");
  }

  public boolean isNeedActivityWrapper()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.filesafe.FileSafePrivacySafeActivity
 * JD-Core Version:    0.6.2
 */