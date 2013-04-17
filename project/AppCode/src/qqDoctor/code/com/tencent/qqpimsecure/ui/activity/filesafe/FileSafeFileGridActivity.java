package com.tencent.qqpimsecure.ui.activity.filesafe;

import asq;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;

public class FileSafeFileGridActivity extends BaseUIActivity
{
  public BaseView getView()
  {
    return new asq(this);
  }

  public boolean isNeedActivityWrapper()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.filesafe.FileSafeFileGridActivity
 * JD-Core Version:    0.6.2
 */