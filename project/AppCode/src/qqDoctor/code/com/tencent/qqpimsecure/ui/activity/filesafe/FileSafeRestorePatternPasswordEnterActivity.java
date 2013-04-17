package com.tencent.qqpimsecure.ui.activity.filesafe;

import atl;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;

public class FileSafeRestorePatternPasswordEnterActivity extends BaseUIActivity
{
  public BaseView getView()
  {
    return new atl(this, "module_file_safe");
  }

  public boolean isNeedActivityWrapper()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.filesafe.FileSafeRestorePatternPasswordEnterActivity
 * JD-Core Version:    0.6.2
 */