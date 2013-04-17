package com.tencent.qqpimsecure.ui.activity.filesafe;

import asx;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;

public class FileSafeFolderGridActivity extends BaseUIActivity
{
  public BaseView getView()
  {
    return new asx(this);
  }

  public boolean isNeedActivityWrapper()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.filesafe.FileSafeFolderGridActivity
 * JD-Core Version:    0.6.2
 */