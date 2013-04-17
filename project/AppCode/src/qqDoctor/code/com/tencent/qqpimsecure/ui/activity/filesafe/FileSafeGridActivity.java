package com.tencent.qqpimsecure.ui.activity.filesafe;

import atb;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;

public class FileSafeGridActivity extends BaseUIActivity
{
  public BaseView getView()
  {
    return new atb(this);
  }

  public boolean isNeedActivityWrapper()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.filesafe.FileSafeGridActivity
 * JD-Core Version:    0.6.2
 */