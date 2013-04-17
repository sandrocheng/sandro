package com.tencent.qqpimsecure.ui.activity.filesafe;

import atk;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;

public class FileSafeListActivity extends BaseUIActivity
{
  public BaseView getView()
  {
    return new atk(this);
  }

  public boolean isNeedActivityWrapper()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.filesafe.FileSafeListActivity
 * JD-Core Version:    0.6.2
 */